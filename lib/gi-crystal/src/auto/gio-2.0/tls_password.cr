require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class TlsPassword < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::TlsPasswordClass), class_init,
        sizeof(LibGio::TlsPassword), instance_init, 0)
    end

    GICrystal.declare_new_method(TlsPassword, g_object_get_qdata)

    # Initialize a new `TlsPassword`.
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

    def initialize(*, description : ::String? = nil, flags : Gio::TlsPasswordFlags? = nil, warning : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !description.nil?
        (_names.to_unsafe + _n).value = "description".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, description)
        _n += 1
      end
      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
        _n += 1
      end
      if !warning.nil?
        (_names.to_unsafe + _n).value = "warning".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, warning)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_tls_password_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::TlsPassword.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def description=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "description", unsafe_value, Pointer(Void).null)
      value
    end

    def description : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "description", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#description` property to nil.
    def description=(value : Nil) : Nil
      LibGObject.g_object_set(self, "description", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#description`, but can return nil.
    def description? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "description", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def flags=(value : Gio::TlsPasswordFlags) : Gio::TlsPasswordFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Gio::TlsPasswordFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Gio::TlsPasswordFlags.new(value)
    end

    def warning=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "warning", unsafe_value, Pointer(Void).null)
      value
    end

    def warning : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "warning", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#warning` property to nil.
    def warning=(value : Nil) : Nil
      LibGObject.g_object_set(self, "warning", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#warning`, but can return nil.
    def warning? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "warning", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(flags : Gio::TlsPasswordFlags, description : ::String) : self
      # g_tls_password_new: (Constructor)
      # @flags:
      # @description:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_tls_password_new(flags, description)

      # Return value handling
      Gio::TlsPassword.new(_retval, GICrystal::Transfer::Full)
    end

    def description : ::String
      # g_tls_password_get_description: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_password_get_description(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def flags : Gio::TlsPasswordFlags
      # g_tls_password_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_password_get_flags(to_unsafe)

      # Return value handling
      Gio::TlsPasswordFlags.new(_retval)
    end

    def value : UInt64
      # g_tls_password_get_value: (Method)
      # @length: (out) (transfer full) (caller-allocates) (optional)
      # Returns: (transfer none) (array length=length element-type UInt8)

      # Generator::OutArgUsedInReturnPlan
      length = 0_u64 # Generator::CallerAllocatesPlan
      length = UInt64.new
      # C call
      _retval = LibGio.g_tls_password_get_value(to_unsafe, pointerof(length))

      # Return value handling
      length
    end

    def warning : ::String
      # g_tls_password_get_warning: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_password_get_warning(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def description=(description : ::String) : Nil
      # g_tls_password_set_description: (Method | Setter)
      # @description:
      # Returns: (transfer none)

      # C call
      LibGio.g_tls_password_set_description(to_unsafe, description)

      # Return value handling
    end

    def flags=(flags : Gio::TlsPasswordFlags) : Nil
      # g_tls_password_set_flags: (Method | Setter)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_tls_password_set_flags(to_unsafe, flags)

      # Return value handling
    end

    def value=(value : ::Bytes) : Nil
      # g_tls_password_set_value: (Method)
      # @value: (array length=length element-type UInt8)
      # @length:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      length = value.size
      # Generator::ArrayArgPlan
      value = value.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      LibGio.g_tls_password_set_value(to_unsafe, value, length)

      # Return value handling
    end

    def set_value_full(value : ::Bytes, destroy : GLib::DestroyNotify?) : Nil
      # g_tls_password_set_value_full: (Method)
      # @value: (array length=length element-type UInt8)
      # @length:
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      length = value.size
      # Generator::ArrayArgPlan
      value = value.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      LibGio.g_tls_password_set_value_full(to_unsafe, value, length, destroy)

      # Return value handling
    end

    def warning=(warning : ::String) : Nil
      # g_tls_password_set_warning: (Method | Setter)
      # @warning:
      # Returns: (transfer none)

      # C call
      LibGio.g_tls_password_set_warning(to_unsafe, warning)

      # Return value handling
    end

    # get_default_warning: (None)
    # Returns: (transfer none)
    private macro _register_get_default_warning_vfunc(impl_method_name)
      private def self._vfunc_get_default_warning(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_default_warning(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_default_warning: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_default_warning_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_default_warning(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_default_warning = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_default_warning(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_default_warning : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_value: (None)
    # @length: (out) (transfer full) (caller-allocates) (optional)
    # Returns: (transfer none) (array length=length element-type UInt8)
    private macro _register_get_value_vfunc(impl_method_name)
      private def self._vfunc_get_value(%this : Pointer(Void), lib_length :  UInt64, ) : Pointer(UInt8)
        # @length: (out) (transfer full) (caller-allocates) (optional) 

# Generator::OutArgUsedInReturnPlan
# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(length)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_value(Pointer(Void), UInt64)).pointer
        previous_def
      end
    end

    # get_value: (None)
    # @length: (out) (transfer full) (caller-allocates) (optional)
    # Returns: (transfer none) (array length=length element-type UInt8)
    private macro _register_unsafe_get_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_value(%this : Pointer(Void), lib_length :  UInt64, ) : Pointer(UInt8)
# @length: (out) (transfer full) (caller-allocates) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_length)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_value = Proc(Pointer(Void), UInt64, Pointer(UInt8)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_value(Pointer(Void), UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_value : Proc(Pointer(Void), UInt64, Pointer(UInt8))? = nil
    end

    # set_value: (None)
    # @value: (array length=length element-type UInt8)
    # @length:
    # @destroy: (nullable)
    # Returns: (transfer none)
    private macro _register_set_value_vfunc(impl_method_name)
      private def self._vfunc_set_value(%this : Pointer(Void), lib_value :  Pointer(UInt8), lib_length :  Int64, lib_destroy :  Void*, ) : Void
        # @value: (array length=length element-type UInt8)
# @length: 
# @destroy: (nullable) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_value = lib_value.as(Pointer(Pointer(Void)))
value= Array(UInt8).new(lib_length) do |_i|
(lib_value + _i).value
end
# Generator::BuiltInTypeArgPlan
destroy=GLib::DestroyNotify.new(lib_destroy, GICrystal::Transfer::None) unless lib_destroy.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(value, length, destroy)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_value(Pointer(Void), Pointer(UInt8), Int64, Void*)).pointer
        previous_def
      end
    end

    # set_value: (None)
    # @value: (array length=length element-type UInt8)
    # @length:
    # @destroy: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_value(%this : Pointer(Void), lib_value :  Pointer(UInt8), lib_length :  Int64, lib_destroy :  Void*, ) : Void
# @value: (array length=length element-type UInt8)
# @length: 
# @destroy: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_value, lib_length, lib_destroy)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_value = Proc(Pointer(Void), Pointer(UInt8), Int64, Void*, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_value(Pointer(Void), Pointer(UInt8), Int64, Void*)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_value : Proc(Pointer(Void), Pointer(UInt8), Int64, Void*, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
