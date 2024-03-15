require "./doc_kind"

struct KindConverter
  def self.from_rs(rs)
    Doc::Kind.parse(rs.read(String))
  end
end

class Doc
  include DB::Serializable
  include Iterable(Doc)

  getter key : String
  getter name : String
  getter kind : Kind
  getter path : String
  # Parent doc
  property! parent : Doc?
  # A linked list of children
  property children : Array(Doc)?

  def initialize(rs : DB::ResultSet)
    name = rs.read(String)
    kind = Doc::Kind.parse(rs.read(String))
    path = rs.read(String)
    initialize(name, kind, path)
  end

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

  def parent_of?(other : Doc) : Bool
    return false unless @kind.can_be_parent?

    other.name.starts_with?(@name) && other.name.count(".:#") > 0
  end

  def each
    DocIterator.new(self)
  end

  def each(&)
    it = DocIterator.new(self)
    while item = it.next
      break if item == Iterator::Stop::INSTANCE

      yield(item)
    end
  end

  def icon_resource : String
    "/io/github/hugopl/rtfm/#{kind.to_s}.png"
  end

  def add_child(new_child : Doc)
    children = @children ||= Array(Doc).new
    children << new_child
    new_child.parent = self
  end

  def print_tree(level = 0)
    spacing = "  " * level
    puts "#{spacing}#{@kind} #{@name.inspect} #{@path}"
    children = @children
    return if children.nil?

    children.each do |doc|
      doc.print_tree(level + 1)
    end
  end

  def inspect(io : IO)
    io << "<" << @name << " parent=" << @parent.try(&.name)
    io << " child=" << @children
    io << ">"
  end

  def to_s(io : IO)
    io << @kind << ' ' << @name.inspect
  end
end

class RootDoc < Doc
  def initialize
    @name = "🫚"
    @kind = Kind::Root
    @path = @key = ""
    @children = [] of Doc
  end

  def parent
    raise ArgumentError.new("roots doesn't have parent")
  end

  def parent_of?(other : Doc) : Bool
    true
  end

  def children : Array(Doc)
    @children.not_nil!
  end
end
