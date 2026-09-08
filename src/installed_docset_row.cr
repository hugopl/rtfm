require "./docset_action"
require "./docset_metadata"

# Card of the "Installed" tab, one per installed docset.
class InstalledDocsetRow < Gtk::Box
  @icon = Gtk::Image.new(pixel_size: 32, icon_name: "package-x-generic-symbolic")
  @title = Gtk::Label.new(xalign: 0.0, ellipsize: Pango::EllipsizeMode::End, css_classes: {"heading"})
  @subtitle = Gtk::Label.new(xalign: 0.0, ellipsize: Pango::EllipsizeMode::End, css_classes: {"dim-label", "caption"})
  # The action is set together with its target, otherwise GTK complains the
  # action parameter doesn't match the (still unset) target.
  @uninstall_button = Gtk::Button.new(label: "Uninstall", valign: Gtk::Align::Center,
    css_classes: {"flat", "destructive-action"})

  def initialize
    super(orientation: Gtk::Orientation::Horizontal, spacing: 12, css_classes: {"card"},
      margin_top: 6, margin_bottom: 6)
    # The card style has no padding of its own.
    @icon.margin_start = 12
    @uninstall_button.margin_end = 12

    labels = Gtk::Box.new(orientation: Gtk::Orientation::Vertical, valign: Gtk::Align::Center,
      hexpand: true, margin_top: 12, margin_bottom: 12)
    labels.append(@title)
    labels.append(@subtitle)

    append(@icon)
    append(labels)
    append(@uninstall_button)
  end

  def metadata=(metadata : DocsetMetadata) : Nil
    icon_path = metadata.icon_path
    if icon_path.empty?
      @icon.icon_name = "package-x-generic-symbolic"
    else
      @icon.file = icon_path
    end

    @title.label = metadata.title
    @subtitle.label = metadata.version.empty? ? metadata.name : "v#{metadata.version}"
    @uninstall_button.action_target_value = DocsetAction.target(metadata.name, metadata.version)
    @uninstall_button.action_name = DocsetAction::UNINSTALL
  end
end
