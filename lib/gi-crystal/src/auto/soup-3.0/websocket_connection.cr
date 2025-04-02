require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class WebsocketConnection < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebsocketConnection, g_object_get_qdata)

    # Initialize a new `WebsocketConnection`.
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

    def initialize(*, connection_type : Soup::WebsocketConnectionType? = nil, extensions : Pointer(Void)? = nil, io_stream : Gio::IOStream? = nil, keepalive_interval : UInt32? = nil, keepalive_pong_timeout : UInt32? = nil, max_incoming_payload_size : UInt64? = nil, origin : ::String? = nil, protocol : ::String? = nil, state : Soup::WebsocketState? = nil, uri : GLib::Uri? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !connection_type.nil?
        (_names.to_unsafe + _n).value = "connection-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, connection_type)
        _n += 1
      end
      if !extensions.nil?
        (_names.to_unsafe + _n).value = "extensions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extensions)
        _n += 1
      end
      if !io_stream.nil?
        (_names.to_unsafe + _n).value = "io-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, io_stream)
        _n += 1
      end
      if !keepalive_interval.nil?
        (_names.to_unsafe + _n).value = "keepalive-interval".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, keepalive_interval)
        _n += 1
      end
      if !keepalive_pong_timeout.nil?
        (_names.to_unsafe + _n).value = "keepalive-pong-timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, keepalive_pong_timeout)
        _n += 1
      end
      if !max_incoming_payload_size.nil?
        (_names.to_unsafe + _n).value = "max-incoming-payload-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_incoming_payload_size)
        _n += 1
      end
      if !origin.nil?
        (_names.to_unsafe + _n).value = "origin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, origin)
        _n += 1
      end
      if !protocol.nil?
        (_names.to_unsafe + _n).value = "protocol".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, protocol)
        _n += 1
      end
      if !state.nil?
        (_names.to_unsafe + _n).value = "state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, state)
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
      @@g_type ||= LibSoup.soup_websocket_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::WebsocketConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def connection_type=(value : Soup::WebsocketConnectionType) : Soup::WebsocketConnectionType
      unsafe_value = value

      LibGObject.g_object_set(self, "connection-type", unsafe_value, Pointer(Void).null)
      value
    end

    def connection_type : Soup::WebsocketConnectionType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "connection-type", pointerof(value), Pointer(Void).null)
      Soup::WebsocketConnectionType.new(value)
    end

    def extensions=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "extensions", unsafe_value, Pointer(Void).null)
      value
    end

    def extensions : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "extensions", pointerof(value), Pointer(Void).null)
      value
    end

    def io_stream=(value : Gio::IOStream?) : Gio::IOStream?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "io-stream", unsafe_value, Pointer(Void).null)
      value
    end

    def io_stream : Gio::IOStream?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "io-stream", pointerof(value), Pointer(Void).null)
      Gio::IOStream.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def keepalive_interval=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "keepalive-interval", unsafe_value, Pointer(Void).null)
      value
    end

    def keepalive_interval : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "keepalive-interval", pointerof(value), Pointer(Void).null)
      value
    end

    def keepalive_pong_timeout=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "keepalive-pong-timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def keepalive_pong_timeout : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "keepalive-pong-timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def max_incoming_payload_size=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "max-incoming-payload-size", unsafe_value, Pointer(Void).null)
      value
    end

    def max_incoming_payload_size : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "max-incoming-payload-size", pointerof(value), Pointer(Void).null)
      value
    end

    def origin=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "origin", unsafe_value, Pointer(Void).null)
      value
    end

    def origin : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "origin", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#origin` property to nil.
    def origin=(value : Nil) : Nil
      LibGObject.g_object_set(self, "origin", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#origin`, but can return nil.
    def origin? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "origin", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def protocol=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "protocol", unsafe_value, Pointer(Void).null)
      value
    end

    def protocol : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#protocol` property to nil.
    def protocol=(value : Nil) : Nil
      LibGObject.g_object_set(self, "protocol", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#protocol`, but can return nil.
    def protocol? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def state : Soup::WebsocketState
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "state", pointerof(value), Pointer(Void).null)
      Soup::WebsocketState.new(value)
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

    def self.new(stream : Gio::IOStream, uri : GLib::Uri, type : Soup::WebsocketConnectionType, origin : ::String?, protocol : ::String?, extensions : GLib::List) : self
      # soup_websocket_connection_new: (Constructor)
      # @stream:
      # @uri:
      # @type:
      # @origin: (nullable)
      # @protocol: (nullable)
      # @extensions: (transfer full)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      origin = if origin.nil?
                 Pointer(LibC::Char).null
               else
                 origin.to_unsafe
               end
      # Generator::NullableArrayPlan
      protocol = if protocol.nil?
                   Pointer(LibC::Char).null
                 else
                   protocol.to_unsafe
                 end

      # C call
      _retval = LibSoup.soup_websocket_connection_new(stream, uri, type, origin, protocol, extensions)

      # Return value handling
      Soup::WebsocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def close(code : UInt16, data : ::String?) : Nil
      # soup_websocket_connection_close: (Method)
      # @code:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(LibC::Char).null
             else
               data.to_unsafe
             end

      # C call
      LibSoup.soup_websocket_connection_close(to_unsafe, code, data)

      # Return value handling
    end

    def close_code : UInt16
      # soup_websocket_connection_get_close_code: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_close_code(to_unsafe)

      # Return value handling
      _retval
    end

    def close_data : ::String
      # soup_websocket_connection_get_close_data: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_close_data(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def connection_type : Soup::WebsocketConnectionType
      # soup_websocket_connection_get_connection_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_connection_type(to_unsafe)

      # Return value handling
      Soup::WebsocketConnectionType.new(_retval)
    end

    def extensions : GLib::List
      # soup_websocket_connection_get_extensions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_extensions(to_unsafe)

      # Return value handling
      GLib::List(Soup::WebsocketExtension).new(_retval, GICrystal::Transfer::None)
    end

    def io_stream : Gio::IOStream
      # soup_websocket_connection_get_io_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_io_stream(to_unsafe)

      # Return value handling
      Gio::IOStream.new(_retval, GICrystal::Transfer::None)
    end

    def keepalive_interval : UInt32
      # soup_websocket_connection_get_keepalive_interval: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_keepalive_interval(to_unsafe)

      # Return value handling
      _retval
    end

    def keepalive_pong_timeout : UInt32
      # soup_websocket_connection_get_keepalive_pong_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_keepalive_pong_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def max_incoming_payload_size : UInt64
      # soup_websocket_connection_get_max_incoming_payload_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_max_incoming_payload_size(to_unsafe)

      # Return value handling
      _retval
    end

    def origin : ::String?
      # soup_websocket_connection_get_origin: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_origin(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def protocol : ::String?
      # soup_websocket_connection_get_protocol: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_protocol(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def state : Soup::WebsocketState
      # soup_websocket_connection_get_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_state(to_unsafe)

      # Return value handling
      Soup::WebsocketState.new(_retval)
    end

    def uri : GLib::Uri
      # soup_websocket_connection_get_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_websocket_connection_get_uri(to_unsafe)

      # Return value handling
      GLib::Uri.new(_retval, GICrystal::Transfer::None)
    end

    def send_binary(data : ::Bytes?) : Nil
      # soup_websocket_connection_send_binary: (Method)
      # @data: (nullable) (array length=length element-type UInt8)
      # @length:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      length = data.try(&.size) || 0
      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(UInt8).null
             else
               data.to_unsafe
             end

      # C call
      LibSoup.soup_websocket_connection_send_binary(to_unsafe, data, length)

      # Return value handling
    end

    def send_binary(*data : UInt8)
      send_binary(data)
    end

    def send_message(type : Soup::WebsocketDataType, message : GLib::Bytes) : Nil
      # soup_websocket_connection_send_message: (Method)
      # @type:
      # @message:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_websocket_connection_send_message(to_unsafe, type, message)

      # Return value handling
    end

    def send_text(text : ::String) : Nil
      # soup_websocket_connection_send_text: (Method)
      # @text:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_websocket_connection_send_text(to_unsafe, text)

      # Return value handling
    end

    def keepalive_interval=(interval : UInt32) : Nil
      # soup_websocket_connection_set_keepalive_interval: (Method | Setter)
      # @interval:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_websocket_connection_set_keepalive_interval(to_unsafe, interval)

      # Return value handling
    end

    def keepalive_pong_timeout=(pong_timeout : UInt32) : Nil
      # soup_websocket_connection_set_keepalive_pong_timeout: (Method | Setter)
      # @pong_timeout:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_websocket_connection_set_keepalive_pong_timeout(to_unsafe, pong_timeout)

      # Return value handling
    end

    def max_incoming_payload_size=(max_incoming_payload_size : UInt64) : Nil
      # soup_websocket_connection_set_max_incoming_payload_size: (Method | Setter)
      # @max_incoming_payload_size:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_websocket_connection_set_max_incoming_payload_size(to_unsafe, max_incoming_payload_size)

      # Return value handling
    end

    struct ClosedSignal < GObject::Signal
      def name : String
        @detail ? "closed::#{@detail}" : "closed"
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

      def connect(handler : Proc(Soup::WebsocketConnection, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::WebsocketConnection.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::WebsocketConnection, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "closed")
      end
    end

    def closed_signal
      ClosedSignal.new(self)
    end

    struct ClosingSignal < GObject::Signal
      def name : String
        @detail ? "closing::#{@detail}" : "closing"
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

      def connect(handler : Proc(Soup::WebsocketConnection, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::WebsocketConnection.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Soup::WebsocketConnection, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "closing")
      end
    end

    def closing_signal
      ClosingSignal.new(self)
    end

    struct ErrorSignal < GObject::Signal
      def name : String
        @detail ? "error::#{@detail}" : "error"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Error, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          # Generator::GErrorArgPlan
          error = Soup.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(GLib::Error, Nil)).unbox(_lib_box).call(error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::WebsocketConnection, GLib::Error, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = Soup::WebsocketConnection.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::GErrorArgPlan
          error = Soup.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(Soup::WebsocketConnection, GLib::Error, Nil)).unbox(_lib_box).call(_sender, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(error : GLib::Error) : Nil
        LibGObject.g_signal_emit_by_name(@source, "error", error)
      end
    end

    def error_signal
      ErrorSignal.new(self)
    end

    struct MessageSignal < GObject::Signal
      def name : String
        @detail ? "message::#{@detail}" : "message"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, GLib::Bytes, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, GLib::Bytes, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_type : Int32, lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # NoStrategy
          type = lib_type
          # Generator::BuiltInTypeArgPlan
          message = GLib::Bytes.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Int32, GLib::Bytes, Nil)).unbox(_lib_box).call(type, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::WebsocketConnection, Int32, GLib::Bytes, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_type : Int32, lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::WebsocketConnection.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          type = lib_type
          # Generator::BuiltInTypeArgPlan
          message = GLib::Bytes.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::WebsocketConnection, Int32, GLib::Bytes, Nil)).unbox(_lib_box).call(_sender, type, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(type : Int32, message : GLib::Bytes) : Nil
        LibGObject.g_signal_emit_by_name(@source, "message", type, message)
      end
    end

    def message_signal
      MessageSignal.new(self)
    end

    struct PongSignal < GObject::Signal
      def name : String
        @detail ? "pong::#{@detail}" : "pong"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Bytes, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Bytes, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = GLib::Bytes.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(GLib::Bytes, Nil)).unbox(_lib_box).call(message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::WebsocketConnection, GLib::Bytes, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::WebsocketConnection.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = GLib::Bytes.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(Soup::WebsocketConnection, GLib::Bytes, Nil)).unbox(_lib_box).call(_sender, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : GLib::Bytes) : Nil
        LibGObject.g_signal_emit_by_name(@source, "pong", message)
      end
    end

    def pong_signal
      PongSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
