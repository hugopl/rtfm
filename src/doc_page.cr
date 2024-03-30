require "./docset"
require "./locator"

class DocPage < Adw::Bin
  Log = ::Log.for(DocPage)

  @[GObject::Property]
  property title : String = "Choose a Docset"

  @web_view : WebKit::WebView?
  @search_bar : Gtk::SearchBar?
  @search_count_label : Gtk::Label?
  @search_ready = false
  @locator : Locator
  @overlay = Gtk::Overlay.new

  def initialize(default_provider : LocatorProvider?)
    @locator = Locator.new(default_provider)
    super(css_name: "docpage", child: @overlay)
    @overlay.child = @locator

    setup_actions
    setup_controllers
  end

  def setup_actions
    group = Gio::SimpleActionGroup.new
    action = Gio::SimpleAction.new("load_uri", GLib::VariantType.new("s"))
    action.activate_signal.connect(->load_uri(GLib::Variant))
    group.add_action(action)

    action = Gio::SimpleAction.new("show_locator", nil)
    action.activate_signal.connect(->show_locator(GLib::Variant?))
    group.add_action(action)

    action = Gio::SimpleAction.new("hide_locator", nil)
    action.activate_signal.connect(->hide_locator(GLib::Variant?))
    group.add_action(action)

    insert_action_group("page", group)
  end

  def setup_controllers
    ctl = Gtk::ShortcutController.new(propagation_phase: :capture)
    shortcut = Gtk::Shortcut.new(Gtk::ShortcutTrigger.parse_string("<Control>P"), Gtk::NamedAction.new("page.show_locator"))
    ctl.add_shortcut(shortcut)
    add_controller(ctl)
  end

  delegate current_locator_provider, to: @locator

  def uri : String?
    @web_view.try(&.uri)
  end

  def grab_focus
    (@web_view || @locator).grab_focus
  end

  def focus_page
    @web_view.try(&.grab_focus)
  end

  def go_back : Nil
    @web_view.try(&.go_back)
  end

  def can_go_back? : Bool
    @web_view.try(&.can_go_back) || false
  end

  def go_forward : Nil
    @web_view.try(&.go_forward)
  end

  def can_go_forward? : Bool
    @web_view.try(&.can_go_forward) || false
  end

  def page_search
    search_bar = @search_bar
    search_bar.search_mode = true if search_bar
  end

  def load_uri(variant : GLib::Variant)
    load_uri(variant.as_s)
  end

  def load_uri(uri : String)
    Log.info { "Loading URI: #{uri}" }
    web_view = @web_view || create_web_view
    return if web_view.nil?

    web_view.load_uri(uri)
    @locator.visible = false
  end

  def show_locator(_variant : GLib::Variant? = nil)
    return if @web_view.nil?

    @locator.visible = true
    @locator.grab_focus
  end

  def hide_locator(_variant : GLib::Variant? = nil)
    @locator.visible = false if @web_view
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
    @web_view.try(&.find_controller.search_finish)
  end

  private def search_next : Nil
    @web_view.try(&.find_controller.search_next) if @search_ready
  end

  private def search_previous : Nil
    @web_view.try(&.find_controller.search_previous) if @search_ready
  end

  private def create_web_view : WebKit::WebView
    box = Gtk::Box.new(orientation: :vertical, hexpand: true, vexpand: true, spacing: 0)
    @overlay.child = box
    @overlay.add_overlay(@locator)
    @locator.visible = false

    @search_bar = search_bar = Gtk::SearchBar.new
    search_box = Gtk::Box.new(:horizontal, 6)
    search_bar.child = search_box

    entry = Gtk::SearchEntry.new(hexpand: true)
    prev_btn = Gtk::Button.new(icon_name: "go-up-symbolic")
    next_btn = Gtk::Button.new(icon_name: "go-down-symbolic")
    @search_count_label = search_count_label = Gtk::Label.new
    search_box.append(entry)
    search_box.append(prev_btn)
    search_box.append(next_btn)
    search_box.append(search_count_label)

    box.append(search_bar)

    @web_view = web_view = WebKit::WebView.new(vexpand: true, hexpand: true)
    web_view.bind_property("title", self, "title", :default)
    web_view.notify_signal["uri"].connect { on_uri_changed }
    box.append(web_view)

    search_bar.connect_entry(entry)
    search_bar.key_capture_widget = self

    setup_search_signals(web_view, entry, search_count_label, prev_btn, next_btn)

    web_view
  end

  private def on_uri_changed
    web_view = @web_view
    docset = @locator.last_activated_docset
    return if web_view.nil? || docset.nil?

    doc = docset.find_by_uri(web_view.uri)
    return if doc.nil?

    Log.fatal { "uri changed #{doc}" }
  end

  private def setup_search_signals(web_view, entry, search_count_label, prev_btn, next_btn)
    find_controller = web_view.find_controller
    find_controller.counted_matches_signal.connect do |count|
      @search_ready = true
      search_count_label.label = "#{count} matches"
    end
    find_controller.failed_to_find_text_signal.connect { entry.add_css_class("error") }
    find_controller.found_text_signal.connect { entry.remove_css_class("error") }

    entry.search_changed_signal.connect(->search_started(Gtk::SearchEntry))
    entry.stop_search_signal.connect(->search_stopped)
    entry.previous_match_signal.connect(->search_next)
    entry.next_match_signal.connect(->search_previous)

    # FIXME: Use actions to handle this instead these signal connections
    prev_btn.clicked_signal.connect(->search_previous)
    next_btn.clicked_signal.connect(->search_next)
  end
end
