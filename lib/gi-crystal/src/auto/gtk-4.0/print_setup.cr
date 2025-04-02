module Gtk
  class PrintSetup
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(PrintSetup.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(PrintSetup.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_setup_get_type
    end

    def page_setup : Gtk::PageSetup
      # gtk_print_setup_get_page_setup: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_setup_get_page_setup(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::None)
    end

    def print_settings : Gtk::PrintSettings
      # gtk_print_setup_get_print_settings: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_setup_get_print_settings(to_unsafe)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::None)
    end

    def ref : Gtk::PrintSetup
      # gtk_print_setup_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_setup_ref(to_unsafe)

      # Return value handling
      Gtk::PrintSetup.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gtk_print_setup_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_setup_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
