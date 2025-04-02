require "../g_object-2.0/object"
require "./d_bus_interface"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusInterfaceSkeleton < GObject::Object
    include DBusInterface

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DBusInterfaceSkeletonClass), class_init,
        sizeof(LibGio::DBusInterfaceSkeleton), instance_init, 0)
    end

    GICrystal.declare_new_method(DBusInterfaceSkeleton, g_object_get_qdata)

    # Initialize a new `DBusInterfaceSkeleton`.
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

    def initialize(*, g_flags : Gio::DBusInterfaceSkeletonFlags? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !g_flags.nil?
        (_names.to_unsafe + _n).value = "g-flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_flags)
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
      @@g_type ||= LibGio.g_dbus_interface_skeleton_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusInterfaceSkeleton.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def g_flags=(value : Gio::DBusInterfaceSkeletonFlags) : Gio::DBusInterfaceSkeletonFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "g-flags", unsafe_value, Pointer(Void).null)
      value
    end

    def g_flags : Gio::DBusInterfaceSkeletonFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "g-flags", pointerof(value), Pointer(Void).null)
      Gio::DBusInterfaceSkeletonFlags.new(value)
    end

    def export(connection : Gio::DBusConnection, object_path : ::String) : Bool
      # g_dbus_interface_skeleton_export: (Method | Throws)
      # @connection:
      # @object_path:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_export(to_unsafe, connection, object_path, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def flush : Nil
      # g_dbus_interface_skeleton_flush: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_skeleton_flush(to_unsafe)

      # Return value handling
    end

    def connection : Gio::DBusConnection?
      # g_dbus_interface_skeleton_get_connection: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_get_connection(to_unsafe)

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def connections : GLib::List
      # g_dbus_interface_skeleton_get_connections: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_get_connections(to_unsafe)

      # Return value handling
      GLib::List(Gio::DBusConnection).new(_retval, GICrystal::Transfer::Full)
    end

    def flags : Gio::DBusInterfaceSkeletonFlags
      # g_dbus_interface_skeleton_get_flags: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_get_flags(to_unsafe)

      # Return value handling
      Gio::DBusInterfaceSkeletonFlags.new(_retval)
    end

    def info : Gio::DBusInterfaceInfo
      # g_dbus_interface_skeleton_get_info: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_get_info(to_unsafe)

      # Return value handling
      Gio::DBusInterfaceInfo.new(_retval, GICrystal::Transfer::None)
    end

    def object_path : ::String?
      # g_dbus_interface_skeleton_get_object_path: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_get_object_path(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def properties : GLib::Variant
      # g_dbus_interface_skeleton_get_properties: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_get_properties(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def vtable : Gio::DBusInterfaceVTable
      # g_dbus_interface_skeleton_get_vtable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_get_vtable(to_unsafe)

      # Return value handling
      Gio::DBusInterfaceVTable.new(_retval, GICrystal::Transfer::None)
    end

    def has_connection(connection : Gio::DBusConnection) : Bool
      # g_dbus_interface_skeleton_has_connection: (Method)
      # @connection:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_interface_skeleton_has_connection(to_unsafe, connection)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def flags=(flags : Gio::DBusInterfaceSkeletonFlags) : Nil
      # g_dbus_interface_skeleton_set_flags: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_skeleton_set_flags(to_unsafe, flags)

      # Return value handling
    end

    def unexport : Nil
      # g_dbus_interface_skeleton_unexport: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_skeleton_unexport(to_unsafe)

      # Return value handling
    end

    def unexport_from_connection(connection : Gio::DBusConnection) : Nil
      # g_dbus_interface_skeleton_unexport_from_connection: (Method)
      # @connection:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_skeleton_unexport_from_connection(to_unsafe, connection)

      # Return value handling
    end

    struct GAuthorizeMethodSignal < GObject::Signal
      def name : String
        @detail ? "g-authorize-method::#{@detail}" : "g-authorize-method"
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

      def connect(handler : Proc(Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_invocation : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusInterfaceSkeleton.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          invocation = Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation, Bool)).unbox(_lib_box).call(_sender, invocation)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(invocation : Gio::DBusMethodInvocation) : Nil
        LibGObject.g_signal_emit_by_name(@source, "g-authorize-method", invocation)
      end
    end

    def g_authorize_method_signal
      GAuthorizeMethodSignal.new(self)
    end

    # flush: (None)
    # Returns: (transfer none)
    private macro _register_flush_vfunc(impl_method_name)
      private def self._vfunc_flush(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_flush(Pointer(Void))).pointer
        previous_def
      end
    end

    # flush: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_flush_vfunc(impl_method_name)
      private def self._vfunc_unsafe_flush(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_flush = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_flush(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_flush : Proc(Pointer(Void), Void)? = nil
    end

    # g_authorize_method: (None)
    # @invocation:
    # Returns: (transfer none)
    private macro _register_g_authorize_method_vfunc(impl_method_name)
      private def self._vfunc_g_authorize_method(%this : Pointer(Void), lib_invocation :  Pointer(Void), ) : LibC::Int
        # @invocation: 

# Generator::BuiltInTypeArgPlan
invocation=Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(invocation)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_g_authorize_method(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # g_authorize_method: (None)
    # @invocation:
    # Returns: (transfer none)
    private macro _register_unsafe_g_authorize_method_vfunc(impl_method_name)
      private def self._vfunc_unsafe_g_authorize_method(%this : Pointer(Void), lib_invocation :  Pointer(Void), ) : LibC::Int
# @invocation: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_invocation)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_g_authorize_method = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_g_authorize_method(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_g_authorize_method : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # get_info: (None)
    # Returns: (transfer none)
    private macro _register_get_info_vfunc(impl_method_name)
      private def self._vfunc_get_info(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_info(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_info: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_info_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_info(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_info = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_info(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_info : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_properties: (None)
    # Returns: (transfer full)
    private macro _register_get_properties_vfunc(impl_method_name)
      private def self._vfunc_get_properties(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_properties(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_properties: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_properties_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_properties(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_properties = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_properties(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_properties : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_vtable: (None)
    # Returns: (transfer none)
    private macro _register_get_vtable_vfunc(impl_method_name)
      private def self._vfunc_get_vtable(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_vtable(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_vtable: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_vtable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_vtable(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_vtable = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_vtable(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_vtable : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
