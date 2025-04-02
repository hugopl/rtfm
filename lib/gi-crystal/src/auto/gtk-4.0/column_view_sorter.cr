require "./sorter"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ColumnViewSorter < Sorter
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ColumnViewSorterClass), class_init,
        sizeof(LibGtk::ColumnViewSorter), instance_init, 0)
    end

    GICrystal.declare_new_method(ColumnViewSorter, g_object_get_qdata)

    # Initialize a new `ColumnViewSorter`.
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

    def initialize(*, primary_sort_column : Gtk::ColumnViewColumn? = nil, primary_sort_order : Gtk::SortType? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !primary_sort_column.nil?
        (_names.to_unsafe + _n).value = "primary-sort-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_sort_column)
        _n += 1
      end
      if !primary_sort_order.nil?
        (_names.to_unsafe + _n).value = "primary-sort-order".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_sort_order)
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
      @@g_type ||= LibGtk.gtk_column_view_sorter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ColumnViewSorter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def primary_sort_column : Gtk::ColumnViewColumn?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "primary-sort-column", pointerof(value), Pointer(Void).null)
      Gtk::ColumnViewColumn.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def primary_sort_order : Gtk::SortType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "primary-sort-order", pointerof(value), Pointer(Void).null)
      Gtk::SortType.new(value)
    end

    def n_sort_columns : UInt32
      # gtk_column_view_sorter_get_n_sort_columns: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_sorter_get_n_sort_columns(to_unsafe)

      # Return value handling
      _retval
    end

    def nth_sort_column(position : UInt32, sort_order : Gtk::SortType) : Gtk::ColumnViewColumn?
      # gtk_column_view_sorter_get_nth_sort_column: (Method)
      # @position:
      # @sort_order: (out) (transfer full)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_sorter_get_nth_sort_column(to_unsafe, position, sort_order)

      # Return value handling
      Gtk::ColumnViewColumn.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def primary_sort_column : Gtk::ColumnViewColumn?
      # gtk_column_view_sorter_get_primary_sort_column: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_sorter_get_primary_sort_column(to_unsafe)

      # Return value handling
      Gtk::ColumnViewColumn.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def primary_sort_order : Gtk::SortType
      # gtk_column_view_sorter_get_primary_sort_order: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_sorter_get_primary_sort_order(to_unsafe)

      # Return value handling
      Gtk::SortType.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
