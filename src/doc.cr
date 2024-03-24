require "./doc_kind"

class Doc
  getter key : String
  getter name : String
  getter kind : Kind
  getter path : String

  def initialize(@name, @kind, path : String)
    @path = path.includes?('<') ? path.gsub(/<dash[^>]+>/, "") : path
    @key = name_to_key
  end

  private def name_to_key
    l_cut = 0
    r_cut = -1
    case @kind
    when .method?, .function?, .attribute?, .macro?, .constructor?
      index = @name.rindex('.')
      l_cut = index + 1 if index
    end

    index = @name.rindex('(')
    r_cut = index - 1 if index
    return @name if l_cut == 0 && r_cut == -1

    @name[l_cut..r_cut]
  end

  def icon_resource : String
    "/io/github/hugopl/rtfm/#{kind.to_s}.png"
  end

  def to_s(io : IO)
    io << @kind << ' ' << @name.inspect
  end
end
