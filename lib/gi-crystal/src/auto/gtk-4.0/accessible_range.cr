module Gtk
  module AccessibleRange
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::AccessibleRange
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__AccessibleRange(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractAccessibleRange.g_type
    end

    # set_current_value: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_set_current_value_vfunc(impl_method_name)
      private def self._vfunc_set_current_value(%this : Pointer(Void), lib_value :  Float64, ) : LibC::Int
        # @value: 

value=lib_value


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__AccessibleRange(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_current_value(Pointer(Void), Float64)).pointer
        previous_def
      end
    end

    # set_current_value: (None)
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_set_current_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_current_value(%this : Pointer(Void), lib_value :  Float64, ) : LibC::Int
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value)
      end

      def self._install_iface_Gtk__AccessibleRange(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_current_value = Proc(Pointer(Void), Float64, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_current_value(Pointer(Void), Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_current_value : Proc(Pointer(Void), Float64, LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractAccessibleRange.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractAccessibleRange < GObject::Object
    include AccessibleRange

    GICrystal.declare_new_method(Gtk::AbstractAccessibleRange, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_accessible_range_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractAccessibleRange.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
