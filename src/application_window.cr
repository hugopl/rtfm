require "./doc_page"
require "./locator"

@[Gtk::UiTemplate(resource: "/io/github/hugopl/rtfm/ui/application_window.ui", children: %w(view header_bar))]
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
    @locator = Locator.new
    Adw::HeaderBar.cast(template_child("header_bar")).title_widget = @locator

    setup_actions
    @go_back_action = Gio::SimpleAction.new("go_back", nil)
    @go_back_action.activate_signal.connect { go_back }
    add_action(@go_back_action)
    @go_forward_action = Gio::SimpleAction.new("go_forward", nil)
    @go_forward_action.activate_signal.connect { go_forward }
    add_action(@go_forward_action)

    new_tab
  end

  private def setup_actions
    app = application.not_nil!
    actions = {
      {name: "new_tab", shortcut: "<primary>T", closure: ->new_tab},
      {name: "close_tab", shortcut: "<primary>W", closure: ->close_tab},
      {name: "focus_locator", shortcut: "<primary>P", closure: ->focus_locator},
      {name: "focus_page", shortcut: nil, closure: ->focus_page},
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

    g_action = Gio::SimpleAction.new_stateful("change_docset", GLib::VariantType.new("s"), DocSet.default)
    g_action.activate_signal.connect(->change_docset(GLib::Variant?))
    add_action(g_action)
  end

  private def new_tab : Nil
    doc_page = DocPage.new
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

  def on_doc_page_change(doc_page : DocPage)
    return if doc_page != selected_doc_page

    update_ui_for_page_change(doc_page)
  end

  def on_selected_page_change(_param_spec)
    doc_page = selected_doc_page
    update_ui_for_page_change(doc_page)
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

  private def go_back
    selected_doc_page.try(&.go_back)
  end

  private def go_forward
    selected_doc_page.try(&.go_forward)
  end

  private def focus_page : Nil
    selected_doc_page.try(&.grab_focus)
  end

  private def change_docset(variant : GLib::Variant?)
    return if variant.nil?

    @locator.docset = DocSet.new(variant.as_s)
    change_action_state("change_docset", variant)
  end

  private def open_page(variant : GLib::Variant?)
    return if variant.nil?

    doc_page = selected_doc_page
    if doc_page
      doc_page.load_uri(variant.as_s)
      activate_action("win.focus_page", nil)
    end
  end

  private def selected_doc_page : DocPage?
    adw_page = @tab_view.selected_page
    return if adw_page.nil?

    adw_page.child.as(DocPage)
  end
end
