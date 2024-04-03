require "./doc_kind"

class Doc
  include Comparable(Doc)

  getter key : String
  getter name : String
  getter kind : Kind
  getter path : String

  # Parent doc
  property! parent : Doc?
  # A linked list of children
  property children : Array(Doc)?

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
    return false unless can_be_parent?

    other.name.starts_with?(@name) && other.name.count(".:#") > 0
  end

  def can_be_parent? : Bool
    @kind.value <= Doc::Kind::LastParentKind.value
  end

  def add_child(new_child : Doc)
    children = @children ||= Array(Doc).new
    children << new_child
    new_child.parent = self
  end

  def icon_resource : String
    "/io/github/hugopl/rtfm/#{kind.to_s}.png"
  end

  def to_s(io : IO)
    io << @kind << ' ' << @name.inspect
  end

  def print_doc_tree : String
    String.build do |str|
      print_doc_tree(str)
    end
  end

  def print_doc_tree : String
    children = @children
    return "" if children.nil?

    String.build do |str|
      children.each do |doc|
        doc.print_doc_tree(str, 0)
      end
    end
  end

  def print_doc_tree(io : IO, level = 0) : Nil
    spacing = "  " * level
    io << spacing << @kind << ' ' << @name << '\n'
    children = @children
    return if children.nil?

    children.each do |doc|
      doc.print_doc_tree(io, level + 1)
    end
  end

  def <=>(other)
    @name <=> other.name
  end

  def root?
    false
  end

  def fzy_key
    @key
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
    self
  end

  def parent_of?(other : Doc) : Bool
    true
  end

  def children : Array(Doc)
    @children.not_nil!
  end

  def root?
    true
  end
end
