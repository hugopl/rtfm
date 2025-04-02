require "./event"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class ScrollEvent < Event
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `ScrollEvent`.
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
      @@g_type ||= LibGdk.gdk_scroll_event_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::ScrollEvent.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def deltas(delta_x : Float64, delta_y : Float64) : Nil
      # gdk_scroll_event_get_deltas: (Method)
      # @delta_x: (out) (transfer full)
      # @delta_y: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_scroll_event_get_deltas(to_unsafe, delta_x, delta_y)

      # Return value handling
    end

    def direction : Gdk::ScrollDirection
      # gdk_scroll_event_get_direction: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_scroll_event_get_direction(to_unsafe)

      # Return value handling
      Gdk::ScrollDirection.new(_retval)
    end

    def unit : Gdk::ScrollUnit
      # gdk_scroll_event_get_unit: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_scroll_event_get_unit(to_unsafe)

      # Return value handling
      Gdk::ScrollUnit.new(_retval)
    end

    def is_stop : Bool
      # gdk_scroll_event_is_stop: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_scroll_event_is_stop(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
