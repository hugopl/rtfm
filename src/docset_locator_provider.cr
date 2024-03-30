class DocsetLocatorProvider < LocatorProvider
  Log = ::Log.for(DocsetLocatorProvider)

  @metadata : DocsetMetadata

  @haystack : Fzy::PreparedHaystack(Doc)?
  @last_results = [] of Fzy::Match(Doc)

  def initialize(@metadata)
    super()

    @title = @metadata.title
    @icon_path = @metadata.icon_path
  end

  def docset : Docset
    @metadata.docset
  end

  def search_changed(search_text : String, kind : Doc::Kind?) : Result
    Log.debug { "search changed: #{search_text}, #{kind}" }
    haystack = @haystack ||= Fzy::PreparedHaystack.new(@metadata.docset.entries)

    @last_results = haystack.search(search_text)
    @last_results.size
  end

  def bind(item : LocatorItem, pos : Int32) : Nil
    doc = @last_results[pos].item
    item.name = doc.name
    item.description = doc.kind.to_s
    item.icon_resource = doc.icon_resource
  end

  def activate(locator : Locator, pos : UInt32) : String?
    doc = @last_results[pos].item
    @metadata.docset.uri(doc)
  end
end
