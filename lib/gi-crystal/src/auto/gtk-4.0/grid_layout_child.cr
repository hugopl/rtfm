require "./layout_child"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GridLayoutChild < LayoutChild
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GridLayoutChildClass), class_init,
        sizeof(LibGtk::GridLayoutChild), instance_init, 0)
    end

    GICrystal.declare_new_method(GridLayoutChild, g_object_get_qdata)

    # Initialize a new `GridLayoutChild`.
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

    def initialize(*, child_widget : Gtk::Widget? = nil, column : Int32? = nil, column_span : Int32? = nil, layout_manager : Gtk::LayoutManager? = nil, row : Int32? = nil, row_span : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !child_widget.nil?
        (_names.to_unsafe + _n).value = "child-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child_widget)
        _n += 1
      end
      if !column.nil?
        (_names.to_unsafe + _n).value = "column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column)
        _n += 1
      end
      if !column_span.nil?
        (_names.to_unsafe + _n).value = "column-span".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column_span)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !row.nil?
        (_names.to_unsafe + _n).value = "row".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, row)
        _n += 1
      end
      if !row_span.nil?
        (_names.to_unsafe + _n).value = "row-span".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, row_span)
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
      @@g_type ||= LibGtk.gtk_grid_layout_child_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GridLayoutChild.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "column", unsafe_value, Pointer(Void).null)
      value
    end

    def column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "column", pointerof(value), Pointer(Void).null)
      value
    end

    def column_span=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "column-span", unsafe_value, Pointer(Void).null)
      value
    end

    def column_span : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "column-span", pointerof(value), Pointer(Void).null)
      value
    end

    def row=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "row", unsafe_value, Pointer(Void).null)
      value
    end

    def row : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "row", pointerof(value), Pointer(Void).null)
      value
    end

    def row_span=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "row-span", unsafe_value, Pointer(Void).null)
      value
    end

    def row_span : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "row-span", pointerof(value), Pointer(Void).null)
      value
    end

    def column : Int32
      # gtk_grid_layout_child_get_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_child_get_column(to_unsafe)

      # Return value handling
      _retval
    end

    def column_span : Int32
      # gtk_grid_layout_child_get_column_span: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_child_get_column_span(to_unsafe)

      # Return value handling
      _retval
    end

    def row : Int32
      # gtk_grid_layout_child_get_row: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_child_get_row(to_unsafe)

      # Return value handling
      _retval
    end

    def row_span : Int32
      # gtk_grid_layout_child_get_row_span: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_child_get_row_span(to_unsafe)

      # Return value handling
      _retval
    end

    def column=(column : Int32) : Nil
      # gtk_grid_layout_child_set_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_child_set_column(to_unsafe, column)

      # Return value handling
    end

    def column_span=(span : Int32) : Nil
      # gtk_grid_layout_child_set_column_span: (Method | Setter)
      # @span:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_child_set_column_span(to_unsafe, span)

      # Return value handling
    end

    def row=(row : Int32) : Nil
      # gtk_grid_layout_child_set_row: (Method | Setter)
      # @row:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_child_set_row(to_unsafe, row)

      # Return value handling
    end

    def row_span=(span : Int32) : Nil
      # gtk_grid_layout_child_set_row_span: (Method | Setter)
      # @span:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_child_set_row_span(to_unsafe, span)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
