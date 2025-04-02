module Gdk
  class ContentFormatsBuilder
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ContentFormatsBuilder.g_type, pointer)
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
      LibGObject.g_boxed_free(ContentFormatsBuilder.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_content_formats_builder_get_type
    end

    def add_formats(formats : Gdk::ContentFormats) : Nil
      # gdk_content_formats_builder_add_formats: (Method)
      # @formats:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_formats_builder_add_formats(to_unsafe, formats)

      # Return value handling
    end

    def add_gtype(type : UInt64) : Nil
      # gdk_content_formats_builder_add_gtype: (Method)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_formats_builder_add_gtype(to_unsafe, type)

      # Return value handling
    end

    def add_mime_type(mime_type : ::String) : Nil
      # gdk_content_formats_builder_add_mime_type: (Method)
      # @mime_type:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_formats_builder_add_mime_type(to_unsafe, mime_type)

      # Return value handling
    end

    def ref : Gdk::ContentFormatsBuilder
      # gdk_content_formats_builder_ref: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_content_formats_builder_ref(to_unsafe)

      # Return value handling
      Gdk::ContentFormatsBuilder.new(_retval, GICrystal::Transfer::None)
    end

    def to_formats : Gdk::ContentFormats
      # gdk_content_formats_builder_to_formats: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_content_formats_builder_to_formats(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gdk_content_formats_builder_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_content_formats_builder_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
