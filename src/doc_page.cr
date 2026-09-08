require "./docset"
require "./locator"
require "./page_search"
require "./sidebar_model"

@[Gtk::UiTemplate(file: "#{__DIR__}/doc_page.ui", children: %w(overlay web_view list_view sidebar page_box))]
class DocPage < Adw::Bin
  include Gtk::WidgetTemplate

  Log = ::Log.for(DocPage)

  @[GObject::Property]
  property title : String = "Choose a Docset"

  @web_view : WebKit::WebView
  getter page_search : PageSearch
  @locator : Locator
  @overlay = Gtk::Overlay.new
  @sidebar : Gtk::Widget
  @sidebar_model = SidebarModel.new

  def initialize(default_provider : LocatorProvider?, query : String?)
    super(css_name: "docpage")

    @locator = Locator.new(default_provider)
    @locator.text = query if query

    @sidebar = Gtk::Widget.cast(template_child("sidebar"))
    @web_view = web_view = WebKit::WebView.cast(template_child("web_view"))

    @page_search = PageSearch.new(web_view)
    Gtk::Box.cast(template_child("page_box")).prepend(@page_search)

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
    action.activate_signal.connect { @page_search.start_search }
    group.add_action(action)

    action = Gio::SimpleAction.new("hide_search", nil)
    action.activate_signal.connect { @page_search.stop_search }
    group.add_action(action)

    action = Gio::SimpleAction.new("search_previous", nil)
    action.activate_signal.connect { @page_search.search_previous }
    group.add_action(action)

    action = Gio::SimpleAction.new("search_next", nil)
    action.activate_signal.connect { @page_search.search_next }
    group.add_action(action)

    insert_action_group("page", group)
  end

  def setup_controllers
    ctl = Gtk::ShortcutController.new(propagation_phase: :capture)

    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control>P"),
      Gtk::NamedAction.new("page.show_locator"))
    ctl.add_shortcut(shortcut)
    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control>f"),
      Gtk::NamedAction.new("page.show_search"))
    ctl.add_shortcut(shortcut)
    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control><Shift>g|<Shift>F3"),
      Gtk::NamedAction.new("page.search_previous"))
    ctl.add_shortcut(shortcut)
    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control>g|F3"),
      Gtk::NamedAction.new("page.search_next"))
    ctl.add_shortcut(shortcut)

    add_controller(ctl)
  end

  delegate current_locator_provider, to: @locator
  delegate uri, to: @web_view

  @[GObject::Virtual]
  def grab_focus : Bool
    widget = if @locator.visible
               @locator
             elsif @page_search.active?
               @page_search
             else
               @web_view
             end
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
    return if @web_view.uri?.nil?

    @locator.visible = false
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
end
