require "./object"
require "./type_plugin"

module GObject
  @[GICrystal::GeneratedWrapper]
  class TypeModule < Object
    include TypePlugin

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGObject::TypeModuleClass), class_init,
        sizeof(LibGObject::TypeModule), instance_init, 0)
    end

    GICrystal.declare_new_method(TypeModule, g_object_get_qdata)

    # Initialize a new `TypeModule`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGObject.g_type_module_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GObject::TypeModule.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def add_interface(instance_type : UInt64, interface_type : UInt64, interface_info : GObject::InterfaceInfo) : Nil
      # g_type_module_add_interface: (Method)
      # @instance_type:
      # @interface_type:
      # @interface_info:
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_module_add_interface(to_unsafe, instance_type, interface_type, interface_info)

      # Return value handling
    end

    def register_enum(name : ::String, const_static_values : Enumerable(GObject::EnumValue)) : UInt64
      # g_type_module_register_enum: (Method)
      # @name:
      # @const_static_values: (array zero-terminated=1 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      const_static_values = const_static_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::EnumValue))

      # C call
      _retval = LibGObject.g_type_module_register_enum(to_unsafe, name, const_static_values)

      # Return value handling
      _retval
    end

    def register_flags(name : ::String, const_static_values : Enumerable(GObject::FlagsValue)) : UInt64
      # g_type_module_register_flags: (Method)
      # @name:
      # @const_static_values: (array zero-terminated=1 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      const_static_values = const_static_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::FlagsValue))

      # C call
      _retval = LibGObject.g_type_module_register_flags(to_unsafe, name, const_static_values)

      # Return value handling
      _retval
    end

    def register_type(parent_type : UInt64, type_name : ::String, type_info : GObject::TypeInfo, flags : GObject::TypeFlags) : UInt64
      # g_type_module_register_type: (Method)
      # @parent_type:
      # @type_name:
      # @type_info:
      # @flags:
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_type_module_register_type(to_unsafe, parent_type, type_name, type_info, flags)

      # Return value handling
      _retval
    end

    def name=(name : ::String) : Nil
      # g_type_module_set_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_module_set_name(to_unsafe, name)

      # Return value handling
    end

    def unuse : Nil
      # g_type_module_unuse: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_type_module_unuse(to_unsafe)

      # Return value handling
    end

    def use : Bool
      # g_type_module_use: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_type_module_use(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # load: (None)
    # Returns: (transfer none)
    private macro _register_load_vfunc(impl_method_name)
      private def self._vfunc_load(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load(Pointer(Void))).pointer
        previous_def
      end
    end

    # load: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_load_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # unload: (None)
    # Returns: (transfer none)
    private macro _register_unload_vfunc(impl_method_name)
      private def self._vfunc_unload(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unload(Pointer(Void))).pointer
        previous_def
      end
    end

    # unload: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_unload_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unload(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unload = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unload(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unload : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
