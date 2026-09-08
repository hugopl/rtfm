require "./dash_docset"

# A single version of a docset available for download, shown in the versions
# pane of the docsets dialog.
class DashDocsetVersion < GObject::Object
  getter docset : DashDocset
  getter version : String
  getter? installed : Bool

  def initialize(@docset : DashDocset, @version : String, @installed : Bool)
    super()
  end

  def name : String
    @docset.name
  end
end
