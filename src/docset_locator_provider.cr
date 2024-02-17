class DocsetLocatorProvider < LocatorProvider
  Log = ::Log.for(DocsetLocatorProvider)

  @metadata : DocsetMetadata

  @all_haystack : Fzy::PreparedHaystack?
  # @methods_haystack : Fzy::PreparedHaystack?
  # @classes_haystack : Fzy::PreparedHaystack?
  @haystacks_initialized = false

  @last_results = [] of Fzy::Match

  def initialize(@metadata)
    super()

    @title = @metadata.title
    @icon_path = @metadata.icon_path
  end

  def search_changed(search_text : String) : Result
    initialize_haystacks

    @last_results = @all_haystack.not_nil!.search(search_text)
    @last_results.size
  end

  private def initialize_haystacks
    return if @haystacks_initialized

    @all_haystack = Fzy::PreparedHaystack.new(@metadata.docset.entries.map(&.key))
    @haystacks_initialized = true
  end

  def bind(item : LocatorItem, pos : Int32) : Nil
    match = @last_results[pos]

    doc = @metadata.docset.entries[match.index]

    item.name = doc.name
    item.description = doc.kind.to_s
    item.icon_name = doc.icon_name
  end

  def activate(locator : Locator, pos : UInt32) : Bool
    match = @last_results[pos]

    docset = @metadata.docset
    doc = docset.entries[match.index]
    locator.activate_action("page.load_uri", docset.uri(doc))
    true
  end
end
