require "./docset"
require "./locator"
require "./sidebar_model"

@[Gtk::UiTemplate(file: "#{__DIR__}/doc_page.ui", children: %w(overlay web_view list_view sidebar search_bar search_entry search_count_label))]
class DocPage < Adw::Bin
  include Gtk::WidgetTemplate

  Log = ::Log.for(DocPage)

  @[GObject::Property]
  property title : String = "Choose a Docset"

  @web_view : WebKit::WebView
  @search_bar : Gtk::SearchBar
  @search_count_label : Gtk::Label
  @search_ready = false
  @locator : Locator
  @overlay = Gtk::Overlay.new
  @sidebar : Gtk::Widget
  @sidebar_model = SidebarModel.new

  def initialize(default_provider : LocatorProvider?)
    @locator = Locator.new(default_provider)
    super(css_name: "docpage")

    @sidebar = Gtk::Widget.cast(template_child("sidebar"))
    @web_view = web_view = WebKit::WebView.cast(template_child("web_view"))
    @search_count_label = Gtk::Label.cast(template_child("search_count_label"))
    @search_bar = Gtk::SearchBar.cast(template_child("search_bar"))

    web_view.bind_property("title", self, "title", :default)
    web_view.notify_signal["uri"].connect { on_uri_changed }

    list_view = Gtk::ListView.cast(template_child("list_view"))
    selection_model = Gtk::SingleSelection.new(@sidebar_model)
    list_view.model = selection_model
    list_view.activate_signal.connect(&->on_sidebar_item_activated(UInt32))

    overlay = Gtk::Overlay.cast(template_child("overlay"))
    overlay.add_overlay(@locator)

    setup_actions
    setup_controllers
    setup_search_signals
  end

  def setup_actions
    group = Gio::SimpleActionGroup.new
    action = Gio::SimpleAction.new("load_uri", GLib::VariantType.new("s"))
    action.activate_signal.connect(->load_uri(GLib::Variant))
    group.add_action(action)

    action = Gio::SimpleAction.new("show_locator", nil)
    action.activate_signal.connect { show_locator }
    group.add_action(action)

    action = Gio::SimpleAction.new("hide_locator", nil)
    action.activate_signal.connect { hide_locator }
    group.add_action(action)

    action = Gio::SimpleAction.new("show_search", nil)
    action.activate_signal.connect { show_search }
    group.add_action(action)

    action = Gio::SimpleAction.new("search_previous", nil)
    action.activate_signal.connect { search_previous }
    group.add_action(action)

    action = Gio::SimpleAction.new("show_next", nil)
    action.activate_signal.connect { search_next }
    group.add_action(action)

    insert_action_group("page", group)
  end

  def setup_controllers
    ctl = Gtk::ShortcutController.new(propagation_phase: :capture)

    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control>P"),
                                 Gtk::NamedAction.new("page.show_locator"))
    ctl.add_shortcut(shortcut)
    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control>F"),
                                 Gtk::NamedAction.new("page.show_search"))
    ctl.add_shortcut(shortcut)
    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control>F3"),
                                 Gtk::NamedAction.new("page.search_prev"))
    ctl.add_shortcut(shortcut)
    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("F3"),
                                 Gtk::NamedAction.new("page.search_next"))
    ctl.add_shortcut(shortcut)

    add_controller(ctl)
  end

  delegate current_locator_provider, to: @locator
  delegate uri, to: @web_view

  def grab_focus
    widget = @locator.visible ? @locator : @web_view
    widget.grab_focus
  end

  def focus_page
    @web_view.grab_focus
  end

  delegate go_back, to: @web_view

  def can_go_back? : Bool
    @web_view.can_go_back
  end

  delegate go_forward, to: @web_view

  def can_go_forward? : Bool
    @web_view.can_go_forward
  end

  def show_search
    @search_bar.search_mode = true
  end

  def load_uri(variant : GLib::Variant)
    load_uri(variant.as_s)
  end

  def load_uri(uri : String)
    Log.info { "Loading URI: #{uri}" }
    @web_view.load_uri(uri)
    @locator.visible = false
  end

  def show_locator
    @locator.visible = true
    @locator.select_search_text
    @locator.grab_focus
  end

  def hide_locator
    @locator.visible = false
  end

  private def search_started(entry : Gtk::SearchEntry) : Nil
    web_view = @web_view
    return if web_view.nil?

    text = entry.text
    entry.remove_css_class("error") if text.empty?
    find_controller = web_view.find_controller
    find_controller.search(text, WebKit::FindOptions::CaseInsensitive.to_u32, 1000)
    find_controller.count_matches(text, WebKit::FindOptions::CaseInsensitive.to_u32, 1000)
  end

  private def search_stopped
    @search_ready = false
    @web_view.find_controller.search_finish
  end

  private def search_next : Nil
    @web_view.find_controller.search_next if @search_ready
  end

  private def search_previous : Nil
    @web_view.find_controller.search_previous if @search_ready
  end

  private def on_uri_changed
    docset = @locator.last_activated_docset
    return if docset.nil?

    doc = docset.find_by_uri(@web_view.uri)
    return if doc.nil?

    @sidebar_model.set_doc(doc, docset)
    @sidebar.visible = @sidebar_model.get_n_items.positive?
  end

  def on_sidebar_item_activated(pos : UInt32)
    docset = @locator.last_activated_docset
    return if docset.nil?

    uri = @sidebar_model.uri(pos)
    load_uri(uri) if uri
  end

  private def setup_search_signals
    entry = Gtk::SearchEntry.cast(template_child("search_entry"))

    @search_bar.connect_entry(entry)

    find_controller = @web_view.find_controller
    find_controller.counted_matches_signal.connect do |count|
      @search_ready = true
      @search_count_label.label = "#{count} matches"
    end
    find_controller.failed_to_find_text_signal.connect { entry.add_css_class("error") }
    find_controller.found_text_signal.connect { entry.remove_css_class("error") }

    entry.search_changed_signal.connect(->search_started(Gtk::SearchEntry))
    entry.stop_search_signal.connect(->search_stopped)
    entry.previous_match_signal.connect(->search_next)
    entry.next_match_signal.connect(->search_previous)
  end
end
