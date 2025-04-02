module Gio
  module ActionMap
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::ActionMap
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__ActionMap(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractActionMap.g_type
    end

    def add_action(action : Gio::Action) : Nil
      # g_action_map_add_action: (Method)
      # @action:
      # Returns: (transfer none)

      # C call
      LibGio.g_action_map_add_action(to_unsafe, action)

      # Return value handling
    end

    def add_action_entries(entries : Enumerable(Gio::ActionEntry), user_data : Pointer(Void)?) : Nil
      # g_action_map_add_action_entries: (Method)
      # @entries: (array length=n_entries element-type Interface)
      # @n_entries:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_entries = entries.size
      # Generator::ArrayArgPlan
      entries = entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::ActionEntry))
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGio.g_action_map_add_action_entries(to_unsafe, entries, n_entries, user_data)

      # Return value handling
    end

    def lookup_action(action_name : ::String) : Gio::Action?
      # g_action_map_lookup_action: (Method)
      # @action_name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_action_map_lookup_action(to_unsafe, action_name)

      # Return value handling
      Gio::AbstractAction.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def remove_action(action_name : ::String) : Nil
      # g_action_map_remove_action: (Method)
      # @action_name:
      # Returns: (transfer none)

      # C call
      LibGio.g_action_map_remove_action(to_unsafe, action_name)

      # Return value handling
    end

    def remove_action_entries(entries : Enumerable(Gio::ActionEntry)) : Nil
      # g_action_map_remove_action_entries: (Method)
      # @entries: (array length=n_entries element-type Interface)
      # @n_entries:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_entries = entries.size
      # Generator::ArrayArgPlan
      entries = entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::ActionEntry))

      # C call
      LibGio.g_action_map_remove_action_entries(to_unsafe, entries, n_entries)

      # Return value handling
    end

    def remove_action_entries(*entries : Gio::ActionEntry)
      remove_action_entries(entries)
    end

    # add_action: (None)
    # @action:
    # Returns: (transfer none)
    private macro _register_add_action_vfunc(impl_method_name)
      private def self._vfunc_add_action(%this : Pointer(Void), lib_action :  Pointer(Void), ) : Void
        # @action: 

# Generator::BuiltInTypeArgPlan
action=Gio::AbstractAction.new(lib_action, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action)
        
        %retval
      end

      def self._install_iface_Gio__ActionMap(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_action(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # add_action: (None)
    # @action:
    # Returns: (transfer none)
    private macro _register_unsafe_add_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_action(%this : Pointer(Void), lib_action :  Pointer(Void), ) : Void
# @action: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action)
      end

      def self._install_iface_Gio__ActionMap(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_action = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_action(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_action : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # lookup_action: (None)
    # @action_name:
    # Returns: (transfer none) (nullable)
    private macro _register_lookup_action_vfunc(impl_method_name)
      private def self._vfunc_lookup_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__ActionMap(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_action(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # lookup_action: (None)
    # @action_name:
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_lookup_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Pointer(Void)
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionMap(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_action = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_action(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_action : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # remove_action: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_remove_action_vfunc(impl_method_name)
      private def self._vfunc_remove_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
        # @action_name: 

# Generator::BuiltInTypeArgPlan
action_name=::String.new(lib_action_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(action_name)
        
        %retval
      end

      def self._install_iface_Gio__ActionMap(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_remove_action(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # remove_action: (None)
    # @action_name:
    # Returns: (transfer none)
    private macro _register_unsafe_remove_action_vfunc(impl_method_name)
      private def self._vfunc_unsafe_remove_action(%this : Pointer(Void), lib_action_name :  Pointer(LibC::Char), ) : Void
# @action_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_action_name)
      end

      def self._install_iface_Gio__ActionMap(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_remove_action = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_remove_action(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_remove_action : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractActionMap.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractActionMap < GObject::Object
    include ActionMap

    GICrystal.declare_new_method(Gio::AbstractActionMap, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_action_map_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractActionMap.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
