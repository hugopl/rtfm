require "./socket_listener"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SocketService < SocketListener
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketServiceClass), class_init,
        sizeof(LibGio::SocketService), instance_init, 0)
    end

    GICrystal.declare_new_method(SocketService, g_object_get_qdata)

    # Initialize a new `SocketService`.
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

    def initialize(*, active : Bool? = nil, listen_backlog : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !active.nil?
        (_names.to_unsafe + _n).value = "active".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, active)
        _n += 1
      end
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
      @@g_type ||= LibGio.g_socket_service_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SocketService.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def active=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "active", unsafe_value, Pointer(Void).null)
      value
    end

    def active? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "active", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # g_socket_service_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_service_new

      # Return value handling
      Gio::SocketService.new(_retval, GICrystal::Transfer::Full)
    end

    def is_active? : Bool
      # g_socket_service_is_active: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_service_is_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def start : Nil
      # g_socket_service_start: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_service_start(to_unsafe)

      # Return value handling
    end

    def stop : Nil
      # g_socket_service_stop: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_socket_service_stop(to_unsafe)

      # Return value handling
    end

    struct IncomingSignal < GObject::Signal
      def name : String
        @detail ? "incoming::#{@detail}" : "incoming"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::SocketConnection, GObject::Object?, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::SocketConnection, GObject::Object?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_connection : Pointer(Void), lib_source_object : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          connection = Gio::SocketConnection.new(lib_connection, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          source_object = (lib_source_object.null? ? nil : GObject::Object.new(lib_source_object, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          source_object = GObject::Object.new(lib_source_object, GICrystal::Transfer::None) unless lib_source_object.null?
          ::Box(Proc(Gio::SocketConnection, GObject::Object?, Bool)).unbox(_lib_box).call(connection, source_object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::SocketService, Gio::SocketConnection, GObject::Object?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_connection : Pointer(Void), lib_source_object : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::SocketService.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          connection = Gio::SocketConnection.new(lib_connection, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          source_object = (lib_source_object.null? ? nil : GObject::Object.new(lib_source_object, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          source_object = GObject::Object.new(lib_source_object, GICrystal::Transfer::None) unless lib_source_object.null?
          ::Box(Proc(Gio::SocketService, Gio::SocketConnection, GObject::Object?, Bool)).unbox(_lib_box).call(_sender, connection, source_object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(connection : Gio::SocketConnection, source_object : GObject::Object?) : Nil
        # Generator::NullableArrayPlan
        source_object = if source_object.nil?
                          Void.null
                        else
                          source_object.to_unsafe
                        end

        LibGObject.g_signal_emit_by_name(@source, "incoming", connection, source_object)
      end
    end

    def incoming_signal
      IncomingSignal.new(self)
    end

    # incoming: (None)
    # @connection:
    # @source_object:
    # Returns: (transfer none)
    private macro _register_incoming_vfunc(impl_method_name)
      private def self._vfunc_incoming(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_source_object :  Pointer(Void), ) : LibC::Int
        # @connection: 
# @source_object: 

# Generator::BuiltInTypeArgPlan
connection=Gio::SocketConnection.new(lib_connection, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
source_object=GObject::Object.new(lib_source_object, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection, source_object)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_incoming(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # incoming: (None)
    # @connection:
    # @source_object:
    # Returns: (transfer none)
    private macro _register_unsafe_incoming_vfunc(impl_method_name)
      private def self._vfunc_unsafe_incoming(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_source_object :  Pointer(Void), ) : LibC::Int
# @connection: 
# @source_object: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection, lib_source_object)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_incoming = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_incoming(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_incoming : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
