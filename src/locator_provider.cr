abstract class LocatorProvider < GObject::Object
  alias Result = Int32 | Channel(Int32)

  @[GObject::Property]
  getter title : String = ""

  # TODO: File this bug on gi-crystal, it's not possible to have Path properties.
  @[GObject::Property]
  getter icon_path : String = ""

  # Method called everytime this locator is active and the search text changes.
  #
  # Assync providers must return a Channel(Int32), sync providers a Int32.
  # Int32 values means the number of results available to show.
  #
  # For assync providers, send 0 (zero) as last value to inform there's no more data.
  #
  # See `#bind`.
  abstract def search_changed(search_text : String, kind : Doc::Kind?) : Result

  # Bind locator data to a Locatoritem that will be used as backend on ListView.
  abstract def bind(item : LocatorItem, pos : Int32) : Nil

  # Method called when a locator item is activated.
  abstract def activate(locator : Locator, pos : UInt32) : Bool
end
