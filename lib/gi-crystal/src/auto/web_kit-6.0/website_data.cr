module WebKit
  class WebsiteData
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(WebsiteData.g_type, pointer)
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
      LibGObject.g_boxed_free(WebsiteData.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_website_data_get_type
    end

    def name : ::String
      # webkit_website_data_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_data_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def size(types : WebKit::WebsiteDataTypes) : UInt64
      # webkit_website_data_get_size: (Method)
      # @types:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_data_get_size(to_unsafe, types)

      # Return value handling
      _retval
    end

    def types : WebKit::WebsiteDataTypes
      # webkit_website_data_get_types: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_data_get_types(to_unsafe)

      # Return value handling
      WebKit::WebsiteDataTypes.new(_retval)
    end

    def ref : WebKit::WebsiteData
      # webkit_website_data_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_website_data_ref(to_unsafe)

      # Return value handling
      WebKit::WebsiteData.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_website_data_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_website_data_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
