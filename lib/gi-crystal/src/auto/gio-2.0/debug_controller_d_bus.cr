require "../g_object-2.0/object"
require "./debug_controller"

require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DebugControllerDBus < GObject::Object
    include DebugController
    include Initable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DebugControllerDBusClass), class_init,
        sizeof(LibGio::DebugControllerDBus), instance_init, 0)
    end

    GICrystal.declare_new_method(DebugControllerDBus, g_object_get_qdata)

    # Initialize a new `DebugControllerDBus`.
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

    def initialize(*, connection : Gio::DBusConnection? = nil, debug_enabled : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !connection.nil?
        (_names.to_unsafe + _n).value = "connection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, connection)
        _n += 1
      end
      if !debug_enabled.nil?
        (_names.to_unsafe + _n).value = "debug-enabled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, debug_enabled)
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
      @@g_type ||= LibGio.g_debug_controller_dbus_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DebugControllerDBus.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def connection=(value : Gio::DBusConnection?) : Gio::DBusConnection?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "connection", unsafe_value, Pointer(Void).null)
      value
    end

    def connection : Gio::DBusConnection?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "connection", pointerof(value), Pointer(Void).null)
      Gio::DBusConnection.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(connection : Gio::DBusConnection, cancellable : Gio::Cancellable?) : self?
      # g_debug_controller_dbus_new: (Constructor | Throws)
      # @connection:
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_debug_controller_dbus_new(connection, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DebugControllerDBus.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def stop : Nil
      # g_debug_controller_dbus_stop: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_debug_controller_dbus_stop(to_unsafe)

      # Return value handling
    end

    struct AuthorizeSignal < GObject::Signal
      def name : String
        @detail ? "authorize::#{@detail}" : "authorize"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusMethodInvocation, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusMethodInvocation, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_invocation : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          invocation = Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusMethodInvocation, Bool)).unbox(_lib_box).call(invocation)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DebugControllerDBus, Gio::DBusMethodInvocation, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_invocation : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::DebugControllerDBus.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          invocation = Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DebugControllerDBus, Gio::DBusMethodInvocation, Bool)).unbox(_lib_box).call(_sender, invocation)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(invocation : Gio::DBusMethodInvocation) : Nil
        LibGObject.g_signal_emit_by_name(@source, "authorize", invocation)
      end
    end

    def authorize_signal
      AuthorizeSignal.new(self)
    end

    # authorize: (None)
    # @invocation:
    # Returns: (transfer none)
    private macro _register_authorize_vfunc(impl_method_name)
      private def self._vfunc_authorize(%this : Pointer(Void), lib_invocation :  Pointer(Void), ) : LibC::Int
        # @invocation: 

# Generator::BuiltInTypeArgPlan
invocation=Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(invocation)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_authorize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # authorize: (None)
    # @invocation:
    # Returns: (transfer none)
    private macro _register_unsafe_authorize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_authorize(%this : Pointer(Void), lib_invocation :  Pointer(Void), ) : LibC::Int
# @invocation: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_invocation)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_authorize = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_authorize(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_authorize : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
