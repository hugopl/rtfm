require "./dash_docset_version"
require "./docset_action"
require "./docset_repository"

# Row of the versions pane, one per version of the selected docset available for
# download. Installed versions are marked with an icon and can be uninstalled.
class DashDocsetVersionRow < Gtk::Box
  @version = Gtk::Label.new(xalign: 0.0, hexpand: true, ellipsize: Pango::EllipsizeMode::End)
  @installed_icon = Gtk::Image.new(icon_name: "object-select-symbolic", tooltip_text: "Installed", visible: false)
  @button = Gtk::Button.new(valign: Gtk::Align::Center)
  @item : DashDocsetVersion?

  def initialize
    super(orientation: Gtk::Orientation::Horizontal, spacing: 12)

    append(@version)
    append(@installed_icon)
    append(@button)
  end

  def version=(item : DashDocsetVersion) : Nil
    @item = item
    @version.label = item.label
    @installed_icon.visible = DocsetRepository.instance.installed?(item.name, item.version)
    DocsetAction.setup(@button, item.name, item.version)
  end

  # Same as `DashDocsetRow#refresh`, GTK doesn't bind the row again when the
  # docset is installed/uninstalled.
  def refresh : Nil
    @item.try { |item| self.version = item }
  end
end
