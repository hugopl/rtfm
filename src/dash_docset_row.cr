require "./dash_docset"
require "./docset_repository"

# Row of the "All" tab, one per docset available for download.
#
# The row only presents the docset, installing it is done from the details pane
# shown when the row is selected.
class DashDocsetRow < Gtk::Box
  @icon = Gtk::Image.new(pixel_size: 32, icon_name: "package-x-generic-symbolic")
  @title = Gtk::Label.new(xalign: 0.0, ellipsize: Pango::EllipsizeMode::End)
  @subtitle = Gtk::Label.new(xalign: 0.0, ellipsize: Pango::EllipsizeMode::End, css_classes: {"dim-label", "caption"})
  @installed_icon = Gtk::Image.new(icon_name: "object-select-symbolic", tooltip_text: "Installed", visible: false)
  @docset : DashDocset?

  def initialize
    super(orientation: Gtk::Orientation::Horizontal, spacing: 12)

    labels = Gtk::Box.new(orientation: Gtk::Orientation::Vertical, valign: Gtk::Align::Center, hexpand: true)
    labels.append(@title)
    labels.append(@subtitle)

    append(@icon)
    append(labels)
    append(@installed_icon)
  end

  def docset=(docset : DashDocset) : Nil
    @docset = docset
    icon = docset.icon
    if icon
      @icon.paintable = icon
    else
      @icon.icon_name = "package-x-generic-symbolic"
    end

    @title.label = docset.title
    @subtitle.label = docset.summary
    @installed_icon.visible = DocsetRepository.instance.installed?(docset.name)
  end

  # Rows are bound to the docset once and GTK has no reason to bind them again
  # when a docset is installed/uninstalled, so they are refreshed by hand.
  def refresh : Nil
    @docset.try { |docset| self.docset = docset }
  end
end
