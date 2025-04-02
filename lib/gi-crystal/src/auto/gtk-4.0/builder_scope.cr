module Gtk
  module BuilderScope
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::BuilderScope
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__BuilderScope(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractBuilderScope.g_type
    end

    # create_closure: (Throws)
    # @builder:
    # @function_name:
    # @flags:
    # @object:
    # Returns: (transfer full)
    private macro _register_create_closure_vfunc(impl_method_name)
      private def self._vfunc_create_closure(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_function_name :  Pointer(LibC::Char), lib_flags :  UInt32, lib_object :  Pointer(Void), ) : Pointer(Void)
        # @builder: 
# @function_name: 
# @flags: 
# @object: 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
function_name=::String.new(lib_function_name)
# Generator::BuiltInTypeArgPlan
flags=Gtk::BuilderClosureFlags.new(lib_flags)
# Generator::BuiltInTypeArgPlan
object=GObject::Object.new(lib_object, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, function_name, flags, object)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__BuilderScope(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_closure(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # create_closure: (Throws)
    # @builder:
    # @function_name:
    # @flags:
    # @object:
    # Returns: (transfer full)
    private macro _register_unsafe_create_closure_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_closure(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_function_name :  Pointer(LibC::Char), lib_flags :  UInt32, lib_object :  Pointer(Void), ) : Pointer(Void)
# @builder: 
# @function_name: 
# @flags: 
# @object: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_function_name, lib_flags, lib_object)
      end

      def self._install_iface_Gtk__BuilderScope(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_closure = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_closure(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_closure : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # get_type_from_function: (None)
    # @builder:
    # @function_name:
    # Returns: (transfer none)
    private macro _register_get_type_from_function_vfunc(impl_method_name)
      private def self._vfunc_get_type_from_function(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_function_name :  Pointer(LibC::Char), ) : UInt64
        # @builder: 
# @function_name: 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
function_name=::String.new(lib_function_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, function_name)
        
        %retval
      end

      def self._install_iface_Gtk__BuilderScope(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_type_from_function(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_type_from_function: (None)
    # @builder:
    # @function_name:
    # Returns: (transfer none)
    private macro _register_unsafe_get_type_from_function_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_type_from_function(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_function_name :  Pointer(LibC::Char), ) : UInt64
# @builder: 
# @function_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_function_name)
      end

      def self._install_iface_Gtk__BuilderScope(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_type_from_function = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_type_from_function(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_type_from_function : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt64)? = nil
    end

    # get_type_from_name: (None)
    # @builder:
    # @type_name:
    # Returns: (transfer none)
    private macro _register_get_type_from_name_vfunc(impl_method_name)
      private def self._vfunc_get_type_from_name(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_type_name :  Pointer(LibC::Char), ) : UInt64
        # @builder: 
# @type_name: 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
type_name=::String.new(lib_type_name)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, type_name)
        
        %retval
      end

      def self._install_iface_Gtk__BuilderScope(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_type_from_name(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_type_from_name: (None)
    # @builder:
    # @type_name:
    # Returns: (transfer none)
    private macro _register_unsafe_get_type_from_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_type_from_name(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_type_name :  Pointer(LibC::Char), ) : UInt64
# @builder: 
# @type_name: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_type_name)
      end

      def self._install_iface_Gtk__BuilderScope(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_type_from_name = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_type_from_name(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_type_from_name : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), UInt64)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractBuilderScope.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractBuilderScope < GObject::Object
    include BuilderScope

    GICrystal.declare_new_method(Gtk::AbstractBuilderScope, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_builder_scope_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractBuilderScope.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
