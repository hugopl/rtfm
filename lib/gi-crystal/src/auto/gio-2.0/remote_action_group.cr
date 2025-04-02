module Gio
  module RemoteActionGroup
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::RemoteActionGroup
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__RemoteActionGroup(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractRemoteActionGroup.g_type
    end

    def activate_action_full(action_name : ::String, parameter : _?, platform_data : _) : Nil
      # g_remote_action_group_activate_action_full: (Method)
      # @action_name:
      # @parameter: (nullable)
      # @platform_data:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameter = if parameter.nil?
                    Pointer(Void).null
                  elsif !parameter.is_a?(GLib::Variant)
                    GLib::Variant.new(parameter).to_unsafe
                  else
                    parameter.to_unsafe
                  end
      # Generator::HandmadeArgPlan
      platform_data = if !platform_data.is_a?(GLib::Variant)
                        GLib::Variant.new(platform_data).to_unsafe
                      else
                        platform_data.to_unsafe
                      end

      # C call
      LibGio.g_remote_action_group_activate_action_full(to_unsafe, action_name, parameter, platform_data)

      # Return value handling
    end

    def change_action_state_full(action_name : ::String, value : _, platform_data : _) : Nil
      # g_remote_action_group_change_action_state_full: (Method)
      # @action_name:
      # @value:
      # @platform_data:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end
      # Generator::HandmadeArgPlan
      platform_data = if !platform_data.is_a?(GLib::Variant)
                        GLib::Variant.new(platform_data).to_unsafe
                      else
                        platform_data.to_unsafe
                      end

      # C call
      LibGio.g_remote_action_group_change_action_state_full(to_unsafe, action_name, value, platform_data)

      # Return value handling
    end

    # activate_action_full: (None)
    # @action_name:
    # @parameter: (nullable)
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_activate_action_full_vfunc(impl_method_name)
      private def self._vfunc_activate_action_full(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_parameter :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
        # @action_name: 
# @parameter: (nullable) 
# @platform_data: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)
# Generator::HandmadeArgPlan
parameter=GLib::Variant.new(lib_parameter, :none) unless lib_parameter.null?
# Generator::HandmadeArgPlan
platform_data=GLib::Variant.new(lib_platform_data, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name, parameter, platform_data)
        
        %retval
      end

      def self._install_iface_Gio__RemoteActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate_action_full(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # activate_action_full: (None)
    # @action_name:
    # @parameter: (nullable)
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_unsafe_activate_action_full_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate_action_full(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_parameter :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
# @action_name: 
# @parameter: (nullable) 
# @platform_data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name, lib_parameter, lib_platform_data)
      end

      def self._install_iface_Gio__RemoteActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate_action_full = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate_action_full(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate_action_full : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # change_action_state_full: (None)
    # @action_name:
    # @value:
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_change_action_state_full_vfunc(impl_method_name)
      private def self._vfunc_change_action_state_full(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
        # @action_name: 
# @value: 
# @platform_data: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)
# Generator::HandmadeArgPlan
value=GLib::Variant.new(lib_value, :none)
# Generator::HandmadeArgPlan
platform_data=GLib::Variant.new(lib_platform_data, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name, value, platform_data)
        
        %retval
      end

      def self._install_iface_Gio__RemoteActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_change_action_state_full(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # change_action_state_full: (None)
    # @action_name:
    # @value:
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_unsafe_change_action_state_full_vfunc(impl_method_name)
      private def self._vfunc_unsafe_change_action_state_full(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
# @action_name: 
# @value: 
# @platform_data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name, lib_value, lib_platform_data)
      end

      def self._install_iface_Gio__RemoteActionGroup(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_change_action_state_full = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_change_action_state_full(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_change_action_state_full : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractRemoteActionGroup.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractRemoteActionGroup < GObject::Object
    include RemoteActionGroup

    GICrystal.declare_new_method(Gio::AbstractRemoteActionGroup, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_remote_action_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractRemoteActionGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
