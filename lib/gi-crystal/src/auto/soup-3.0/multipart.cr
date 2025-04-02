module Soup
  class Multipart
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Multipart.g_type, pointer)
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
      LibGObject.g_boxed_free(Multipart.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_multipart_get_type
    end

    def self.new(mime_type : ::String) : self
      # soup_multipart_new: (Constructor)
      # @mime_type:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_multipart_new(mime_type)

      # Return value handling
      Soup::Multipart.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_message(headers : Soup::MessageHeaders, body : GLib::Bytes) : self?
      # soup_multipart_new_from_message: (Constructor)
      # @headers:
      # @body:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_multipart_new_from_message(headers, body)

      # Return value handling
      Soup::Multipart.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def append_form_file(control_name : ::String, filename : ::String?, content_type : ::String?, body : GLib::Bytes) : Nil
      # soup_multipart_append_form_file: (Method)
      # @control_name:
      # @filename: (nullable)
      # @content_type: (nullable)
      # @body:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      filename = if filename.nil?
                   Pointer(LibC::Char).null
                 else
                   filename.to_unsafe
                 end
      # Generator::NullableArrayPlan
      content_type = if content_type.nil?
                       Pointer(LibC::Char).null
                     else
                       content_type.to_unsafe
                     end

      # C call
      LibSoup.soup_multipart_append_form_file(to_unsafe, control_name, filename, content_type, body)

      # Return value handling
    end

    def append_form_string(control_name : ::String, data : ::String) : Nil
      # soup_multipart_append_form_string: (Method)
      # @control_name:
      # @data:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_multipart_append_form_string(to_unsafe, control_name, data)

      # Return value handling
    end

    def append_part(headers : Soup::MessageHeaders, body : GLib::Bytes) : Nil
      # soup_multipart_append_part: (Method)
      # @headers:
      # @body:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_multipart_append_part(to_unsafe, headers, body)

      # Return value handling
    end

    def free : Nil
      # soup_multipart_free: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_multipart_free(to_unsafe)

      # Return value handling
    end

    def length : Int32
      # soup_multipart_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_multipart_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def part(part : Int32, headers : Soup::MessageHeaders, body : GLib::Bytes) : Bool
      # soup_multipart_get_part: (Method)
      # @part:
      # @headers: (out)
      # @body: (out)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_multipart_get_part(to_unsafe, part, headers, body)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_message(dest_headers : Soup::MessageHeaders, dest_body : GLib::Bytes) : Nil
      # soup_multipart_to_message: (Method)
      # @dest_headers:
      # @dest_body: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_multipart_to_message(to_unsafe, dest_headers, dest_body)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
