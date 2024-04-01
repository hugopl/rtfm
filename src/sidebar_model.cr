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

  @doc = RootDoc.new
  @data = [] of SidebarItem

  def initialize
    super
  end

  def doc=(doc : Doc)
    Log.fatal { "doc: #{doc}" }
    return if doc == @doc

    @doc = doc
    old_size = @data.size
    children = doc.children
    if doc.root? || children.nil?
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
