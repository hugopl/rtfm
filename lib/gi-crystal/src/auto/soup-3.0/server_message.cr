require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class ServerMessage < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ServerMessage, g_object_get_qdata)

    # Initialize a new `ServerMessage`.
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

    def initialize(*, tls_peer_certificate : Gio::TlsCertificate? = nil, tls_peer_certificate_errors : Gio::TlsCertificateFlags? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

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
      @@g_type ||= LibSoup.soup_server_message_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::ServerMessage.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def http_version : Soup::HTTPVersion
      # soup_server_message_get_http_version: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_http_version(to_unsafe)

      # Return value handling
      Soup::HTTPVersion.new(_retval)
    end

    def local_address : Gio::SocketAddress?
      # soup_server_message_get_local_address: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_message_get_local_address(to_unsafe)

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def method : ::String
      # soup_server_message_get_method: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_method(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def reason_phrase : ::String?
      # soup_server_message_get_reason_phrase: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_message_get_reason_phrase(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def remote_address : Gio::SocketAddress?
      # soup_server_message_get_remote_address: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_message_get_remote_address(to_unsafe)

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def remote_host : ::String?
      # soup_server_message_get_remote_host: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_message_get_remote_host(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def request_body : Soup::MessageBody
      # soup_server_message_get_request_body: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_request_body(to_unsafe)

      # Return value handling
      Soup::MessageBody.new(_retval, GICrystal::Transfer::None)
    end

    def request_headers : Soup::MessageHeaders
      # soup_server_message_get_request_headers: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_request_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None)
    end

    def response_body : Soup::MessageBody
      # soup_server_message_get_response_body: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_response_body(to_unsafe)

      # Return value handling
      Soup::MessageBody.new(_retval, GICrystal::Transfer::None)
    end

    def response_headers : Soup::MessageHeaders
      # soup_server_message_get_response_headers: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_response_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None)
    end

    def socket : Gio::Socket?
      # soup_server_message_get_socket: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_message_get_socket(to_unsafe)

      # Return value handling
      Gio::Socket.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def status : UInt32
      # soup_server_message_get_status: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_status(to_unsafe)

      # Return value handling
      _retval
    end

    def tls_peer_certificate : Gio::TlsCertificate?
      # soup_server_message_get_tls_peer_certificate: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_message_get_tls_peer_certificate(to_unsafe)

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tls_peer_certificate_errors : Gio::TlsCertificateFlags
      # soup_server_message_get_tls_peer_certificate_errors: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_tls_peer_certificate_errors(to_unsafe)

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    def uri : GLib::Uri
      # soup_server_message_get_uri: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_get_uri(to_unsafe)

      # Return value handling
      GLib::Uri.new(_retval, GICrystal::Transfer::None)
    end

    def is_options_ping : Bool
      # soup_server_message_is_options_ping: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_message_is_options_ping(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pause : Nil
      # soup_server_message_pause: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_message_pause(to_unsafe)

      # Return value handling
    end

    def http_version=(version : Soup::HTTPVersion) : Nil
      # soup_server_message_set_http_version: (Method)
      # @version:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_message_set_http_version(to_unsafe, version)

      # Return value handling
    end

    def set_redirect(status_code : UInt32, redirect_uri : ::String) : Nil
      # soup_server_message_set_redirect: (Method)
      # @status_code:
      # @redirect_uri:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_message_set_redirect(to_unsafe, status_code, redirect_uri)

      # Return value handling
    end

    def set_response(content_type : ::String?, resp_use : Soup::MemoryUse, resp_body : ::Bytes?) : Nil
      # soup_server_message_set_response: (Method)
      # @content_type: (nullable)
      # @resp_use:
      # @resp_body: (nullable) (array length=resp_length element-type UInt8)
      # @resp_length:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content_type = if content_type.nil?
                       Pointer(LibC::Char).null
                     else
                       content_type.to_unsafe
                     end
      # Generator::ArrayLengthArgPlan
      resp_length = resp_body.try(&.size) || 0
      # Generator::NullableArrayPlan
      resp_body = if resp_body.nil?
                    Pointer(UInt8).null
                  else
                    resp_body.to_unsafe
                  end

      # C call
      LibSoup.soup_server_message_set_response(to_unsafe, content_type, resp_use, resp_body, resp_length)

      # Return value handling
    end

    def set_status(status_code : UInt32, reason_phrase : ::String?) : Nil
      # soup_server_message_set_status: (Method)
      # @status_code:
      # @reason_phrase: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      reason_phrase = if reason_phrase.nil?
                        Pointer(LibC::Char).null
                      else
                        reason_phrase.to_unsafe
                      end

      # C call
      LibSoup.soup_server_message_set_status(to_unsafe, status_code, reason_phrase)

      # Return value handling
    end

    def steal_connection : Gio::IOStream
      # soup_server_message_steal_connection: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_server_message_steal_connection(to_unsafe)

      # Return value handling
      Gio::IOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def unpause : Nil
      # soup_server_message_unpause: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_message_unpause(to_unsafe)

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

      def connect(handler : Proc(Soup::ServerMessage, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tls_peer_certificate : Pointer(Void), lib_tls_peer_errors : UInt32, _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tls_peer_certificate = Gio::TlsCertificate.new(lib_tls_peer_certificate, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tls_peer_errors = Gio::TlsCertificateFlags.new(lib_tls_peer_errors)
          ::Box(Proc(Soup::ServerMessage, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)).unbox(_lib_box).call(_sender, tls_peer_certificate, tls_peer_errors)
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

    struct ConnectedSignal < GObject::Signal
      def name : String
        @detail ? "connected::#{@detail}" : "connected"
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "connected")
      end
    end

    def connected_signal
      ConnectedSignal.new(self)
    end

    struct DisconnectedSignal < GObject::Signal
      def name : String
        @detail ? "disconnected::#{@detail}" : "disconnected"
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "disconnected")
      end
    end

    def disconnected_signal
      DisconnectedSignal.new(self)
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
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

    struct GotChunkSignal < GObject::Signal
      def name : String
        @detail ? "got-chunk::#{@detail}" : "got-chunk"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Bytes, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Bytes, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_chunk : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          chunk = GLib::Bytes.new(lib_chunk, GICrystal::Transfer::None)
          ::Box(Proc(GLib::Bytes, Nil)).unbox(_lib_box).call(chunk)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::ServerMessage, GLib::Bytes, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_chunk : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          chunk = GLib::Bytes.new(lib_chunk, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, GLib::Bytes, Nil)).unbox(_lib_box).call(_sender, chunk)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(chunk : GLib::Bytes) : Nil
        LibGObject.g_signal_emit_by_name(@source, "got-chunk", chunk)
      end
    end

    def got_chunk_signal
      GotChunkSignal.new(self)
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
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

      def connect(handler : Proc(Soup::ServerMessage, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_chunk_size : UInt32, _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          chunk_size = lib_chunk_size
          ::Box(Proc(Soup::ServerMessage, UInt32, Nil)).unbox(_lib_box).call(_sender, chunk_size)
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

    struct WroteChunkSignal < GObject::Signal
      def name : String
        @detail ? "wrote-chunk::#{@detail}" : "wrote-chunk"
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "wrote-chunk")
      end
    end

    def wrote_chunk_signal
      WroteChunkSignal.new(self)
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
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

    struct WroteInformationalSignal < GObject::Signal
      def name : String
        @detail ? "wrote-informational::#{@detail}" : "wrote-informational"
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

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::ServerMessage.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "wrote-informational")
      end
    end

    def wrote_informational_signal
      WroteInformationalSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
