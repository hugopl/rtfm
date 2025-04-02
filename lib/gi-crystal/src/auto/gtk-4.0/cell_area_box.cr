require "./cell_area"
require "./buildable"

require "./cell_layout"

require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CellAreaBox < CellArea
    include Buildable
    include CellLayout
    include Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(CellAreaBox, g_object_get_qdata)

    # Initialize a new `CellAreaBox`.
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

    def initialize(*, edit_widget : Gtk::CellEditable? = nil, edited_cell : Gtk::CellRenderer? = nil, focus_cell : Gtk::CellRenderer? = nil, orientation : Gtk::Orientation? = nil, spacing : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !edit_widget.nil?
        (_names.to_unsafe + _n).value = "edit-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, edit_widget)
        _n += 1
      end
      if !edited_cell.nil?
        (_names.to_unsafe + _n).value = "edited-cell".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, edited_cell)
        _n += 1
      end
      if !focus_cell.nil?
        (_names.to_unsafe + _n).value = "focus-cell".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_cell)
        _n += 1
      end
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
        _n += 1
      end
      if !spacing.nil?
        (_names.to_unsafe + _n).value = "spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, spacing)
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
      @@g_type ||= LibGtk.gtk_cell_area_box_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CellAreaBox.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "spacing", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def self.new : self
      # gtk_cell_area_box_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_box_new

      # Return value handling
      Gtk::CellAreaBox.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def spacing : Int32
      # gtk_cell_area_box_get_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_box_get_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def pack_end(renderer : Gtk::CellRenderer, expand : Bool, align : Bool, fixed : Bool) : Nil
      # gtk_cell_area_box_pack_end: (Method)
      # @renderer:
      # @expand:
      # @align:
      # @fixed:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_box_pack_end(to_unsafe, renderer, expand, align, fixed)

      # Return value handling
    end

    @[Deprecated]
    def pack_start(renderer : Gtk::CellRenderer, expand : Bool, align : Bool, fixed : Bool) : Nil
      # gtk_cell_area_box_pack_start: (Method)
      # @renderer:
      # @expand:
      # @align:
      # @fixed:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_box_pack_start(to_unsafe, renderer, expand, align, fixed)

      # Return value handling
    end

    @[Deprecated]
    def spacing=(spacing : Int32) : Nil
      # gtk_cell_area_box_set_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_box_set_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
