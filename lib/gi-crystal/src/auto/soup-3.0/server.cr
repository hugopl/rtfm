require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class Server < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::ServerClass), class_init,
        sizeof(LibSoup::Server), instance_init, 0)
    end

    GICrystal.declare_new_method(Server, g_object_get_qdata)

    # Initialize a new `Server`.
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

    def initialize(*, raw_paths : Bool? = nil, server_header : ::String? = nil, tls_auth_mode : Gio::TlsAuthenticationMode? = nil, tls_certificate : Gio::TlsCertificate? = nil, tls_database : Gio::TlsDatabase? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !raw_paths.nil?
        (_names.to_unsafe + _n).value = "raw-paths".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, raw_paths)
        _n += 1
      end
      if !server_header.nil?
        (_names.to_unsafe + _n).value = "server-header".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, server_header)
        _n += 1
      end
      if !tls_auth_mode.nil?
        (_names.to_unsafe + _n).value = "tls-auth-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_auth_mode)
        _n += 1
      end
      if !tls_certificate.nil?
        (_names.to_unsafe + _n).value = "tls-certificate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_certificate)
        _n += 1
      end
      if !tls_database.nil?
        (_names.to_unsafe + _n).value = "tls-database".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_database)
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
      @@g_type ||= LibSoup.soup_server_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::Server.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def raw_paths=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "raw-paths", unsafe_value, Pointer(Void).null)
      value
    end

    def raw_paths? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "raw-paths", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def server_header=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "server-header", unsafe_value, Pointer(Void).null)
      value
    end

    def server_header : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "server-header", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#server_header` property to nil.
    def server_header=(value : Nil) : Nil
      LibGObject.g_object_set(self, "server-header", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#server_header`, but can return nil.
    def server_header? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "server-header", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def tls_auth_mode=(value : Gio::TlsAuthenticationMode) : Gio::TlsAuthenticationMode
      unsafe_value = value

      LibGObject.g_object_set(self, "tls-auth-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def tls_auth_mode : Gio::TlsAuthenticationMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "tls-auth-mode", pointerof(value), Pointer(Void).null)
      Gio::TlsAuthenticationMode.new(value)
    end

    def tls_certificate=(value : Gio::TlsCertificate?) : Gio::TlsCertificate?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tls-certificate", unsafe_value, Pointer(Void).null)
      value
    end

    def tls_certificate : Gio::TlsCertificate?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tls-certificate", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificate.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def tls_database=(value : Gio::TlsDatabase?) : Gio::TlsDatabase?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tls-database", unsafe_value, Pointer(Void).null)
      value
    end

    def tls_database : Gio::TlsDatabase?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tls-database", pointerof(value), Pointer(Void).null)
      Gio::TlsDatabase.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def accept_iostream(stream : Gio::IOStream, local_addr : Gio::SocketAddress?, remote_addr : Gio::SocketAddress?) : Bool
      # soup_server_accept_iostream: (Method | Throws)
      # @stream:
      # @local_addr: (nullable)
      # @remote_addr: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      local_addr = if local_addr.nil?
                     Pointer(Void).null
                   else
                     local_addr.to_unsafe
                   end
      # Generator::NullableArrayPlan
      remote_addr = if remote_addr.nil?
                      Pointer(Void).null
                    else
                      remote_addr.to_unsafe
                    end

      # C call
      _retval = LibSoup.soup_server_accept_iostream(to_unsafe, stream, local_addr, remote_addr, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_auth_domain(auth_domain : Soup::AuthDomain) : Nil
      # soup_server_add_auth_domain: (Method)
      # @auth_domain:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_add_auth_domain(to_unsafe, auth_domain)

      # Return value handling
    end

    def add_early_handler(path : ::String?, callback : Soup::ServerCallback) : Nil
      # soup_server_add_early_handler: (Method)
      # @path: (nullable)
      # @callback:
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end
      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_server : Pointer(Void), lib_msg : Pointer(Void), lib_path : Pointer(LibC::Char), lib_query : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          server = Soup::Server.new(lib_server, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          # Generator::NullableArrayPlan
          query = (lib_query.null? ? nil : lib_query)
          ::Box(Proc(Soup::Server, Soup::ServerMessage, ::String, Pointer(Void)?, Nil)).unbox(lib_user_data).call(server, msg, path, query)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibSoup.soup_server_add_early_handler(to_unsafe, path, callback, user_data, destroy)

      # Return value handling
    end

    def add_handler(path : ::String?, callback : Soup::ServerCallback) : Nil
      # soup_server_add_handler: (Method)
      # @path: (nullable)
      # @callback:
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end
      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_server : Pointer(Void), lib_msg : Pointer(Void), lib_path : Pointer(LibC::Char), lib_query : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          server = Soup::Server.new(lib_server, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          # Generator::NullableArrayPlan
          query = (lib_query.null? ? nil : lib_query)
          ::Box(Proc(Soup::Server, Soup::ServerMessage, ::String, Pointer(Void)?, Nil)).unbox(lib_user_data).call(server, msg, path, query)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibSoup.soup_server_add_handler(to_unsafe, path, callback, user_data, destroy)

      # Return value handling
    end

    def add_websocket_extension(extension_type : UInt64) : Nil
      # soup_server_add_websocket_extension: (Method)
      # @extension_type:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_add_websocket_extension(to_unsafe, extension_type)

      # Return value handling
    end

    def add_websocket_handler(path : ::String?, origin : ::String?, protocols : Enumerable(::String)?, callback : Soup::ServerWebsocketCallback) : Nil
      # soup_server_add_websocket_handler: (Method)
      # @path: (nullable)
      # @origin: (nullable)
      # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
      # @callback:
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end
      # Generator::NullableArrayPlan
      origin = if origin.nil?
                 Pointer(LibC::Char).null
               else
                 origin.to_unsafe
               end
      # Generator::NullableArrayPlan
      protocols = if protocols.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    protocols.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end
      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_server : Pointer(Void), lib_msg : Pointer(Void), lib_path : Pointer(LibC::Char), lib_connection : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          server = Soup::Server.new(lib_server, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          # Generator::BuiltInTypeArgPlan
          connection = Soup::WebsocketConnection.new(lib_connection, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Server, Soup::ServerMessage, ::String, Soup::WebsocketConnection, Nil)).unbox(lib_user_data).call(server, msg, path, connection)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibSoup.soup_server_add_websocket_handler(to_unsafe, path, origin, protocols, callback, user_data, destroy)

      # Return value handling
    end

    def disconnect : Nil
      # soup_server_disconnect: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_disconnect(to_unsafe)

      # Return value handling
    end

    def listeners : GLib::SList
      # soup_server_get_listeners: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibSoup.soup_server_get_listeners(to_unsafe)

      # Return value handling
      GLib::SList(Gio::Socket).new(_retval, GICrystal::Transfer::Container)
    end

    def tls_auth_mode : Gio::TlsAuthenticationMode
      # soup_server_get_tls_auth_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_get_tls_auth_mode(to_unsafe)

      # Return value handling
      Gio::TlsAuthenticationMode.new(_retval)
    end

    def tls_certificate : Gio::TlsCertificate?
      # soup_server_get_tls_certificate: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_get_tls_certificate(to_unsafe)

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tls_database : Gio::TlsDatabase?
      # soup_server_get_tls_database: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_server_get_tls_database(to_unsafe)

      # Return value handling
      Gio::TlsDatabase.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def uris : GLib::SList
      # soup_server_get_uris: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_server_get_uris(to_unsafe)

      # Return value handling
      GLib::SList(GLib::Uri).new(_retval, GICrystal::Transfer::Full)
    end

    def is_https : Bool
      # soup_server_is_https: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_server_is_https(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def listen(address : Gio::SocketAddress, options : Soup::ServerListenOptions) : Bool
      # soup_server_listen: (Method | Throws)
      # @address:
      # @options:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_server_listen(to_unsafe, address, options, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def listen_all(port : UInt32, options : Soup::ServerListenOptions) : Bool
      # soup_server_listen_all: (Method | Throws)
      # @port:
      # @options:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_server_listen_all(to_unsafe, port, options, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def listen_local(port : UInt32, options : Soup::ServerListenOptions) : Bool
      # soup_server_listen_local: (Method | Throws)
      # @port:
      # @options:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_server_listen_local(to_unsafe, port, options, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def listen_socket(socket : Gio::Socket, options : Soup::ServerListenOptions) : Bool
      # soup_server_listen_socket: (Method | Throws)
      # @socket:
      # @options:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_server_listen_socket(to_unsafe, socket, options, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def pause_message(msg : Soup::ServerMessage) : Nil
      # soup_server_pause_message: (Method)
      # @msg:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_pause_message(to_unsafe, msg)

      # Return value handling
    end

    def remove_auth_domain(auth_domain : Soup::AuthDomain) : Nil
      # soup_server_remove_auth_domain: (Method)
      # @auth_domain:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_remove_auth_domain(to_unsafe, auth_domain)

      # Return value handling
    end

    def remove_handler(path : ::String) : Nil
      # soup_server_remove_handler: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_remove_handler(to_unsafe, path)

      # Return value handling
    end

    def remove_websocket_extension(extension_type : UInt64) : Nil
      # soup_server_remove_websocket_extension: (Method)
      # @extension_type:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_remove_websocket_extension(to_unsafe, extension_type)

      # Return value handling
    end

    def tls_auth_mode=(mode : Gio::TlsAuthenticationMode) : Nil
      # soup_server_set_tls_auth_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_set_tls_auth_mode(to_unsafe, mode)

      # Return value handling
    end

    def tls_certificate=(certificate : Gio::TlsCertificate) : Nil
      # soup_server_set_tls_certificate: (Method | Setter)
      # @certificate:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_set_tls_certificate(to_unsafe, certificate)

      # Return value handling
    end

    def tls_database=(tls_database : Gio::TlsDatabase) : Nil
      # soup_server_set_tls_database: (Method | Setter)
      # @tls_database:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_set_tls_database(to_unsafe, tls_database)

      # Return value handling
    end

    @[Deprecated]
    def unpause_message(msg : Soup::ServerMessage) : Nil
      # soup_server_unpause_message: (Method)
      # @msg:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_server_unpause_message(to_unsafe, msg)

      # Return value handling
    end

    struct RequestAbortedSignal < GObject::Signal
      def name : String
        @detail ? "request-aborted::#{@detail}" : "request-aborted"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::ServerMessage, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Server, Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Server.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Server, Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : Soup::ServerMessage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-aborted", message)
      end
    end

    def request_aborted_signal
      RequestAbortedSignal.new(self)
    end

    struct RequestFinishedSignal < GObject::Signal
      def name : String
        @detail ? "request-finished::#{@detail}" : "request-finished"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::ServerMessage, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Server, Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Server.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Server, Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : Soup::ServerMessage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-finished", message)
      end
    end

    def request_finished_signal
      RequestFinishedSignal.new(self)
    end

    struct RequestReadSignal < GObject::Signal
      def name : String
        @detail ? "request-read::#{@detail}" : "request-read"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::ServerMessage, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Server, Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Server.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Server, Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : Soup::ServerMessage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-read", message)
      end
    end

    def request_read_signal
      RequestReadSignal.new(self)
    end

    struct RequestStartedSignal < GObject::Signal
      def name : String
        @detail ? "request-started::#{@detail}" : "request-started"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::ServerMessage, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::ServerMessage, Nil)).unbox(_lib_box).call(message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Server, Soup::ServerMessage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Server.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = Soup::ServerMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Server, Soup::ServerMessage, Nil)).unbox(_lib_box).call(_sender, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : Soup::ServerMessage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-started", message)
      end
    end

    def request_started_signal
      RequestStartedSignal.new(self)
    end

    # request_aborted: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_request_aborted_vfunc(impl_method_name)
      private def self._vfunc_request_aborted(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_aborted(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # request_aborted: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_request_aborted_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_aborted(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_aborted = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_aborted(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_aborted : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # request_finished: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_request_finished_vfunc(impl_method_name)
      private def self._vfunc_request_finished(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_finished(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # request_finished: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_request_finished_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_finished(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_finished = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_finished(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_finished : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # request_read: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_request_read_vfunc(impl_method_name)
      private def self._vfunc_request_read(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_read(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # request_read: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_request_read_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_read(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_read = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_read(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_read : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # request_started: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_request_started_vfunc(impl_method_name)
      private def self._vfunc_request_started(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_started(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # request_started: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_request_started_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_started(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_started = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_started(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_started : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
