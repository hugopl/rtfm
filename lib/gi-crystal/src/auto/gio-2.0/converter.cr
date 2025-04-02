module Gio
  module Converter
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::Converter
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__Converter(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractConverter.g_type
    end

    def convert(inbuf : ::Bytes, outbuf : ::Bytes, flags : Gio::ConverterFlags, bytes_read : UInt64, bytes_written : UInt64) : Gio::ConverterResult
      # g_converter_convert: (Method | Throws)
      # @inbuf: (array length=inbuf_size element-type UInt8)
      # @inbuf_size:
      # @outbuf: (array length=outbuf_size element-type UInt8)
      # @outbuf_size:
      # @flags:
      # @bytes_read: (out) (transfer full)
      # @bytes_written: (out) (transfer full)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      inbuf_size = inbuf.size
      # Generator::ArrayArgPlan
      inbuf = inbuf.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::ArrayLengthArgPlan
      outbuf_size = outbuf.size
      # Generator::ArrayArgPlan
      outbuf = outbuf.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_converter_convert(to_unsafe, inbuf, inbuf_size, outbuf, outbuf_size, flags, bytes_read, bytes_written, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::ConverterResult.new(_retval)
    end

    def convert_bytes(bytes : GLib::Bytes) : GLib::Bytes
      # g_converter_convert_bytes: (Method | Throws)
      # @bytes:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_converter_convert_bytes(to_unsafe, bytes, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def reset : Nil
      # g_converter_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_converter_reset(to_unsafe)

      # Return value handling
    end

    # convert: (Throws)
    # @inbuf: (nullable) (array length=inbuf_size element-type UInt8)
    # @inbuf_size:
    # @outbuf: (array length=outbuf_size element-type UInt8)
    # @outbuf_size:
    # @flags:
    # @bytes_read: (out) (transfer full)
    # @bytes_written: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_convert_vfunc(impl_method_name)
      private def self._vfunc_convert(%this : Pointer(Void), lib_inbuf :  Pointer(UInt8), lib_inbuf_size :  UInt64, lib_outbuf :  Pointer(UInt8), lib_outbuf_size :  UInt64, lib_flags :  UInt32, lib_bytes_read :  UInt64, lib_bytes_written :  UInt64, ) : UInt32
        # @inbuf: (nullable) (array length=inbuf_size element-type UInt8)
# @inbuf_size: 
# @outbuf: (array length=outbuf_size element-type UInt8)
# @outbuf_size: 
# @flags: 
# @bytes_read: (out) (transfer full) 
# @bytes_written: (out) (transfer full) 

# Generator::ArrayLengthArgPlan
# Generator::NullableArrayPlan
inbuf=(lib_inbuf.null? ? nil : GICrystal.transfer_array(lib_inbuf, inbuf_size,GICrystal::Transfer::None))
# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_outbuf = lib_outbuf.as(Pointer(Pointer(Void)))
outbuf= Array(UInt8).new(lib_outbuf_size) do |_i|
(lib_outbuf + _i).value
end
# Generator::BuiltInTypeArgPlan
flags=Gio::ConverterFlags.new(lib_flags)
bytes_read=lib_bytes_read
bytes_written=lib_bytes_written


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(inbuf, inbuf_size, outbuf, outbuf_size, flags, bytes_read, bytes_written)
        
        %retval.to_u32
      end

      def self._install_iface_Gio__Converter(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_convert(Pointer(Void), Pointer(UInt8), UInt64, Pointer(UInt8), UInt64, UInt32, UInt64, UInt64)).pointer
        previous_def
      end
    end

    # convert: (Throws)
    # @inbuf: (nullable) (array length=inbuf_size element-type UInt8)
    # @inbuf_size:
    # @outbuf: (array length=outbuf_size element-type UInt8)
    # @outbuf_size:
    # @flags:
    # @bytes_read: (out) (transfer full)
    # @bytes_written: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_convert_vfunc(impl_method_name)
      private def self._vfunc_unsafe_convert(%this : Pointer(Void), lib_inbuf :  Pointer(UInt8), lib_inbuf_size :  UInt64, lib_outbuf :  Pointer(UInt8), lib_outbuf_size :  UInt64, lib_flags :  UInt32, lib_bytes_read :  UInt64, lib_bytes_written :  UInt64, ) : UInt32
# @inbuf: (nullable) (array length=inbuf_size element-type UInt8)
# @inbuf_size: 
# @outbuf: (array length=outbuf_size element-type UInt8)
# @outbuf_size: 
# @flags: 
# @bytes_read: (out) (transfer full) 
# @bytes_written: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_inbuf, lib_inbuf_size, lib_outbuf, lib_outbuf_size, lib_flags, lib_bytes_read, lib_bytes_written)
      end

      def self._install_iface_Gio__Converter(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_convert = Proc(Pointer(Void), Pointer(UInt8), UInt64, Pointer(UInt8), UInt64, UInt32, UInt64, UInt64, UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_convert(Pointer(Void), Pointer(UInt8), UInt64, Pointer(UInt8), UInt64, UInt32, UInt64, UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_convert : Proc(Pointer(Void), Pointer(UInt8), UInt64, Pointer(UInt8), UInt64, UInt32, UInt64, UInt64, UInt32)? = nil
    end

    # reset: (None)
    # Returns: (transfer none)
    private macro _register_reset_vfunc(impl_method_name)
      private def self._vfunc_reset(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__Converter(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_reset(Pointer(Void))).pointer
        previous_def
      end
    end

    # reset: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_reset_vfunc(impl_method_name)
      private def self._vfunc_unsafe_reset(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Converter(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reset = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reset(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reset : Proc(Pointer(Void), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractConverter.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractConverter < GObject::Object
    include Converter

    GICrystal.declare_new_method(Gio::AbstractConverter, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_converter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractConverter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
