require "./animation_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class CallbackAnimationTarget < AnimationTarget
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(CallbackAnimationTarget, g_object_get_qdata)

    # Initialize a new `CallbackAnimationTarget`.
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
      @@g_type ||= LibAdw.adw_callback_animation_target_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::CallbackAnimationTarget.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(callback : Adw::AnimationTargetFunc) : self
      # adw_callback_animation_target_new: (Constructor)
      # @callback:
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer full)

      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_value : Float64, lib_user_data : Pointer(Void)) {
          # NoStrategy
          value = lib_value
          ::Box(Proc(Float64, Nil)).unbox(lib_user_data).call(value)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = destroy = Pointer(Void).null
      end

      # C call
      _retval = LibAdw.adw_callback_animation_target_new(callback, user_data, destroy)

      # Return value handling
      Adw::CallbackAnimationTarget.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
