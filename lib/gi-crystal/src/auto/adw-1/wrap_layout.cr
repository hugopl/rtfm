require "../gtk-4.0/layout_manager"
require "../gtk-4.0/orientable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class WrapLayout < Gtk::LayoutManager
    include Gtk::Orientable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::WrapLayoutClass), class_init,
        sizeof(LibAdw::WrapLayout), instance_init, 0)
    end

    GICrystal.declare_new_method(WrapLayout, g_object_get_qdata)

    # Initialize a new `WrapLayout`.
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

    def initialize(*, align : Float32? = nil, child_spacing : Int32? = nil, child_spacing_unit : Adw::LengthUnit? = nil, justify : Adw::JustifyMode? = nil, justify_last_line : Bool? = nil, line_homogeneous : Bool? = nil, line_spacing : Int32? = nil, line_spacing_unit : Adw::LengthUnit? = nil, natural_line_length : Int32? = nil, natural_line_length_unit : Adw::LengthUnit? = nil, orientation : Gtk::Orientation? = nil, pack_direction : Adw::PackDirection? = nil, wrap_policy : Adw::WrapPolicy? = nil, wrap_reverse : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[14]
      _values = StaticArray(LibGObject::Value, 14).new(LibGObject::Value.new)
      _n = 0

      if !align.nil?
        (_names.to_unsafe + _n).value = "align".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, align)
        _n += 1
      end
      if !child_spacing.nil?
        (_names.to_unsafe + _n).value = "child-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child_spacing)
        _n += 1
      end
      if !child_spacing_unit.nil?
        (_names.to_unsafe + _n).value = "child-spacing-unit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child_spacing_unit)
        _n += 1
      end
      if !justify.nil?
        (_names.to_unsafe + _n).value = "justify".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, justify)
        _n += 1
      end
      if !justify_last_line.nil?
        (_names.to_unsafe + _n).value = "justify-last-line".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, justify_last_line)
        _n += 1
      end
      if !line_homogeneous.nil?
        (_names.to_unsafe + _n).value = "line-homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, line_homogeneous)
        _n += 1
      end
      if !line_spacing.nil?
        (_names.to_unsafe + _n).value = "line-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, line_spacing)
        _n += 1
      end
      if !line_spacing_unit.nil?
        (_names.to_unsafe + _n).value = "line-spacing-unit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, line_spacing_unit)
        _n += 1
      end
      if !natural_line_length.nil?
        (_names.to_unsafe + _n).value = "natural-line-length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, natural_line_length)
        _n += 1
      end
      if !natural_line_length_unit.nil?
        (_names.to_unsafe + _n).value = "natural-line-length-unit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, natural_line_length_unit)
        _n += 1
      end
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
        _n += 1
      end
      if !pack_direction.nil?
        (_names.to_unsafe + _n).value = "pack-direction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pack_direction)
        _n += 1
      end
      if !wrap_policy.nil?
        (_names.to_unsafe + _n).value = "wrap-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap_policy)
        _n += 1
      end
      if !wrap_reverse.nil?
        (_names.to_unsafe + _n).value = "wrap-reverse".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap_reverse)
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
      @@g_type ||= LibAdw.adw_wrap_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::WrapLayout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def align=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "align", unsafe_value, Pointer(Void).null)
      value
    end

    def align : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "align", pointerof(value), Pointer(Void).null)
      value
    end

    def child_spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "child-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def child_spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "child-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def child_spacing_unit=(value : Adw::LengthUnit) : Adw::LengthUnit
      unsafe_value = value

      LibGObject.g_object_set(self, "child-spacing-unit", unsafe_value, Pointer(Void).null)
      value
    end

    def child_spacing_unit : Adw::LengthUnit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "child-spacing-unit", pointerof(value), Pointer(Void).null)
      Adw::LengthUnit.new(value)
    end

    def justify=(value : Adw::JustifyMode) : Adw::JustifyMode
      unsafe_value = value

      LibGObject.g_object_set(self, "justify", unsafe_value, Pointer(Void).null)
      value
    end

    def justify : Adw::JustifyMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "justify", pointerof(value), Pointer(Void).null)
      Adw::JustifyMode.new(value)
    end

    def justify_last_line=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "justify-last-line", unsafe_value, Pointer(Void).null)
      value
    end

    def justify_last_line? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "justify-last-line", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def line_homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "line-homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def line_homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "line-homogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def line_spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "line-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def line_spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "line-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def line_spacing_unit=(value : Adw::LengthUnit) : Adw::LengthUnit
      unsafe_value = value

      LibGObject.g_object_set(self, "line-spacing-unit", unsafe_value, Pointer(Void).null)
      value
    end

    def line_spacing_unit : Adw::LengthUnit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "line-spacing-unit", pointerof(value), Pointer(Void).null)
      Adw::LengthUnit.new(value)
    end

    def natural_line_length=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "natural-line-length", unsafe_value, Pointer(Void).null)
      value
    end

    def natural_line_length : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "natural-line-length", pointerof(value), Pointer(Void).null)
      value
    end

    def natural_line_length_unit=(value : Adw::LengthUnit) : Adw::LengthUnit
      unsafe_value = value

      LibGObject.g_object_set(self, "natural-line-length-unit", unsafe_value, Pointer(Void).null)
      value
    end

    def natural_line_length_unit : Adw::LengthUnit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "natural-line-length-unit", pointerof(value), Pointer(Void).null)
      Adw::LengthUnit.new(value)
    end

    def pack_direction=(value : Adw::PackDirection) : Adw::PackDirection
      unsafe_value = value

      LibGObject.g_object_set(self, "pack-direction", unsafe_value, Pointer(Void).null)
      value
    end

    def pack_direction : Adw::PackDirection
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "pack-direction", pointerof(value), Pointer(Void).null)
      Adw::PackDirection.new(value)
    end

    def wrap_policy=(value : Adw::WrapPolicy) : Adw::WrapPolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap_policy : Adw::WrapPolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "wrap-policy", pointerof(value), Pointer(Void).null)
      Adw::WrapPolicy.new(value)
    end

    def wrap_reverse=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap-reverse", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap_reverse? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "wrap-reverse", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # adw_wrap_layout_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_wrap_layout_new

      # Return value handling
      Adw::WrapLayout.new(_retval, GICrystal::Transfer::Full)
    end

    def align : Float32
      # adw_wrap_layout_get_align: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_align(to_unsafe)

      # Return value handling
      _retval
    end

    def child_spacing : Int32
      # adw_wrap_layout_get_child_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_child_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def child_spacing_unit : Adw::LengthUnit
      # adw_wrap_layout_get_child_spacing_unit: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_child_spacing_unit(to_unsafe)

      # Return value handling
      Adw::LengthUnit.new(_retval)
    end

    def justify : Adw::JustifyMode
      # adw_wrap_layout_get_justify: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_justify(to_unsafe)

      # Return value handling
      Adw::JustifyMode.new(_retval)
    end

    def justify_last_line : Bool
      # adw_wrap_layout_get_justify_last_line: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_justify_last_line(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def line_homogeneous : Bool
      # adw_wrap_layout_get_line_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_line_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def line_spacing : Int32
      # adw_wrap_layout_get_line_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_line_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def line_spacing_unit : Adw::LengthUnit
      # adw_wrap_layout_get_line_spacing_unit: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_line_spacing_unit(to_unsafe)

      # Return value handling
      Adw::LengthUnit.new(_retval)
    end

    def natural_line_length : Int32
      # adw_wrap_layout_get_natural_line_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_natural_line_length(to_unsafe)

      # Return value handling
      _retval
    end

    def natural_line_length_unit : Adw::LengthUnit
      # adw_wrap_layout_get_natural_line_length_unit: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_natural_line_length_unit(to_unsafe)

      # Return value handling
      Adw::LengthUnit.new(_retval)
    end

    def pack_direction : Adw::PackDirection
      # adw_wrap_layout_get_pack_direction: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_pack_direction(to_unsafe)

      # Return value handling
      Adw::PackDirection.new(_retval)
    end

    def wrap_policy : Adw::WrapPolicy
      # adw_wrap_layout_get_wrap_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_wrap_policy(to_unsafe)

      # Return value handling
      Adw::WrapPolicy.new(_retval)
    end

    def wrap_reverse : Bool
      # adw_wrap_layout_get_wrap_reverse: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_wrap_layout_get_wrap_reverse(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def align=(align : Float32) : Nil
      # adw_wrap_layout_set_align: (Method | Setter)
      # @align:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_align(to_unsafe, align)

      # Return value handling
    end

    def child_spacing=(child_spacing : Int32) : Nil
      # adw_wrap_layout_set_child_spacing: (Method | Setter)
      # @child_spacing:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_child_spacing(to_unsafe, child_spacing)

      # Return value handling
    end

    def child_spacing_unit=(unit : Adw::LengthUnit) : Nil
      # adw_wrap_layout_set_child_spacing_unit: (Method | Setter)
      # @unit:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_child_spacing_unit(to_unsafe, unit)

      # Return value handling
    end

    def justify=(justify : Adw::JustifyMode) : Nil
      # adw_wrap_layout_set_justify: (Method | Setter)
      # @justify:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_justify(to_unsafe, justify)

      # Return value handling
    end

    def justify_last_line=(justify_last_line : Bool) : Nil
      # adw_wrap_layout_set_justify_last_line: (Method | Setter)
      # @justify_last_line:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_justify_last_line(to_unsafe, justify_last_line)

      # Return value handling
    end

    def line_homogeneous=(homogeneous : Bool) : Nil
      # adw_wrap_layout_set_line_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_line_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def line_spacing=(line_spacing : Int32) : Nil
      # adw_wrap_layout_set_line_spacing: (Method | Setter)
      # @line_spacing:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_line_spacing(to_unsafe, line_spacing)

      # Return value handling
    end

    def line_spacing_unit=(unit : Adw::LengthUnit) : Nil
      # adw_wrap_layout_set_line_spacing_unit: (Method | Setter)
      # @unit:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_line_spacing_unit(to_unsafe, unit)

      # Return value handling
    end

    def natural_line_length=(natural_line_length : Int32) : Nil
      # adw_wrap_layout_set_natural_line_length: (Method | Setter)
      # @natural_line_length:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_natural_line_length(to_unsafe, natural_line_length)

      # Return value handling
    end

    def natural_line_length_unit=(unit : Adw::LengthUnit) : Nil
      # adw_wrap_layout_set_natural_line_length_unit: (Method | Setter)
      # @unit:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_natural_line_length_unit(to_unsafe, unit)

      # Return value handling
    end

    def pack_direction=(pack_direction : Adw::PackDirection) : Nil
      # adw_wrap_layout_set_pack_direction: (Method | Setter)
      # @pack_direction:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_pack_direction(to_unsafe, pack_direction)

      # Return value handling
    end

    def wrap_policy=(wrap_policy : Adw::WrapPolicy) : Nil
      # adw_wrap_layout_set_wrap_policy: (Method | Setter)
      # @wrap_policy:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_wrap_policy(to_unsafe, wrap_policy)

      # Return value handling
    end

    def wrap_reverse=(wrap_reverse : Bool) : Nil
      # adw_wrap_layout_set_wrap_reverse: (Method | Setter)
      # @wrap_reverse:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_wrap_layout_set_wrap_reverse(to_unsafe, wrap_reverse)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
