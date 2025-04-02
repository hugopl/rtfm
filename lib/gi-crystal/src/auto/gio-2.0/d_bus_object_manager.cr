module Gio
  module DBusObjectManager
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DBusObjectManager
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DBusObjectManager(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDBusObjectManager.g_type
    end

    def interface(object_path : ::String, interface_name : ::String) : Gio::DBusInterface?
      # g_dbus_object_manager_get_interface: (Method)
      # @object_path:
      # @interface_name:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dbus_object_manager_get_interface(to_unsafe, object_path, interface_name)

      # Return value handling
      Gio::AbstractDBusInterface.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def object(object_path : ::String) : Gio::DBusObject?
      # g_dbus_object_manager_get_object: (Method)
      # @object_path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dbus_object_manager_get_object(to_unsafe, object_path)

      # Return value handling
      Gio::AbstractDBusObject.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def object_path : ::String
      # g_dbus_object_manager_get_object_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_object_manager_get_object_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def objects : GLib::List
      # g_dbus_object_manager_get_objects: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_object_manager_get_objects(to_unsafe)

      # Return value handling
      GLib::List(Gio::DBusObject).new(_retval, GICrystal::Transfer::Full)
    end

    # get_interface: (None)
    # @object_path:
    # @interface_name:
    # Returns: (transfer full) (nullable)
    private macro _register_get_interface_vfunc(impl_method_name)
      private def self._vfunc_get_interface(%this : Pointer(Void), lib_object_path :  Pointer(LibC::Char), lib_interface_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @object_path: 
# @interface_name: 

# Generator::BuiltInTypeArgPlan
object_path=::String.new(lib_object_path)
# Generator::BuiltInTypeArgPlan
interface_name=::String.new(lib_interface_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object_path, interface_name)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_interface(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_interface: (None)
    # @object_path:
    # @interface_name:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_interface_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_interface(%this : Pointer(Void), lib_object_path :  Pointer(LibC::Char), lib_interface_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @object_path: 
# @interface_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object_path, lib_interface_name)
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_interface = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_interface(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_interface : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_object: (None)
    # @object_path:
    # Returns: (transfer full) (nullable)
    private macro _register_get_object_vfunc(impl_method_name)
      private def self._vfunc_get_object(%this : Pointer(Void), lib_object_path :  Pointer(LibC::Char), ) : Pointer(Void)
        # @object_path: 

# Generator::BuiltInTypeArgPlan
object_path=::String.new(lib_object_path)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object_path)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_object(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_object: (None)
    # @object_path:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_object_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_object(%this : Pointer(Void), lib_object_path :  Pointer(LibC::Char), ) : Pointer(Void)
# @object_path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object_path)
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_object = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_object(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_object : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_object_path: (None)
    # Returns: (transfer none)
    private macro _register_get_object_path_vfunc(impl_method_name)
      private def self._vfunc_get_object_path(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_object_path(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_object_path: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_object_path_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_object_path(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_object_path = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_object_path(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_object_path : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_objects: (None)
    # Returns: (transfer full)
    private macro _register_get_objects_vfunc(impl_method_name)
      private def self._vfunc_get_objects(%this : Pointer(Void), ) : Pointer(LibGLib::List)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_objects(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_objects: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_objects_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_objects(%this : Pointer(Void), ) : Pointer(LibGLib::List)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_objects = Proc(Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_objects(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_objects : Proc(Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # interface_added: (None)
    # @object:
    # @interface_:
    # Returns: (transfer none)
    private macro _register_interface_added_vfunc(impl_method_name)
      private def self._vfunc_interface_added(%this : Pointer(Void), lib_object :  Pointer(Void), lib_interface_ :  Pointer(Void), ) : Void
        # @object: 
# @interface_: 

# Generator::BuiltInTypeArgPlan
object=Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
interface_=Gio::AbstractDBusInterface.new(lib_interface_, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object, interface_)
        
        %retval
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_interface_added(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # interface_added: (None)
    # @object:
    # @interface_:
    # Returns: (transfer none)
    private macro _register_unsafe_interface_added_vfunc(impl_method_name)
      private def self._vfunc_unsafe_interface_added(%this : Pointer(Void), lib_object :  Pointer(Void), lib_interface_ :  Pointer(Void), ) : Void
# @object: 
# @interface_: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object, lib_interface_)
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_interface_added = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_interface_added(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_interface_added : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # interface_removed: (None)
    # @object:
    # @interface_:
    # Returns: (transfer none)
    private macro _register_interface_removed_vfunc(impl_method_name)
      private def self._vfunc_interface_removed(%this : Pointer(Void), lib_object :  Pointer(Void), lib_interface_ :  Pointer(Void), ) : Void
        # @object: 
# @interface_: 

# Generator::BuiltInTypeArgPlan
object=Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
interface_=Gio::AbstractDBusInterface.new(lib_interface_, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object, interface_)
        
        %retval
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_interface_removed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # interface_removed: (None)
    # @object:
    # @interface_:
    # Returns: (transfer none)
    private macro _register_unsafe_interface_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_interface_removed(%this : Pointer(Void), lib_object :  Pointer(Void), lib_interface_ :  Pointer(Void), ) : Void
# @object: 
# @interface_: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object, lib_interface_)
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_interface_removed = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_interface_removed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_interface_removed : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # object_added: (None)
    # @object:
    # Returns: (transfer none)
    private macro _register_object_added_vfunc(impl_method_name)
      private def self._vfunc_object_added(%this : Pointer(Void), lib_object :  Pointer(Void), ) : Void
        # @object: 

# Generator::BuiltInTypeArgPlan
object=Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object)
        
        %retval
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_object_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # object_added: (None)
    # @object:
    # Returns: (transfer none)
    private macro _register_unsafe_object_added_vfunc(impl_method_name)
      private def self._vfunc_unsafe_object_added(%this : Pointer(Void), lib_object :  Pointer(Void), ) : Void
# @object: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object)
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_object_added = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_object_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_object_added : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # object_removed: (None)
    # @object:
    # Returns: (transfer none)
    private macro _register_object_removed_vfunc(impl_method_name)
      private def self._vfunc_object_removed(%this : Pointer(Void), lib_object :  Pointer(Void), ) : Void
        # @object: 

# Generator::BuiltInTypeArgPlan
object=Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object)
        
        %retval
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_object_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # object_removed: (None)
    # @object:
    # Returns: (transfer none)
    private macro _register_unsafe_object_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_object_removed(%this : Pointer(Void), lib_object :  Pointer(Void), ) : Void
# @object: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object)
      end

      def self._install_iface_Gio__DBusObjectManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_object_removed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_object_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_object_removed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    struct InterfaceAddedSignal < GObject::Signal
      def name : String
        @detail ? "interface-added::#{@detail}" : "interface-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusObject, Gio::DBusInterface, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusObject, Gio::DBusInterface, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), lib_interface : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface = Gio::AbstractDBusInterface.new(lib_interface, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObject, Gio::DBusInterface, Nil)).unbox(_lib_box).call(object, interface)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusObjectManager, Gio::DBusObject, Gio::DBusInterface, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), lib_interface : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractDBusObjectManager.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface = Gio::AbstractDBusInterface.new(lib_interface, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObjectManager, Gio::DBusObject, Gio::DBusInterface, Nil)).unbox(_lib_box).call(_sender, object, interface)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : Gio::DBusObject, interface : Gio::DBusInterface) : Nil
        LibGObject.g_signal_emit_by_name(@source, "interface-added", object, interface)
      end
    end

    def interface_added_signal
      InterfaceAddedSignal.new(self)
    end

    struct InterfaceRemovedSignal < GObject::Signal
      def name : String
        @detail ? "interface-removed::#{@detail}" : "interface-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusObject, Gio::DBusInterface, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusObject, Gio::DBusInterface, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), lib_interface : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface = Gio::AbstractDBusInterface.new(lib_interface, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObject, Gio::DBusInterface, Nil)).unbox(_lib_box).call(object, interface)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusObjectManager, Gio::DBusObject, Gio::DBusInterface, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), lib_interface : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractDBusObjectManager.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface = Gio::AbstractDBusInterface.new(lib_interface, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObjectManager, Gio::DBusObject, Gio::DBusInterface, Nil)).unbox(_lib_box).call(_sender, object, interface)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : Gio::DBusObject, interface : Gio::DBusInterface) : Nil
        LibGObject.g_signal_emit_by_name(@source, "interface-removed", object, interface)
      end
    end

    def interface_removed_signal
      InterfaceRemovedSignal.new(self)
    end

    struct ObjectAddedSignal < GObject::Signal
      def name : String
        @detail ? "object-added::#{@detail}" : "object-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusObject, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusObject, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObject, Nil)).unbox(_lib_box).call(object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusObjectManager, Gio::DBusObject, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractDBusObjectManager.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObjectManager, Gio::DBusObject, Nil)).unbox(_lib_box).call(_sender, object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : Gio::DBusObject) : Nil
        LibGObject.g_signal_emit_by_name(@source, "object-added", object)
      end
    end

    def object_added_signal
      ObjectAddedSignal.new(self)
    end

    struct ObjectRemovedSignal < GObject::Signal
      def name : String
        @detail ? "object-removed::#{@detail}" : "object-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusObject, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusObject, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObject, Nil)).unbox(_lib_box).call(object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusObjectManager, Gio::DBusObject, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractDBusObjectManager.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusObjectManager, Gio::DBusObject, Nil)).unbox(_lib_box).call(_sender, object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : Gio::DBusObject) : Nil
        LibGObject.g_signal_emit_by_name(@source, "object-removed", object)
      end
    end

    def object_removed_signal
      ObjectRemovedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDBusObjectManager.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDBusObjectManager < GObject::Object
    include DBusObjectManager

    GICrystal.declare_new_method(Gio::AbstractDBusObjectManager, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_dbus_object_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDBusObjectManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
