require "./dash_docset"
require "./docset_repository"

# Row of the "All" tab, one per docset available for download.
#
# Docsets with more than one version don't have an install button, they show a
# chevron instead, since the version to install is picked on the versions pane.
class DashDocsetRow < Gtk::Box
  @icon = Gtk::Image.new(pixel_size: 32, icon_name: "package-x-generic-symbolic")
  @title = Gtk::Label.new(xalign: 0.0, ellipsize: Pango::EllipsizeMode::End)
  @subtitle = Gtk::Label.new(xalign: 0.0, ellipsize: Pango::EllipsizeMode::End, css_classes: {"dim-label", "caption"})
  @installed_icon = Gtk::Image.new(icon_name: "object-select-symbolic", tooltip_text: "Installed", visible: false)
  @install_button = Gtk::Button.new(label: "Install", valign: Gtk::Align::Center, visible: false, css_classes: {"flat"})
  @chevron = Gtk::Image.new(icon_name: "go-next-symbolic", visible: false)

  def initialize
    super(orientation: Gtk::Orientation::Horizontal, spacing: 12)

    labels = Gtk::Box.new(orientation: Gtk::Orientation::Vertical, valign: Gtk::Align::Center, hexpand: true)
    labels.append(@title)
    labels.append(@subtitle)

    append(@icon)
    append(labels)
    append(@installed_icon)
    append(@install_button)
    append(@chevron)
  end

  def docset=(docset : DashDocset) : Nil
    icon = docset.icon
    if icon
      @icon.paintable = icon
    else
      @icon.icon_name = "package-x-generic-symbolic"
    end

    @title.label = docset.title
    @subtitle.label = subtitle_for(docset)

    installed = DocsetRepository.instance.installed?(docset.name)
    @installed_icon.visible = installed
    @chevron.visible = docset.multiple_versions?
    @install_button.visible = !docset.multiple_versions?
    # The target must be set before the action, otherwise GTK complains the
    # action parameter doesn't match the (still unset) target.
    @install_button.action_target_value = DocsetAction.target(docset.name, docset.latest_version)
    if installed
      @install_button.label = "Uninstall"
      @install_button.css_classes = {"flat", "destructive-action"}
      @install_button.action_name = DocsetAction::UNINSTALL
    else
      @install_button.label = "Install"
      @install_button.css_classes = {"flat", "suggested-action"}
      @install_button.action_name = DocsetAction::INSTALL
    end
  end

  private def subtitle_for(docset : DashDocset) : String
    String.build do |io|
      version = docset.latest_version
      if docset.multiple_versions?
        io << docset.versions.size << " versions"
      elsif version
        io << 'v' << version
      end
      io << " · " unless io.empty?
      io << docset.size.humanize_bytes(format: :JEDEC)
    end
  end
end
