require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class AnimationTarget < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::AnimationTargetClass), class_init,
        sizeof(LibAdw::AnimationTarget), instance_init, 0)
    end

    GICrystal.declare_new_method(AnimationTarget, g_object_get_qdata)

    # Initialize a new `AnimationTarget`.
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
      @@g_type ||= LibAdw.adw_animation_target_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::AnimationTarget.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def_equals_and_hash @pointer
  end
end
