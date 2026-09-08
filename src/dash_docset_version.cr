require "./dash_docset"

# A single version of a docset available for download, shown in the versions
# list of the docsets dialog. Docsets shipping a single unversioned build have
# an empty version.
class DashDocsetVersion < GObject::Object
  getter docset : DashDocset
  getter version : String

  def initialize(@docset : DashDocset, @version : String)
    super()
  end

  def name : String
    @docset.name
  end

  def label : String
    @version.empty? ? "Latest" : "v#{@version}"
  end
end
