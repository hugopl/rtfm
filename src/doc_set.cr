require "fzy"

class Doc < GObject::Object
  getter name : String
  getter kind : String
  getter path : String

  def initialize(@kind, @name, @path)
    super()
  end

  def icon_name : String
    case kind
    when "union"                 then "lang-union-symbolic"
    when "alias"                 then "lang-alias-symbolic"
    when "class"                 then "lang-class-symbolic"
    when "macro"                 then "lang-macro-symbolic"
    when "enum"                  then "lang-enum-symbolic"
    when "enumvalue"             then "lang-enum-value-symbolic"
    when "function"              then "lang-function-symbolic"
    when "method", "classmethod" then "lang-method-symbolic"
    when "module", "namespace"   then "lang-namespace-symbolic"
    when "struct"                then "lang-struct-symbolic"
    when "structfield"           then "lang-struct-field-symbolic"
    else
      "lang-unknown-symbolic"
    end
  end
end

abstract class DocSet
  getter name : String
  @entries = [] of Doc
  @haystack : Fzy::PreparedHaystack?

  def initialize(@name)
  end

  def self.default : DocSet
    @@default ||= DashDocSet.new("Crystal")
  end

  protected def prepare_haystack : Fzy::PreparedHaystack
    @haystack = Fzy::PreparedHaystack.new(@entries.map(&.name))
  end

  def path(doc : Doc) : String
    doc.path
  end

  def search(term : String) : Array(Doc)
    haystack = @haystack
    haystack = prepare_haystack if haystack.nil?

    Fzy.search(term, haystack).map do |match|
      @entries[match.index]
    end
  end
end
