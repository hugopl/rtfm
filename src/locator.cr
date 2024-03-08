require "fzy"

require "./locator_item"
require "./locator_provider"
require "./locator_providers_model"

@[Gtk::UiTemplate(file: "#{__DIR__}/locator.ui", children: %w(entry locator_help locator_results providers_view results_view))]
class Locator < Adw::Bin
  include Gtk::WidgetTemplate
  include Gio::ListModel

  Log = ::Log.for(Locator)

  @locator_providers = [] of LocatorProvider
  getter current_locator_provider : LocatorProvider
  @providers_selection_model : Gtk::SingleSelection
  @current_channel : Channel(Int32)?

  @previous_search_text : String = ""

  @entry : Gtk::SearchEntry
  @results_view : Gtk::ListView
  @selection_model : Gtk::SingleSelection

  @result_items = [] of LocatorItem
  @result_size = 0

  def initialize(selected_provider : LocatorProvider?)
    super(css_name: "locator")

    @results_view = Gtk::ListView.cast(template_child("results_view"))
    @results_view.model = @selection_model = Gtk::SingleSelection.new
    @entry = Gtk::SearchEntry.cast(template_child("entry"))
    @entry.activate_signal.connect(&->entry_activated)
    @entry.search_changed_signal.connect(&->search_changed)

    providers_model = LocatorProvidersModel.instance
    @providers_selection_model = Gtk::SingleSelection.new(model: providers_model)
    @providers_selection_model.notify_signal["selected"].connect { on_providers_view_selected }
    providers_view = Gtk::ListView.cast(template_child("providers_view"))
    providers_view.model = @providers_selection_model

    @current_locator_provider = selected_provider || LocatorProvidersModel.instance.default
    @providers_selection_model.selected = providers_model.index_of(@current_locator_provider)

    key_ctl = Gtk::EventControllerKey.new
    key_ctl.key_pressed_signal.connect(&->entry_key_pressed(UInt32, UInt32, Gdk::ModifierType))
    @entry.add_controller(key_ctl)

    @selection_model.model = self
    @results_view.activate_signal.connect(->row_activated(UInt32))
  end

  delegate grab_focus, to: @entry

  def on_providers_view_selected
    @current_locator_provider = @providers_selection_model.selected_item.as(LocatorProvider)
    search_changed
  end

  def text=(text : String)
    @entry.text = text
    @entry.position = text.size
  end

  private def entry_key_pressed(key_val : UInt32, _key_code : UInt32, _modifier : Gdk::ModifierType)
    if key_val == Gdk::KEY_Up
      selected = @selection_model.selected
      return false if selected.zero?

      @results_view.scroll_to(selected - 1, :select, nil)
      return true
    elsif key_val == Gdk::KEY_Down
      return true if @result_size < 2 # First item is already selected...

      selected = @selection_model.selected + 1
      @results_view.scroll_to(selected, :select, nil) if selected < @result_size

      return true
    elsif key_val == Gdk::KEY_Escape
      activate_action("page.hide_locator", nil)
    end
    false
  end

  private def show_help
    Gtk::Widget.cast(template_child("locator_help")).visible = true
    Gtk::Widget.cast(template_child("locator_results")).visible = false
  end

  private def hide_help
    Gtk::Widget.cast(template_child("locator_help")).visible = false
    Gtk::Widget.cast(template_child("locator_results")).visible = true
  end

  private def search_changed
    @current_channel.try(&.close)

    search_text = @entry.text
    if search_text.empty?
      show_help
      return
    end

    hide_help if @previous_search_text.empty?

    # TODO: Check search_text.starts_with?(@previous_search_text) to improve fzy search.
    #       But I need to improve fzy.cr shard first 😅️
    result = @current_locator_provider.search_changed(*parse_search_text(search_text))

    old_size = @result_size
    @result_size = result.as?(Int32) || 0
    items_changed(0, old_size, @result_size)

    if result.is_a?(Channel)
      @current_channel = result
      read_provider_channel_async(result)
    end
    @results_view.scroll_to(0, :select, nil)
  ensure
    @previous_search_text = search_text if search_text
  end

  private def parse_search_text(text : String) : {String, Doc::Kind?}
    cmd = nil
    term = nil
    text.split(" ", 2) do |word|
      term ||= word if cmd
      cmd ||= word
    end
    return {text, nil.as(Doc::Kind?)} if term.nil?

    kind = case cmd
           when "c" then Doc::Kind::Class
           when "." then Doc::Kind::Method
           else
             return {text, nil.as(Doc::Kind?)}
           end
    {term, kind}
  end

  private def read_provider_channel_async(channel : Channel) : Nil
    spawn(name: "locator.update") do
      old_size = 0
      while !channel.closed?
        value = channel.receive
        break if value.zero?

        GLib.idle_add do
          unless channel.closed?
            @result_size = old_size + value
            items_changed(old_size, 0, value)
            old_size += value
          end
          false
        end
      end
    rescue e : Channel::ClosedError
      nil
    end
  end

  private def entry_activated
    return if @entry.text.empty?

    row_activated(@selection_model.selected)
  end

  private def row_activated(index : UInt32)
    @current_locator_provider.activate(self, index)
  end

  @[GObject::Virtual]
  def get_n_items : UInt32
    @result_size.to_u32
  end

  @[GObject::Virtual]
  def get_item(pos : UInt32) : GObject::Object?
    return if pos >= @result_size

    while @result_items.size <= pos
      @result_items << LocatorItem.new
    end

    item = @result_items[pos]
    @current_locator_provider.bind(item, pos.to_i32)
    item
  end

  @[GObject::Virtual]
  def get_item_type : UInt64
    LocatorItem.g_type
  end
end
