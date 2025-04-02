require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SocketClient < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketClientClass), class_init,
        sizeof(LibGio::SocketClient), instance_init, 0)
    end

    GICrystal.declare_new_method(SocketClient, g_object_get_qdata)

    # Initialize a new `SocketClient`.
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

    def initialize(*, enable_proxy : Bool? = nil, family : Gio::SocketFamily? = nil, local_address : Gio::SocketAddress? = nil, protocol : Gio::SocketProtocol? = nil, proxy_resolver : Gio::ProxyResolver? = nil, timeout : UInt32? = nil, tls : Bool? = nil, tls_validation_flags : Gio::TlsCertificateFlags? = nil, type : Gio::SocketType? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !enable_proxy.nil?
        (_names.to_unsafe + _n).value = "enable-proxy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_proxy)
        _n += 1
      end
      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
        _n += 1
      end
      if !local_address.nil?
        (_names.to_unsafe + _n).value = "local-address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, local_address)
        _n += 1
      end
      if !protocol.nil?
        (_names.to_unsafe + _n).value = "protocol".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, protocol)
        _n += 1
      end
      if !proxy_resolver.nil?
        (_names.to_unsafe + _n).value = "proxy-resolver".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, proxy_resolver)
        _n += 1
      end
      if !timeout.nil?
        (_names.to_unsafe + _n).value = "timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, timeout)
        _n += 1
      end
      if !tls.nil?
        (_names.to_unsafe + _n).value = "tls".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls)
        _n += 1
      end
      if !tls_validation_flags.nil?
        (_names.to_unsafe + _n).value = "tls-validation-flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_validation_flags)
        _n += 1
      end
      if !type.nil?
        (_names.to_unsafe + _n).value = "type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, type)
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
      @@g_type ||= LibGio.g_socket_client_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SocketClient.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def enable_proxy=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-proxy", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_proxy? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-proxy", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def family=(value : Gio::SocketFamily) : Gio::SocketFamily
      unsafe_value = value

      LibGObject.g_object_set(self, "family", unsafe_value, Pointer(Void).null)
      value
    end

    def family : Gio::SocketFamily
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "family", pointerof(value), Pointer(Void).null)
      Gio::SocketFamily.new(value)
    end

    def local_address=(value : Gio::SocketAddress?) : Gio::SocketAddress?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "local-address", unsafe_value, Pointer(Void).null)
      value
    end

    def local_address : Gio::SocketAddress?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "local-address", pointerof(value), Pointer(Void).null)
      Gio::SocketAddress.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def protocol=(value : Gio::SocketProtocol) : Gio::SocketProtocol
      unsafe_value = value

      LibGObject.g_object_set(self, "protocol", unsafe_value, Pointer(Void).null)
      value
    end

    def protocol : Gio::SocketProtocol
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "protocol", pointerof(value), Pointer(Void).null)
      Gio::SocketProtocol.new(value)
    end

    def proxy_resolver=(value : Gio::ProxyResolver?) : Gio::ProxyResolver?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "proxy-resolver", unsafe_value, Pointer(Void).null)
      value
    end

    def proxy_resolver : Gio::ProxyResolver?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "proxy-resolver", pointerof(value), Pointer(Void).null)
      Gio::AbstractProxyResolver.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def timeout=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def timeout : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def tls=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "tls", unsafe_value, Pointer(Void).null)
      value
    end

    def tls? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "tls", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tls_validation_flags=(value : Gio::TlsCertificateFlags) : Gio::TlsCertificateFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "tls-validation-flags", unsafe_value, Pointer(Void).null)
      value
    end

    def tls_validation_flags : Gio::TlsCertificateFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "tls-validation-flags", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificateFlags.new(value)
    end

    def type=(value : Gio::SocketType) : Gio::SocketType
      unsafe_value = value

      LibGObject.g_object_set(self, "type", unsafe_value, Pointer(Void).null)
      value
    end

    def type : Gio::SocketType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "type", pointerof(value), Pointer(Void).null)
      Gio::SocketType.new(value)
    end

    def self.new : self
      # g_socket_client_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_client_new

      # Return value handling
      Gio::SocketClient.new(_retval, GICrystal::Transfer::Full)
    end

    def add_application_proxy(protocol : ::String) : Nil
      # g_socket_client_add_application_proxy: (Method)
      # @protocol:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_add_application_proxy(to_unsafe, protocol)

      # Return value handling
    end

    def connect(connectable : Gio::SocketConnectable, cancellable : Gio::Cancellable?) : Gio::SocketConnection
      # g_socket_client_connect: (Method | Throws)
      # @connectable:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_client_connect(to_unsafe, connectable, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_async(connectable : Gio::SocketConnectable, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_client_connect_async: (Method)
      # @connectable:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_socket_client_connect_async(to_unsafe, connectable, cancellable, callback, user_data)

      # Return value handling
    end

    def connect_finish(result : Gio::AsyncResult) : Gio::SocketConnection
      # g_socket_client_connect_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_client_connect_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_to_host(host_and_port : ::String, default_port : UInt16, cancellable : Gio::Cancellable?) : Gio::SocketConnection
      # g_socket_client_connect_to_host: (Method | Throws)
      # @host_and_port:
      # @default_port:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_client_connect_to_host(to_unsafe, host_and_port, default_port, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_to_host_async(host_and_port : ::String, default_port : UInt16, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_client_connect_to_host_async: (Method)
      # @host_and_port:
      # @default_port:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_socket_client_connect_to_host_async(to_unsafe, host_and_port, default_port, cancellable, callback, user_data)

      # Return value handling
    end

    def connect_to_host_finish(result : Gio::AsyncResult) : Gio::SocketConnection
      # g_socket_client_connect_to_host_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_client_connect_to_host_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_to_service(domain : ::String, service : ::String, cancellable : Gio::Cancellable?) : Gio::SocketConnection
      # g_socket_client_connect_to_service: (Method | Throws)
      # @domain:
      # @service:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_client_connect_to_service(to_unsafe, domain, service, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_to_service_async(domain : ::String, service : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_client_connect_to_service_async: (Method)
      # @domain:
      # @service:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_socket_client_connect_to_service_async(to_unsafe, domain, service, cancellable, callback, user_data)

      # Return value handling
    end

    def connect_to_service_finish(result : Gio::AsyncResult) : Gio::SocketConnection
      # g_socket_client_connect_to_service_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_client_connect_to_service_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_to_uri(uri : ::String, default_port : UInt16, cancellable : Gio::Cancellable?) : Gio::SocketConnection
      # g_socket_client_connect_to_uri: (Method | Throws)
      # @uri:
      # @default_port:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_client_connect_to_uri(to_unsafe, uri, default_port, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_to_uri_async(uri : ::String, default_port : UInt16, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_client_connect_to_uri_async: (Method)
      # @uri:
      # @default_port:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_socket_client_connect_to_uri_async(to_unsafe, uri, default_port, cancellable, callback, user_data)

      # Return value handling
    end

    def connect_to_uri_finish(result : Gio::AsyncResult) : Gio::SocketConnection
      # g_socket_client_connect_to_uri_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_client_connect_to_uri_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def enable_proxy : Bool
      # g_socket_client_get_enable_proxy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_enable_proxy(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def family : Gio::SocketFamily
      # g_socket_client_get_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_family(to_unsafe)

      # Return value handling
      Gio::SocketFamily.new(_retval)
    end

    def local_address : Gio::SocketAddress?
      # g_socket_client_get_local_address: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_socket_client_get_local_address(to_unsafe)

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def protocol : Gio::SocketProtocol
      # g_socket_client_get_protocol: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_protocol(to_unsafe)

      # Return value handling
      Gio::SocketProtocol.new(_retval)
    end

    def proxy_resolver : Gio::ProxyResolver
      # g_socket_client_get_proxy_resolver: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_proxy_resolver(to_unsafe)

      # Return value handling
      Gio::AbstractProxyResolver.new(_retval, GICrystal::Transfer::None)
    end

    def socket_type : Gio::SocketType
      # g_socket_client_get_socket_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_socket_type(to_unsafe)

      # Return value handling
      Gio::SocketType.new(_retval)
    end

    def timeout : UInt32
      # g_socket_client_get_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def tls : Bool
      # g_socket_client_get_tls: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_tls(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def tls_validation_flags : Gio::TlsCertificateFlags
      # g_socket_client_get_tls_validation_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_client_get_tls_validation_flags(to_unsafe)

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    def enable_proxy=(enable : Bool) : Nil
      # g_socket_client_set_enable_proxy: (Method | Setter)
      # @enable:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_set_enable_proxy(to_unsafe, enable)

      # Return value handling
    end

    def family=(family : Gio::SocketFamily) : Nil
      # g_socket_client_set_family: (Method | Setter)
      # @family:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_set_family(to_unsafe, family)

      # Return value handling
    end

    def local_address=(address : Gio::SocketAddress?) : Nil
      # g_socket_client_set_local_address: (Method | Setter)
      # @address: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      address = if address.nil?
                  Pointer(Void).null
                else
                  address.to_unsafe
                end

      # C call
      LibGio.g_socket_client_set_local_address(to_unsafe, address)

      # Return value handling
    end

    def protocol=(protocol : Gio::SocketProtocol) : Nil
      # g_socket_client_set_protocol: (Method | Setter)
      # @protocol:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_set_protocol(to_unsafe, protocol)

      # Return value handling
    end

    def proxy_resolver=(proxy_resolver : Gio::ProxyResolver?) : Nil
      # g_socket_client_set_proxy_resolver: (Method | Setter)
      # @proxy_resolver: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      proxy_resolver = if proxy_resolver.nil?
                         Pointer(Void).null
                       else
                         proxy_resolver.to_unsafe
                       end

      # C call
      LibGio.g_socket_client_set_proxy_resolver(to_unsafe, proxy_resolver)

      # Return value handling
    end

    def socket_type=(type : Gio::SocketType) : Nil
      # g_socket_client_set_socket_type: (Method)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_set_socket_type(to_unsafe, type)

      # Return value handling
    end

    def timeout=(timeout : UInt32) : Nil
      # g_socket_client_set_timeout: (Method | Setter)
      # @timeout:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_set_timeout(to_unsafe, timeout)

      # Return value handling
    end

    def tls=(tls : Bool) : Nil
      # g_socket_client_set_tls: (Method | Setter)
      # @tls:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_set_tls(to_unsafe, tls)

      # Return value handling
    end

    @[Deprecated]
    def tls_validation_flags=(flags : Gio::TlsCertificateFlags) : Nil
      # g_socket_client_set_tls_validation_flags: (Method | Setter)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_client_set_tls_validation_flags(to_unsafe, flags)

      # Return value handling
    end

    struct EventSignal < GObject::Signal
      def name : String
        @detail ? "event::#{@detail}" : "event"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::SocketClientEvent, Gio::SocketConnectable, Gio::IOStream?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::SocketClientEvent, Gio::SocketConnectable, Gio::IOStream?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, lib_connectable : Pointer(Void), lib_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          event = Gio::SocketClientEvent.new(lib_event)
          # Generator::BuiltInTypeArgPlan
          connectable = Gio::AbstractSocketConnectable.new(lib_connectable, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          connection = (lib_connection.null? ? nil : Gio::IOStream.new(lib_connection, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          connection = Gio::IOStream.new(lib_connection, GICrystal::Transfer::None) unless lib_connection.null?
          ::Box(Proc(Gio::SocketClientEvent, Gio::SocketConnectable, Gio::IOStream?, Nil)).unbox(_lib_box).call(event, connectable, connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::SocketClient, Gio::SocketClientEvent, Gio::SocketConnectable, Gio::IOStream?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, lib_connectable : Pointer(Void), lib_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::SocketClient.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          event = Gio::SocketClientEvent.new(lib_event)
          # Generator::BuiltInTypeArgPlan
          connectable = Gio::AbstractSocketConnectable.new(lib_connectable, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          connection = (lib_connection.null? ? nil : Gio::IOStream.new(lib_connection, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          connection = Gio::IOStream.new(lib_connection, GICrystal::Transfer::None) unless lib_connection.null?
          ::Box(Proc(Gio::SocketClient, Gio::SocketClientEvent, Gio::SocketConnectable, Gio::IOStream?, Nil)).unbox(_lib_box).call(_sender, event, connectable, connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(event : Gio::SocketClientEvent, connectable : Gio::SocketConnectable, connection : Gio::IOStream?) : Nil
        # Generator::NullableArrayPlan
        connection = if connection.nil?
                       Void.null
                     else
                       connection.to_unsafe
                     end

        LibGObject.g_signal_emit_by_name(@source, "event", event, connectable, connection)
      end
    end

    def event_signal
      EventSignal.new(self)
    end

    # event: (None)
    # @event:
    # @connectable:
    # @connection:
    # Returns: (transfer none)
    private macro _register_event_vfunc(impl_method_name)
      private def self._vfunc_event(%this : Pointer(Void), lib_event :  UInt32, lib_connectable :  Pointer(Void), lib_connection :  Pointer(Void), ) : Void
        # @event: 
# @connectable: 
# @connection: 

# Generator::BuiltInTypeArgPlan
event=Gio::SocketClientEvent.new(lib_event)
# Generator::BuiltInTypeArgPlan
connectable=Gio::AbstractSocketConnectable.new(lib_connectable, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
connection=Gio::IOStream.new(lib_connection, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(event, connectable, connection)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_event(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # event: (None)
    # @event:
    # @connectable:
    # @connection:
    # Returns: (transfer none)
    private macro _register_unsafe_event_vfunc(impl_method_name)
      private def self._vfunc_unsafe_event(%this : Pointer(Void), lib_event :  UInt32, lib_connectable :  Pointer(Void), lib_connection :  Pointer(Void), ) : Void
# @event: 
# @connectable: 
# @connection: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_event, lib_connectable, lib_connection)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_event = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_event(Pointer(Void), UInt32, Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_event : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
