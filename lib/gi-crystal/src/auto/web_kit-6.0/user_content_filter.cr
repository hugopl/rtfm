module WebKit
  class UserContentFilter
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(UserContentFilter.g_type, pointer)
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
      LibGObject.g_boxed_free(UserContentFilter.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_user_content_filter_get_type
    end

    def identifier : ::String
      # webkit_user_content_filter_get_identifier: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_user_content_filter_get_identifier(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def ref : WebKit::UserContentFilter
      # webkit_user_content_filter_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_user_content_filter_ref(to_unsafe)

      # Return value handling
      WebKit::UserContentFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_user_content_filter_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_user_content_filter_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
