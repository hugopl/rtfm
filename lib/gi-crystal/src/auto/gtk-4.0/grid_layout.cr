require "./layout_manager"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GridLayout < LayoutManager
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GridLayoutClass), class_init,
        sizeof(LibGtk::GridLayout), instance_init, 0)
    end

    GICrystal.declare_new_method(GridLayout, g_object_get_qdata)

    # Initialize a new `GridLayout`.
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

    def initialize(*, baseline_row : Int32? = nil, column_homogeneous : Bool? = nil, column_spacing : Int32? = nil, row_homogeneous : Bool? = nil, row_spacing : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !baseline_row.nil?
        (_names.to_unsafe + _n).value = "baseline-row".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, baseline_row)
        _n += 1
      end
      if !column_homogeneous.nil?
        (_names.to_unsafe + _n).value = "column-homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column_homogeneous)
        _n += 1
      end
      if !column_spacing.nil?
        (_names.to_unsafe + _n).value = "column-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column_spacing)
        _n += 1
      end
      if !row_homogeneous.nil?
        (_names.to_unsafe + _n).value = "row-homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, row_homogeneous)
        _n += 1
      end
      if !row_spacing.nil?
        (_names.to_unsafe + _n).value = "row-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, row_spacing)
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
      @@g_type ||= LibGtk.gtk_grid_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GridLayout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def baseline_row=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "baseline-row", unsafe_value, Pointer(Void).null)
      value
    end

    def baseline_row : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "baseline-row", pointerof(value), Pointer(Void).null)
      value
    end

    def column_homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "column-homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def column_homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "column-homogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def column_spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "column-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def column_spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "column-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def row_homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "row-homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def row_homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "row-homogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def row_spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "row-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def row_spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "row-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # gtk_grid_layout_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_grid_layout_new

      # Return value handling
      Gtk::GridLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def baseline_row : Int32
      # gtk_grid_layout_get_baseline_row: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_get_baseline_row(to_unsafe)

      # Return value handling
      _retval
    end

    def column_homogeneous : Bool
      # gtk_grid_layout_get_column_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_get_column_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def column_spacing : UInt32
      # gtk_grid_layout_get_column_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_get_column_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def row_baseline_position(row : Int32) : Gtk::BaselinePosition
      # gtk_grid_layout_get_row_baseline_position: (Method)
      # @row:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_get_row_baseline_position(to_unsafe, row)

      # Return value handling
      Gtk::BaselinePosition.new(_retval)
    end

    def row_homogeneous : Bool
      # gtk_grid_layout_get_row_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_get_row_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def row_spacing : UInt32
      # gtk_grid_layout_get_row_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_layout_get_row_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def baseline_row=(row : Int32) : Nil
      # gtk_grid_layout_set_baseline_row: (Method | Setter)
      # @row:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_set_baseline_row(to_unsafe, row)

      # Return value handling
    end

    def column_homogeneous=(homogeneous : Bool) : Nil
      # gtk_grid_layout_set_column_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_set_column_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def column_spacing=(spacing : UInt32) : Nil
      # gtk_grid_layout_set_column_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_set_column_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def set_row_baseline_position(row : Int32, pos : Gtk::BaselinePosition) : Nil
      # gtk_grid_layout_set_row_baseline_position: (Method)
      # @row:
      # @pos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_set_row_baseline_position(to_unsafe, row, pos)

      # Return value handling
    end

    def row_homogeneous=(homogeneous : Bool) : Nil
      # gtk_grid_layout_set_row_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_set_row_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def row_spacing=(spacing : UInt32) : Nil
      # gtk_grid_layout_set_row_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_layout_set_row_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
