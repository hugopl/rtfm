require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class WindowGroup < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::WindowGroupClass), class_init,
        sizeof(LibGtk::WindowGroup), instance_init, 0)
    end

    GICrystal.declare_new_method(WindowGroup, g_object_get_qdata)

    # Initialize a new `WindowGroup`.
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
      @@g_type ||= LibGtk.gtk_window_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::WindowGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_window_group_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_window_group_new

      # Return value handling
      Gtk::WindowGroup.new(_retval, GICrystal::Transfer::Full)
    end

    def add_window(window : Gtk::Window) : Nil
      # gtk_window_group_add_window: (Method)
      # @window:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_group_add_window(to_unsafe, window)

      # Return value handling
    end

    def list_windows : GLib::List
      # gtk_window_group_list_windows: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_window_group_list_windows(to_unsafe)

      # Return value handling
      GLib::List(Gtk::Window).new(_retval, GICrystal::Transfer::Container)
    end

    def remove_window(window : Gtk::Window) : Nil
      # gtk_window_group_remove_window: (Method)
      # @window:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_group_remove_window(to_unsafe, window)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
