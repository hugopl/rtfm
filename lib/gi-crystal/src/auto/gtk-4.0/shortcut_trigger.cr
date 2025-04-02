require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ShortcutTrigger < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ShortcutTriggerClass), class_init,
        sizeof(LibGtk::ShortcutTrigger), instance_init, 0)
    end

    GICrystal.declare_new_method(ShortcutTrigger, g_object_get_qdata)

    # Initialize a new `ShortcutTrigger`.
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
      @@g_type ||= LibGtk.gtk_shortcut_trigger_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ShortcutTrigger.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.parse_string(string : ::String) : self?
      # gtk_shortcut_trigger_parse_string: (Constructor)
      # @string:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_parse_string(string)

      # Return value handling
      Gtk::ShortcutTrigger.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def compare(trigger2 : Gtk::ShortcutTrigger) : Int32
      # gtk_shortcut_trigger_compare: (Method)
      # @trigger2:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_compare(to_unsafe, trigger2)

      # Return value handling
      _retval
    end

    def equal(trigger2 : Gtk::ShortcutTrigger) : Bool
      # gtk_shortcut_trigger_equal: (Method)
      # @trigger2:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_equal(to_unsafe, trigger2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hash : UInt32
      # gtk_shortcut_trigger_hash: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_hash(to_unsafe)

      # Return value handling
      _retval
    end

    def print(string : GLib::String) : Nil
      # gtk_shortcut_trigger_print: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_shortcut_trigger_print(to_unsafe, string)

      # Return value handling
    end

    def print_label(display : Gdk::Display, string : GLib::String) : Bool
      # gtk_shortcut_trigger_print_label: (Method)
      # @display:
      # @string:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_print_label(to_unsafe, display, string)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_label(display : Gdk::Display) : ::String
      # gtk_shortcut_trigger_to_label: (Method)
      # @display:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_to_label(to_unsafe, display)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def to_string : ::String
      # gtk_shortcut_trigger_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def trigger(event : Gdk::Event, enable_mnemonics : Bool) : Gdk::KeyMatch
      # gtk_shortcut_trigger_trigger: (Method)
      # @event:
      # @enable_mnemonics:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_shortcut_trigger_trigger(to_unsafe, event, enable_mnemonics)

      # Return value handling
      Gdk::KeyMatch.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
