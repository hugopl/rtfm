require "../g_object-2.0/object"
require "./list_model"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ListStore < GObject::Object
    include ListModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ListStoreClass), class_init,
        sizeof(LibGio::ListStore), instance_init, 0)
    end

    GICrystal.declare_new_method(ListStore, g_object_get_qdata)

    # Initialize a new `ListStore`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
    end

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    def initialize(*, item_type : UInt64? = nil, n_items : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !item_type.nil?
        (_names.to_unsafe + _n).value = "item-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_type)
        _n += 1
      end
      if !n_items.nil?
        (_names.to_unsafe + _n).value = "n-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_items)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_list_store_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ListStore.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def item_type=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "item-type", unsafe_value, Pointer(Void).null)
      value
    end

    def item_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "item-type", pointerof(value), Pointer(Void).null)
      value
    end

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(item_type : UInt64) : self
      # g_list_store_new: (Constructor)
      # @item_type:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_list_store_new(item_type)

      # Return value handling
      Gio::ListStore.new(_retval, GICrystal::Transfer::Full)
    end

    def append(item : GObject::Object) : Nil
      # g_list_store_append: (Method)
      # @item:
      # Returns: (transfer none)

      # C call
      LibGio.g_list_store_append(to_unsafe, item)

      # Return value handling
    end

    def find(item : GObject::Object) : Bool
      # g_list_store_find: (Method)
      # @item:
      # @position: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      position = Pointer(UInt32).null
      # C call
      _retval = LibGio.g_list_store_find(to_unsafe, item, position)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def find_with_equal_func(item : GObject::Object?, equal_func : GLib::EqualFunc) : Bool
      # g_list_store_find_with_equal_func: (Method)
      # @item: (nullable)
      # @equal_func:
      # @position: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      item = if item.nil?
               Pointer(Void).null
             else
               item.to_unsafe
             end
      # Generator::OutArgUsedInReturnPlan
      position = Pointer(UInt32).null
      # C call
      _retval = LibGio.g_list_store_find_with_equal_func(to_unsafe, item, equal_func, position)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def find_with_equal_func_full(item : GObject::Object?, equal_func : GLib::EqualFuncFull, user_data : Pointer(Void)?) : Bool
      # g_list_store_find_with_equal_func_full: (Method)
      # @item: (nullable)
      # @equal_func:
      # @user_data: (nullable)
      # @position: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      item = if item.nil?
               Pointer(Void).null
             else
               item.to_unsafe
             end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::OutArgUsedInReturnPlan
      position = Pointer(UInt32).null
      # C call
      _retval = LibGio.g_list_store_find_with_equal_func_full(to_unsafe, item, equal_func, user_data, position)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def insert(position : UInt32, item : GObject::Object) : Nil
      # g_list_store_insert: (Method)
      # @position:
      # @item:
      # Returns: (transfer none)

      # C call
      LibGio.g_list_store_insert(to_unsafe, position, item)

      # Return value handling
    end

    def insert_sorted(item : GObject::Object, compare_func : GLib::CompareDataFunc, user_data : Pointer(Void)?) : UInt32
      # g_list_store_insert_sorted: (Method)
      # @item:
      # @compare_func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGio.g_list_store_insert_sorted(to_unsafe, item, compare_func, user_data)

      # Return value handling
      _retval
    end

    def remove(position : UInt32) : Nil
      # g_list_store_remove: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGio.g_list_store_remove(to_unsafe, position)

      # Return value handling
    end

    def remove_all : Nil
      # g_list_store_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_list_store_remove_all(to_unsafe)

      # Return value handling
    end

    def sort(compare_func : GLib::CompareDataFunc, user_data : Pointer(Void)?) : Nil
      # g_list_store_sort: (Method)
      # @compare_func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGio.g_list_store_sort(to_unsafe, compare_func, user_data)

      # Return value handling
    end

    def splice(position : UInt32, n_removals : UInt32, additions : Enumerable(GObject::Object)) : Nil
      # g_list_store_splice: (Method)
      # @position:
      # @n_removals:
      # @additions: (array length=n_additions element-type Interface)
      # @n_additions:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_additions = additions.size
      # Generator::ArrayArgPlan
      additions = additions.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::Object))

      # C call
      LibGio.g_list_store_splice(to_unsafe, position, n_removals, additions, n_additions)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
