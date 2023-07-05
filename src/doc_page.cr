require "./doc_set"

require "./new_page"

class DocPage < Adw::Bin
  @[GObject::Property]
  property title : String = "Choose a DocSet"
  property docset : DocSet

  @web_view : WebKit2::WebView?

  def initialize(@docset)
    super(hexpand: true, vexpand: true)
    self.child = NewPage.new
  end

  delegate load_uri, to: @web_view

  def grab_focus
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

  def load_uri(uri : String)
    web_view = @web_view
    if web_view.nil?
      @web_view = web_view = WebKit2::WebView.new
      web_view.bind_property("title", self, "title", :default)
      self.child = web_view
    end

    web_view.load_uri(uri)
  end
end
