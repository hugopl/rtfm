class SearchResultModel < GObject::Object
  include Gio::ListModel

  @data = [] of Doc

  def data=(data : Array(Doc)) : Nil
    old_data_size = @data.size || 0
    @data = data
    items_changed_signal.emit(0, old_data_size.to_u32, data.size.to_u32)
  end

  def reset
    old_data_size = @data.size.to_u32
    @data.clear
    items_changed_signal.emit(0, 0, old_data_size)
  end

  @[GObject::Virtual]
  def get_n_items : UInt32
    @data.size.to_u32
  end

  @[GObject::Virtual]
  def get_item(pos : UInt32) : GObject::Object?
    obj = @data[pos]?
    return if obj.nil?

    # FIXME: https://github.com/hugopl/gi-crystal/issues/102
    LibGObject.g_object_ref(obj)
    obj
  end

  @[GObject::Virtual]
  def get_item_type : UInt64
    Doc.g_type
  end
end
