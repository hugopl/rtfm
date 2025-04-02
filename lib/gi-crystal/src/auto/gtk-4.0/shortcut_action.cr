require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ShortcutAction < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ShortcutActionClass), class_init,
        sizeof(LibGtk::ShortcutAction), instance_init, 0)
    end

    GICrystal.declare_new_method(ShortcutAction, g_object_get_qdata)

    # Initialize a new `ShortcutAction`.
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
      @@g_type ||= LibGtk.gtk_shortcut_action_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ShortcutAction.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.parse_string(string : ::String) : self?
      # gtk_shortcut_action_parse_string: (Constructor)
      # @string:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_shortcut_action_parse_string(string)

      # Return value handling
      Gtk::ShortcutAction.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def activate(flags : Gtk::ShortcutActionFlags, widget : Gtk::Widget, args : _?) : Bool
      # gtk_shortcut_action_activate: (Method)
      # @flags:
      # @widget:
      # @args: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      args = if args.nil?
               Pointer(Void).null
             elsif !args.is_a?(GLib::Variant)
               GLib::Variant.new(args).to_unsafe
             else
               args.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_shortcut_action_activate(to_unsafe, flags, widget, args)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def print(string : GLib::String) : Nil
      # gtk_shortcut_action_print: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_shortcut_action_print(to_unsafe, string)

      # Return value handling
    end

    def to_string : ::String
      # gtk_shortcut_action_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_shortcut_action_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def_equals_and_hash @pointer
  end
end
