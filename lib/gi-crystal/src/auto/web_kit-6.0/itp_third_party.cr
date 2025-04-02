module WebKit
  class ITPThirdParty
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ITPThirdParty.g_type, pointer)
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
      LibGObject.g_boxed_free(ITPThirdParty.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_itp_third_party_get_type
    end

    def domain : ::String
      # webkit_itp_third_party_get_domain: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_itp_third_party_get_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def first_parties : GLib::List
      # webkit_itp_third_party_get_first_parties: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_itp_third_party_get_first_parties(to_unsafe)

      # Return value handling
      GLib::List(WebKit::ITPFirstParty).new(_retval, GICrystal::Transfer::None)
    end

    def ref : WebKit::ITPThirdParty
      # webkit_itp_third_party_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_itp_third_party_ref(to_unsafe)

      # Return value handling
      WebKit::ITPThirdParty.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_itp_third_party_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_itp_third_party_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
