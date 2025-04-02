require "../g_object-2.0/object"
require "./d_bus_object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusObjectSkeleton < GObject::Object
    include DBusObject

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DBusObjectSkeletonClass), class_init,
        sizeof(LibGio::DBusObjectSkeleton), instance_init, 0)
    end

    GICrystal.declare_new_method(DBusObjectSkeleton, g_object_get_qdata)

    # Initialize a new `DBusObjectSkeleton`.
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

    def initialize(*, g_object_path : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !g_object_path.nil?
        (_names.to_unsafe + _n).value = "g-object-path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_object_path)
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
      @@g_type ||= LibGio.g_dbus_object_skeleton_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusObjectSkeleton.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def g_object_path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "g-object-path", unsafe_value, Pointer(Void).null)
      value
    end

    def g_object_path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-object-path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#g_object_path` property to nil.
    def g_object_path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "g-object-path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#g_object_path`, but can return nil.
    def g_object_path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-object-path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(object_path : ::String) : self
      # g_dbus_object_skeleton_new: (Constructor)
      # @object_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_object_skeleton_new(object_path)

      # Return value handling
      Gio::DBusObjectSkeleton.new(_retval, GICrystal::Transfer::Full)
    end

    def add_interface(interface_ : Gio::DBusInterfaceSkeleton) : Nil
      # g_dbus_object_skeleton_add_interface: (Method)
      # @interface_:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_object_skeleton_add_interface(to_unsafe, interface_)

      # Return value handling
    end

    def flush : Nil
      # g_dbus_object_skeleton_flush: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_object_skeleton_flush(to_unsafe)

      # Return value handling
    end

    def remove_interface(interface_ : Gio::DBusInterfaceSkeleton) : Nil
      # g_dbus_object_skeleton_remove_interface: (Method)
      # @interface_:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_object_skeleton_remove_interface(to_unsafe, interface_)

      # Return value handling
    end

    def remove_interface_by_name(interface_name : ::String) : Nil
      # g_dbus_object_skeleton_remove_interface_by_name: (Method)
      # @interface_name:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_object_skeleton_remove_interface_by_name(to_unsafe, interface_name)

      # Return value handling
    end

    def object_path=(object_path : ::String) : Nil
      # g_dbus_object_skeleton_set_object_path: (Method)
      # @object_path:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_object_skeleton_set_object_path(to_unsafe, object_path)

      # Return value handling
    end

    struct AuthorizeMethodSignal < GObject::Signal
      def name : String
        @detail ? "authorize-method::#{@detail}" : "authorize-method"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_interface : Pointer(Void), lib_invocation : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          interface = Gio::DBusInterfaceSkeleton.new(lib_interface, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          invocation = Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation, Bool)).unbox(_lib_box).call(interface, invocation)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusObjectSkeleton, Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_interface : Pointer(Void), lib_invocation : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusObjectSkeleton.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface = Gio::DBusInterfaceSkeleton.new(lib_interface, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          invocation = Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObjectSkeleton, Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation, Bool)).unbox(_lib_box).call(_sender, interface, invocation)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(interface : Gio::DBusInterfaceSkeleton, invocation : Gio::DBusMethodInvocation) : Nil
        LibGObject.g_signal_emit_by_name(@source, "authorize-method", interface, invocation)
      end
    end

    def authorize_method_signal
      AuthorizeMethodSignal.new(self)
    end

    # authorize_method: (None)
    # @interface_:
    # @invocation:
    # Returns: (transfer none)
    private macro _register_authorize_method_vfunc(impl_method_name)
      private def self._vfunc_authorize_method(%this : Pointer(Void), lib_interface_ :  Pointer(Void), lib_invocation :  Pointer(Void), ) : LibC::Int
        # @interface_: 
# @invocation: 

# Generator::BuiltInTypeArgPlan
interface_=Gio::DBusInterfaceSkeleton.new(lib_interface_, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
invocation=Gio::DBusMethodInvocation.new(lib_invocation, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(interface_, invocation)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_authorize_method(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # authorize_method: (None)
    # @interface_:
    # @invocation:
    # Returns: (transfer none)
    private macro _register_unsafe_authorize_method_vfunc(impl_method_name)
      private def self._vfunc_unsafe_authorize_method(%this : Pointer(Void), lib_interface_ :  Pointer(Void), lib_invocation :  Pointer(Void), ) : LibC::Int
# @interface_: 
# @invocation: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_interface_, lib_invocation)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_authorize_method = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_authorize_method(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_authorize_method : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
