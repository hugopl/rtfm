@[Gtk::UiTemplate(file: "#{__DIR__}/theme_selector.ui")]
class ThemeSelector < Gtk::Box
  include Gtk::WidgetTemplate

  def initialize
    super(css_name: "themeselector")
  end
end
