require "./dash_docset_version"
require "./docset_action"

# Row of the versions pane, one per version of the selected docset available for
# download. Installed versions are marked with an icon and can be uninstalled.
class DashDocsetVersionRow < Gtk::Box
  @version = Gtk::Label.new(xalign: 0.0, hexpand: true, ellipsize: Pango::EllipsizeMode::End)
  @installed_icon = Gtk::Image.new(icon_name: "object-select-symbolic", tooltip_text: "Installed", visible: false)
  @button = Gtk::Button.new(valign: Gtk::Align::Center)

  def initialize
    super(orientation: Gtk::Orientation::Horizontal, spacing: 12)

    append(@version)
    append(@installed_icon)
    append(@button)
  end

  def version=(item : DashDocsetVersion) : Nil
    @version.label = "v#{item.version}"
    @installed_icon.visible = item.installed?

    # The target must be set before the action, otherwise GTK complains the
    # action parameter doesn't match the (still unset) target.
    @button.action_target_value = DocsetAction.target(item.name, item.version)
    if item.installed?
      @button.label = "Uninstall"
      @button.css_classes = {"flat", "destructive-action"}
      @button.action_name = DocsetAction::UNINSTALL
    else
      @button.label = "Install"
      @button.css_classes = {"flat", "suggested-action"}
      @button.action_name = DocsetAction::INSTALL
    end
  end
end
