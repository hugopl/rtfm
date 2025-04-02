require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SocketListener < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketListenerClass), class_init,
        sizeof(LibGio::SocketListener), instance_init, 0)
    end

    GICrystal.declare_new_method(SocketListener, g_object_get_qdata)

    # Initialize a new `SocketListener`.
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

    def initialize(*, listen_backlog : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !listen_backlog.nil?
        (_names.to_unsafe + _n).value = "listen-backlog".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, listen_backlog)
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
      @@g_type ||= LibGio.g_socket_listener_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SocketListener.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def self.new : self
      # g_socket_listener_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_listener_new

      # Return value handling
      Gio::SocketListener.new(_retval, GICrystal::Transfer::Full)
    end

    def accept(cancellable : Gio::Cancellable?) : Gio::SocketConnection
      # g_socket_listener_accept: (Method | Throws)
      # @source_object: (out) (nullable) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      source_object = Pointer(Pointer(Void)).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_listener_accept(to_unsafe, source_object, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_listener_accept_async: (Method)
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
      LibGio.g_socket_listener_accept_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def accept_finish(result : Gio::AsyncResult) : Gio::SocketConnection
      # g_socket_listener_accept_finish: (Method | Throws)
      # @result:
      # @source_object: (out) (nullable) (optional)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      source_object = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_socket_listener_accept_finish(to_unsafe, result, source_object, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_socket(cancellable : Gio::Cancellable?) : Gio::Socket
      # g_socket_listener_accept_socket: (Method | Throws)
      # @source_object: (out) (nullable) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      source_object = Pointer(Pointer(Void)).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_listener_accept_socket(to_unsafe, source_object, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Socket.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_socket_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_listener_accept_socket_async: (Method)
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
      LibGio.g_socket_listener_accept_socket_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def accept_socket_finish(result : Gio::AsyncResult) : Gio::Socket
      # g_socket_listener_accept_socket_finish: (Method | Throws)
      # @result:
      # @source_object: (out) (nullable) (optional)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      source_object = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_socket_listener_accept_socket_finish(to_unsafe, result, source_object, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Socket.new(_retval, GICrystal::Transfer::Full)
    end

    def add_address(address : Gio::SocketAddress, type : Gio::SocketType, protocol : Gio::SocketProtocol, source_object : GObject::Object?) : Bool
      # g_socket_listener_add_address: (Method | Throws)
      # @address:
      # @type:
      # @protocol:
      # @source_object: (nullable)
      # @effective_address: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end
      # Generator::TransferFullArgPlan
      GICrystal.ref(effective_address)
      # Generator::OutArgUsedInReturnPlan
      effective_address = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_socket_listener_add_address(to_unsafe, address, type, protocol, source_object, effective_address, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_any_inet_port(source_object : GObject::Object?) : UInt16
      # g_socket_listener_add_any_inet_port: (Method | Throws)
      # @source_object: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end

      # C call
      _retval = LibGio.g_socket_listener_add_any_inet_port(to_unsafe, source_object, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def add_inet_port(port : UInt16, source_object : GObject::Object?) : Bool
      # g_socket_listener_add_inet_port: (Method | Throws)
      # @port:
      # @source_object: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end

      # C call
      _retval = LibGio.g_socket_listener_add_inet_port(to_unsafe, port, source_object, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def add_socket(socket : Gio::Socket, source_object : GObject::Object?) : Bool
      # g_socket_listener_add_socket: (Method | Throws)
      # @socket:
      # @source_object: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end

      # C call
      _retval = LibGio.g_socket_listener_add_socket(to_unsafe, socket, source_object, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def close : Nil
      # g_socket_listener_close: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_listener_close(to_unsafe)

      # Return value handling
    end

    def backlog=(listen_backlog : Int32) : Nil
      # g_socket_listener_set_backlog: (Method)
      # @listen_backlog:
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_listener_set_backlog(to_unsafe, listen_backlog)

      # Return value handling
    end

    struct EventSignal < GObject::Signal
      def name : String
        @detail ? "event::#{@detail}" : "event"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::SocketListenerEvent, Gio::Socket, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::SocketListenerEvent, Gio::Socket, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, lib_socket : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          event = Gio::SocketListenerEvent.new(lib_event)
          # Generator::BuiltInTypeArgPlan
          socket = Gio::Socket.new(lib_socket, GICrystal::Transfer::None)
          ::Box(Proc(Gio::SocketListenerEvent, Gio::Socket, Nil)).unbox(_lib_box).call(event, socket)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::SocketListener, Gio::SocketListenerEvent, Gio::Socket, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, lib_socket : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::SocketListener.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          event = Gio::SocketListenerEvent.new(lib_event)
          # Generator::BuiltInTypeArgPlan
          socket = Gio::Socket.new(lib_socket, GICrystal::Transfer::None)
          ::Box(Proc(Gio::SocketListener, Gio::SocketListenerEvent, Gio::Socket, Nil)).unbox(_lib_box).call(_sender, event, socket)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(event : Gio::SocketListenerEvent, socket : Gio::Socket) : Nil
        LibGObject.g_signal_emit_by_name(@source, "event", event, socket)
      end
    end

    def event_signal
      EventSignal.new(self)
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    # event: (None)
    # @event:
    # @socket:
    # Returns: (transfer none)
    private macro _register_event_vfunc(impl_method_name)
      private def self._vfunc_event(%this : Pointer(Void), lib_event :  UInt32, lib_socket :  Pointer(Void), ) : Void
        # @event: 
# @socket: 

# Generator::BuiltInTypeArgPlan
event=Gio::SocketListenerEvent.new(lib_event)
# Generator::BuiltInTypeArgPlan
socket=Gio::Socket.new(lib_socket, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(event, socket)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_event(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # event: (None)
    # @event:
    # @socket:
    # Returns: (transfer none)
    private macro _register_unsafe_event_vfunc(impl_method_name)
      private def self._vfunc_unsafe_event(%this : Pointer(Void), lib_event :  UInt32, lib_socket :  Pointer(Void), ) : Void
# @event: 
# @socket: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_event, lib_socket)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_event = Proc(Pointer(Void), UInt32, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_event(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_event : Proc(Pointer(Void), UInt32, Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
