require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class TlsCertificate < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::TlsCertificateClass), class_init,
        sizeof(LibGio::TlsCertificate), instance_init, 0)
    end

    GICrystal.declare_new_method(TlsCertificate, g_object_get_qdata)

    # Initialize a new `TlsCertificate`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    def initialize(*, certificate : ::Bytes? = nil, certificate_pem : ::String? = nil, dns_names : Enumerable(Pointer(Void))? = nil, ip_addresses : Enumerable(Pointer(Void))? = nil, issuer : Gio::TlsCertificate? = nil, issuer_name : ::String? = nil, not_valid_after : GLib::DateTime? = nil, not_valid_before : GLib::DateTime? = nil, password : ::String? = nil, pkcs11_uri : ::String? = nil, pkcs12_data : ::Bytes? = nil, private_key : ::Bytes? = nil, private_key_pem : ::String? = nil, private_key_pkcs11_uri : ::String? = nil, subject_name : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[15]
      _values = StaticArray(LibGObject::Value, 15).new(LibGObject::Value.new)
      _n = 0

      if !certificate.nil?
        (_names.to_unsafe + _n).value = "certificate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, certificate)
        _n += 1
      end
      if !certificate_pem.nil?
        (_names.to_unsafe + _n).value = "certificate-pem".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, certificate_pem)
        _n += 1
      end
      if !dns_names.nil?
        (_names.to_unsafe + _n).value = "dns-names".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, dns_names)
        _n += 1
      end
      if !ip_addresses.nil?
        (_names.to_unsafe + _n).value = "ip-addresses".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ip_addresses)
        _n += 1
      end
      if !issuer.nil?
        (_names.to_unsafe + _n).value = "issuer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, issuer)
        _n += 1
      end
      if !issuer_name.nil?
        (_names.to_unsafe + _n).value = "issuer-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, issuer_name)
        _n += 1
      end
      if !not_valid_after.nil?
        (_names.to_unsafe + _n).value = "not-valid-after".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, not_valid_after)
        _n += 1
      end
      if !not_valid_before.nil?
        (_names.to_unsafe + _n).value = "not-valid-before".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, not_valid_before)
        _n += 1
      end
      if !password.nil?
        (_names.to_unsafe + _n).value = "password".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, password)
        _n += 1
      end
      if !pkcs11_uri.nil?
        (_names.to_unsafe + _n).value = "pkcs11-uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pkcs11_uri)
        _n += 1
      end
      if !pkcs12_data.nil?
        (_names.to_unsafe + _n).value = "pkcs12-data".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pkcs12_data)
        _n += 1
      end
      if !private_key.nil?
        (_names.to_unsafe + _n).value = "private-key".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, private_key)
        _n += 1
      end
      if !private_key_pem.nil?
        (_names.to_unsafe + _n).value = "private-key-pem".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, private_key_pem)
        _n += 1
      end
      if !private_key_pkcs11_uri.nil?
        (_names.to_unsafe + _n).value = "private-key-pkcs11-uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, private_key_pkcs11_uri)
        _n += 1
      end
      if !subject_name.nil?
        (_names.to_unsafe + _n).value = "subject-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, subject_name)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_tls_certificate_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::TlsCertificate.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def certificate=(value : ::Bytes) : ::Bytes
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "certificate", unsafe_value, Pointer(Void).null)
      value
    end

    def certificate : ::Bytes
      # Returns: None

      value = uninitialized Pointer(UInt8)
      LibGObject.g_object_get(self, "certificate", pointerof(value), Pointer(Void).null)
      value
    end

    def certificate_pem=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "certificate-pem", unsafe_value, Pointer(Void).null)
      value
    end

    def certificate_pem : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "certificate-pem", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#certificate_pem` property to nil.
    def certificate_pem=(value : Nil) : Nil
      LibGObject.g_object_set(self, "certificate-pem", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#certificate_pem`, but can return nil.
    def certificate_pem? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "certificate-pem", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def dns_names : Enumerable(Pointer(Void))
      # Returns: Container

      value = uninitialized Pointer(Pointer(Void))
      LibGObject.g_object_get(self, "dns-names", pointerof(value), Pointer(Void).null)
      value
    end

    def ip_addresses : Enumerable(Pointer(Void))
      # Returns: Container

      value = uninitialized Pointer(Pointer(Void))
      LibGObject.g_object_get(self, "ip-addresses", pointerof(value), Pointer(Void).null)
      value
    end

    def issuer=(value : Gio::TlsCertificate?) : Gio::TlsCertificate?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "issuer", unsafe_value, Pointer(Void).null)
      value
    end

    def issuer : Gio::TlsCertificate?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "issuer", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificate.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def issuer_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "issuer-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#issuer_name`, but can return nil.
    def issuer_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "issuer-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def not_valid_after : GLib::DateTime?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "not-valid-after", pointerof(value), Pointer(Void).null)
      GLib::DateTime.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def not_valid_before : GLib::DateTime?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "not-valid-before", pointerof(value), Pointer(Void).null)
      GLib::DateTime.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def password=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "password", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#password` property to nil.
    def password=(value : Nil) : Nil
      LibGObject.g_object_set(self, "password", Pointer(Void).null, Pointer(Void).null)
    end

    def pkcs11_uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "pkcs11-uri", unsafe_value, Pointer(Void).null)
      value
    end

    def pkcs11_uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "pkcs11-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#pkcs11_uri` property to nil.
    def pkcs11_uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "pkcs11-uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#pkcs11_uri`, but can return nil.
    def pkcs11_uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "pkcs11-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def pkcs12_data=(value : ::Bytes) : ::Bytes
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "pkcs12-data", unsafe_value, Pointer(Void).null)
      value
    end

    def private_key=(value : ::Bytes) : ::Bytes
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "private-key", unsafe_value, Pointer(Void).null)
      value
    end

    def private_key : ::Bytes
      # Returns: None

      value = uninitialized Pointer(UInt8)
      LibGObject.g_object_get(self, "private-key", pointerof(value), Pointer(Void).null)
      value
    end

    def private_key_pem=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "private-key-pem", unsafe_value, Pointer(Void).null)
      value
    end

    def private_key_pem : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "private-key-pem", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#private_key_pem` property to nil.
    def private_key_pem=(value : Nil) : Nil
      LibGObject.g_object_set(self, "private-key-pem", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#private_key_pem`, but can return nil.
    def private_key_pem? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "private-key-pem", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def private_key_pkcs11_uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "private-key-pkcs11-uri", unsafe_value, Pointer(Void).null)
      value
    end

    def private_key_pkcs11_uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "private-key-pkcs11-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#private_key_pkcs11_uri` property to nil.
    def private_key_pkcs11_uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "private-key-pkcs11-uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#private_key_pkcs11_uri`, but can return nil.
    def private_key_pkcs11_uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "private-key-pkcs11-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def subject_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "subject-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#subject_name`, but can return nil.
    def subject_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "subject-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new_from_file(file : ::String) : self
      # g_tls_certificate_new_from_file: (Constructor | Throws)
      # @file:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_certificate_new_from_file(file, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_file_with_password(file : ::String, password : ::String) : self
      # g_tls_certificate_new_from_file_with_password: (Constructor | Throws)
      # @file:
      # @password:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_certificate_new_from_file_with_password(file, password, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_files(cert_file : ::String, key_file : ::String) : self
      # g_tls_certificate_new_from_files: (Constructor | Throws)
      # @cert_file:
      # @key_file:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_certificate_new_from_files(cert_file, key_file, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_pem(data : ::String, length : Int64) : self
      # g_tls_certificate_new_from_pem: (Constructor | Throws)
      # @data:
      # @length:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_certificate_new_from_pem(data, length, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_pkcs11_uris(pkcs11_uri : ::String, private_key_pkcs11_uri : ::String?) : self
      # g_tls_certificate_new_from_pkcs11_uris: (Constructor | Throws)
      # @pkcs11_uri:
      # @private_key_pkcs11_uri: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      private_key_pkcs11_uri = if private_key_pkcs11_uri.nil?
                                 Pointer(LibC::Char).null
                               else
                                 private_key_pkcs11_uri.to_unsafe
                               end

      # C call
      _retval = LibGio.g_tls_certificate_new_from_pkcs11_uris(pkcs11_uri, private_key_pkcs11_uri, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_pkcs12(data : ::Bytes, password : ::String?) : self
      # g_tls_certificate_new_from_pkcs12: (Constructor | Throws)
      # @data: (array length=length element-type UInt8)
      # @length:
      # @password: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      length = data.size
      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      password = if password.nil?
                   Pointer(LibC::Char).null
                 else
                   password.to_unsafe
                 end

      # C call
      _retval = LibGio.g_tls_certificate_new_from_pkcs12(data, length, password, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def list_new_from_file(file : ::String) : GLib::List
      # g_tls_certificate_list_new_from_file: (Throws)
      # @file:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_certificate_list_new_from_file(file, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::TlsCertificate).new(_retval, GICrystal::Transfer::Full)
    end

    def dns_names : Enumerable(GLib::Bytes)?
      # g_tls_certificate_get_dns_names: (Method | Getter)
      # Returns: (transfer container) (nullable) (array element-type Interface)

      # C call
      _retval = LibGio.g_tls_certificate_get_dns_names(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def ip_addresses : Enumerable(Gio::InetAddress)?
      # g_tls_certificate_get_ip_addresses: (Method | Getter)
      # Returns: (transfer container) (nullable) (array element-type Interface)

      # C call
      _retval = LibGio.g_tls_certificate_get_ip_addresses(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def issuer : Gio::TlsCertificate?
      # g_tls_certificate_get_issuer: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_tls_certificate_get_issuer(to_unsafe)

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def issuer_name : ::String?
      # g_tls_certificate_get_issuer_name: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_tls_certificate_get_issuer_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def not_valid_after : GLib::DateTime?
      # g_tls_certificate_get_not_valid_after: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_tls_certificate_get_not_valid_after(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def not_valid_before : GLib::DateTime?
      # g_tls_certificate_get_not_valid_before: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_tls_certificate_get_not_valid_before(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def subject_name : ::String?
      # g_tls_certificate_get_subject_name: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_tls_certificate_get_subject_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def is_same(cert_two : Gio::TlsCertificate) : Bool
      # g_tls_certificate_is_same: (Method)
      # @cert_two:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_certificate_is_same(to_unsafe, cert_two)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def verify(identity : Gio::SocketConnectable?, trusted_ca : Gio::TlsCertificate?) : Gio::TlsCertificateFlags
      # g_tls_certificate_verify: (Method)
      # @identity: (nullable)
      # @trusted_ca: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      identity = if identity.nil?
                   Pointer(Void).null
                 else
                   identity.to_unsafe
                 end
      # Generator::NullableArrayPlan
      trusted_ca = if trusted_ca.nil?
                     Pointer(Void).null
                   else
                     trusted_ca.to_unsafe
                   end

      # C call
      _retval = LibGio.g_tls_certificate_verify(to_unsafe, identity, trusted_ca)

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    # verify: (None)
    # @identity: (nullable)
    # @trusted_ca: (nullable)
    # Returns: (transfer none)
    private macro _register_verify_vfunc(impl_method_name)
      private def self._vfunc_verify(%this : Pointer(Void), lib_identity :  Pointer(Void), lib_trusted_ca :  Pointer(Void), ) : UInt32
        # @identity: (nullable) 
# @trusted_ca: (nullable) 

# Generator::NullableArrayPlan
identity=(lib_identity.null? ? nil : Gio::AbstractSocketConnectable.new(lib_identity, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
identity=Gio::AbstractSocketConnectable.new(lib_identity, GICrystal::Transfer::None) unless lib_identity.null?
# Generator::NullableArrayPlan
trusted_ca=(lib_trusted_ca.null? ? nil : Gio::TlsCertificate.new(lib_trusted_ca, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
trusted_ca=Gio::TlsCertificate.new(lib_trusted_ca, GICrystal::Transfer::None) unless lib_trusted_ca.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(identity, trusted_ca)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_verify(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # verify: (None)
    # @identity: (nullable)
    # @trusted_ca: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_verify_vfunc(impl_method_name)
      private def self._vfunc_unsafe_verify(%this : Pointer(Void), lib_identity :  Pointer(Void), lib_trusted_ca :  Pointer(Void), ) : UInt32
# @identity: (nullable) 
# @trusted_ca: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_identity, lib_trusted_ca)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_verify = Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_verify(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_verify : Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32)? = nil
    end

    def_equals_and_hash @pointer
  end
end
