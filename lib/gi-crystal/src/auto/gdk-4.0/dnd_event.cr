require "./event"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class DNDEvent < Event
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `DNDEvent`.
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
      @@g_type ||= LibGdk.gdk_dnd_event_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::DNDEvent.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def drop : Gdk::Drop?
      # gdk_dnd_event_get_drop: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_dnd_event_get_drop(to_unsafe)

      # Return value handling
      Gdk::Drop.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
