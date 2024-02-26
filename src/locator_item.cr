class LocatorItem < GObject::Object
  @[GObject::Property]
  property name : String
  @[GObject::Property]
  property icon_resource : String
  @[GObject::Property]
  property description : String

  def initialize(@name = "", @description = "", @icon_resource = "")
    super()
  end
end
