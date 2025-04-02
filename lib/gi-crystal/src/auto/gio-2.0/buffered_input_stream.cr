require "./filter_input_stream"
require "./seekable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class BufferedInputStream < FilterInputStream
    include Seekable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::BufferedInputStreamClass), class_init,
        sizeof(LibGio::BufferedInputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(BufferedInputStream, g_object_get_qdata)

    # Initialize a new `BufferedInputStream`.
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

    def initialize(*, base_stream : Gio::InputStream? = nil, buffer_size : UInt32? = nil, close_base_stream : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
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
      @@g_type ||= LibGio.g_buffered_input_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::BufferedInputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def buffer_size=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "buffer-size", unsafe_value, Pointer(Void).null)
      value
    end

    def buffer_size : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "buffer-size", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(base_stream : Gio::InputStream) : self
      # g_buffered_input_stream_new: (Constructor)
      # @base_stream:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_buffered_input_stream_new(base_stream)

      # Return value handling
      Gio::BufferedInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_sized(base_stream : Gio::InputStream, size : UInt64) : self
      # g_buffered_input_stream_new_sized: (Constructor)
      # @base_stream:
      # @size:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_buffered_input_stream_new_sized(base_stream, size)

      # Return value handling
      Gio::BufferedInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def fill(count : Int64, cancellable : Gio::Cancellable?) : Int64
      # g_buffered_input_stream_fill: (Method | Throws)
      # @count:
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
      _retval = LibGio.g_buffered_input_stream_fill(to_unsafe, count, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def fill_async(count : Int64, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_buffered_input_stream_fill_async: (Method)
      # @count:
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
      LibGio.g_buffered_input_stream_fill_async(to_unsafe, count, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def fill_finish(result : Gio::AsyncResult) : Int64
      # g_buffered_input_stream_fill_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_buffered_input_stream_fill_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def available : UInt64
      # g_buffered_input_stream_get_available: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_buffered_input_stream_get_available(to_unsafe)

      # Return value handling
      _retval
    end

    def buffer_size : UInt64
      # g_buffered_input_stream_get_buffer_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_buffered_input_stream_get_buffer_size(to_unsafe)

      # Return value handling
      _retval
    end

    def peek(buffer : ::Bytes, offset : UInt64) : UInt64
      # g_buffered_input_stream_peek: (Method)
      # @buffer: (array length=count element-type UInt8)
      # @offset:
      # @count:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      count = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_buffered_input_stream_peek(to_unsafe, buffer, offset, count)

      # Return value handling
      _retval
    end

    def peek_buffer : ::Bytes
      # g_buffered_input_stream_peek_buffer: (Method)
      # @count: (out) (transfer full)
      # Returns: (transfer none) (array length=count element-type UInt8)

      # Generator::OutArgUsedInReturnPlan
      count = 0_u64
      # C call
      _retval = LibGio.g_buffered_input_stream_peek_buffer(to_unsafe, pointerof(count))

      # Return value handling
      GICrystal.transfer_array(_retval, count, GICrystal::Transfer::None)
    end

    def read_byte(cancellable : Gio::Cancellable?) : Int32
      # g_buffered_input_stream_read_byte: (Method | Throws)
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
      _retval = LibGio.g_buffered_input_stream_read_byte(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def buffer_size=(size : UInt64) : Nil
      # g_buffered_input_stream_set_buffer_size: (Method | Setter)
      # @size:
      # Returns: (transfer none)

      # C call
      LibGio.g_buffered_input_stream_set_buffer_size(to_unsafe, size)

      # Return value handling
    end

    # fill: (Throws)
    # @count:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_fill_vfunc(impl_method_name)
      private def self._vfunc_fill(%this : Pointer(Void), lib_count :  Int64, lib_cancellable :  Pointer(Void), ) : Int64
        # @count: 
# @cancellable: (nullable) 

count=lib_count
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(count, cancellable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_fill(Pointer(Void), Int64, Pointer(Void))).pointer
        previous_def
      end
    end

    # fill: (Throws)
    # @count:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_fill_vfunc(impl_method_name)
      private def self._vfunc_unsafe_fill(%this : Pointer(Void), lib_count :  Int64, lib_cancellable :  Pointer(Void), ) : Int64
# @count: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_count, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_fill = Proc(Pointer(Void), Int64, Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_fill(Pointer(Void), Int64, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_fill : Proc(Pointer(Void), Int64, Pointer(Void), Int64)? = nil
    end

    # fill_async: (None)
    # @count:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_fill_async_vfunc(impl_method_name)
      private def self._vfunc_fill_async(%this : Pointer(Void), lib_count :  Int64, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @count: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

count=lib_count
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(count, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_fill_async(Pointer(Void), Int64, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # fill_async: (None)
    # @count:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_fill_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_fill_async(%this : Pointer(Void), lib_count :  Int64, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @count: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_count, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_fill_async = Proc(Pointer(Void), Int64, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_fill_async(Pointer(Void), Int64, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_fill_async : Proc(Pointer(Void), Int64, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # fill_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_fill_finish_vfunc(impl_method_name)
      private def self._vfunc_fill_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Int64
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_fill_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # fill_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_fill_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_fill_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Int64
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_fill_finish = Proc(Pointer(Void), Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_fill_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_fill_finish : Proc(Pointer(Void), Pointer(Void), Int64)? = nil
    end

    def_equals_and_hash @pointer
  end
end
