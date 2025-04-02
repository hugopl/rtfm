require "./filter_output_stream"
require "./seekable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DataOutputStream < FilterOutputStream
    include Seekable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DataOutputStreamClass), class_init,
        sizeof(LibGio::DataOutputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(DataOutputStream, g_object_get_qdata)

    # Initialize a new `DataOutputStream`.
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

    def initialize(*, base_stream : Gio::OutputStream? = nil, byte_order : Gio::DataStreamByteOrder? = nil, close_base_stream : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !base_stream.nil?
        (_names.to_unsafe + _n).value = "base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_stream)
        _n += 1
      end
      if !byte_order.nil?
        (_names.to_unsafe + _n).value = "byte-order".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, byte_order)
        _n += 1
      end
      if !close_base_stream.nil?
        (_names.to_unsafe + _n).value = "close-base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, close_base_stream)
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
      @@g_type ||= LibGio.g_data_output_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DataOutputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def byte_order=(value : Gio::DataStreamByteOrder) : Gio::DataStreamByteOrder
      unsafe_value = value

      LibGObject.g_object_set(self, "byte-order", unsafe_value, Pointer(Void).null)
      value
    end

    def byte_order : Gio::DataStreamByteOrder
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "byte-order", pointerof(value), Pointer(Void).null)
      Gio::DataStreamByteOrder.new(value)
    end

    def self.new(base_stream : Gio::OutputStream) : self
      # g_data_output_stream_new: (Constructor)
      # @base_stream:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_data_output_stream_new(base_stream)

      # Return value handling
      Gio::DataOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def byte_order : Gio::DataStreamByteOrder
      # g_data_output_stream_get_byte_order: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_data_output_stream_get_byte_order(to_unsafe)

      # Return value handling
      Gio::DataStreamByteOrder.new(_retval)
    end

    def put_byte(data : UInt8, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_byte: (Method | Throws)
      # @data:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_byte(to_unsafe, data, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def put_int16(data : Int16, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_int16: (Method | Throws)
      # @data:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_int16(to_unsafe, data, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def put_int32(data : Int32, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_int32: (Method | Throws)
      # @data:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_int32(to_unsafe, data, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def put_int64(data : Int64, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_int64: (Method | Throws)
      # @data:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_int64(to_unsafe, data, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def put_string(str : ::String, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_string: (Method | Throws)
      # @str:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_string(to_unsafe, str, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def put_uint16(data : UInt16, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_uint16: (Method | Throws)
      # @data:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_uint16(to_unsafe, data, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def put_uint32(data : UInt32, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_uint32: (Method | Throws)
      # @data:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_uint32(to_unsafe, data, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def put_uint64(data : UInt64, cancellable : Gio::Cancellable?) : Bool
      # g_data_output_stream_put_uint64: (Method | Throws)
      # @data:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_output_stream_put_uint64(to_unsafe, data, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def byte_order=(order : Gio::DataStreamByteOrder) : Nil
      # g_data_output_stream_set_byte_order: (Method | Setter)
      # @order:
      # Returns: (transfer none)

      # C call
      LibGio.g_data_output_stream_set_byte_order(to_unsafe, order)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
