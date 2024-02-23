class DocsetLocatorProvider < LocatorProvider
  Log = ::Log.for(DocsetLocatorProvider)

  @metadata : DocsetMetadata

  @all_haystack : Fzy::PreparedHaystack?
  @methods_haystack : Fzy::PreparedHaystack?
  @classes_haystack : Fzy::PreparedHaystack?
  @current_haystack : Fzy::PreparedHaystack?
  @methods : Array(Doc)?
  @classes : Array(Doc)?
  @haystacks_initialized = false

  @last_results = [] of Fzy::Match

  def initialize(@metadata)
    super()

    @title = @metadata.title
    @icon_path = @metadata.icon_path
  end

  def search_changed(search_text : String, kind : Doc::Kind?) : Result
    Log.debug { "search changed: #{search_text}, #{kind}" }
    initialize_haystacks

    haystack = case kind
               when Nil
                 @all_haystack
               when .class?
                 @classes_haystack
               when .method?, .function?
                 @methods_haystack
               else
                 @all_haystack
               end
    @current_haystack = haystack
    @last_results = haystack.not_nil!.search(search_text)
    @last_results.size
  end

  private def initialize_haystacks
    return if @haystacks_initialized

    @all_haystack = Fzy::PreparedHaystack.new(@metadata.docset.entries.map(&.key))

    # TODO: Optimize this 💩️, 😁️😅️
    @methods = methods = @metadata.docset.entries.select { |doc| doc.kind.method? || doc.kind.function? }
    @methods_haystack = Fzy::PreparedHaystack.new(methods.map(&.key))
    @classes = classes = @metadata.docset.entries.select(&.kind.class?)
    @classes_haystack = Fzy::PreparedHaystack.new(classes.map(&.key))

    @haystacks_initialized = true
  end

  def bind(item : LocatorItem, pos : Int32) : Nil
    match = @last_results[pos]
    doc = entries[match.index]

    item.name = doc.name
    item.description = doc.kind.to_s
    item.icon_name = doc.icon_name
  end

  private def entries : Array(Doc)
   case @current_haystack
   when @all_haystack
     @metadata.docset.entries
   when @classes_haystack
     @classes.not_nil!
   when @methods_haystack
     @methods.not_nil!
   else
     raise RtfmError.new("wtf?")
   end
  end

  def activate(locator : Locator, pos : UInt32) : Bool
    match = @last_results[pos]
    doc = entries[match.index]
    locator.activate_action("page.load_uri", @metadata.docset.uri(doc))
    true
  end
end
