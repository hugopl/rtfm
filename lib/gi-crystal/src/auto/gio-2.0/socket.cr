require "../g_object-2.0/object"
require "./datagram_based"

require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Socket < GObject::Object
    include DatagramBased
    include Initable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketClass), class_init,
        sizeof(LibGio::Socket), instance_init, 0)
    end

    GICrystal.declare_new_method(Socket, g_object_get_qdata)

    # Initialize a new `Socket`.
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

    def initialize(*, blocking : Bool? = nil, broadcast : Bool? = nil, family : Gio::SocketFamily? = nil, fd : Int32? = nil, keepalive : Bool? = nil, listen_backlog : Int32? = nil, local_address : Gio::SocketAddress? = nil, multicast_loopback : Bool? = nil, multicast_ttl : UInt32? = nil, protocol : Gio::SocketProtocol? = nil, remote_address : Gio::SocketAddress? = nil, timeout : UInt32? = nil, ttl : UInt32? = nil, type : Gio::SocketType? = nil)
      _names = uninitialized Pointer(LibC::Char)[14]
      _values = StaticArray(LibGObject::Value, 14).new(LibGObject::Value.new)
      _n = 0

      if !blocking.nil?
        (_names.to_unsafe + _n).value = "blocking".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, blocking)
        _n += 1
      end
      if !broadcast.nil?
        (_names.to_unsafe + _n).value = "broadcast".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, broadcast)
        _n += 1
      end
      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
        _n += 1
      end
      if !fd.nil?
        (_names.to_unsafe + _n).value = "fd".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fd)
        _n += 1
      end
      if !keepalive.nil?
        (_names.to_unsafe + _n).value = "keepalive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, keepalive)
        _n += 1
      end
      if !listen_backlog.nil?
        (_names.to_unsafe + _n).value = "listen-backlog".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, listen_backlog)
        _n += 1
      end
      if !local_address.nil?
        (_names.to_unsafe + _n).value = "local-address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, local_address)
        _n += 1
      end
      if !multicast_loopback.nil?
        (_names.to_unsafe + _n).value = "multicast-loopback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, multicast_loopback)
        _n += 1
      end
      if !multicast_ttl.nil?
        (_names.to_unsafe + _n).value = "multicast-ttl".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, multicast_ttl)
        _n += 1
      end
      if !protocol.nil?
        (_names.to_unsafe + _n).value = "protocol".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, protocol)
        _n += 1
      end
      if !remote_address.nil?
        (_names.to_unsafe + _n).value = "remote-address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, remote_address)
        _n += 1
      end
      if !timeout.nil?
        (_names.to_unsafe + _n).value = "timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, timeout)
        _n += 1
      end
      if !ttl.nil?
        (_names.to_unsafe + _n).value = "ttl".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ttl)
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
      @@g_type ||= LibGio.g_socket_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Socket.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def blocking=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "blocking", unsafe_value, Pointer(Void).null)
      value
    end

    def blocking? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "blocking", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def broadcast=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "broadcast", unsafe_value, Pointer(Void).null)
      value
    end

    def broadcast? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "broadcast", pointerof(value), Pointer(Void).null)
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

    def fd=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "fd", unsafe_value, Pointer(Void).null)
      value
    end

    def fd : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "fd", pointerof(value), Pointer(Void).null)
      value
    end

    def keepalive=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "keepalive", unsafe_value, Pointer(Void).null)
      value
    end

    def keepalive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "keepalive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def listen_backlog=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "listen-backlog", unsafe_value, Pointer(Void).null)
      value
    end

    def listen_backlog : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "listen-backlog", pointerof(value), Pointer(Void).null)
      value
    end

    def local_address : Gio::SocketAddress?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "local-address", pointerof(value), Pointer(Void).null)
      Gio::SocketAddress.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def multicast_loopback=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "multicast-loopback", unsafe_value, Pointer(Void).null)
      value
    end

    def multicast_loopback? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "multicast-loopback", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def multicast_ttl=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "multicast-ttl", unsafe_value, Pointer(Void).null)
      value
    end

    def multicast_ttl : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "multicast-ttl", pointerof(value), Pointer(Void).null)
      value
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

    def remote_address : Gio::SocketAddress?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "remote-address", pointerof(value), Pointer(Void).null)
      Gio::SocketAddress.new(value, GICrystal::Transfer::None) unless value.null?
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

    def ttl=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "ttl", unsafe_value, Pointer(Void).null)
      value
    end

    def ttl : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "ttl", pointerof(value), Pointer(Void).null)
      value
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

    def self.new(family : Gio::SocketFamily, type : Gio::SocketType, protocol : Gio::SocketProtocol) : self
      # g_socket_new: (Constructor | Throws)
      # @family:
      # @type:
      # @protocol:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_new(family, type, protocol, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Socket.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_fd(fd : Int32) : self
      # g_socket_new_from_fd: (Constructor | Throws)
      # @fd:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_new_from_fd(fd, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Socket.new(_retval, GICrystal::Transfer::Full)
    end

    def accept(cancellable : Gio::Cancellable?) : Gio::Socket
      # g_socket_accept: (Method | Throws)
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
      _retval = LibGio.g_socket_accept(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Socket.new(_retval, GICrystal::Transfer::Full)
    end

    def bind(address : Gio::SocketAddress, allow_reuse : Bool) : Bool
      # g_socket_bind: (Method | Throws)
      # @address:
      # @allow_reuse:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_bind(to_unsafe, address, allow_reuse, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def check_connect_result : Bool
      # g_socket_check_connect_result: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_check_connect_result(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def close : Bool
      # g_socket_close: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_close(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def condition_check(condition : GLib::IOCondition) : GLib::IOCondition
      # g_socket_condition_check: (Method)
      # @condition:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_condition_check(to_unsafe, condition)

      # Return value handling
      GLib::IOCondition.new(_retval)
    end

    def condition_timed_wait(condition : GLib::IOCondition, timeout_us : Int64, cancellable : Gio::Cancellable?) : Bool
      # g_socket_condition_timed_wait: (Method | Throws)
      # @condition:
      # @timeout_us:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_condition_timed_wait(to_unsafe, condition, timeout_us, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def condition_wait(condition : GLib::IOCondition, cancellable : Gio::Cancellable?) : Bool
      # g_socket_condition_wait: (Method | Throws)
      # @condition:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_condition_wait(to_unsafe, condition, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def connect(address : Gio::SocketAddress, cancellable : Gio::Cancellable?) : Bool
      # g_socket_connect: (Method | Throws)
      # @address:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_connect(to_unsafe, address, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def connection_factory_create_connection : Gio::SocketConnection
      # g_socket_connection_factory_create_connection: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_connection_factory_create_connection(to_unsafe)

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def available_bytes : Int64
      # g_socket_get_available_bytes: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_available_bytes(to_unsafe)

      # Return value handling
      _retval
    end

    def blocking : Bool
      # g_socket_get_blocking: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_blocking(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def broadcast : Bool
      # g_socket_get_broadcast: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_broadcast(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def credentials : Gio::Credentials
      # g_socket_get_credentials: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_get_credentials(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Credentials.new(_retval, GICrystal::Transfer::Full)
    end

    def family : Gio::SocketFamily
      # g_socket_get_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_family(to_unsafe)

      # Return value handling
      Gio::SocketFamily.new(_retval)
    end

    def fd : Int32
      # g_socket_get_fd: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_fd(to_unsafe)

      # Return value handling
      _retval
    end

    def keepalive : Bool
      # g_socket_get_keepalive: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_keepalive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def listen_backlog : Int32
      # g_socket_get_listen_backlog: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_listen_backlog(to_unsafe)

      # Return value handling
      _retval
    end

    def local_address : Gio::SocketAddress
      # g_socket_get_local_address: (Method | Getter | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_get_local_address(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def multicast_loopback : Bool
      # g_socket_get_multicast_loopback: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_multicast_loopback(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def multicast_ttl : UInt32
      # g_socket_get_multicast_ttl: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_multicast_ttl(to_unsafe)

      # Return value handling
      _retval
    end

    def option(level : Int32, optname : Int32, value : Int32) : Bool
      # g_socket_get_option: (Method | Throws)
      # @level:
      # @optname:
      # @value: (out) (transfer full)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_get_option(to_unsafe, level, optname, value, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def protocol : Gio::SocketProtocol
      # g_socket_get_protocol: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_protocol(to_unsafe)

      # Return value handling
      Gio::SocketProtocol.new(_retval)
    end

    def remote_address : Gio::SocketAddress
      # g_socket_get_remote_address: (Method | Getter | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_get_remote_address(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def socket_type : Gio::SocketType
      # g_socket_get_socket_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_socket_type(to_unsafe)

      # Return value handling
      Gio::SocketType.new(_retval)
    end

    def timeout : UInt32
      # g_socket_get_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def ttl : UInt32
      # g_socket_get_ttl: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_get_ttl(to_unsafe)

      # Return value handling
      _retval
    end

    def is_closed : Bool
      # g_socket_is_closed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_is_closed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_connected : Bool
      # g_socket_is_connected: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_is_connected(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def join_multicast_group(group : Gio::InetAddress, source_specific : Bool, iface : ::String?) : Bool
      # g_socket_join_multicast_group: (Method | Throws)
      # @group:
      # @source_specific:
      # @iface: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      iface = if iface.nil?
                Pointer(LibC::Char).null
              else
                iface.to_unsafe
              end

      # C call
      _retval = LibGio.g_socket_join_multicast_group(to_unsafe, group, source_specific, iface, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def join_multicast_group_ssm(group : Gio::InetAddress, source_specific : Gio::InetAddress?, iface : ::String?) : Bool
      # g_socket_join_multicast_group_ssm: (Method | Throws)
      # @group:
      # @source_specific: (nullable)
      # @iface: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      source_specific = if source_specific.nil?
                          Pointer(Void).null
                        else
                          source_specific.to_unsafe
                        end
      # Generator::NullableArrayPlan
      iface = if iface.nil?
                Pointer(LibC::Char).null
              else
                iface.to_unsafe
              end

      # C call
      _retval = LibGio.g_socket_join_multicast_group_ssm(to_unsafe, group, source_specific, iface, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def leave_multicast_group(group : Gio::InetAddress, source_specific : Bool, iface : ::String?) : Bool
      # g_socket_leave_multicast_group: (Method | Throws)
      # @group:
      # @source_specific:
      # @iface: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      iface = if iface.nil?
                Pointer(LibC::Char).null
              else
                iface.to_unsafe
              end

      # C call
      _retval = LibGio.g_socket_leave_multicast_group(to_unsafe, group, source_specific, iface, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def leave_multicast_group_ssm(group : Gio::InetAddress, source_specific : Gio::InetAddress?, iface : ::String?) : Bool
      # g_socket_leave_multicast_group_ssm: (Method | Throws)
      # @group:
      # @source_specific: (nullable)
      # @iface: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      source_specific = if source_specific.nil?
                          Pointer(Void).null
                        else
                          source_specific.to_unsafe
                        end
      # Generator::NullableArrayPlan
      iface = if iface.nil?
                Pointer(LibC::Char).null
              else
                iface.to_unsafe
              end

      # C call
      _retval = LibGio.g_socket_leave_multicast_group_ssm(to_unsafe, group, source_specific, iface, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def listen : Bool
      # g_socket_listen: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_listen(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def receive(buffer : ::Bytes, cancellable : Gio::Cancellable?) : Int64
      # g_socket_receive: (Method | Throws)
      # @buffer: (out) (caller-allocates) (array length=size element-type UInt8)
      # @size:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      size = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_receive(to_unsafe, buffer, size, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def receive_bytes(size : UInt64, timeout_us : Int64, cancellable : Gio::Cancellable?) : GLib::Bytes
      # g_socket_receive_bytes: (Method | Throws)
      # @size:
      # @timeout_us:
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
      _retval = LibGio.g_socket_receive_bytes(to_unsafe, size, timeout_us, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def receive_bytes_from(size : UInt64, timeout_us : Int64, cancellable : Gio::Cancellable?) : GLib::Bytes
      # g_socket_receive_bytes_from: (Method | Throws)
      # @address: (out) (transfer full) (optional)
      # @size:
      # @timeout_us:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::TransferFullArgPlan
      GICrystal.ref(address)
      # Generator::OutArgUsedInReturnPlan
      address = Pointer(Pointer(Void)).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_receive_bytes_from(to_unsafe, address, size, timeout_us, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def receive_from(buffer : ::Bytes, cancellable : Gio::Cancellable?) : Int64
      # g_socket_receive_from: (Method | Throws)
      # @address: (out) (transfer full) (optional)
      # @buffer: (out) (caller-allocates) (array length=size element-type UInt8)
      # @size:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::TransferFullArgPlan
      GICrystal.ref(address)
      # Generator::OutArgUsedInReturnPlan
      address = Pointer(Pointer(Void)).null # Generator::ArrayLengthArgPlan
      size = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_receive_from(to_unsafe, address, buffer, size, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def receive_message(vectors : Enumerable(Gio::InputVector), flags : Int32, cancellable : Gio::Cancellable?) : Int64
      # g_socket_receive_message: (Method | Throws)
      # @address: (out) (transfer full) (optional)
      # @vectors: (array length=num_vectors element-type Interface)
      # @num_vectors:
      # @messages: (out) (transfer full) (nullable) (optional) (array length=num_messages element-type Interface)
      # @num_messages: (out) (transfer full)
      # @flags: (inout) (transfer full)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::TransferFullArgPlan
      GICrystal.ref(address)
      # Generator::OutArgUsedInReturnPlan
      address = Pointer(Pointer(Void)).null # Generator::ArrayLengthArgPlan
      num_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::InputVector))
      # Generator::ArrayLengthArgPlan
      num_messages = messages.try(&.size) || 0
      # Generator::OutArgUsedInReturnPlan
      messages = Pointer(Pointer(Pointer(LibGio::SocketControlMessage))).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_receive_message(to_unsafe, address, vectors, num_vectors, messages, num_messages, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def receive_messages(messages : Enumerable(Gio::InputMessage), flags : Int32, cancellable : Gio::Cancellable?) : Int32
      # g_socket_receive_messages: (Method | Throws)
      # @messages: (array length=num_messages element-type Interface)
      # @num_messages:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      num_messages = messages.size
      # Generator::ArrayArgPlan
      messages = messages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::InputMessage))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_receive_messages(to_unsafe, messages, num_messages, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def receive_with_blocking(buffer : ::Bytes, blocking : Bool, cancellable : Gio::Cancellable?) : Int64
      # g_socket_receive_with_blocking: (Method | Throws)
      # @buffer: (out) (caller-allocates) (array length=size element-type UInt8)
      # @size:
      # @blocking:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      size = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_receive_with_blocking(to_unsafe, buffer, size, blocking, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send(buffer : ::Bytes, cancellable : Gio::Cancellable?) : Int64
      # g_socket_send: (Method | Throws)
      # @buffer: (array length=size element-type UInt8)
      # @size:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      size = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_send(to_unsafe, buffer, size, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_message(address : Gio::SocketAddress?, vectors : Enumerable(Gio::OutputVector), messages : Enumerable(Gio::SocketControlMessage)?, flags : Int32, cancellable : Gio::Cancellable?) : Int64
      # g_socket_send_message: (Method | Throws)
      # @address: (nullable)
      # @vectors: (array length=num_vectors element-type Interface)
      # @num_vectors:
      # @messages: (nullable) (array length=num_messages element-type Interface)
      # @num_messages:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      address = if address.nil?
                  Pointer(Void).null
                else
                  address.to_unsafe
                end
      # Generator::ArrayLengthArgPlan
      num_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputVector))
      # Generator::ArrayLengthArgPlan
      num_messages = messages.try(&.size) || 0
      # Generator::NullableArrayPlan
      messages = if messages.nil?
                   Pointer(Pointer(LibGio::SocketControlMessage)).null
                 else
                   messages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGio::SocketControlMessage)))
                 end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_send_message(to_unsafe, address, vectors, num_vectors, messages, num_messages, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_message_with_timeout(address : Gio::SocketAddress?, vectors : Enumerable(Gio::OutputVector), messages : Enumerable(Gio::SocketControlMessage)?, flags : Int32, timeout_us : Int64, cancellable : Gio::Cancellable?) : Gio::PollableReturn
      # g_socket_send_message_with_timeout: (Method | Throws)
      # @address: (nullable)
      # @vectors: (array length=num_vectors element-type Interface)
      # @num_vectors:
      # @messages: (nullable) (array length=num_messages element-type Interface)
      # @num_messages:
      # @flags:
      # @timeout_us:
      # @bytes_written: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      address = if address.nil?
                  Pointer(Void).null
                else
                  address.to_unsafe
                end
      # Generator::ArrayLengthArgPlan
      num_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputVector))
      # Generator::ArrayLengthArgPlan
      num_messages = messages.try(&.size) || 0
      # Generator::NullableArrayPlan
      messages = if messages.nil?
                   Pointer(Pointer(LibGio::SocketControlMessage)).null
                 else
                   messages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGio::SocketControlMessage)))
                 end
      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_send_message_with_timeout(to_unsafe, address, vectors, num_vectors, messages, num_messages, flags, timeout_us, bytes_written, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::PollableReturn.new(_retval)
    end

    def send_messages(messages : Enumerable(Gio::OutputMessage), flags : Int32, cancellable : Gio::Cancellable?) : Int32
      # g_socket_send_messages: (Method | Throws)
      # @messages: (array length=num_messages element-type Interface)
      # @num_messages:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      num_messages = messages.size
      # Generator::ArrayArgPlan
      messages = messages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputMessage))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_send_messages(to_unsafe, messages, num_messages, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_to(address : Gio::SocketAddress?, buffer : ::Bytes, cancellable : Gio::Cancellable?) : Int64
      # g_socket_send_to: (Method | Throws)
      # @address: (nullable)
      # @buffer: (array length=size element-type UInt8)
      # @size:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      address = if address.nil?
                  Pointer(Void).null
                else
                  address.to_unsafe
                end
      # Generator::ArrayLengthArgPlan
      size = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_send_to(to_unsafe, address, buffer, size, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_with_blocking(buffer : ::Bytes, blocking : Bool, cancellable : Gio::Cancellable?) : Int64
      # g_socket_send_with_blocking: (Method | Throws)
      # @buffer: (array length=size element-type UInt8)
      # @size:
      # @blocking:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      size = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_send_with_blocking(to_unsafe, buffer, size, blocking, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def blocking=(blocking : Bool) : Nil
      # g_socket_set_blocking: (Method | Setter)
      # @blocking:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_blocking(to_unsafe, blocking)

      # Return value handling
    end

    def broadcast=(broadcast : Bool) : Nil
      # g_socket_set_broadcast: (Method | Setter)
      # @broadcast:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_broadcast(to_unsafe, broadcast)

      # Return value handling
    end

    def keepalive=(keepalive : Bool) : Nil
      # g_socket_set_keepalive: (Method | Setter)
      # @keepalive:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_keepalive(to_unsafe, keepalive)

      # Return value handling
    end

    def listen_backlog=(backlog : Int32) : Nil
      # g_socket_set_listen_backlog: (Method | Setter)
      # @backlog:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_listen_backlog(to_unsafe, backlog)

      # Return value handling
    end

    def multicast_loopback=(loopback : Bool) : Nil
      # g_socket_set_multicast_loopback: (Method | Setter)
      # @loopback:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_multicast_loopback(to_unsafe, loopback)

      # Return value handling
    end

    def multicast_ttl=(ttl : UInt32) : Nil
      # g_socket_set_multicast_ttl: (Method | Setter)
      # @ttl:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_multicast_ttl(to_unsafe, ttl)

      # Return value handling
    end

    def set_option(level : Int32, optname : Int32, value : Int32) : Bool
      # g_socket_set_option: (Method | Throws)
      # @level:
      # @optname:
      # @value:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_set_option(to_unsafe, level, optname, value, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def timeout=(timeout : UInt32) : Nil
      # g_socket_set_timeout: (Method | Setter)
      # @timeout:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_timeout(to_unsafe, timeout)

      # Return value handling
    end

    def ttl=(ttl : UInt32) : Nil
      # g_socket_set_ttl: (Method | Setter)
      # @ttl:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_set_ttl(to_unsafe, ttl)

      # Return value handling
    end

    def shutdown(shutdown_read : Bool, shutdown_write : Bool) : Bool
      # g_socket_shutdown: (Method | Throws)
      # @shutdown_read:
      # @shutdown_write:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_shutdown(to_unsafe, shutdown_read, shutdown_write, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def speaks_ipv4 : Bool
      # g_socket_speaks_ipv4: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_speaks_ipv4(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
