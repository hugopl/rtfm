require "./doc_set"

require "./new_page"

class DocPage < Adw::Bin
  @[GObject::Property]
  property title : String = "Choose a DocSet"

  @web_view : WebKit2::WebView?

  def initialize
    super(hexpand: true, vexpand: true)
    self.child = NewPage.new
  end

  def grab_focus
    @web_view.try(&.grab_focus)
  end

  def load_uri(uri : String)
    web_view = @web_view
    if web_view.nil?
      @web_view = web_view = WebKit2::WebView.new
      web_view.bind_property("title", self, "title", :default)
      self.child = web_view
    end

    web_view.load_uri(uri)
  end

  delegate load_uri, to: @web_view

  def bind_properties(page : Adw::TabPage)
  end
end
