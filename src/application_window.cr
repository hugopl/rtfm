require "./doc_page"
require "./locator"

@[Gtk::UiTemplate(resource: "/io/github/hugopl/Rtfm/ui/application_window.ui", children: %w(view header_bar))]
class ApplicationWindow < Adw::ApplicationWindow
  include Gtk::WidgetTemplate

  @tab_view : Adw::TabView
  @locator : Locator

  # I need to store this, otherwise GC will eat the Crystal object
  # This need to be fixed at GICrystal level.
  # FIXME: See https://github.com/hugopl/gi-crystal/issues/105
  @doc_pages = [] of DocPage

  def initialize(application : Application)
    super(application: application)

    @tab_view = Adw::TabView.cast(template_child("view"))
    @locator = Locator.new
    Adw::HeaderBar.cast(template_child("header_bar")).title_widget = @locator
    new_tab
    setup_actions
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
    # FIXME: See https://github.com/hugopl/gi-crystal/issues/105
    @doc_pages << doc_page
    page = @tab_view.append(doc_page)
    doc_page.bind_property("title", page, "title", :default)
    page.title = doc_page.title
    page.live_thumbnail = true
  end

  private def close_tab : Nil
    page = @tab_view.selected_page
    @tab_view.close_page(page) if page
  end

  private def focus_locator : Nil
    @locator.grab_focus
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
