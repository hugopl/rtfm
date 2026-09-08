# Actions used by the docsets dialog widgets.
#
# Nothing is implemented yet, the buttons are there but the actions only log
# what they would do.
module DocsetAction
  GROUP     = "docsets"
  INSTALL   = "docsets.install"
  UNINSTALL = "docsets.uninstall"

  # Actions take the docset name and version they act on, e.g. `Python_3` and `3.13.7`.
  # A docset with no versions in the feed has a single unversioned build.
  def self.target(name : String, version : String?) : GLib::Variant
    GLib::Variant.new("#{name}\t#{version}")
  end

  def self.parse(target : GLib::Variant?) : {String, String?}
    return {"", nil} if target.nil?

    name, _, version = target.raw.as(String).partition('\t')
    {name, version.empty? ? nil : version}
  end
end
