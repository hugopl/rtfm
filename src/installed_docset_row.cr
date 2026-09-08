require "./docset_action"
require "./docset_metadata"

# Row of the "Installed" tab boxed list, one per installed docset.
class InstalledDocsetRow < Adw::ActionRow
  @icon = Gtk::Image.new(pixel_size: 32, icon_name: "package-x-generic-symbolic")
  @uninstall_button = Gtk::Button.new(label: "Uninstall", valign: Gtk::Align::Center,
    css_classes: {"flat", "destructive-action"})

  def initialize(metadata : DocsetMetadata)
    super()

    add_prefix(@icon)
    add_suffix(@uninstall_button)

    icon_path = metadata.icon_path
    @icon.file = icon_path unless icon_path.empty?

    self.title = metadata.title
    self.subtitle = metadata.version.empty? ? metadata.name : "v#{metadata.version}"
    DocsetAction.setup(@uninstall_button, metadata.name, metadata.version)
  end
end
