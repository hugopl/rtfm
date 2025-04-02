require "./event"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class KeyEvent < Event
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `KeyEvent`.
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
      @@g_type ||= LibGdk.gdk_key_event_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::KeyEvent.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def consumed_modifiers : Gdk::ModifierType
      # gdk_key_event_get_consumed_modifiers: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_get_consumed_modifiers(to_unsafe)

      # Return value handling
      Gdk::ModifierType.new(_retval)
    end

    def keycode : UInt32
      # gdk_key_event_get_keycode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_get_keycode(to_unsafe)

      # Return value handling
      _retval
    end

    def keyval : UInt32
      # gdk_key_event_get_keyval: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_get_keyval(to_unsafe)

      # Return value handling
      _retval
    end

    def layout : UInt32
      # gdk_key_event_get_layout: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_get_layout(to_unsafe)

      # Return value handling
      _retval
    end

    def level : UInt32
      # gdk_key_event_get_level: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_get_level(to_unsafe)

      # Return value handling
      _retval
    end

    def match(keyval : UInt32, modifiers : Gdk::ModifierType) : Bool
      # gdk_key_event_get_match: (Method)
      # @keyval: (out) (transfer full)
      # @modifiers: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_get_match(to_unsafe, keyval, modifiers)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_modifier : Bool
      # gdk_key_event_is_modifier: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_is_modifier(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def matches(keyval : UInt32, modifiers : Gdk::ModifierType) : Gdk::KeyMatch
      # gdk_key_event_matches: (Method)
      # @keyval:
      # @modifiers:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_key_event_matches(to_unsafe, keyval, modifiers)

      # Return value handling
      Gdk::KeyMatch.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
