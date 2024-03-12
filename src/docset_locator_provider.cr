class DocsetLocatorProvider < LocatorProvider
  Log = ::Log.for(DocsetLocatorProvider)

  @metadata : DocsetMetadata

  @methods : Array(Doc)?
  @classes : Array(Doc)?

  @last_results = [] of Fzy::Match(Doc)

  def initialize(@metadata)
    super()

    @title = @metadata.title
    @icon_path = @metadata.icon_path
  end

  def search_changed(search_text : String, kind : Doc::Kind?) : Result
    Log.debug { "search changed: #{search_text}, #{kind}" }

    Fzy.search(search_text, @metadata.docset.root) do |doc|
      raise RtfmError.new "e"
    end

    0
  end

  def bind(item : LocatorItem, pos : Int32) : Nil
    match = @last_results[pos]
    #    doc = match.item
    #
    #    item.name = doc.name
    #    item.description = doc.kind.to_s
    #    item.icon_resource = doc.icon_resource
  end

  def activate(locator : Locator, pos : UInt32) : Bool
    match = @last_results[pos]
    # doc = match.item
    # locator.activate_action("page.load_uri", @metadata.docset.uri(doc))
    true
  end
end
