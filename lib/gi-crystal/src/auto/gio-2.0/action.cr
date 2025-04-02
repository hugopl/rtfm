module Gio
  module Action
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::Action
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__Action(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractAction.g_type
    end

    def enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def parameter_type : GLib::VariantType?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parameter-type", pointerof(value), Pointer(Void).null)
      GLib::VariantType.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def state : GLib::Variant?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "state", pointerof(value), Pointer(Void).null)
      GLib::Variant.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def state_type : GLib::VariantType?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "state-type", pointerof(value), Pointer(Void).null)
      GLib::VariantType.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.name_is_valid(action_name : ::String) : Bool
      # g_action_name_is_valid: (None)
      # @action_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_action_name_is_valid(action_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def parse_detailed_name(detailed_name : ::String) : Bool
      # g_action_parse_detailed_name: (Throws)
      # @detailed_name:
      # @action_name: (out) (transfer full) (optional)
      # @target_value: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      action_name = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
      target_value = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_action_parse_detailed_name(detailed_name, action_name, target_value, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.print_detailed_name(action_name : ::String, target_value : _?) : ::String
      # g_action_print_detailed_name: (None)
      # @action_name:
      # @target_value: (nullable)
      # Returns: (transfer full)

      # Generator::HandmadeArgPlan
      target_value = if target_value.nil?
                       Pointer(Void).null
                     elsif !target_value.is_a?(GLib::Variant)
                       GLib::Variant.new(target_value).to_unsafe
                     else
                       target_value.to_unsafe
                     end

      # C call
      _retval = LibGio.g_action_print_detailed_name(action_name, target_value)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def activate(parameter : _?) : Nil
      # g_action_activate: (Method)
      # @parameter: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameter = if parameter.nil?
                    Pointer(Void).null
                  elsif !parameter.is_a?(GLib::Variant)
                    GLib::Variant.new(parameter).to_unsafe
                  else
                    parameter.to_unsafe
                  end

      # C call
      LibGio.g_action_activate(to_unsafe, parameter)

      # Return value handling
    end

    def change_state(value : _) : Nil
      # g_action_change_state: (Method)
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_action_change_state(to_unsafe, value)

      # Return value handling
    end

    def enabled : Bool
      # g_action_get_enabled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_action_get_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def name : ::String
      # g_action_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_action_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def parameter_type : GLib::VariantType?
      # g_action_get_parameter_type: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_action_get_parameter_type(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def state : GLib::Variant?
      # g_action_get_state: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_action_get_state(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def state_hint : GLib::Variant?
      # g_action_get_state_hint: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_action_get_state_hint(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def state_type : GLib::VariantType?
      # g_action_get_state_type: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_action_get_state_type(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    # activate: (None)
    # @parameter: (nullable)
    # Returns: (transfer none)
    private macro _register_activate_vfunc(impl_method_name)
      private def self._vfunc_activate(%this : Pointer(Void), lib_parameter :  Pointer(Void), ) : Void
        # @parameter: (nullable) 

# Generator::HandmadeArgPlan
parameter=GLib::Variant.new(lib_parameter, :none) unless lib_parameter.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(parameter)
        
        %retval
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # activate: (None)
    # @parameter: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_activate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate(%this : Pointer(Void), lib_parameter :  Pointer(Void), ) : Void
# @parameter: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_parameter)
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # change_state: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_change_state_vfunc(impl_method_name)
      private def self._vfunc_change_state(%this : Pointer(Void), lib_value :  Pointer(Void), ) : Void
        # @value: 

# Generator::HandmadeArgPlan
value=GLib::Variant.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value)
        
        %retval
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_change_state(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # change_state: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_change_state_vfunc(impl_method_name)
      private def self._vfunc_unsafe_change_state(%this : Pointer(Void), lib_value :  Pointer(Void), ) : Void
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value)
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_change_state = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_change_state(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_change_state : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # get_enabled: (None)
    # Returns: (transfer none)
    private macro _register_get_enabled_vfunc(impl_method_name)
      private def self._vfunc_get_enabled(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_enabled(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_enabled: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_enabled_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_enabled(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_enabled = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_enabled(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_enabled : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # get_name: (None)
    # Returns: (transfer none)
    private macro _register_get_name_vfunc(impl_method_name)
      private def self._vfunc_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_name: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_parameter_type: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_parameter_type_vfunc(impl_method_name)
      private def self._vfunc_get_parameter_type(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_parameter_type(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_parameter_type: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_parameter_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_parameter_type(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_parameter_type = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_parameter_type(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_parameter_type : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_state: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_state_vfunc(impl_method_name)
      private def self._vfunc_get_state(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_state(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_state: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_state_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_state(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_state = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_state(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_state : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_state_hint: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_state_hint_vfunc(impl_method_name)
      private def self._vfunc_get_state_hint(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_state_hint(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_state_hint: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_state_hint_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_state_hint(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_state_hint = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_state_hint(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_state_hint : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_state_type: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_state_type_vfunc(impl_method_name)
      private def self._vfunc_get_state_type(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_state_type(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_state_type: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_state_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_state_type(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Action(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_state_type = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_state_type(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_state_type : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractAction.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractAction < GObject::Object
    include Action

    GICrystal.declare_new_method(Gio::AbstractAction, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_action_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractAction.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
