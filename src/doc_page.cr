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
  @locator_popover : Gtk::Popover = Gtk::Popover.new(has_arrow: false)

  def initialize(default_provider : LocatorProvider?)
    @locator = Locator.new(default_provider)
    super(css_name: "docpage", child: @locator)

    setup_actions
  end

  def initialize(docset_id : String, uri : String? = nil)
    @locator = Locator.new(default_provider)
    super(hexpand: true, vexpand: true)

    @locator.select_docset(docset_id)
    if uri
      load_uri(uri)
    else
      self.child = @locator
    end
    setup_actions
  end

  def setup_actions
    group = Gio::SimpleActionGroup.new
    action = Gio::SimpleAction.new("load_uri", GLib::VariantType.new("s"))
    action.activate_signal.connect(->load_uri(GLib::Variant))
    group.add_action(action)

    action = Gio::SimpleAction.new("show_locator", nil)
    action.activate_signal.connect(->show_locator(GLib::Variant?))
    group.add_action(action)

    insert_action_group("page", group)
  end

  def self._class_init(klass : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
    previous_def
    LibGtk.gtk_widget_class_add_binding_action(klass, Gdk::KEY_P, Gdk::ModifierType::ControlMask, "page.show_locator", nil)
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
    web_view.load_uri(uri)
  end

  def show_locator(_variant : GLib::Variant?)
    @locator_popover.popup
    @locator.grab_focus
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
    self.child = box

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
    box.append(web_view)

    search_bar.connect_entry(entry)
    search_bar.key_capture_widget = self

    setup_search_signals(web_view, entry, search_count_label, prev_btn, next_btn)

    @locator_popover.child = @locator
    @locator_popover.parent = ApplicationWindow.cast(root.not_nil!).title_widget

    web_view
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
