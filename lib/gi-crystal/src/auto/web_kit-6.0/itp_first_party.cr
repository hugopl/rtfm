module WebKit
  class ITPFirstParty
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ITPFirstParty.g_type, pointer)
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
      LibGObject.g_boxed_free(ITPFirstParty.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_itp_first_party_get_type
    end

    def domain : ::String
      # webkit_itp_first_party_get_domain: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_itp_first_party_get_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def last_update_time : GLib::DateTime
      # webkit_itp_first_party_get_last_update_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_itp_first_party_get_last_update_time(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::None)
    end

    def website_data_access_allowed : Bool
      # webkit_itp_first_party_get_website_data_access_allowed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_itp_first_party_get_website_data_access_allowed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : WebKit::ITPFirstParty
      # webkit_itp_first_party_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_itp_first_party_ref(to_unsafe)

      # Return value handling
      WebKit::ITPFirstParty.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_itp_first_party_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_itp_first_party_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
