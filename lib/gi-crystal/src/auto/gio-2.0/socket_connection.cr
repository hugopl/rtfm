require "./io_stream"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SocketConnection < IOStream
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketConnectionClass), class_init,
        sizeof(LibGio::SocketConnection), instance_init, 0)
    end

    GICrystal.declare_new_method(SocketConnection, g_object_get_qdata)

    # Initialize a new `SocketConnection`.
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

    def initialize(*, closed : Bool? = nil, input_stream : Gio::InputStream? = nil, output_stream : Gio::OutputStream? = nil, socket : Gio::Socket? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !closed.nil?
        (_names.to_unsafe + _n).value = "closed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, closed)
        _n += 1
      end
      if !input_stream.nil?
        (_names.to_unsafe + _n).value = "input-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_stream)
        _n += 1
      end
      if !output_stream.nil?
        (_names.to_unsafe + _n).value = "output-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, output_stream)
        _n += 1
      end
      if !socket.nil?
        (_names.to_unsafe + _n).value = "socket".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, socket)
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
      @@g_type ||= LibGio.g_socket_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SocketConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def socket=(value : Gio::Socket?) : Gio::Socket?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "socket", unsafe_value, Pointer(Void).null)
      value
    end

    def socket : Gio::Socket?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "socket", pointerof(value), Pointer(Void).null)
      Gio::Socket.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.factory_lookup_type(family : Gio::SocketFamily, type : Gio::SocketType, protocol_id : Int32) : UInt64
      # g_socket_connection_factory_lookup_type: (None)
      # @family:
      # @type:
      # @protocol_id:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_connection_factory_lookup_type(family, type, protocol_id)

      # Return value handling
      _retval
    end

    def self.factory_register_type(g_type : UInt64, family : Gio::SocketFamily, type : Gio::SocketType, protocol : Int32) : Nil
      # g_socket_connection_factory_register_type: (None)
      # @g_type:
      # @family:
      # @type:
      # @protocol:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_connection_factory_register_type(g_type, family, type, protocol)

      # Return value handling
    end

    def connect(address : Gio::SocketAddress, cancellable : Gio::Cancellable?) : Bool
      # g_socket_connection_connect: (Method | Throws)
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
      _retval = LibGio.g_socket_connection_connect(to_unsafe, address, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def connect_async(address : Gio::SocketAddress, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_connection_connect_async: (Method)
      # @address:
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
      LibGio.g_socket_connection_connect_async(to_unsafe, address, cancellable, callback, user_data)

      # Return value handling
    end

    def connect_finish(result : Gio::AsyncResult) : Bool
      # g_socket_connection_connect_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_connection_connect_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def local_address : Gio::SocketAddress
      # g_socket_connection_get_local_address: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_connection_get_local_address(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def remote_address : Gio::SocketAddress
      # g_socket_connection_get_remote_address: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_connection_get_remote_address(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def socket : Gio::Socket
      # g_socket_connection_get_socket: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_connection_get_socket(to_unsafe)

      # Return value handling
      Gio::Socket.new(_retval, GICrystal::Transfer::None)
    end

    def is_connected : Bool
      # g_socket_connection_is_connected: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_connection_is_connected(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
