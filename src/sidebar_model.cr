require "./doc"

class SidebarItem < GObject::Object
  getter doc : Doc

  # TODO: Add a way to register a getter property in a method, so we don't need to declare the
  # instance variable when it's not used.
  @[GObject::Property]
  getter label : String = ""
  @[GObject::Property]
  getter icon_path : String = ""

  def initialize(@doc)
    super()
  end

  def label : String
    doc.name[@doc.parent.name.size..]
  end

  def icon_path : String
    doc.icon_resource
  end
end

class SidebarModel < GObject::Object
  include Gio::ListModel

  @doc : Doc = RootDoc.new
  @docset : Docset?
  @data = [] of SidebarItem

  def initialize
    super
  end

  def set_doc(doc : Doc, docset : Docset) : Nil
    doc = doc.can_be_parent? ? doc : doc.parent
    return if doc == @doc

    @doc = doc
    @docset = docset
    update_data
  end

  def uri(pos : Int) : String?
    docset = @docset
    item = @data[pos]?
    return if docset.nil? || item.nil?

    docset.uri(item.doc)
  end

  private def update_data
    old_size = @data.size
    children = @doc.children
    if @doc.root? || children.nil?
      @data.clear
      items_changed(0, old_size, 0)
      return
    end

    @data = children.map { |sibling| SidebarItem.new(sibling) }
    items_changed(0, old_size, @data.size)
  end

  @[GObject::Virtual]
  def get_n_items : UInt32
    @data.size.to_u32
  end

  @[GObject::Virtual]
  def get_item(pos : UInt32) : GObject::Object?
    @data[pos]?
  end

  @[GObject::Virtual]
  def get_item_type : UInt64
    SidebarItem.g_type
  end
end
