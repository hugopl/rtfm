require "./buffered_input_stream"
require "./seekable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DataInputStream < BufferedInputStream
    include Seekable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DataInputStreamClass), class_init,
        sizeof(LibGio::DataInputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(DataInputStream, g_object_get_qdata)

    # Initialize a new `DataInputStream`.
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

    def initialize(*, base_stream : Gio::InputStream? = nil, buffer_size : UInt32? = nil, byte_order : Gio::DataStreamByteOrder? = nil, close_base_stream : Bool? = nil, newline_type : Gio::DataStreamNewlineType? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !base_stream.nil?
        (_names.to_unsafe + _n).value = "base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_stream)
        _n += 1
      end
      if !buffer_size.nil?
        (_names.to_unsafe + _n).value = "buffer-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, buffer_size)
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
      if !newline_type.nil?
        (_names.to_unsafe + _n).value = "newline-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, newline_type)
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
      @@g_type ||= LibGio.g_data_input_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DataInputStream.new(Void*, GICrystal::Transfer)
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

    def newline_type=(value : Gio::DataStreamNewlineType) : Gio::DataStreamNewlineType
      unsafe_value = value

      LibGObject.g_object_set(self, "newline-type", unsafe_value, Pointer(Void).null)
      value
    end

    def newline_type : Gio::DataStreamNewlineType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "newline-type", pointerof(value), Pointer(Void).null)
      Gio::DataStreamNewlineType.new(value)
    end

    def self.new(base_stream : Gio::InputStream) : self
      # g_data_input_stream_new: (Constructor)
      # @base_stream:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_data_input_stream_new(base_stream)

      # Return value handling
      Gio::DataInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def byte_order : Gio::DataStreamByteOrder
      # g_data_input_stream_get_byte_order: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_data_input_stream_get_byte_order(to_unsafe)

      # Return value handling
      Gio::DataStreamByteOrder.new(_retval)
    end

    def newline_type : Gio::DataStreamNewlineType
      # g_data_input_stream_get_newline_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_data_input_stream_get_newline_type(to_unsafe)

      # Return value handling
      Gio::DataStreamNewlineType.new(_retval)
    end

    def read_byte(cancellable : Gio::Cancellable?) : UInt8
      # g_data_input_stream_read_byte: (Method | Throws)
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
      _retval = LibGio.g_data_input_stream_read_byte(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def read_int16(cancellable : Gio::Cancellable?) : Int16
      # g_data_input_stream_read_int16: (Method | Throws)
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
      _retval = LibGio.g_data_input_stream_read_int16(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def read_int32(cancellable : Gio::Cancellable?) : Int32
      # g_data_input_stream_read_int32: (Method | Throws)
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
      _retval = LibGio.g_data_input_stream_read_int32(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def read_int64(cancellable : Gio::Cancellable?) : Int64
      # g_data_input_stream_read_int64: (Method | Throws)
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
      _retval = LibGio.g_data_input_stream_read_int64(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def read_line(cancellable : Gio::Cancellable?) : ::Bytes?
      # g_data_input_stream_read_line: (Method | Throws)
      # @length: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type UInt8)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_input_stream_read_line(to_unsafe, length, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def read_line_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_data_input_stream_read_line_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_data_input_stream_read_line_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def read_line_finish(result : Gio::AsyncResult) : ::Bytes?
      # g_data_input_stream_read_line_finish: (Method | Throws)
      # @result:
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type UInt8)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_data_input_stream_read_line_finish(to_unsafe, result, length, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def read_line_finish_utf8(result : Gio::AsyncResult) : ::String?
      # g_data_input_stream_read_line_finish_utf8: (Method | Throws)
      # @result:
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_data_input_stream_read_line_finish_utf8(to_unsafe, result, length, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def read_line_utf8(cancellable : Gio::Cancellable?) : ::String?
      # g_data_input_stream_read_line_utf8: (Method | Throws)
      # @length: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_input_stream_read_line_utf8(to_unsafe, length, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def read_uint16(cancellable : Gio::Cancellable?) : UInt16
      # g_data_input_stream_read_uint16: (Method | Throws)
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
      _retval = LibGio.g_data_input_stream_read_uint16(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def read_uint32(cancellable : Gio::Cancellable?) : UInt32
      # g_data_input_stream_read_uint32: (Method | Throws)
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
      _retval = LibGio.g_data_input_stream_read_uint32(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def read_uint64(cancellable : Gio::Cancellable?) : UInt64
      # g_data_input_stream_read_uint64: (Method | Throws)
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
      _retval = LibGio.g_data_input_stream_read_uint64(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    @[Deprecated]
    def read_until(stop_chars : ::String, cancellable : Gio::Cancellable?) : ::String
      # g_data_input_stream_read_until: (Method | Throws)
      # @stop_chars:
      # @length: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_input_stream_read_until(to_unsafe, stop_chars, length, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    @[Deprecated]
    def read_until_async(stop_chars : ::String, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_data_input_stream_read_until_async: (Method)
      # @stop_chars:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_data_input_stream_read_until_async(to_unsafe, stop_chars, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    @[Deprecated]
    def read_until_finish(result : Gio::AsyncResult) : ::String
      # g_data_input_stream_read_until_finish: (Method | Throws)
      # @result:
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_data_input_stream_read_until_finish(to_unsafe, result, length, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def read_upto(stop_chars : ::String, stop_chars_len : Int64, cancellable : Gio::Cancellable?) : ::String
      # g_data_input_stream_read_upto: (Method | Throws)
      # @stop_chars:
      # @stop_chars_len:
      # @length: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_data_input_stream_read_upto(to_unsafe, stop_chars, stop_chars_len, length, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def read_upto_async(stop_chars : ::String, stop_chars_len : Int64, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_data_input_stream_read_upto_async: (Method)
      # @stop_chars:
      # @stop_chars_len:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_data_input_stream_read_upto_async(to_unsafe, stop_chars, stop_chars_len, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def read_upto_finish(result : Gio::AsyncResult) : ::String
      # g_data_input_stream_read_upto_finish: (Method | Throws)
      # @result:
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      length = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_data_input_stream_read_upto_finish(to_unsafe, result, length, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def byte_order=(order : Gio::DataStreamByteOrder) : Nil
      # g_data_input_stream_set_byte_order: (Method | Setter)
      # @order:
      # Returns: (transfer none)

      # C call
      LibGio.g_data_input_stream_set_byte_order(to_unsafe, order)

      # Return value handling
    end

    def newline_type=(type : Gio::DataStreamNewlineType) : Nil
      # g_data_input_stream_set_newline_type: (Method | Setter)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGio.g_data_input_stream_set_newline_type(to_unsafe, type)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
