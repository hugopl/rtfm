require "./event"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class PadEvent < Event
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `PadEvent`.
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
      @@g_type ||= LibGdk.gdk_pad_event_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::PadEvent.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def axis_value(index : UInt32, value : Float64) : Nil
      # gdk_pad_event_get_axis_value: (Method)
      # @index: (out) (transfer full)
      # @value: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_pad_event_get_axis_value(to_unsafe, index, value)

      # Return value handling
    end

    def button : UInt32
      # gdk_pad_event_get_button: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_pad_event_get_button(to_unsafe)

      # Return value handling
      _retval
    end

    def group_mode(group : UInt32, mode : UInt32) : Nil
      # gdk_pad_event_get_group_mode: (Method)
      # @group: (out) (transfer full)
      # @mode: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_pad_event_get_group_mode(to_unsafe, group, mode)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
