require "./object"

module GObject
  @[GICrystal::GeneratedWrapper]
  class Binding < Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Binding, g_object_get_qdata)

    # Initialize a new `Binding`.
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

    def initialize(*, flags : GObject::BindingFlags? = nil, source : GObject::Object? = nil, source_property : ::String? = nil, target : GObject::Object? = nil, target_property : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
        _n += 1
      end
      if !source.nil?
        (_names.to_unsafe + _n).value = "source".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, source)
        _n += 1
      end
      if !source_property.nil?
        (_names.to_unsafe + _n).value = "source-property".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, source_property)
        _n += 1
      end
      if !target.nil?
        (_names.to_unsafe + _n).value = "target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, target)
        _n += 1
      end
      if !target_property.nil?
        (_names.to_unsafe + _n).value = "target-property".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, target_property)
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
      @@g_type ||= LibGObject.g_binding_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GObject::Binding.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def flags=(value : GObject::BindingFlags) : GObject::BindingFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : GObject::BindingFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      GObject::BindingFlags.new(value)
    end

    def source=(value : GObject::Object?) : GObject::Object?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "source", unsafe_value, Pointer(Void).null)
      value
    end

    def source : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "source", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def source_property=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "source-property", unsafe_value, Pointer(Void).null)
      value
    end

    def source_property : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "source-property", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#source_property` property to nil.
    def source_property=(value : Nil) : Nil
      LibGObject.g_object_set(self, "source-property", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#source_property`, but can return nil.
    def source_property? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "source-property", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def target=(value : GObject::Object?) : GObject::Object?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "target", unsafe_value, Pointer(Void).null)
      value
    end

    def target : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "target", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def target_property=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "target-property", unsafe_value, Pointer(Void).null)
      value
    end

    def target_property : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "target-property", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#target_property` property to nil.
    def target_property=(value : Nil) : Nil
      LibGObject.g_object_set(self, "target-property", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#target_property`, but can return nil.
    def target_property? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "target-property", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def dup_source : GObject::Object?
      # g_binding_dup_source: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGObject.g_binding_dup_source(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def dup_target : GObject::Object?
      # g_binding_dup_target: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGObject.g_binding_dup_target(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def flags : GObject::BindingFlags
      # g_binding_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_binding_get_flags(to_unsafe)

      # Return value handling
      GObject::BindingFlags.new(_retval)
    end

    @[Deprecated]
    def source : GObject::Object?
      # g_binding_get_source: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_binding_get_source(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def source_property : ::String
      # g_binding_get_source_property: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_binding_get_source_property(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def target : GObject::Object?
      # g_binding_get_target: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_binding_get_target(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def target_property : ::String
      # g_binding_get_target_property: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_binding_get_target_property(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def unbind : Nil
      # g_binding_unbind: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_binding_unbind(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
