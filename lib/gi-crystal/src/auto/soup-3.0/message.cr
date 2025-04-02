require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class Message < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Message, g_object_get_qdata)

    # Initialize a new `Message`.
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

    def initialize(*, first_party : GLib::Uri? = nil, flags : Soup::MessageFlags? = nil, http_version : Soup::HTTPVersion? = nil, is_options_ping : Bool? = nil, is_top_level_navigation : Bool? = nil, method : ::String? = nil, priority : Soup::MessagePriority? = nil, reason_phrase : ::String? = nil, remote_address : Gio::SocketAddress? = nil, request_headers : Soup::MessageHeaders? = nil, response_headers : Soup::MessageHeaders? = nil, site_for_cookies : GLib::Uri? = nil, status_code : UInt32? = nil, tls_ciphersuite_name : ::String? = nil, tls_peer_certificate : Gio::TlsCertificate? = nil, tls_peer_certificate_errors : Gio::TlsCertificateFlags? = nil, tls_protocol_version : Gio::TlsProtocolVersion? = nil, uri : GLib::Uri? = nil)
      _names = uninitialized Pointer(LibC::Char)[18]
      _values = StaticArray(LibGObject::Value, 18).new(LibGObject::Value.new)
      _n = 0

      if !first_party.nil?
        (_names.to_unsafe + _n).value = "first-party".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, first_party)
        _n += 1
      end
      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
        _n += 1
      end
      if !http_version.nil?
        (_names.to_unsafe + _n).value = "http-version".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, http_version)
        _n += 1
      end
      if !is_options_ping.nil?
        (_names.to_unsafe + _n).value = "is-options-ping".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_options_ping)
        _n += 1
      end
      if !is_top_level_navigation.nil?
        (_names.to_unsafe + _n).value = "is-top-level-navigation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_top_level_navigation)
        _n += 1
      end
      if !method.nil?
        (_names.to_unsafe + _n).value = "method".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, method)
        _n += 1
      end
      if !priority.nil?
        (_names.to_unsafe + _n).value = "priority".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, priority)
        _n += 1
      end
      if !reason_phrase.nil?
        (_names.to_unsafe + _n).value = "reason-phrase".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reason_phrase)
        _n += 1
      end
      if !remote_address.nil?
        (_names.to_unsafe + _n).value = "remote-address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, remote_address)
        _n += 1
      end
      if !request_headers.nil?
        (_names.to_unsafe + _n).value = "request-headers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, request_headers)
        _n += 1
      end
      if !response_headers.nil?
        (_names.to_unsafe + _n).value = "response-headers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, response_headers)
        _n += 1
      end
      if !site_for_cookies.nil?
        (_names.to_unsafe + _n).value = "site-for-cookies".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, site_for_cookies)
        _n += 1
      end
      if !status_code.nil?
        (_names.to_unsafe + _n).value = "status-code".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, status_code)
        _n += 1
      end
      if !tls_ciphersuite_name.nil?
        (_names.to_unsafe + _n).value = "tls-ciphersuite-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_ciphersuite_name)
        _n += 1
      end
      if !tls_peer_certificate.nil?
        (_names.to_unsafe + _n).value = "tls-peer-certificate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_peer_certificate)
        _n += 1
      end
      if !tls_peer_certificate_errors.nil?
        (_names.to_unsafe + _n).value = "tls-peer-certificate-errors".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_peer_certificate_errors)
        _n += 1
      end
      if !tls_protocol_version.nil?
        (_names.to_unsafe + _n).value = "tls-protocol-version".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_protocol_version)
        _n += 1
      end
      if !uri.nil?
        (_names.to_unsafe + _n).value = "uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, uri)
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
      @@g_type ||= LibSoup.soup_message_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::Message.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def first_party=(value : GLib::Uri?) : GLib::Uri?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "first-party", unsafe_value, Pointer(Void).null)
      value
    end

    def first_party : GLib::Uri?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "first-party", pointerof(value), Pointer(Void).null)
      GLib::Uri.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def flags=(value : Soup::MessageFlags) : Soup::MessageFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Soup::MessageFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Soup::MessageFlags.new(value)
    end

    def http_version : Soup::HTTPVersion
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "http-version", pointerof(value), Pointer(Void).null)
      Soup::HTTPVersion.new(value)
    end

    def is_options_ping=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-options-ping", unsafe_value, Pointer(Void).null)
      value
    end

    def is_options_ping? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-options-ping", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_top_level_navigation=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-top-level-navigation", unsafe_value, Pointer(Void).null)
      value
    end

    def is_top_level_navigation? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-top-level-navigation", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def method=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "method", unsafe_value, Pointer(Void).null)
      value
    end

    def method : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "method", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#method` property to nil.
    def method=(value : Nil) : Nil
      LibGObject.g_object_set(self, "method", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#method`, but can return nil.
    def method? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "method", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def priority=(value : Soup::MessagePriority) : Soup::MessagePriority
      unsafe_value = value

      LibGObject.g_object_set(self, "priority", unsafe_value, Pointer(Void).null)
      value
    end

    def priority : Soup::MessagePriority
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "priority", pointerof(value), Pointer(Void).null)
      Soup::MessagePriority.new(value)
    end

    def reason_phrase : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "reason-phrase", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#reason_phrase`, but can return nil.
    def reason_phrase? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "reason-phrase", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def remote_address : Gio::SocketAddress?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "remote-address", pointerof(value), Pointer(Void).null)
      Gio::SocketAddress.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def request_headers : Soup::MessageHeaders?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "request-headers", pointerof(value), Pointer(Void).null)
      Soup::MessageHeaders.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def response_headers : Soup::MessageHeaders?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "response-headers", pointerof(value), Pointer(Void).null)
      Soup::MessageHeaders.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def site_for_cookies=(value : GLib::Uri?) : GLib::Uri?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "site-for-cookies", unsafe_value, Pointer(Void).null)
      value
    end

    def site_for_cookies : GLib::Uri?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "site-for-cookies", pointerof(value), Pointer(Void).null)
      GLib::Uri.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def status_code : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "status-code", pointerof(value), Pointer(Void).null)
      value
    end

    def tls_ciphersuite_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tls-ciphersuite-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#tls_ciphersuite_name`, but can return nil.
    def tls_ciphersuite_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tls-ciphersuite-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def tls_peer_certificate : Gio::TlsCertificate?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tls-peer-certificate", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificate.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def tls_peer_certificate_errors : Gio::TlsCertificateFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "tls-peer-certificate-errors", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificateFlags.new(value)
    end

    def tls_protocol_version : Gio::TlsProtocolVersion
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "tls-protocol-version", pointerof(value), Pointer(Void).null)
      Gio::TlsProtocolVersion.new(value)
    end

    def uri=(value : GLib::Uri?) : GLib::Uri?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "uri", unsafe_value, Pointer(Void).null)
      value
    end

    def uri : GLib::Uri?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      GLib::Uri.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(method : ::String, uri_string : ::String) : self?
      # soup_message_new: (Constructor)
      # @method:
      # @uri_string:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_message_new(method, uri_string)

      # Return value handling
      Soup::Message.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_encoded_form(method : ::String, uri_string : ::String, encoded_form : ::String) : self?
      # soup_message_new_from_encoded_form: (Constructor)
      # @method:
      # @uri_string:
      # @encoded_form: (transfer full)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_message_new_from_encoded_form(method, uri_string, encoded_form)

      # Return value handling
      Soup::Message.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_multipart(uri_string : ::String, multipart : Soup::Multipart) : self?
      # soup_message_new_from_multipart: (Constructor)
      # @uri_string:
      # @multipart:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_message_new_from_multipart(uri_string, multipart)

      # Return value handling
      Soup::Message.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_uri(method : ::String, uri : GLib::Uri) : self
      # soup_message_new_from_uri: (Constructor)
      # @method:
      # @uri:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_message_new_from_uri(method, uri)

      # Return value handling
      Soup::Message.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_options_ping(base_uri : GLib::Uri) : self
      # soup_message_new_options_ping: (Constructor)
      # @base_uri:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_message_new_options_ping(base_uri)

      # Return value handling
      Soup::Message.new(_retval, GICrystal::Transfer::Full)
    end

    def add_flags(flags : Soup::MessageFlags) : Nil
      # soup_message_add_flags: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_add_flags(to_unsafe, flags)

      # Return value handling
    end

    def disable_feature(feature_type : UInt64) : Nil
      # soup_message_disable_feature: (Method)
      # @feature_type:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_disable_feature(to_unsafe, feature_type)

      # Return value handling
    end

    def connection_id : UInt64
      # soup_message_get_connection_id: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_connection_id(to_unsafe)

      # Return value handling
      _retval
    end

    def first_party : GLib::Uri
      # soup_message_get_first_party: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_first_party(to_unsafe)

      # Return value handling
      GLib::Uri.new(_retval, GICrystal::Transfer::None)
    end

    def flags : Soup::MessageFlags
      # soup_message_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_flags(to_unsafe)

      # Return value handling
      Soup::MessageFlags.new(_retval)
    end

    def force_http1 : Bool
      # soup_message_get_force_http1: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_force_http1(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def http_version : Soup::HTTPVersion
      # soup_message_get_http_version: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_http_version(to_unsafe)

      # Return value handling
      Soup::HTTPVersion.new(_retval)
    end

    def is_options_ping : Bool
      # soup_message_get_is_options_ping: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_is_options_ping(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_top_level_navigation : Bool
      # soup_message_get_is_top_level_navigation: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_is_top_level_navigation(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def method : ::String
      # soup_message_get_method: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_method(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def metrics : Soup::MessageMetrics?
      # soup_message_get_metrics: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_message_get_metrics(to_unsafe)

      # Return value handling
      Soup::MessageMetrics.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def priority : Soup::MessagePriority
      # soup_message_get_priority: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_priority(to_unsafe)

      # Return value handling
      Soup::MessagePriority.new(_retval)
    end

    def reason_phrase : ::String?
      # soup_message_get_reason_phrase: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_message_get_reason_phrase(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def remote_address : Gio::SocketAddress?
      # soup_message_get_remote_address: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_message_get_remote_address(to_unsafe)

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def request_headers : Soup::MessageHeaders
      # soup_message_get_request_headers: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_request_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None)
    end

    def response_headers : Soup::MessageHeaders
      # soup_message_get_response_headers: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_response_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None)
    end

    def site_for_cookies : GLib::Uri
      # soup_message_get_site_for_cookies: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_site_for_cookies(to_unsafe)

      # Return value handling
      GLib::Uri.new(_retval, GICrystal::Transfer::None)
    end

    def status : Soup::Status
      # soup_message_get_status: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_status(to_unsafe)

      # Return value handling
      Soup::Status.new(_retval)
    end

    def tls_ciphersuite_name : ::String
      # soup_message_get_tls_ciphersuite_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_tls_ciphersuite_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def tls_peer_certificate : Gio::TlsCertificate?
      # soup_message_get_tls_peer_certificate: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_message_get_tls_peer_certificate(to_unsafe)

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tls_peer_certificate_errors : Gio::TlsCertificateFlags
      # soup_message_get_tls_peer_certificate_errors: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_tls_peer_certificate_errors(to_unsafe)

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    def tls_protocol_version : Gio::TlsProtocolVersion
      # soup_message_get_tls_protocol_version: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_tls_protocol_version(to_unsafe)

      # Return value handling
      Gio::TlsProtocolVersion.new(_retval)
    end

    def uri : GLib::Uri
      # soup_message_get_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_get_uri(to_unsafe)

      # Return value handling
      GLib::Uri.new(_retval, GICrystal::Transfer::None)
    end

    def is_feature_disabled(feature_type : UInt64) : Bool
      # soup_message_is_feature_disabled: (Method)
      # @feature_type:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_is_feature_disabled(to_unsafe, feature_type)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_keepalive : Bool
      # soup_message_is_keepalive: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_is_keepalive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def query_flags(flags : Soup::MessageFlags) : Bool
      # soup_message_query_flags: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_query_flags(to_unsafe, flags)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove_flags(flags : Soup::MessageFlags) : Nil
      # soup_message_remove_flags: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_remove_flags(to_unsafe, flags)

      # Return value handling
    end

    def first_party=(first_party : GLib::Uri) : Nil
      # soup_message_set_first_party: (Method | Setter)
      # @first_party:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_first_party(to_unsafe, first_party)

      # Return value handling
    end

    def flags=(flags : Soup::MessageFlags) : Nil
      # soup_message_set_flags: (Method | Setter)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_flags(to_unsafe, flags)

      # Return value handling
    end

    def force_http1=(value : Bool) : Nil
      # soup_message_set_force_http1: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_force_http1(to_unsafe, value)

      # Return value handling
    end

    def is_options_ping=(is_options_ping : Bool) : Nil
      # soup_message_set_is_options_ping: (Method | Setter)
      # @is_options_ping:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_is_options_ping(to_unsafe, is_options_ping)

      # Return value handling
    end

    def is_top_level_navigation=(is_top_level_navigation : Bool) : Nil
      # soup_message_set_is_top_level_navigation: (Method | Setter)
      # @is_top_level_navigation:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_is_top_level_navigation(to_unsafe, is_top_level_navigation)

      # Return value handling
    end

    def method=(method : ::String) : Nil
      # soup_message_set_method: (Method | Setter)
      # @method:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_method(to_unsafe, method)

      # Return value handling
    end

    def priority=(priority : Soup::MessagePriority) : Nil
      # soup_message_set_priority: (Method | Setter)
      # @priority:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_priority(to_unsafe, priority)

      # Return value handling
    end

    def set_request_body(content_type : ::String?, stream : Gio::InputStream?, content_length : Int64) : Nil
      # soup_message_set_request_body: (Method)
      # @content_type: (nullable)
      # @stream: (nullable)
      # @content_length:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content_type = if content_type.nil?
                       Pointer(LibC::Char).null
                     else
                       content_type.to_unsafe
                     end
      # Generator::NullableArrayPlan
      stream = if stream.nil?
                 Pointer(Void).null
               else
                 stream.to_unsafe
               end

      # C call
      LibSoup.soup_message_set_request_body(to_unsafe, content_type, stream, content_length)

      # Return value handling
    end

    def set_request_body_from_bytes(content_type : ::String?, bytes : GLib::Bytes?) : Nil
      # soup_message_set_request_body_from_bytes: (Method)
      # @content_type: (nullable)
      # @bytes: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content_type = if content_type.nil?
                       Pointer(LibC::Char).null
                     else
                       content_type.to_unsafe
                     end
      # Generator::NullableArrayPlan
      bytes = if bytes.nil?
                Pointer(Void).null
              else
                bytes.to_unsafe
              end

      # C call
      LibSoup.soup_message_set_request_body_from_bytes(to_unsafe, content_type, bytes)

      # Return value handling
    end

    def site_for_cookies=(site_for_cookies : GLib::Uri?) : Nil
      # soup_message_set_site_for_cookies: (Method | Setter)
      # @site_for_cookies: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      site_for_cookies = if site_for_cookies.nil?
                           Pointer(Void).null
                         else
                           site_for_cookies.to_unsafe
                         end

      # C call
      LibSoup.soup_message_set_site_for_cookies(to_unsafe, site_for_cookies)

      # Return value handling
    end

    def tls_client_certificate=(certificate : Gio::TlsCertificate?) : Nil
      # soup_message_set_tls_client_certificate: (Method)
      # @certificate: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      certificate = if certificate.nil?
                      Pointer(Void).null
                    else
                      certificate.to_unsafe
                    end

      # C call
      LibSoup.soup_message_set_tls_client_certificate(to_unsafe, certificate)

      # Return value handling
    end

    def uri=(uri : GLib::Uri) : Nil
      # soup_message_set_uri: (Method | Setter)
      # @uri:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_set_uri(to_unsafe, uri)

      # Return value handling
    end

    def tls_client_certificate_password_request_complete : Nil
      # soup_message_tls_client_certificate_password_request_complete: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_tls_client_certificate_password_request_complete(to_unsafe)

      # Return value handling
    end

    struct AcceptCertificateSignal < GObject::Signal
      def name : String
        @detail ? "accept-certificate::#{@detail}" : "accept-certificate"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tls_peer_certificate : Pointer(Void), lib_tls_peer_errors : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tls_peer_certificate = Gio::TlsCertificate.new(lib_tls_peer_certificate, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tls_peer_errors = Gio::TlsCertificateFlags.new(lib_tls_peer_errors)
          ::Box(Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)).unbox(_lib_box).call(tls_peer_certificate, tls_peer_errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tls_peer_certificate : Pointer(Void), lib_tls_peer_errors : UInt32, _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tls_peer_certificate = Gio::TlsCertificate.new(lib_tls_peer_certificate, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tls_peer_errors = Gio::TlsCertificateFlags.new(lib_tls_peer_errors)
          ::Box(Proc(Soup::Message, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)).unbox(_lib_box).call(_sender, tls_peer_certificate, tls_peer_errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tls_peer_certificate : Gio::TlsCertificate, tls_peer_errors : Gio::TlsCertificateFlags) : Nil
        LibGObject.g_signal_emit_by_name(@source, "accept-certificate", tls_peer_certificate, tls_peer_errors)
      end
    end

    def accept_certificate_signal
      AcceptCertificateSignal.new(self)
    end

    struct AuthenticateSignal < GObject::Signal
      def name : String
        @detail ? "authenticate::#{@detail}" : "authenticate"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::Auth, Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::Auth, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_auth : Pointer(Void), lib_retrying : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          auth = Soup::Auth.new(lib_auth, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          retrying = GICrystal.to_bool(lib_retrying)
          ::Box(Proc(Soup::Auth, Bool, Bool)).unbox(_lib_box).call(auth, retrying)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Soup::Auth, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_auth : Pointer(Void), lib_retrying : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          auth = Soup::Auth.new(lib_auth, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          retrying = GICrystal.to_bool(lib_retrying)
          ::Box(Proc(Soup::Message, Soup::Auth, Bool, Bool)).unbox(_lib_box).call(_sender, auth, retrying)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(auth : Soup::Auth, retrying : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "authenticate", auth, retrying)
      end
    end

    def authenticate_signal
      AuthenticateSignal.new(self)
    end

    struct ContentSniffedSignal < GObject::Signal
      def name : String
        @detail ? "content-sniffed::#{@detail}" : "content-sniffed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Pointer(Void), Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Pointer(Void), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_type : Pointer(LibC::Char), lib_params : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          type = ::String.new(lib_type)
          # NoStrategy
          params = lib_params
          ::Box(Proc(::String, Pointer(Void), Nil)).unbox(_lib_box).call(type, params)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, ::String, Pointer(Void), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_type : Pointer(LibC::Char), lib_params : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          type = ::String.new(lib_type)
          # NoStrategy
          params = lib_params
          ::Box(Proc(Soup::Message, ::String, Pointer(Void), Nil)).unbox(_lib_box).call(_sender, type, params)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(type : ::String, params : Pointer(Void)) : Nil
        LibGObject.g_signal_emit_by_name(@source, "content-sniffed", type, params)
      end
    end

    def content_sniffed_signal
      ContentSniffedSignal.new(self)
    end

    struct FinishedSignal < GObject::Signal
      def name : String
        @detail ? "finished::#{@detail}" : "finished"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "finished")
      end
    end

    def finished_signal
      FinishedSignal.new(self)
    end

    struct GotBodySignal < GObject::Signal
      def name : String
        @detail ? "got-body::#{@detail}" : "got-body"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "got-body")
      end
    end

    def got_body_signal
      GotBodySignal.new(self)
    end

    struct GotBodyDataSignal < GObject::Signal
      def name : String
        @detail ? "got-body-data::#{@detail}" : "got-body-data"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_chunk_size : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          chunk_size = lib_chunk_size
          ::Box(Proc(UInt32, Nil)).unbox(_lib_box).call(chunk_size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_chunk_size : UInt32, _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          chunk_size = lib_chunk_size
          ::Box(Proc(Soup::Message, UInt32, Nil)).unbox(_lib_box).call(_sender, chunk_size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(chunk_size : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "got-body-data", chunk_size)
      end
    end

    def got_body_data_signal
      GotBodyDataSignal.new(self)
    end

    struct GotHeadersSignal < GObject::Signal
      def name : String
        @detail ? "got-headers::#{@detail}" : "got-headers"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "got-headers")
      end
    end

    def got_headers_signal
      GotHeadersSignal.new(self)
    end

    struct GotInformationalSignal < GObject::Signal
      def name : String
        @detail ? "got-informational::#{@detail}" : "got-informational"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "got-informational")
      end
    end

    def got_informational_signal
      GotInformationalSignal.new(self)
    end

    struct HstsEnforcedSignal < GObject::Signal
      def name : String
        @detail ? "hsts-enforced::#{@detail}" : "hsts-enforced"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "hsts-enforced")
      end
    end

    def hsts_enforced_signal
      HstsEnforcedSignal.new(self)
    end

    struct NetworkEventSignal < GObject::Signal
      def name : String
        @detail ? "network-event::#{@detail}" : "network-event"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::SocketClientEvent, Gio::IOStream, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::SocketClientEvent, Gio::IOStream, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, lib_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          event = Gio::SocketClientEvent.new(lib_event)
          # Generator::BuiltInTypeArgPlan
          connection = Gio::IOStream.new(lib_connection, GICrystal::Transfer::None)
          ::Box(Proc(Gio::SocketClientEvent, Gio::IOStream, Nil)).unbox(_lib_box).call(event, connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Gio::SocketClientEvent, Gio::IOStream, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, lib_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          event = Gio::SocketClientEvent.new(lib_event)
          # Generator::BuiltInTypeArgPlan
          connection = Gio::IOStream.new(lib_connection, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Gio::SocketClientEvent, Gio::IOStream, Nil)).unbox(_lib_box).call(_sender, event, connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(event : Gio::SocketClientEvent, connection : Gio::IOStream) : Nil
        LibGObject.g_signal_emit_by_name(@source, "network-event", event, connection)
      end
    end

    def network_event_signal
      NetworkEventSignal.new(self)
    end

    struct RequestCertificateSignal < GObject::Signal
      def name : String
        @detail ? "request-certificate::#{@detail}" : "request-certificate"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::TlsClientConnection, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::TlsClientConnection, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tls_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tls_connection = Gio::AbstractTlsClientConnection.new(lib_tls_connection, GICrystal::Transfer::None)
          ::Box(Proc(Gio::TlsClientConnection, Bool)).unbox(_lib_box).call(tls_connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Gio::TlsClientConnection, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tls_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tls_connection = Gio::AbstractTlsClientConnection.new(lib_tls_connection, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Gio::TlsClientConnection, Bool)).unbox(_lib_box).call(_sender, tls_connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tls_connection : Gio::TlsClientConnection) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-certificate", tls_connection)
      end
    end

    def request_certificate_signal
      RequestCertificateSignal.new(self)
    end

    struct RequestCertificatePasswordSignal < GObject::Signal
      def name : String
        @detail ? "request-certificate-password::#{@detail}" : "request-certificate-password"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::TlsPassword, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::TlsPassword, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tls_password : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tls_password = Gio::TlsPassword.new(lib_tls_password, GICrystal::Transfer::None)
          ::Box(Proc(Gio::TlsPassword, Bool)).unbox(_lib_box).call(tls_password)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Gio::TlsPassword, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tls_password : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tls_password = Gio::TlsPassword.new(lib_tls_password, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Gio::TlsPassword, Bool)).unbox(_lib_box).call(_sender, tls_password)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tls_password : Gio::TlsPassword) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-certificate-password", tls_password)
      end
    end

    def request_certificate_password_signal
      RequestCertificatePasswordSignal.new(self)
    end

    struct RestartedSignal < GObject::Signal
      def name : String
        @detail ? "restarted::#{@detail}" : "restarted"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "restarted")
      end
    end

    def restarted_signal
      RestartedSignal.new(self)
    end

    struct StartingSignal < GObject::Signal
      def name : String
        @detail ? "starting::#{@detail}" : "starting"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "starting")
      end
    end

    def starting_signal
      StartingSignal.new(self)
    end

    struct WroteBodySignal < GObject::Signal
      def name : String
        @detail ? "wrote-body::#{@detail}" : "wrote-body"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "wrote-body")
      end
    end

    def wrote_body_signal
      WroteBodySignal.new(self)
    end

    struct WroteBodyDataSignal < GObject::Signal
      def name : String
        @detail ? "wrote-body-data::#{@detail}" : "wrote-body-data"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_chunk_size : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          chunk_size = lib_chunk_size
          ::Box(Proc(UInt32, Nil)).unbox(_lib_box).call(chunk_size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_chunk_size : UInt32, _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          chunk_size = lib_chunk_size
          ::Box(Proc(Soup::Message, UInt32, Nil)).unbox(_lib_box).call(_sender, chunk_size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(chunk_size : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "wrote-body-data", chunk_size)
      end
    end

    def wrote_body_data_signal
      WroteBodyDataSignal.new(self)
    end

    struct WroteHeadersSignal < GObject::Signal
      def name : String
        @detail ? "wrote-headers::#{@detail}" : "wrote-headers"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Message.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "wrote-headers")
      end
    end

    def wrote_headers_signal
      WroteHeadersSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
