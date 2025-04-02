module GObject
  @[GICrystal::GeneratedWrapper]
  class ParamSpec
    @pointer : Pointer(Void)

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ParamSpec, g_param_spec_get_qdata)

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    # Called by the garbage collector. Decreases the reference count of object.
    # (i.e. its memory is freed).
    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name.to_unsafe, self)
      {% end %}
      GICrystal.finalize_instance(self)
    end

    # Returns a pointer to the C object.
    def to_unsafe
      @pointer
    end

    private def _after_init : Nil
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGObject.intern.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GObject::ParamSpec.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.is_valid_name(name : ::String) : Bool
      # g_param_spec_is_valid_name: (None)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_param_spec_is_valid_name(name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def blurb : ::String?
      # g_param_spec_get_blurb: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_param_spec_get_blurb(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def default_value : GObject::Value
      # g_param_spec_get_default_value: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_param_spec_get_default_value(to_unsafe)

      # Return value handling
      GObject::Value.new(_retval, GICrystal::Transfer::None)
    end

    def name : ::String
      # g_param_spec_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_param_spec_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def name_quark : UInt32
      # g_param_spec_get_name_quark: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_param_spec_get_name_quark(to_unsafe)

      # Return value handling
      _retval
    end

    def nick : ::String
      # g_param_spec_get_nick: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGObject.g_param_spec_get_nick(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def qdata(quark : UInt32) : Pointer(Void)?
      # g_param_spec_get_qdata: (Method)
      # @quark:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_param_spec_get_qdata(to_unsafe, quark)

      # Return value handling
      _retval unless _retval.null?
    end

    def redirect_target : GObject::ParamSpec?
      # g_param_spec_get_redirect_target: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_param_spec_get_redirect_target(to_unsafe)

      # Return value handling
      GObject::ParamSpec.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def set_qdata(quark : UInt32, data : Pointer(Void)?) : Nil
      # g_param_spec_set_qdata: (Method)
      # @quark:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGObject.g_param_spec_set_qdata(to_unsafe, quark, data)

      # Return value handling
    end

    def sink : Nil
      # g_param_spec_sink: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_param_spec_sink(to_unsafe)

      # Return value handling
    end

    def steal_qdata(quark : UInt32) : Pointer(Void)?
      # g_param_spec_steal_qdata: (Method)
      # @quark:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_param_spec_steal_qdata(to_unsafe, quark)

      # Return value handling
      _retval unless _retval.null?
    end

    # finalize: (None)
    # Returns: (transfer none)
    private macro _register_finalize_vfunc(impl_method_name)
      private def self._vfunc_finalize(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_finalize(Pointer(Void))).pointer
        previous_def
      end
    end

    # finalize: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_finalize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_finalize(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_finalize = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_finalize(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_finalize : Proc(Pointer(Void), Void)? = nil
    end

    # value_is_valid: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_value_is_valid_vfunc(impl_method_name)
      private def self._vfunc_value_is_valid(%this : Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
        # @value: 

# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_value_is_valid(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # value_is_valid: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_value_is_valid_vfunc(impl_method_name)
      private def self._vfunc_unsafe_value_is_valid(%this : Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_value_is_valid = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_value_is_valid(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_value_is_valid : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # value_set_default: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_value_set_default_vfunc(impl_method_name)
      private def self._vfunc_value_set_default(%this : Pointer(Void), lib_value :  Pointer(Void), ) : Void
        # @value: 

# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_value_set_default(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # value_set_default: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_value_set_default_vfunc(impl_method_name)
      private def self._vfunc_unsafe_value_set_default(%this : Pointer(Void), lib_value :  Pointer(Void), ) : Void
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_value_set_default = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_value_set_default(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_value_set_default : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # value_validate: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_value_validate_vfunc(impl_method_name)
      private def self._vfunc_value_validate(%this : Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
        # @value: 

# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_value_validate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # value_validate: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_value_validate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_value_validate(%this : Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_value_validate = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_value_validate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_value_validate : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # values_cmp: (None)
    # @value1:
    # @value2:
    # Returns: (transfer none)
    private macro _register_values_cmp_vfunc(impl_method_name)
      private def self._vfunc_values_cmp(%this : Pointer(Void), lib_value1 :  Pointer(Void), lib_value2 :  Pointer(Void), ) : Int32
        # @value1: 
# @value2: 

# Generator::HandmadeArgPlan
value1=GObject::Value.new(lib_value1, :none)
# Generator::HandmadeArgPlan
value2=GObject::Value.new(lib_value2, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value1, value2)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_values_cmp(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # values_cmp: (None)
    # @value1:
    # @value2:
    # Returns: (transfer none)
    private macro _register_unsafe_values_cmp_vfunc(impl_method_name)
      private def self._vfunc_unsafe_values_cmp(%this : Pointer(Void), lib_value1 :  Pointer(Void), lib_value2 :  Pointer(Void), ) : Int32
# @value1: 
# @value2: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value1, lib_value2)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_values_cmp = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_values_cmp(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_values_cmp : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Int32)? = nil
    end

    def_equals_and_hash @pointer
  end
end
