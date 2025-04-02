require "./event"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class TouchpadEvent < Event
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `TouchpadEvent`.
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
      @@g_type ||= LibGdk.gdk_touchpad_event_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::TouchpadEvent.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def deltas(dx : Float64, dy : Float64) : Nil
      # gdk_touchpad_event_get_deltas: (Method)
      # @dx: (out) (transfer full)
      # @dy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_touchpad_event_get_deltas(to_unsafe, dx, dy)

      # Return value handling
    end

    def gesture_phase : Gdk::TouchpadGesturePhase
      # gdk_touchpad_event_get_gesture_phase: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_touchpad_event_get_gesture_phase(to_unsafe)

      # Return value handling
      Gdk::TouchpadGesturePhase.new(_retval)
    end

    def n_fingers : UInt32
      # gdk_touchpad_event_get_n_fingers: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_touchpad_event_get_n_fingers(to_unsafe)

      # Return value handling
      _retval
    end

    def pinch_angle_delta : Float64
      # gdk_touchpad_event_get_pinch_angle_delta: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_touchpad_event_get_pinch_angle_delta(to_unsafe)

      # Return value handling
      _retval
    end

    def pinch_scale : Float64
      # gdk_touchpad_event_get_pinch_scale: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_touchpad_event_get_pinch_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
