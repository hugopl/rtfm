module Gio
  module Icon
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::Icon
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__Icon(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractIcon.g_type
    end

    def self.deserialize(value : _) : Gio::Icon?
      # g_icon_deserialize: (None)
      # @value:
      # Returns: (transfer full) (nullable)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGio.g_icon_deserialize(value)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def new_for_string(str : ::String) : Gio::Icon
      # g_icon_new_for_string: (Throws)
      # @str:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_icon_new_for_string(str, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(icon2 : Gio::Icon?) : Bool
      # g_icon_equal: (Method)
      # @icon2: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon2 = if icon2.nil?
                Pointer(Void).null
              else
                icon2.to_unsafe
              end

      # C call
      _retval = LibGio.g_icon_equal(to_unsafe, icon2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hash : UInt32
      # g_icon_hash: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_icon_hash(to_unsafe)

      # Return value handling
      _retval
    end

    def serialize : GLib::Variant?
      # g_icon_serialize: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_icon_serialize(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_string : ::String?
      # g_icon_to_string: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_icon_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    # equal: (None)
    # @icon2: (nullable)
    # Returns: (transfer none)
    private macro _register_equal_vfunc(impl_method_name)
      private def self._vfunc_equal(%this : Pointer(Void), lib_icon2 :  Pointer(Void), ) : LibC::Int
        # @icon2: (nullable) 

# Generator::NullableArrayPlan
icon2=(lib_icon2.null? ? nil : Gio::AbstractIcon.new(lib_icon2, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
icon2=Gio::AbstractIcon.new(lib_icon2, GICrystal::Transfer::None) unless lib_icon2.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(icon2)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_equal(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # equal: (None)
    # @icon2: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_equal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_equal(%this : Pointer(Void), lib_icon2 :  Pointer(Void), ) : LibC::Int
# @icon2: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_icon2)
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_equal = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_equal(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_equal : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # hash: (None)
    # Returns: (transfer none)
    private macro _register_hash_vfunc(impl_method_name)
      private def self._vfunc_hash(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_hash(Pointer(Void))).pointer
        previous_def
      end
    end

    # hash: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_hash_vfunc(impl_method_name)
      private def self._vfunc_unsafe_hash(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_hash = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_hash(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_hash : Proc(Pointer(Void), UInt32)? = nil
    end

    # serialize: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_serialize_vfunc(impl_method_name)
      private def self._vfunc_serialize(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_serialize(Pointer(Void))).pointer
        previous_def
      end
    end

    # serialize: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_serialize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_serialize(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_serialize = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_serialize(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_serialize : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # to_tokens: (None)
    # @tokens: (out) (caller-allocates) (array element-type Utf8)
    # @out_version: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_to_tokens_vfunc(impl_method_name)
      private def self._vfunc_to_tokens(%this : Pointer(Void), lib_tokens :  Pointer(Pointer(LibC::Char)), lib_out_version :  Int32, ) : LibC::Int
        # @tokens: (out) (caller-allocates) (array element-type Utf8)
# @out_version: (out) (transfer full) 

# Generator::ArrayArgPlan
raise NotImplementedError.new
out_version=lib_out_version


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(tokens, out_version)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_to_tokens(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32)).pointer
        previous_def
      end
    end

    # to_tokens: (None)
    # @tokens: (out) (caller-allocates) (array element-type Utf8)
    # @out_version: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_to_tokens_vfunc(impl_method_name)
      private def self._vfunc_unsafe_to_tokens(%this : Pointer(Void), lib_tokens :  Pointer(Pointer(LibC::Char)), lib_out_version :  Int32, ) : LibC::Int
# @tokens: (out) (caller-allocates) (array element-type Utf8)
# @out_version: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_tokens, lib_out_version)
      end

      def self._install_iface_Gio__Icon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_to_tokens = Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_to_tokens(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_to_tokens : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32, LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractIcon.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractIcon < GObject::Object
    include Icon

    GICrystal.declare_new_method(Gio::AbstractIcon, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_icon_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractIcon.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
