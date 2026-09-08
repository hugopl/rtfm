require "./docset_installer"
require "./docset_repository"

# Actions used by the docsets dialog widgets.
module DocsetAction
  GROUP     = "docsets"
  INSTALL   = "docsets.install"
  UNINSTALL = "docsets.uninstall"

  # Actions take the docset name and version they act on, e.g. `Python_3` and `3.13.7`.
  # A docset with no versions in the feed has a single unversioned build.
  def self.target(name : String, version : String?) : GLib::Variant
    GLib::Variant.new("#{name}\t#{version}")
  end

  # Turns *button* into the install/uninstall button of *name* *version*.
  #
  # While the installer works on the docset the button just tells what's going
  # on, and docsets the user can't remove — e.g. the ones shipped by the
  # distro — have their uninstall button disabled.
  def self.setup(button : Gtk::Button, name : String, version : String?) : Nil
    # The target must be set before the action, otherwise GTK complains the
    # action parameter doesn't match the (still unset) target.
    button.action_target_value = target(name, version)
    button.tooltip_text = nil
    button.sensitive = true

    job = DocsetInstaller.instance.job_for(name, version)
    if job
      button.label = job.kind.install? ? "Installing…" : "Removing…"
      button.css_classes = {"flat"}
      button.sensitive = false
      return
    end

    metadata = DocsetRepository.instance.find(name, version)
    if metadata
      button.label = "Uninstall"
      button.css_classes = {"flat", "destructive-action"}
      button.action_name = UNINSTALL
      return if metadata.removable?

      button.sensitive = false
      button.tooltip_text = "#{metadata.title} was installed by the system administrator."
    else
      button.label = "Install"
      button.css_classes = {"flat", "suggested-action"}
      button.action_name = INSTALL
    end
  end

  def self.parse(target : GLib::Variant?) : {String, String?}
    return {"", nil} if target.nil?

    name, _, version = target.raw.as(String).partition('\t')
    {name, version.empty? ? nil : version}
  end
end
