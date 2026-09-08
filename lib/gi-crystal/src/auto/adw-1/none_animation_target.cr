require "./animation_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class NoneAnimationTarget < AnimationTarget
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(NoneAnimationTarget, g_object_get_qdata)

    # Initialize a new `NoneAnimationTarget`.
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
      @@g_type ||= LibAdw.adw_none_animation_target_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::NoneAnimationTarget.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # adw_none_animation_target_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_none_animation_target_new

      # Return value handling
      Adw::NoneAnimationTarget.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
