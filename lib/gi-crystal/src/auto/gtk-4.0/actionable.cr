module Gtk
  module Actionable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Actionable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Actionable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractActionable.g_type
    end

    def action_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "action-name", unsafe_value, Pointer(Void).null)
      value
    end

    def action_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "action-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#action_name` property to nil.
    def action_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "action-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#action_name`, but can return nil.
    def action_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "action-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def action_target=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "action-target", unsafe_value, Pointer(Void).null)
      value
    end

    def action_target : GLib::Variant?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "action-target", pointerof(value), Pointer(Void).null)
      GLib::Variant.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def action_name : ::String?
      # gtk_actionable_get_action_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_actionable_get_action_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def action_target_value : GLib::Variant?
      # gtk_actionable_get_action_target_value: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_actionable_get_action_target_value(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def action_name=(action_name : ::String?) : Nil
      # gtk_actionable_set_action_name: (Method | Setter)
      # @action_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      action_name = if action_name.nil?
                      Pointer(LibC::Char).null
                    else
                      action_name.to_unsafe
                    end

      # C call
      LibGtk.gtk_actionable_set_action_name(to_unsafe, action_name)

      # Return value handling
    end

    def action_target_value=(target_value : _?) : Nil
      # gtk_actionable_set_action_target_value: (Method | Setter)
      # @target_value: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      target_value = if target_value.nil?
                       Pointer(Void).null
                     elsif !target_value.is_a?(GLib::Variant)
                       GLib::Variant.new(target_value).to_unsafe
                     else
                       target_value.to_unsafe
                     end

      # C call
      LibGtk.gtk_actionable_set_action_target_value(to_unsafe, target_value)

      # Return value handling
    end

    def detailed_action_name=(detailed_action_name : ::String) : Nil
      # gtk_actionable_set_detailed_action_name: (Method)
      # @detailed_action_name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_actionable_set_detailed_action_name(to_unsafe, detailed_action_name)

      # Return value handling
    end

    # get_action_name: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_action_name_vfunc(impl_method_name)
      private def self._vfunc_get_action_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_action_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_action_name: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_action_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_action_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_action_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_action_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_action_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_action_target_value: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_action_target_value_vfunc(impl_method_name)
      private def self._vfunc_get_action_target_value(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_action_target_value(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_action_target_value: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_action_target_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_action_target_value(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_action_target_value = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_action_target_value(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_action_target_value : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # set_action_name: (None)
    # @action_name: (nullable)
    # Returns: (transfer none)
    private macro _register_set_action_name_vfunc(impl_method_name)
      private def self._vfunc_set_action_name(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
        # @action_name: (nullable) 

# Generator::NullableArrayPlan
action_name=(lib_action_name.null? ? nil : ::String.new(lib_action_name))
# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name) unless lib_action_name.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        %retval
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_action_name(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # set_action_name: (None)
    # @action_name: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_action_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_action_name(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
# @action_name: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_action_name = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_action_name(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_action_name : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # set_action_target_value: (None)
    # @target_value: (nullable)
    # Returns: (transfer none)
    private macro _register_set_action_target_value_vfunc(impl_method_name)
      private def self._vfunc_set_action_target_value(%this : Pointer(Void), lib_target_value :  Pointer(Void), ) : Void
        # @target_value: (nullable) 

# Generator::HandmadeArgPlan
target_value=GLib::Variant.new(lib_target_value, :none) unless lib_target_value.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(target_value)
        
        %retval
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_action_target_value(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_action_target_value: (None)
    # @target_value: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_action_target_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_action_target_value(%this : Pointer(Void), lib_target_value :  Pointer(Void), ) : Void
# @target_value: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_target_value)
      end

      def self._install_iface_Gtk__Actionable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_action_target_value = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_action_target_value(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_action_target_value : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractActionable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractActionable < GObject::Object
    include Actionable

    GICrystal.declare_new_method(Gtk::AbstractActionable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_actionable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractActionable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
