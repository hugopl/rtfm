module Gio
  module DBusInterface
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DBusInterface
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DBusInterface(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDBusInterface.g_type
    end

    def object : Gio::DBusObject?
      # g_dbus_interface_dup_object: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dbus_interface_dup_object(to_unsafe)

      # Return value handling
      Gio::AbstractDBusObject.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def info : Gio::DBusInterfaceInfo
      # g_dbus_interface_get_info: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_interface_get_info(to_unsafe)

      # Return value handling
      Gio::DBusInterfaceInfo.new(_retval, GICrystal::Transfer::None)
    end

    def object=(object : Gio::DBusObject?) : Nil
      # g_dbus_interface_set_object: (Method)
      # @object: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      object = if object.nil?
                 Pointer(Void).null
               else
                 object.to_unsafe
               end

      # C call
      LibGio.g_dbus_interface_set_object(to_unsafe, object)

      # Return value handling
    end

    # dup_object: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_dup_object_vfunc(impl_method_name)
      private def self._vfunc_dup_object(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__DBusInterface(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_dup_object(Pointer(Void))).pointer
        previous_def
      end
    end

    # dup_object: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_dup_object_vfunc(impl_method_name)
      private def self._vfunc_unsafe_dup_object(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__DBusInterface(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_dup_object = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_dup_object(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_dup_object : Proc(Pointer(Void), Pointer(Void))? = nil
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

      def self._install_iface_Gio__DBusInterface(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
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

      def self._install_iface_Gio__DBusInterface(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_info = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_info(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_info : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # set_object: (None)
    # @object: (nullable)
    # Returns: (transfer none)
    private macro _register_set_object_vfunc(impl_method_name)
      private def self._vfunc_set_object(%this : Pointer(Void), lib_object :  Pointer(Void), ) : Void
        # @object: (nullable) 

# Generator::NullableArrayPlan
object=(lib_object.null? ? nil : Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
object=Gio::AbstractDBusObject.new(lib_object, GICrystal::Transfer::None) unless lib_object.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object)
        
        %retval
      end

      def self._install_iface_Gio__DBusInterface(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_object(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_object: (None)
    # @object: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_object_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_object(%this : Pointer(Void), lib_object :  Pointer(Void), ) : Void
# @object: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object)
      end

      def self._install_iface_Gio__DBusInterface(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_object = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_object(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_object : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDBusInterface.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDBusInterface < GObject::Object
    include DBusInterface

    GICrystal.declare_new_method(Gio::AbstractDBusInterface, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_dbus_interface_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDBusInterface.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
