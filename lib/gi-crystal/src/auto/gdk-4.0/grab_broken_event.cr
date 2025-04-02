require "./event"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class GrabBrokenEvent < Event
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `GrabBrokenEvent`.
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
      @@g_type ||= LibGdk.gdk_grab_broken_event_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::GrabBrokenEvent.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def grab_surface : Gdk::Surface
      # gdk_grab_broken_event_get_grab_surface: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_grab_broken_event_get_grab_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None)
    end

    def implicit : Bool
      # gdk_grab_broken_event_get_implicit: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_grab_broken_event_get_implicit(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
