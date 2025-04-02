require "../g_object-2.0/object"
require "./socket_connectable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SocketAddress < GObject::Object
    include SocketConnectable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketAddressClass), class_init,
        sizeof(LibGio::SocketAddress), instance_init, 0)
    end

    GICrystal.declare_new_method(SocketAddress, g_object_get_qdata)

    # Initialize a new `SocketAddress`.
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

    def initialize(*, family : Gio::SocketFamily? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
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
      @@g_type ||= LibGio.g_socket_address_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SocketAddress.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def family : Gio::SocketFamily
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "family", pointerof(value), Pointer(Void).null)
      Gio::SocketFamily.new(value)
    end

    def self.new_from_native(native : Pointer(Void), len : UInt64) : self
      # g_socket_address_new_from_native: (Constructor)
      # @native:
      # @len:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_address_new_from_native(native, len)

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def family : Gio::SocketFamily
      # g_socket_address_get_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_address_get_family(to_unsafe)

      # Return value handling
      Gio::SocketFamily.new(_retval)
    end

    def native_size : Int64
      # g_socket_address_get_native_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_socket_address_get_native_size(to_unsafe)

      # Return value handling
      _retval
    end

    def to_native(dest : Pointer(Void)?, destlen : UInt64) : Bool
      # g_socket_address_to_native: (Method | Throws)
      # @dest: (nullable)
      # @destlen:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      dest = if dest.nil?
               Pointer(Void).null
             else
               dest.to_unsafe
             end

      # C call
      _retval = LibGio.g_socket_address_to_native(to_unsafe, dest, destlen, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # get_family: (None)
    # Returns: (transfer none)
    private macro _register_get_family_vfunc(impl_method_name)
      private def self._vfunc_get_family(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_family(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_family: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_family_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_family(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_family = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_family(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_family : Proc(Pointer(Void), UInt32)? = nil
    end

    # get_native_size: (None)
    # Returns: (transfer none)
    private macro _register_get_native_size_vfunc(impl_method_name)
      private def self._vfunc_get_native_size(%this : Pointer(Void), ) : Int64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_native_size(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_native_size: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_native_size_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_native_size(%this : Pointer(Void), ) : Int64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_native_size = Proc(Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_native_size(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_native_size : Proc(Pointer(Void), Int64)? = nil
    end

    # to_native: (Throws)
    # @dest: (nullable)
    # @destlen:
    # Returns: (transfer none)
    private macro _register_to_native_vfunc(impl_method_name)
      private def self._vfunc_to_native(%this : Pointer(Void), lib_dest :  Pointer(Void), lib_destlen :  UInt64, ) : LibC::Int
        # @dest: (nullable) 
# @destlen: 

# Generator::NullableArrayPlan
dest=(lib_dest.null? ? nil : lib_dest)
destlen=lib_destlen


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(dest, destlen)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_to_native(Pointer(Void), Pointer(Void), UInt64)).pointer
        previous_def
      end
    end

    # to_native: (Throws)
    # @dest: (nullable)
    # @destlen:
    # Returns: (transfer none)
    private macro _register_unsafe_to_native_vfunc(impl_method_name)
      private def self._vfunc_unsafe_to_native(%this : Pointer(Void), lib_dest :  Pointer(Void), lib_destlen :  UInt64, ) : LibC::Int
# @dest: (nullable) 
# @destlen: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_dest, lib_destlen)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_to_native = Proc(Pointer(Void), Pointer(Void), UInt64, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_to_native(Pointer(Void), Pointer(Void), UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_to_native : Proc(Pointer(Void), Pointer(Void), UInt64, LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
