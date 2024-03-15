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

  def search_changed(search_text : String) : Result
    Log.debug { "search changed: #{search_text}" }

    kind, search_text = parse_search_text(search_text)
    @last_results = Fzy.search(search_text, @metadata.docset) do |doc|
                      doc.key if kinds.empty? || doc.kind.in?(kinds)

                    end
    Log.info { @last_results.size }
    @last_results.size
  end

  private def parse_search_text(text : String)
    cmd = nil
    term = nil
    text.split(" ", 2) do |word|
      term ||= word if cmd
      cmd ||= word
    end
    return {text, Tuple.new} if term.nil?

    kind = case cmd
           when "c" then {Doc::Kind::Class, Doc::Kind::Struct, Doc::Kind::Module, Doc::Kind::Namespace}
           when "." then {Doc::Kind::Method, Doc::Kind::Function}
           else
             return {text, Tuple.new}
           end
    {term, kind}
  end

  def bind(item : LocatorItem, pos : Int32) : Nil
    match = @last_results[pos]
    doc = match.item
    item.name = doc.name
    item.description = doc.kind.to_s
    item.icon_resource = doc.icon_resource
  end

  def activate(locator : Locator, pos : UInt32) : Bool
    match = @last_results[pos]
    doc = match.item
    locator.activate_action("page.load_uri", @metadata.docset.uri(doc))
    true
  end
end
