class DocsetLocatorProvider < LocatorProvider
  Log = ::Log.for(DocsetLocatorProvider)

  @metadata : DocsetMetadata

  @haystacks : Tuple(Array(Fzy::Hay(Doc)), Array(Fzy::Hay(Doc)))?
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
    dot = search_text.index(".")
    @last_results = if dot.nil?
                      search_all(search_text, kind)
                    else
                      class_term, method_term = search_text.split(".", 2)
                      search_class_method(class_term, method_term)
                    end
    @last_results.size
  end

  private def build_haystack
    @haystacks ||= begin
      parents_haystack = Array(Fzy::Hay(Doc)).new
      children_haystack = Array(Fzy::Hay(Doc)).new
      @metadata.docset.entries.compact_map do |doc|
        if doc.kind < Doc::Kind::LastParentKind
          parents_haystack << doc.as_hay
        else
          children_haystack << doc.as_hay
        end
      end

      {parents_haystack, children_haystack}
    end
  end

  def search_all(search_text : String, kind : Doc::Kind?)
    parents_haystack, children_haystack = build_haystack
    search_term = search_text.downcase
    if kind.nil?
      parents_matches = parents_haystack.compact_map(&.match?(search_term))
      children_matches = children_haystack.compact_map(&.match?(search_term))
      parents_matches.concat(children_matches).sort!
    elsif kind < Doc::Kind::LastParentKind
      parents_haystack.compact_map do |hay|
        hay.match?(search_term) if kind == hay.item.kind
      end.sort!
    else
      children_haystack.compact_map do |hay|
        hay.match?(search_term) if kind == hay.item.kind
      end.sort!
    end
  end

  def search_class_method(class_term : String, method_term : String)
    parents_haystack, _children_haystack = build_haystack
    class_term = class_term.downcase
    method_term = method_term.downcase

    parents_matches = parents_haystack.compact_map(&.match?(class_term))
    return parents_matches.sort! if method_term.empty?

    matches = [] of Fzy::Match(Doc)
    parents_matches.each do |type|
      children = type.item.children
      next if children.nil?

      children.each do |child|
        match = child.as_hay.match?(method_term)
        matches << match if match
      end
    end
    matches.sort!
  end

  def bind(item : LocatorItem, pos : Int32) : Nil
    doc = @last_results[pos]?.try(&.item)
    return if doc.nil?

    item.name = doc.name
    item.description = doc.kind.to_s
    item.icon_resource = doc.icon_resource
  end

  def activate(locator : Locator, pos : UInt32) : String?
    doc = @last_results[pos]?.try(&.item)
    @metadata.docset.uri(doc) if doc
  end
end
