module Gtk
  module ShortcutManager
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::ShortcutManager
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__ShortcutManager(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractShortcutManager.g_type
    end

    # add_controller: (None)
    # @controller:
    # Returns: (transfer none)
    private macro _register_add_controller_vfunc(impl_method_name)
      private def self._vfunc_add_controller(%this : Pointer(Void), lib_controller :  Pointer(Void), ) : Void
        # @controller: 

# Generator::BuiltInTypeArgPlan
controller=Gtk::ShortcutController.new(lib_controller, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(controller)
        
        %retval
      end

      def self._install_iface_Gtk__ShortcutManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_controller(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # add_controller: (None)
    # @controller:
    # Returns: (transfer none)
    private macro _register_unsafe_add_controller_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_controller(%this : Pointer(Void), lib_controller :  Pointer(Void), ) : Void
# @controller: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_controller)
      end

      def self._install_iface_Gtk__ShortcutManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_controller = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_controller(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_controller : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # remove_controller: (None)
    # @controller:
    # Returns: (transfer none)
    private macro _register_remove_controller_vfunc(impl_method_name)
      private def self._vfunc_remove_controller(%this : Pointer(Void), lib_controller :  Pointer(Void), ) : Void
        # @controller: 

# Generator::BuiltInTypeArgPlan
controller=Gtk::ShortcutController.new(lib_controller, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(controller)
        
        %retval
      end

      def self._install_iface_Gtk__ShortcutManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_remove_controller(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # remove_controller: (None)
    # @controller:
    # Returns: (transfer none)
    private macro _register_unsafe_remove_controller_vfunc(impl_method_name)
      private def self._vfunc_unsafe_remove_controller(%this : Pointer(Void), lib_controller :  Pointer(Void), ) : Void
# @controller: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_controller)
      end

      def self._install_iface_Gtk__ShortcutManager(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_remove_controller = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_remove_controller(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_remove_controller : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractShortcutManager.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractShortcutManager < GObject::Object
    include ShortcutManager

    GICrystal.declare_new_method(Gtk::AbstractShortcutManager, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_shortcut_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractShortcutManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
