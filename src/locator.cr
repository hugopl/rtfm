require "fzy"

require "./doc_set"
require "./search_result_model"

@[Gtk::UiTemplate(resource: "/io/github/hugopl/Rtfm/ui/locator.ui", children: %w(results_view locator_entry popover results_scrolled_wnd docset_btn))]
class Locator < Adw::Bin
  include Gtk::WidgetTemplate

  @entry : Gtk::Entry
  @results_view : Gtk::ListView
  @popover : Gtk::Popover
  property docset : DocSet
  @search_result_model : SearchResultModel
  @search_selection_model : Gtk::SingleSelection

  def initialize
    super()

    @docset = DocSet.new
    @search_result_model = SearchResultModel.new

    @popover = Gtk::Popover.cast(template_child("popover"))

    @entry = Gtk::Entry.cast(template_child("locator_entry"))
    @entry.activate_signal.connect(&->entry_activated)
    @entry.changed_signal.connect(&->search_changed)

    key_ctl = Gtk::EventControllerKey.new
    key_ctl.key_pressed_signal.connect(&->entry_key_pressed(UInt32, UInt32, Gdk::ModifierType))
    @entry.add_controller(key_ctl)

    focus_ctl = Gtk::EventControllerFocus.new
    focus_ctl.enter_signal.connect(&->on_focus_in)
    @entry.add_controller(focus_ctl)

    view_factory = Gtk::SignalListItemFactory.new
    view_factory.setup_signal.connect(->setup_locator_entry(GObject::Object))
    view_factory.bind_signal.connect(->bind_locator_entry(GObject::Object))

    @results_view = Gtk::ListView.cast(template_child("results_view"))
    @search_selection_model = Gtk::SingleSelection.new(@search_result_model)
    @search_selection_model.autoselect = false
    @results_view.model = @search_selection_model
    @results_view.factory = view_factory
    @popover.parent = self

    self.docset = @docset # just to update the button label
  end

  delegate grab_focus, to: @entry

  private def setup_locator_entry(obj : GObject::Object) : Nil
    list_item = Gtk::ListItem.cast(obj)
    box = Gtk::Box.new(:horizontal, 6)
    icon = Gtk::Image.new
    label = Gtk::Label.new
    box.append(icon)
    box.append(label)
    list_item.child = box
  end

  private def bind_locator_entry(obj : GObject::Object)
    list_item = Gtk::ListItem.cast(obj)
    box = Gtk::Box.cast(list_item.child)
    doc = Doc.cast(list_item.item)
    Gtk::Image.cast(box.first_child).icon_name = doc.icon_name
    Gtk::Label.cast(box.last_child).label = doc.name
  end

  def docset=(@docset : DocSet)
    Gtk::Button.cast(template_child("docset_btn")).label = @docset.name
  end

  private def hide_popover
    @popover.hide
    activate_action("win.focus_page", nil)
  end

  def text=(text : String)
    @entry.text = text
    @entry.position = text.size
  end

  private def entry_key_pressed(key_val : UInt32, _key_code : UInt32, _modifier : Gdk::ModifierType)
    if key_val == Gdk::KEY_Escape
      hide_popover
      return false
    end

    selected = @search_selection_model.selected
    if key_val == Gdk::KEY_Up && selected > 0
      @search_selection_model.selected = @search_selection_model.selected - 1
      return true
    elsif key_val == Gdk::KEY_Down && selected < Int32::MAX
      @search_selection_model.selected = @search_selection_model.selected + 1
      return true
    end
    false
  end

  private def on_focus_in
    @popover.visible = true
    false
  end

  private def search_changed
    text = @entry.text
    # Due to https://gitlab.gnome.org/GNOME/gtk/-/issues/5340
    # GTK emit search_changed signal for no reasons at begining, so we need this check here.
    return if text.empty? && !@popover.visible

    wnd = Gtk::ScrolledWindow.cast(template_child("results_scrolled_wnd"))
    wnd_vadj = wnd.vadjustment
    wnd_vadj.value = 0 if wnd_vadj

    results = @docset.search(text)
    @search_result_model.data = results
    @search_selection_model.selected = 0

    # vadjustment = @results_view.vadjustment
    # pp! vadjustment
    # pp! vadjustment.try(&.value)
    # vadjustment.value = 0 if vadjustment
    # pp! vadjustment.try(&.value)
    # pp! @results_view.vadjustment.try(&.value)
    @popover.visible = true
  end

  private def entry_activated
    hide_popover
    doc = @search_selection_model.selected_item.as(Doc)
    html_path = @docset.path(doc)
    activate_action("win.open_page", "file://#{html_path}")
  end
end
