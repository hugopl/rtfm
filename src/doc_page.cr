require "./doc_set"

@[Gtk::UiTemplate(resource: "/io/github/hugopl/Rtfm/ui/doc_page.ui", children: %w(web_view))]
class DocPage < Gtk::Box
  include Gtk::WidgetTemplate

  @web_view : WebKit2::WebView
  @docset : DocSet

  def initialize(@docset = DocSet.default)
    super()
    @web_view = WebKit2::WebView.cast(template_child("web_view"))

    @web_view.load_uri("file:///usr/share/doc/crystal/api/index.html")
  end

  delegate grab_focus, to: @web_view
  delegate load_uri, to: @web_view

  def bind_properties(page : Adw::TabPage)
    @web_view.bind_property("title", page, "title", :default)
    @web_view.bind_property("is-loading", page, "loading", :default)
  end
end
