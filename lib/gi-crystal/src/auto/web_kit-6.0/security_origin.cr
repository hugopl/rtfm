module WebKit
  class SecurityOrigin
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(SecurityOrigin.g_type, pointer)
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
      LibGObject.g_boxed_free(SecurityOrigin.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_security_origin_get_type
    end

    def self.new(protocol : ::String, host : ::String, port : UInt16) : self
      # webkit_security_origin_new: (Constructor)
      # @protocol:
      # @host:
      # @port:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_security_origin_new(protocol, host, port)

      # Return value handling
      WebKit::SecurityOrigin.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_uri(uri : ::String) : self
      # webkit_security_origin_new_for_uri: (Constructor)
      # @uri:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_security_origin_new_for_uri(uri)

      # Return value handling
      WebKit::SecurityOrigin.new(_retval, GICrystal::Transfer::Full)
    end

    def host : ::String?
      # webkit_security_origin_get_host: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_security_origin_get_host(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def port : UInt16
      # webkit_security_origin_get_port: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_security_origin_get_port(to_unsafe)

      # Return value handling
      _retval
    end

    def protocol : ::String?
      # webkit_security_origin_get_protocol: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_security_origin_get_protocol(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def ref : WebKit::SecurityOrigin
      # webkit_security_origin_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_security_origin_ref(to_unsafe)

      # Return value handling
      WebKit::SecurityOrigin.new(_retval, GICrystal::Transfer::Full)
    end

    def to_string : ::String?
      # webkit_security_origin_to_string: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibWebKit.webkit_security_origin_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def unref : Nil
      # webkit_security_origin_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_security_origin_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
