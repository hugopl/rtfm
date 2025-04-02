require "./object"

module GObject
  @[GICrystal::GeneratedWrapper]
  class BindingGroup < Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(BindingGroup, g_object_get_qdata)

    # Initialize a new `BindingGroup`.
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

    def initialize(*, source : GObject::Object? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !source.nil?
        (_names.to_unsafe + _n).value = "source".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, source)
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
      @@g_type ||= LibGObject.g_binding_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GObject::BindingGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def self.new : self
      # g_binding_group_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGObject.g_binding_group_new

      # Return value handling
      GObject::BindingGroup.new(_retval, GICrystal::Transfer::Full)
    end

    def bind(source_property : ::String, target : GObject::Object, target_property : ::String, flags : GObject::BindingFlags) : Nil
      # g_binding_group_bind: (Method)
      # @source_property:
      # @target:
      # @target_property:
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGObject.g_binding_group_bind(to_unsafe, source_property, target, target_property, flags)

      # Return value handling
    end

    def bind_full(source_property : ::String, target : GObject::Object, target_property : ::String, flags : GObject::BindingFlags, transform_to : GObject::Closure?, transform_from : GObject::Closure?) : Nil
      # g_binding_group_bind_with_closures: (Method)
      # @source_property:
      # @target:
      # @target_property:
      # @flags:
      # @transform_to: (nullable)
      # @transform_from: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      transform_to = if transform_to.nil?
                       Pointer(Void).null
                     else
                       transform_to.to_unsafe
                     end
      # Generator::NullableArrayPlan
      transform_from = if transform_from.nil?
                         Pointer(Void).null
                       else
                         transform_from.to_unsafe
                       end

      # C call
      LibGObject.g_binding_group_bind_with_closures(to_unsafe, source_property, target, target_property, flags, transform_to, transform_from)

      # Return value handling
    end

    def dup_source : GObject::Object?
      # g_binding_group_dup_source: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_binding_group_dup_source(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def source=(source : GObject::Object?) : Nil
      # g_binding_group_set_source: (Method | Setter)
      # @source: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      source = if source.nil?
                 Pointer(Void).null
               else
                 source.to_unsafe
               end

      # C call
      LibGObject.g_binding_group_set_source(to_unsafe, source)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
