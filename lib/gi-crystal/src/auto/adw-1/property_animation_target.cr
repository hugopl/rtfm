require "./animation_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class PropertyAnimationTarget < AnimationTarget
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(PropertyAnimationTarget, g_object_get_qdata)

    # Initialize a new `PropertyAnimationTarget`.
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

    def initialize(*, object : GObject::Object? = nil, pspec : GObject::ParamSpec? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !object.nil?
        (_names.to_unsafe + _n).value = "object".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, object)
        _n += 1
      end
      if !pspec.nil?
        (_names.to_unsafe + _n).value = "pspec".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pspec)
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
      @@g_type ||= LibAdw.adw_property_animation_target_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::PropertyAnimationTarget.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def object=(value : GObject::Object?) : GObject::Object?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "object", unsafe_value, Pointer(Void).null)
      value
    end

    def object : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "object", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def pspec=(value : GObject::ParamSpec?) : GObject::ParamSpec?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "pspec", unsafe_value, Pointer(Void).null)
      value
    end

    def pspec : GObject::ParamSpec?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pspec", pointerof(value), Pointer(Void).null)
      GObject::ParamSpec.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(object : GObject::Object, property_name : ::String) : self
      # adw_property_animation_target_new: (Constructor)
      # @object:
      # @property_name:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_property_animation_target_new(object, property_name)

      # Return value handling
      Adw::PropertyAnimationTarget.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_pspec(object : GObject::Object, pspec : GObject::ParamSpec) : self
      # adw_property_animation_target_new_for_pspec: (Constructor)
      # @object:
      # @pspec:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_property_animation_target_new_for_pspec(object, pspec)

      # Return value handling
      Adw::PropertyAnimationTarget.new(_retval, GICrystal::Transfer::Full)
    end

    def object : GObject::Object
      # adw_property_animation_target_get_object: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_property_animation_target_get_object(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None)
    end

    def pspec : GObject::ParamSpec
      # adw_property_animation_target_get_pspec: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_property_animation_target_get_pspec(to_unsafe)

      # Return value handling
      GObject::ParamSpec.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
