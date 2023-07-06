@[Gtk::UiTemplate(resource: "/io/github/hugopl/rtfm/ui/theme_selector.ui")]
class ThemeSelector < Gtk::Box
  include Gtk::WidgetTemplate

  def initialize
    super(css_name: "themeselector")
  end
end
