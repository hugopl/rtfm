require "../g_object-2.0/object"
require "./buildable"

require "./tree_drag_dest"

require "./tree_drag_source"

require "./tree_model"

require "./tree_sortable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ListStore < GObject::Object
    include Buildable
    include TreeDragDest
    include TreeDragSource
    include TreeModel
    include TreeSortable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ListStoreClass), class_init,
        sizeof(LibGtk::ListStore), instance_init, 0)
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_list_store_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ListStore.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.new(types : Enumerable(UInt64)) : self
      # gtk_list_store_newv: (Constructor)
      # @n_columns:
      # @types: (array length=n_columns element-type Gtype)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_columns = types.size
      # Generator::ArrayArgPlan
      types = types.to_a.to_unsafe.as(Pointer(UInt64))

      # C call
      _retval = LibGtk.gtk_list_store_newv(n_columns, types)

      # Return value handling
      Gtk::ListStore.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(*types : UInt64)
      self.new(types)
    end

    @[Deprecated]
    def append : Gtk::TreeIter
      # gtk_list_store_append: (Method)
      # @iter: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      LibGtk.gtk_list_store_append(to_unsafe, iter)

      # Return value handling
      iter
    end

    @[Deprecated]
    def clear : Nil
      # gtk_list_store_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_store_clear(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def insert(position : Int32) : Gtk::TreeIter
      # gtk_list_store_insert: (Method)
      # @iter: (out) (caller-allocates)
      # @position:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      LibGtk.gtk_list_store_insert(to_unsafe, iter, position)

      # Return value handling
      iter
    end

    @[Deprecated]
    def insert_after(sibling : Gtk::TreeIter?) : Gtk::TreeIter
      # gtk_list_store_insert_after: (Method)
      # @iter: (out) (caller-allocates)
      # @sibling: (nullable)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new # Generator::NullableArrayPlan
      sibling = if sibling.nil?
                  Pointer(Void).null
                else
                  sibling.to_unsafe
                end

      # C call
      LibGtk.gtk_list_store_insert_after(to_unsafe, iter, sibling)

      # Return value handling
      iter
    end

    @[Deprecated]
    def insert_before(sibling : Gtk::TreeIter?) : Gtk::TreeIter
      # gtk_list_store_insert_before: (Method)
      # @iter: (out) (caller-allocates)
      # @sibling: (nullable)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new # Generator::NullableArrayPlan
      sibling = if sibling.nil?
                  Pointer(Void).null
                else
                  sibling.to_unsafe
                end

      # C call
      LibGtk.gtk_list_store_insert_before(to_unsafe, iter, sibling)

      # Return value handling
      iter
    end

    @[Deprecated]
    def insert_with_values(position : Int32, columns : Enumerable(Int32), values : Enumerable(_)) : Gtk::TreeIter
      # gtk_list_store_insert_with_valuesv: (Method)
      # @iter: (out) (caller-allocates) (optional)
      # @position:
      # @columns: (array length=n_values element-type Int32)
      # @values: (array length=n_values element-type Interface)
      # @n_values:
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      iter = Pointer(Void).null # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new  # Generator::ArrayLengthArgPlan
      n_values = columns.size
      # Generator::ArrayArgPlan
      columns = columns.to_a.to_unsafe.as(Pointer(Int32))
      # Generator::ArrayLengthArgPlan
      n_values = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe.as(Pointer(LibGObject::Value)).value }.to_unsafe.as(Pointer(LibGObject::Value))

      # C call
      LibGtk.gtk_list_store_insert_with_valuesv(to_unsafe, iter, position, columns, values, n_values)

      # Return value handling
      iter
    end

    @[Deprecated]
    def iter_is_valid(iter : Gtk::TreeIter) : Bool
      # gtk_list_store_iter_is_valid: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_store_iter_is_valid(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def move_after(iter : Gtk::TreeIter, position : Gtk::TreeIter?) : Nil
      # gtk_list_store_move_after: (Method)
      # @iter:
      # @position: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      position = if position.nil?
                   Pointer(Void).null
                 else
                   position.to_unsafe
                 end

      # C call
      LibGtk.gtk_list_store_move_after(to_unsafe, iter, position)

      # Return value handling
    end

    @[Deprecated]
    def move_before(iter : Gtk::TreeIter, position : Gtk::TreeIter?) : Nil
      # gtk_list_store_move_before: (Method)
      # @iter:
      # @position: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      position = if position.nil?
                   Pointer(Void).null
                 else
                   position.to_unsafe
                 end

      # C call
      LibGtk.gtk_list_store_move_before(to_unsafe, iter, position)

      # Return value handling
    end

    @[Deprecated]
    def prepend : Gtk::TreeIter
      # gtk_list_store_prepend: (Method)
      # @iter: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      LibGtk.gtk_list_store_prepend(to_unsafe, iter)

      # Return value handling
      iter
    end

    @[Deprecated]
    def remove(iter : Gtk::TreeIter) : Bool
      # gtk_list_store_remove: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_store_remove(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def reorder(new_order : Enumerable(Int32)) : Nil
      # gtk_list_store_reorder: (Method)
      # @new_order: (array zero-terminated=1 element-type Int32)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      new_order = new_order.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      LibGtk.gtk_list_store_reorder(to_unsafe, new_order)

      # Return value handling
    end

    def reorder(*new_order : Int32)
      reorder(new_order)
    end

    @[Deprecated]
    def column_types=(types : Enumerable(UInt64)) : Nil
      # gtk_list_store_set_column_types: (Method)
      # @n_columns:
      # @types: (array length=n_columns element-type Gtype)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_columns = types.size
      # Generator::ArrayArgPlan
      types = types.to_a.to_unsafe.as(Pointer(UInt64))

      # C call
      LibGtk.gtk_list_store_set_column_types(to_unsafe, n_columns, types)

      # Return value handling
    end

    @[Deprecated]
    def set_value(iter : Gtk::TreeIter, column : Int32, value : _) : Nil
      # gtk_list_store_set_value: (Method)
      # @iter:
      # @column:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGtk.gtk_list_store_set_value(to_unsafe, iter, column, value)

      # Return value handling
    end

    @[Deprecated]
    def set(iter : Gtk::TreeIter, columns : Enumerable(Int32), values : Enumerable(_)) : Nil
      # gtk_list_store_set_valuesv: (Method)
      # @iter:
      # @columns: (array length=n_values element-type Int32)
      # @values: (array length=n_values element-type Interface)
      # @n_values:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_values = columns.size
      # Generator::ArrayArgPlan
      columns = columns.to_a.to_unsafe.as(Pointer(Int32))
      # Generator::ArrayLengthArgPlan
      n_values = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe.as(Pointer(LibGObject::Value)).value }.to_unsafe.as(Pointer(LibGObject::Value))

      # C call
      LibGtk.gtk_list_store_set_valuesv(to_unsafe, iter, columns, values, n_values)

      # Return value handling
    end

    @[Deprecated]
    def swap(a : Gtk::TreeIter, b : Gtk::TreeIter) : Nil
      # gtk_list_store_swap: (Method)
      # @a:
      # @b:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_store_swap(to_unsafe, a, b)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
