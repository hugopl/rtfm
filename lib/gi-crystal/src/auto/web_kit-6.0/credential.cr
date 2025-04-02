module WebKit
  class Credential
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Credential.g_type, pointer)
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
      LibGObject.g_boxed_free(Credential.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_credential_get_type
    end

    def self.new(username : ::String, password : ::String, persistence : WebKit::CredentialPersistence) : self
      # webkit_credential_new: (Constructor)
      # @username:
      # @password:
      # @persistence:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_credential_new(username, password, persistence)

      # Return value handling
      WebKit::Credential.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_certificate(certificate : Gio::TlsCertificate?, persistence : WebKit::CredentialPersistence) : self
      # webkit_credential_new_for_certificate: (Constructor)
      # @certificate: (nullable)
      # @persistence:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      certificate = if certificate.nil?
                      Pointer(Void).null
                    else
                      certificate.to_unsafe
                    end

      # C call
      _retval = LibWebKit.webkit_credential_new_for_certificate(certificate, persistence)

      # Return value handling
      WebKit::Credential.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_certificate_pin(pin : ::String, persistence : WebKit::CredentialPersistence) : self
      # webkit_credential_new_for_certificate_pin: (Constructor)
      # @pin:
      # @persistence:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_credential_new_for_certificate_pin(pin, persistence)

      # Return value handling
      WebKit::Credential.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : WebKit::Credential
      # webkit_credential_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_credential_copy(to_unsafe)

      # Return value handling
      WebKit::Credential.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # webkit_credential_free: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_credential_free(to_unsafe)

      # Return value handling
    end

    def certificate : Gio::TlsCertificate
      # webkit_credential_get_certificate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_credential_get_certificate(to_unsafe)

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::None)
    end

    def password : ::String
      # webkit_credential_get_password: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_credential_get_password(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def persistence : WebKit::CredentialPersistence
      # webkit_credential_get_persistence: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_credential_get_persistence(to_unsafe)

      # Return value handling
      WebKit::CredentialPersistence.new(_retval)
    end

    def username : ::String
      # webkit_credential_get_username: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_credential_get_username(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def has_password : Bool
      # webkit_credential_has_password: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_credential_has_password(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
