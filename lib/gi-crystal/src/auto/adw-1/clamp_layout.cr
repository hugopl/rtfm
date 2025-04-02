require "../gtk-4.0/layout_manager"
require "../gtk-4.0/orientable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class ClampLayout < Gtk::LayoutManager
    include Gtk::Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ClampLayout, g_object_get_qdata)

    # Initialize a new `ClampLayout`.
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

    def initialize(*, maximum_size : Int32? = nil, orientation : Gtk::Orientation? = nil, tightening_threshold : Int32? = nil, unit : Adw::LengthUnit? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !maximum_size.nil?
        (_names.to_unsafe + _n).value = "maximum-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, maximum_size)
        _n += 1
      end
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
        _n += 1
      end
      if !tightening_threshold.nil?
        (_names.to_unsafe + _n).value = "tightening-threshold".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tightening_threshold)
        _n += 1
      end
      if !unit.nil?
        (_names.to_unsafe + _n).value = "unit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, unit)
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
      @@g_type ||= LibAdw.adw_clamp_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::ClampLayout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def maximum_size=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "maximum-size", unsafe_value, Pointer(Void).null)
      value
    end

    def maximum_size : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "maximum-size", pointerof(value), Pointer(Void).null)
      value
    end

    def tightening_threshold=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "tightening-threshold", unsafe_value, Pointer(Void).null)
      value
    end

    def tightening_threshold : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "tightening-threshold", pointerof(value), Pointer(Void).null)
      value
    end

    def unit=(value : Adw::LengthUnit) : Adw::LengthUnit
      unsafe_value = value

      LibGObject.g_object_set(self, "unit", unsafe_value, Pointer(Void).null)
      value
    end

    def unit : Adw::LengthUnit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "unit", pointerof(value), Pointer(Void).null)
      Adw::LengthUnit.new(value)
    end

    def self.new : self
      # adw_clamp_layout_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_clamp_layout_new

      # Return value handling
      Adw::ClampLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def maximum_size : Int32
      # adw_clamp_layout_get_maximum_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_clamp_layout_get_maximum_size(to_unsafe)

      # Return value handling
      _retval
    end

    def tightening_threshold : Int32
      # adw_clamp_layout_get_tightening_threshold: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_clamp_layout_get_tightening_threshold(to_unsafe)

      # Return value handling
      _retval
    end

    def unit : Adw::LengthUnit
      # adw_clamp_layout_get_unit: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_clamp_layout_get_unit(to_unsafe)

      # Return value handling
      Adw::LengthUnit.new(_retval)
    end

    def maximum_size=(maximum_size : Int32) : Nil
      # adw_clamp_layout_set_maximum_size: (Method | Setter)
      # @maximum_size:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_clamp_layout_set_maximum_size(to_unsafe, maximum_size)

      # Return value handling
    end

    def tightening_threshold=(tightening_threshold : Int32) : Nil
      # adw_clamp_layout_set_tightening_threshold: (Method | Setter)
      # @tightening_threshold:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_clamp_layout_set_tightening_threshold(to_unsafe, tightening_threshold)

      # Return value handling
    end

    def unit=(unit : Adw::LengthUnit) : Nil
      # adw_clamp_layout_set_unit: (Method | Setter)
      # @unit:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_clamp_layout_set_unit(to_unsafe, unit)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
