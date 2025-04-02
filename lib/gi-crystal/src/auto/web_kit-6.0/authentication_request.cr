require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class AuthenticationRequest < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AuthenticationRequest, g_object_get_qdata)

    # Initialize a new `AuthenticationRequest`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibWebKit.webkit_authentication_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::AuthenticationRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def authenticate(credential : WebKit::Credential?) : Nil
      # webkit_authentication_request_authenticate: (Method)
      # @credential: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      credential = if credential.nil?
                     Pointer(Void).null
                   else
                     credential.to_unsafe
                   end

      # C call
      LibWebKit.webkit_authentication_request_authenticate(to_unsafe, credential)

      # Return value handling
    end

    def can_save_credentials : Bool
      # webkit_authentication_request_can_save_credentials: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_can_save_credentials(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def cancel : Nil
      # webkit_authentication_request_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_authentication_request_cancel(to_unsafe)

      # Return value handling
    end

    def certificate_pin_flags : Gio::TlsPasswordFlags
      # webkit_authentication_request_get_certificate_pin_flags: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_get_certificate_pin_flags(to_unsafe)

      # Return value handling
      Gio::TlsPasswordFlags.new(_retval)
    end

    def host : ::String
      # webkit_authentication_request_get_host: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_get_host(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def port : UInt32
      # webkit_authentication_request_get_port: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_get_port(to_unsafe)

      # Return value handling
      _retval
    end

    def proposed_credential : WebKit::Credential
      # webkit_authentication_request_get_proposed_credential: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_authentication_request_get_proposed_credential(to_unsafe)

      # Return value handling
      WebKit::Credential.new(_retval, GICrystal::Transfer::Full)
    end

    def realm : ::String
      # webkit_authentication_request_get_realm: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_get_realm(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def scheme : WebKit::AuthenticationScheme
      # webkit_authentication_request_get_scheme: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_get_scheme(to_unsafe)

      # Return value handling
      WebKit::AuthenticationScheme.new(_retval)
    end

    def security_origin : WebKit::SecurityOrigin
      # webkit_authentication_request_get_security_origin: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_authentication_request_get_security_origin(to_unsafe)

      # Return value handling
      WebKit::SecurityOrigin.new(_retval, GICrystal::Transfer::Full)
    end

    def is_for_proxy : Bool
      # webkit_authentication_request_is_for_proxy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_is_for_proxy(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_retry : Bool
      # webkit_authentication_request_is_retry: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_authentication_request_is_retry(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_save_credentials=(enabled : Bool) : Nil
      # webkit_authentication_request_set_can_save_credentials: (Method)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_authentication_request_set_can_save_credentials(to_unsafe, enabled)

      # Return value handling
    end

    def proposed_credential=(credential : WebKit::Credential) : Nil
      # webkit_authentication_request_set_proposed_credential: (Method)
      # @credential:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_authentication_request_set_proposed_credential(to_unsafe, credential)

      # Return value handling
    end

    struct AuthenticatedSignal < GObject::Signal
      def name : String
        @detail ? "authenticated::#{@detail}" : "authenticated"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::Credential, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::Credential, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_credential : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          credential = WebKit::Credential.new(lib_credential, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::Credential, Nil)).unbox(_lib_box).call(credential)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::AuthenticationRequest, WebKit::Credential, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_credential : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::AuthenticationRequest.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          credential = WebKit::Credential.new(lib_credential, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::AuthenticationRequest, WebKit::Credential, Nil)).unbox(_lib_box).call(_sender, credential)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(credential : WebKit::Credential) : Nil
        LibGObject.g_signal_emit_by_name(@source, "authenticated", credential)
      end
    end

    def authenticated_signal
      AuthenticatedSignal.new(self)
    end

    struct CancelledSignal < GObject::Signal
      def name : String
        @detail ? "cancelled::#{@detail}" : "cancelled"
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

      def connect(handler : Proc(WebKit::AuthenticationRequest, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::AuthenticationRequest.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::AuthenticationRequest, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "cancelled")
      end
    end

    def cancelled_signal
      CancelledSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
