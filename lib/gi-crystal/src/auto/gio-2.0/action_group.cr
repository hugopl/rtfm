module Gio
  module ActionGroup
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::ActionGroup
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__ActionGroup(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractActionGroup.g_type
    end

    def action_added(action_name : ::String) : Nil
      # g_action_group_action_added: (Method)
      # @action_name:
      # Returns: (transfer none)

      # C call
      LibGio.g_action_group_action_added(to_unsafe, action_name)

      # Return value handling
    end

    def action_enabled_changed(action_name : ::String, enabled : Bool) : Nil
      # g_action_group_action_enabled_changed: (Method)
      # @action_name:
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibGio.g_action_group_action_enabled_changed(to_unsafe, action_name, enabled)

      # Return value handling
    end

    def action_removed(action_name : ::String) : Nil
      # g_action_group_action_removed: (Method)
      # @action_name:
      # Returns: (transfer none)

      # C call
      LibGio.g_action_group_action_removed(to_unsafe, action_name)

      # Return value handling
    end

    def action_state_changed(action_name : ::String, state : _) : Nil
      # g_action_group_action_state_changed: (Method)
      # @action_name:
      # @state:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      state = if !state.is_a?(GLib::Variant)
                GLib::Variant.new(state).to_unsafe
              else
                state.to_unsafe
              end

      # C call
      LibGio.g_action_group_action_state_changed(to_unsafe, action_name, state)

      # Return value handling
    end

    def activate_action(action_name : ::String, parameter : _?) : Nil
      # g_action_group_activate_action: (Method)
      # @action_name:
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
      LibGio.g_action_group_activate_action(to_unsafe, action_name, parameter)

      # Return value handling
    end

    def change_action_state(action_name : ::String, value : _) : Nil
      # g_action_group_change_action_state: (Method)
      # @action_name:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_action_group_change_action_state(to_unsafe, action_name, value)

      # Return value handling
    end

    def action_enabled(action_name : ::String) : Bool
      # g_action_group_get_action_enabled: (Method)
      # @action_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_action_group_get_action_enabled(to_unsafe, action_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def action_parameter_type(action_name : ::String) : GLib::VariantType?
      # g_action_group_get_action_parameter_type: (Method)
      # @action_name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_action_group_get_action_parameter_type(to_unsafe, action_name)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def action_state(action_name : ::String) : GLib::Variant?
      # g_action_group_get_action_state: (Method)
      # @action_name:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_action_group_get_action_state(to_unsafe, action_name)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def action_state_hint(action_name : ::String) : GLib::Variant?
      # g_action_group_get_action_state_hint: (Method)
      # @action_name:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_action_group_get_action_state_hint(to_unsafe, action_name)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def action_state_type(action_name : ::String) : GLib::VariantType?
      # g_action_group_get_action_state_type: (Method)
      # @action_name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_action_group_get_action_state_type(to_unsafe, action_name)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def has_action(action_name : ::String) : Bool
      # g_action_group_has_action: (Method)
      # @action_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_action_group_has_action(to_unsafe, action_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_actions : Enumerable(::String)
      # g_action_group_list_actions: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_action_group_list_actions(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def query_action(action_name : ::String, enabled : Bool) : Bool
      # g_action_group_query_action: (Method)
      # @action_name:
      # @enabled: (out) (transfer full)
      # @parameter_type: (out) (optional)
      # @state_type: (out) (optional)
      # @state_hint: (out) (transfer full) (optional)
      # @state: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      parameter_type = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      state_type = Pointer(Pointer(Void)).null     # Generator::OutArgUsedInReturnPlan
      state_hint = Pointer(Pointer(Void)).null     # Generator::OutArgUsedInReturnPlan
      state = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_action_group_query_action(to_unsafe, action_name, enabled, parameter_type, state_type, state_hint, state)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # action_added: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_action_added_vfunc(impl_method_name)
      private def self._vfunc_action_added(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        %retval
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_action_added(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # action_added: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_unsafe_action_added_vfunc(impl_method_name)
      private def self._vfunc_unsafe_action_added(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_action_added = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_action_added(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_action_added : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # action_enabled_changed: (None)
    # @action_name:
    # @enabled:
    # Returns: (transfer none)
    private macro _register_action_enabled_changed_vfunc(impl_method_name)
      private def self._vfunc_action_enabled_changed(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_enabled :  LibC::Int, ) : Void
        # @action_name: 
# @enabled: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)
# Generator::BuiltInTypeArgPlan
enabled=GICrystal.to_bool(lib_enabled)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name, enabled)
        
        %retval
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_action_enabled_changed(Pointer(Void), Pointer(LibC::Char), LibC::Int)).pointer
        previous_def
      end
    end

    # action_enabled_changed: (None)
    # @action_name:
    # @enabled:
    # Returns: (transfer none)
    private macro _register_unsafe_action_enabled_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_action_enabled_changed(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_enabled :  LibC::Int, ) : Void
# @action_name: 
# @enabled: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name, lib_enabled)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_action_enabled_changed = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_action_enabled_changed(Pointer(Void), Pointer(LibC::Char), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_action_enabled_changed : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, Void)? = nil
    end

    # action_removed: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_action_removed_vfunc(impl_method_name)
      private def self._vfunc_action_removed(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        %retval
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_action_removed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # action_removed: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_unsafe_action_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_action_removed(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_action_removed = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_action_removed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_action_removed : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # action_state_changed: (None)
    # @action_name:
    # @state:
    # Returns: (transfer none)
    private macro _register_action_state_changed_vfunc(impl_method_name)
      private def self._vfunc_action_state_changed(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_state :  Pointer(Void), ) : Void
        # @action_name: 
# @state: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)
# Generator::HandmadeArgPlan
state=GLib::Variant.new(lib_state, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name, state)
        
        %retval
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_action_state_changed(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # action_state_changed: (None)
    # @action_name:
    # @state:
    # Returns: (transfer none)
    private macro _register_unsafe_action_state_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_action_state_changed(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_state :  Pointer(Void), ) : Void
# @action_name: 
# @state: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name, lib_state)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_action_state_changed = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_action_state_changed(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_action_state_changed : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    # activate_action: (None)
    # @action_name:
    # @parameter: (nullable)
    # Returns: (transfer none)
    private macro _register_activate_action_vfunc(impl_method_name)
      private def self._vfunc_activate_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_parameter :  Pointer(Void), ) : Void
        # @action_name: 
# @parameter: (nullable) 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)
# Generator::HandmadeArgPlan
parameter=GLib::Variant.new(lib_parameter, :none) unless lib_parameter.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name, parameter)
        
        %retval
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate_action(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # activate_action: (None)
    # @action_name:
    # @parameter: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_activate_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_parameter :  Pointer(Void), ) : Void
# @action_name: 
# @parameter: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name, lib_parameter)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate_action = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate_action(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate_action : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    # change_action_state: (None)
    # @action_name:
    # @value:
    # Returns: (transfer none)
    private macro _register_change_action_state_vfunc(impl_method_name)
      private def self._vfunc_change_action_state(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), ) : Void
        # @action_name: 
# @value: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)
# Generator::HandmadeArgPlan
value=GLib::Variant.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name, value)
        
        %retval
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_change_action_state(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # change_action_state: (None)
    # @action_name:
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_change_action_state_vfunc(impl_method_name)
      private def self._vfunc_unsafe_change_action_state(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), ) : Void
# @action_name: 
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name, lib_value)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_change_action_state = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_change_action_state(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_change_action_state : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    # get_action_enabled: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_get_action_enabled_vfunc(impl_method_name)
      private def self._vfunc_get_action_enabled(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : LibC::Int
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_action_enabled(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_action_enabled: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_unsafe_get_action_enabled_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_action_enabled(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : LibC::Int
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_action_enabled = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_action_enabled(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_action_enabled : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # get_action_parameter_type: (None)
    # @action_name:
    # Returns: (transfer none) (nullable)
    private macro _register_get_action_parameter_type_vfunc(impl_method_name)
      private def self._vfunc_get_action_parameter_type(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_action_parameter_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_action_parameter_type: (None)
    # @action_name:
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_action_parameter_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_action_parameter_type(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_action_parameter_type = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_action_parameter_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_action_parameter_type : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_action_state: (None)
    # @action_name:
    # Returns: (transfer full) (nullable)
    private macro _register_get_action_state_vfunc(impl_method_name)
      private def self._vfunc_get_action_state(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_action_state(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_action_state: (None)
    # @action_name:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_action_state_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_action_state(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_action_state = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_action_state(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_action_state : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_action_state_hint: (None)
    # @action_name:
    # Returns: (transfer full) (nullable)
    private macro _register_get_action_state_hint_vfunc(impl_method_name)
      private def self._vfunc_get_action_state_hint(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_action_state_hint(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_action_state_hint: (None)
    # @action_name:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_action_state_hint_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_action_state_hint(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_action_state_hint = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_action_state_hint(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_action_state_hint : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_action_state_type: (None)
    # @action_name:
    # Returns: (transfer none) (nullable)
    private macro _register_get_action_state_type_vfunc(impl_method_name)
      private def self._vfunc_get_action_state_type(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_action_state_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_action_state_type: (None)
    # @action_name:
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_action_state_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_action_state_type(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_action_state_type = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_action_state_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_action_state_type : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # has_action: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_has_action_vfunc(impl_method_name)
      private def self._vfunc_has_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : LibC::Int
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_has_action(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # has_action: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_unsafe_has_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_has_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : LibC::Int
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_has_action = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_has_action(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_has_action : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # list_actions: (None)
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_list_actions_vfunc(impl_method_name)
      private def self._vfunc_list_actions(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_list_actions(Pointer(Void))).pointer
        previous_def
      end
    end

    # list_actions: (None)
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_unsafe_list_actions_vfunc(impl_method_name)
      private def self._vfunc_unsafe_list_actions(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_list_actions = Proc(Pointer(Void), Pointer(Pointer(LibC::Char))).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_list_actions(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_list_actions : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)))? = nil
    end

    # query_action: (None)
    # @action_name:
    # @enabled: (out) (transfer full)
    # @parameter_type: (out) (optional)
    # @state_type: (out) (optional)
    # @state_hint: (out) (transfer full) (optional)
    # @state: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_query_action_vfunc(impl_method_name)
      private def self._vfunc_query_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_enabled :  LibC::Int, lib_parameter_type :  Pointer(Void), lib_state_type :  Pointer(Void), lib_state_hint :  Pointer(Void), lib_state :  Pointer(Void), ) : LibC::Int
        # @action_name: 
# @enabled: (out) (transfer full) 
# @parameter_type: (out) (optional) 
# @state_type: (out) (optional) 
# @state_hint: (out) (transfer full) (optional) 
# @state: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)
# Generator::BuiltInTypeArgPlan
enabled=GICrystal.to_bool(lib_enabled)
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name, enabled, parameter_type, state_type, state_hint, state)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_action(Pointer(Void), Pointer(LibC::Char), LibC::Int, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_action: (None)
    # @action_name:
    # @enabled: (out) (transfer full)
    # @parameter_type: (out) (optional)
    # @state_type: (out) (optional)
    # @state_hint: (out) (transfer full) (optional)
    # @state: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_query_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_enabled :  LibC::Int, lib_parameter_type :  Pointer(Void), lib_state_type :  Pointer(Void), lib_state_hint :  Pointer(Void), lib_state :  Pointer(Void), ) : LibC::Int
# @action_name: 
# @enabled: (out) (transfer full) 
# @parameter_type: (out) (optional) 
# @state_type: (out) (optional) 
# @state_hint: (out) (transfer full) (optional) 
# @state: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name, lib_enabled, lib_parameter_type, lib_state_type, lib_state_hint, lib_state)
      end

      def self._install_iface_Gio__ActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_action = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_action(Pointer(Void), Pointer(LibC::Char), LibC::Int, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_action : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int, Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    struct ActionAddedSignal < GObject::Signal
      def name : String
        @detail ? "action-added::#{@detail}" : "action-added"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(action_name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::ActionGroup, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractActionGroup.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          ::Box(Proc(Gio::ActionGroup, ::String, Nil)).unbox(_lib_box).call(_sender, action_name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(action_name : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "action-added", action_name)
      end
    end

    def action_added_signal
      ActionAddedSignal.new(self)
    end

    struct ActionEnabledChangedSignal < GObject::Signal
      def name : String
        @detail ? "action-enabled-changed::#{@detail}" : "action-enabled-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), lib_enabled : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          # Generator::BuiltInTypeArgPlan
          enabled = GICrystal.to_bool(lib_enabled)
          ::Box(Proc(::String, Bool, Nil)).unbox(_lib_box).call(action_name, enabled)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::ActionGroup, ::String, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), lib_enabled : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractActionGroup.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          # Generator::BuiltInTypeArgPlan
          enabled = GICrystal.to_bool(lib_enabled)
          ::Box(Proc(Gio::ActionGroup, ::String, Bool, Nil)).unbox(_lib_box).call(_sender, action_name, enabled)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(action_name : ::String, enabled : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "action-enabled-changed", action_name, enabled)
      end
    end

    def action_enabled_changed_signal
      ActionEnabledChangedSignal.new(self)
    end

    struct ActionRemovedSignal < GObject::Signal
      def name : String
        @detail ? "action-removed::#{@detail}" : "action-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(action_name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::ActionGroup, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractActionGroup.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          ::Box(Proc(Gio::ActionGroup, ::String, Nil)).unbox(_lib_box).call(_sender, action_name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(action_name : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "action-removed", action_name)
      end
    end

    def action_removed_signal
      ActionRemovedSignal.new(self)
    end

    struct ActionStateChangedSignal < GObject::Signal
      def name : String
        @detail ? "action-state-changed::#{@detail}" : "action-state-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, GLib::Variant, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          # Generator::HandmadeArgPlan
          value = GLib::Variant.new(lib_value, :none)
          ::Box(Proc(::String, GLib::Variant, Nil)).unbox(_lib_box).call(action_name, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::ActionGroup, ::String, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_action_name : Pointer(LibC::Char), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractActionGroup.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          action_name = ::String.new(lib_action_name)
          # Generator::HandmadeArgPlan
          value = GLib::Variant.new(lib_value, :none)
          ::Box(Proc(Gio::ActionGroup, ::String, GLib::Variant, Nil)).unbox(_lib_box).call(_sender, action_name, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(action_name : ::String, value : _) : Nil
        # Generator::HandmadeArgPlan
        value = if !value.is_a?(GLib::Variant)
                  GLib::Variant.new(value).to_unsafe
                else
                  value.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "action-state-changed", action_name, value)
      end
    end

    def action_state_changed_signal
      ActionStateChangedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractActionGroup.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractActionGroup < GObject::Object
    include ActionGroup

    GICrystal.declare_new_method(Gio::AbstractActionGroup, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_action_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractActionGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
