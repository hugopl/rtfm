require "./doc_page"
require "./locator"
require "./theme_selector"

@[Gtk::UiTemplate(file: "#{__DIR__}/application_window.ui", children: %w(view primary_menu title))]
class ApplicationWindow < Adw::ApplicationWindow
  Log = ::Log.for(ApplicationWindow)
  include Gtk::WidgetTemplate

  @tab_view : Adw::TabView
  @go_back_action : Gio::SimpleAction
  @go_forward_action : Gio::SimpleAction

  def initialize(application : Application, query : String?)
    super(application: application)

    @tab_view = Adw::TabView.cast(template_child("view"))
    @tab_view.notify_signal["selected-page"].connect(->on_selected_page_change(GObject::ParamSpec))
    @tab_view.close_page_signal.connect(->on_close_page(Adw::TabPage))

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

    new_tab(query)
    {% unless flag?(:release) %}
      add_css_class("devel")

      notify_signal["focus-widget"].connect do
        widget = self.focus_widget
        Log.info { "Focus Widget: #{widget}" }
      end
    {% end %}
  end

  delegate go_back, to: selected_doc_page
  delegate go_forward, to: selected_doc_page
  delegate focus_page, to: selected_doc_page
  delegate page_search, to: selected_doc_page

  def title_widget : Gtk::Widget
    Adw::WindowTitle.cast(template_child("title"))
  end

  private def setup_actions(settings : Gio::Settings)
    app = application.not_nil!
    actions = {
      {name: "new_tab", shortcut: "<primary>T", closure: ->new_tab},
      {name: "close_tab", shortcut: "<primary>W", closure: ->close_tab},
    }

    actions.each do |action|
      g_action = Gio::SimpleAction.new(action[:name], nil)
      g_action.activate_signal.connect { action[:closure].call }
      add_action(g_action)
      shortcut = action[:shortcut]
      app.set_accels_for_action("win.#{action[:name]}", {shortcut}) if shortcut
    end

    group = Gio::SimpleActionGroup.new
    action = settings.create_action("style-variant")
    group.add_action(action)
    insert_action_group("settings", group)
  end

  private def new_tab(query : String? = nil) : Nil
    locator_provider = selected_doc_page?.try(&.current_locator_provider)
    doc_page = DocPage.new(locator_provider, query)
    add_tab(doc_page)
    doc_page.grab_focus
  end

  private def add_tab(doc_page : DocPage)
    page = @tab_view.append(doc_page)
    # FIXME: Disconect signals when closing a tab, so GC collects the DocPage instance.
    doc_page.bind_property("title", page, "title", :default)
    doc_page.notify_signal["title"].connect { on_doc_page_change(doc_page) }
    page.title = doc_page.title
    page.live_thumbnail = true

    @tab_view.selected_page = page
    update_title_bar
  end

  private def close_tab : Nil
    page = @tab_view.selected_page
    @tab_view.close_page(page) if page
    update_title_bar
  end

  def on_close_page(page : Adw::TabPage) : Bool
    @tab_view.close_page_finish(page, true) if @tab_view.n_pages > 1
    Gdk::EVENT_STOP
  end

  def on_doc_page_change(doc_page : DocPage)
    update_title_bar if @tab_view.n_pages == 1

    return if doc_page != selected_doc_page

    update_ui_for_page_change(doc_page)
  end

  private def update_title_bar
    title_widget.title = if @tab_view.n_pages == 1
                           "Rtfm - #{@tab_view.nth_page(0).title}"
                         else
                           "Rtfm"
                         end
  end

  private def on_selected_page_change(_param_spec)
    update_ui_for_page_change(selected_doc_page)
  end

  private def update_ui_for_page_change(doc_page : DocPage?)
    doc_page ||= selected_doc_page
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

  private def doc_page(pos : Int32) : DocPage
    adw_page = @tab_view.nth_page(pos)
    raise IndexError.new if adw_page.nil?

    adw_page.child.as(DocPage)
  end

  private def selected_doc_page : DocPage
    selected_doc_page?.not_nil!
  end

  private def selected_doc_page? : DocPage?
    adw_page = @tab_view.selected_page
    return if adw_page.nil?

    adw_page.child.as(DocPage)
  end
end
