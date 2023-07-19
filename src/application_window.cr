require "./doc_page"
require "./locator"
require "./theme_selector"

struct OpenTab
  include JSON::Serializable

  getter docset_id : String
  getter uri : String?

  def initialize(@docset_id, @uri)
  end
end

@[Gtk::UiTemplate(resource: "/io/github/hugopl/rtfm/ui/application_window.ui", children: %w(view header_bar primary_menu))]
class ApplicationWindow < Adw::ApplicationWindow
  include Gtk::WidgetTemplate

  @tab_view : Adw::TabView
  @locator : Locator

  @go_back_action : Gio::SimpleAction
  @go_forward_action : Gio::SimpleAction

  def initialize(application : Application)
    super(application: application)

    @tab_view = Adw::TabView.cast(template_child("view"))
    @tab_view.notify_signal["selected-page"].connect(->on_selected_page_change(GObject::ParamSpec))
    @tab_view.close_page_signal.connect(->on_close_page(Adw::TabPage))
    @locator = Locator.new
    Adw::HeaderBar.cast(template_child("header_bar")).title_widget = @locator

    primary_menu = Gtk::MenuButton.cast(template_child("primary_menu"))
    popover_primary_menu = Gtk::PopoverMenu.cast(primary_menu.popover.not_nil!)
    popover_primary_menu.add_child(ThemeSelector.new, "theme")

    settings = application.settings
    setup_actions(settings)
    @go_back_action = Gio::SimpleAction.new("go_back", nil)
    @go_back_action.activate_signal.connect { go_back }
    add_action(@go_back_action)
    @go_forward_action = Gio::SimpleAction.new("go_forward", nil)
    @go_forward_action.activate_signal.connect { go_forward }
    add_action(@go_forward_action)

    settings.bind("window-width", self, "default-width", :default)
    settings.bind("window-height", self, "default-height", :default)
    settings.bind("window-maximized", self, "maximized", :default)

    restore_tabs(settings)
  end

  delegate go_back, to: selected_doc_page
  delegate go_forward, to: selected_doc_page
  delegate focus_page, to: selected_doc_page
  delegate page_search, to: selected_doc_page

  private def setup_actions(settings : Gio::Settings)
    app = application.not_nil!
    actions = {
      {name: "new_tab", shortcut: "<primary>T", closure: ->new_tab},
      {name: "close_tab", shortcut: "<primary>W", closure: ->close_tab},
      {name: "focus_locator", shortcut: "<primary>P", closure: ->focus_locator},
      {name: "focus_page", shortcut: nil, closure: ->focus_page},
      {name: "page_search", shortcut: "<primary>F", closure: ->page_search},
    }

    actions.each do |action|
      g_action = Gio::SimpleAction.new(action[:name], nil)
      g_action.activate_signal.connect { action[:closure].call }
      add_action(g_action)
      shortcut = action[:shortcut]
      app.set_accels_for_action("win.#{action[:name]}", {shortcut}) if shortcut
    end

    g_action = Gio::SimpleAction.new("open_page", GLib::VariantType.new("s"))
    g_action.activate_signal.connect(->open_page(GLib::Variant?))
    add_action(g_action)

    g_action = Gio::SimpleAction.new_stateful("change_docset", GLib::VariantType.new("s"), DocSet.default_id)
    g_action.activate_signal.connect(->change_docset(GLib::Variant?))
    add_action(g_action)

    group = Gio::SimpleActionGroup.new
    action = settings.create_action("style-variant")
    group.add_action(action)
    insert_action_group("settings", group)
  end

  @[GObject::Virtual]
  def close_request : Bool
    save_open_tabs
    false
  end

  private def save_open_tabs
    settings = application.not_nil!.as(Application).settings
    open_tabs = [] of OpenTab

    @tab_view.n_pages.times do |pos|
      doc_page = doc_page(pos)
      next if doc_page.nil?

      uri = doc_page.uri
      open_tabs << OpenTab.new(doc_page.docset.id, uri)
    end

    settings.set_string("open-tabs", open_tabs.to_json)
    settings.set_int("selected-tab", @tab_view.page_position(@tab_view.selected_page.not_nil!))
  end

  private def restore_tabs(settings)
    has_tabs_to_restore = false

    json = settings.string("open-tabs")
    if json.empty?
      new_tab
      return
    end

    open_tabs = Array(OpenTab).from_json(json)
    pos = settings.int("selected-tab")
    restored_tabs = 0

    open_tabs.each.with_index do |tab, i|
      docset = DocSet.new(tab.docset_id)
      doc_page = DocPage.new(docset, tab.uri)
      add_tab(doc_page)
      restored_tabs += 1
    rescue e : DocSetError
      Log.warn { "Error loading docset #{tab.docset_id} for #{tab.uri}." }
      pos -= 1 if i <= pos
    end
    if restored_tabs > 0
      @tab_view.selected_page = @tab_view.nth_page(pos) if 0 <= pos < restored_tabs
    else
      new_tab
    end
  end

  private def new_tab : Nil
    doc_page = DocPage.new(@locator.docset)
    add_tab(doc_page)
  end

  private def add_tab(doc_page : DocPage)
    page = @tab_view.append(doc_page)
    # FIXME: This doesn't crash because this signal connection holds a reference to doc_page, so it's
    # never collected, otherwise it would crash: See https://github.com/hugopl/gi-crystal/issues/105
    #
    # FIXME: Disconect signals when closing a tab, so GC collects the DocPage instance.
    doc_page.notify_signal["title"].connect { on_doc_page_change(doc_page) }
    doc_page.bind_property("title", page, "title", :default)
    page.title = doc_page.title
    page.live_thumbnail = true

    @tab_view.selected_page = page
  end

  private def close_tab : Nil
    page = @tab_view.selected_page
    @tab_view.close_page(page) if page
  end

  def on_close_page(page : Adw::TabPage) : Bool
    @tab_view.close_page_finish(page, true) if @tab_view.n_pages > 1
    Gdk::EVENT_STOP
  end

  def on_doc_page_change(doc_page : DocPage)
    return if doc_page != selected_doc_page

    update_ui_for_page_change(doc_page)
  end

  def on_selected_page_change(_param_spec)
    doc_page = selected_doc_page
    update_ui_for_page_change(doc_page)
    change_docset(GLib::Variant.new(doc_page.docset.id)) if doc_page
  end

  def update_ui_for_page_change(doc_page : DocPage?)
    if doc_page.nil?
      @go_back_action.enabled = false
      @go_forward_action.enabled = false
    else
      @go_back_action.enabled = doc_page.can_go_back?
      @go_forward_action.enabled = doc_page.can_go_forward?
    end
  end

  private def focus_locator : Nil
    @locator.grab_focus
  end

  private def change_docset(variant : GLib::Variant?)
    return if variant.nil?

    @locator.docset = DocSet.new(variant.as_s)
    selected_doc_page.try(&.docset=(DocSet.new(variant.as_s)))
    change_action_state("change_docset", variant)
  end

  private def open_page(variant : GLib::Variant?)
    open_page(variant.as_s) if variant
  end

  private def open_page(uri : String)
    if @tab_view.n_pages.zero?
      doc_page = DocPage.new(@locator.docset, uri)
      add_tab(doc_page)
    else
      doc_page = selected_doc_page
      doc_page.load_uri(uri)
    end
  end

  private def doc_page(pos : Int32) : DocPage
    adw_page = @tab_view.nth_page(pos)
    raise IndexError.new if adw_page.nil?

    adw_page.child.as(DocPage)
  end

  private def selected_doc_page : DocPage
    adw_page = @tab_view.selected_page
    raise IndexError.new if adw_page.nil?

    adw_page.child.as(DocPage)
  end
end
