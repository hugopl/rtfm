module WebKit
  class PermissionStateQuery
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(PermissionStateQuery.g_type, pointer)
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
      LibGObject.g_boxed_free(PermissionStateQuery.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_permission_state_query_get_type
    end

    def finish(state : WebKit::PermissionState) : Nil
      # webkit_permission_state_query_finish: (Method)
      # @state:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_permission_state_query_finish(to_unsafe, state)

      # Return value handling
    end

    def name : ::String
      # webkit_permission_state_query_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_permission_state_query_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def security_origin : WebKit::SecurityOrigin
      # webkit_permission_state_query_get_security_origin: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_permission_state_query_get_security_origin(to_unsafe)

      # Return value handling
      WebKit::SecurityOrigin.new(_retval, GICrystal::Transfer::None)
    end

    def ref : WebKit::PermissionStateQuery
      # webkit_permission_state_query_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_permission_state_query_ref(to_unsafe)

      # Return value handling
      WebKit::PermissionStateQuery.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_permission_state_query_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_permission_state_query_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
