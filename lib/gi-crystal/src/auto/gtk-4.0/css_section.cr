module Gtk
  class CssSection
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(CssSection.g_type, pointer)
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
      LibGObject.g_boxed_free(CssSection.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_css_section_get_type
    end

    def self.new(file : Gio::File?, start : Gtk::CssLocation, end _end : Gtk::CssLocation) : self
      # gtk_css_section_new: (Constructor)
      # @file: (nullable)
      # @start:
      # @end:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_css_section_new(file, start, _end)

      # Return value handling
      Gtk::CssSection.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_bytes(file : Gio::File?, bytes : GLib::Bytes?, start : Gtk::CssLocation, end _end : Gtk::CssLocation) : self
      # gtk_css_section_new_with_bytes: (Constructor)
      # @file: (nullable)
      # @bytes: (nullable)
      # @start:
      # @end:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      file = if file.nil?
               Pointer(Void).null
             else
               file.to_unsafe
             end
      # Generator::NullableArrayPlan
      bytes = if bytes.nil?
                Pointer(Void).null
              else
                bytes.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_css_section_new_with_bytes(file, bytes, start, _end)

      # Return value handling
      Gtk::CssSection.new(_retval, GICrystal::Transfer::Full)
    end

    def bytes : GLib::Bytes?
      # gtk_css_section_get_bytes: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_css_section_get_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def end_location : Gtk::CssLocation
      # gtk_css_section_get_end_location: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_css_section_get_end_location(to_unsafe)

      # Return value handling
      Gtk::CssLocation.new(_retval, GICrystal::Transfer::None)
    end

    def file : Gio::File?
      # gtk_css_section_get_file: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_css_section_get_file(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def parent : Gtk::CssSection?
      # gtk_css_section_get_parent: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_css_section_get_parent(to_unsafe)

      # Return value handling
      Gtk::CssSection.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def start_location : Gtk::CssLocation
      # gtk_css_section_get_start_location: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_css_section_get_start_location(to_unsafe)

      # Return value handling
      Gtk::CssLocation.new(_retval, GICrystal::Transfer::None)
    end

    def print(string : GLib::String) : Nil
      # gtk_css_section_print: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_section_print(to_unsafe, string)

      # Return value handling
    end

    def ref : Gtk::CssSection
      # gtk_css_section_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_css_section_ref(to_unsafe)

      # Return value handling
      Gtk::CssSection.new(_retval, GICrystal::Transfer::Full)
    end

    def to_string : ::String
      # gtk_css_section_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_css_section_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def unref : Nil
      # gtk_css_section_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_css_section_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
