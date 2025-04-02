require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class OutputStream < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::OutputStreamClass), class_init,
        sizeof(LibGio::OutputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(OutputStream, g_object_get_qdata)

    # Initialize a new `OutputStream`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_output_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::OutputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def clear_pending : Nil
      # g_output_stream_clear_pending: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_output_stream_clear_pending(to_unsafe)

      # Return value handling
    end

    def close(cancellable : Gio::Cancellable?) : Bool
      # g_output_stream_close: (Method | Throws)
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
      _retval = LibGio.g_output_stream_close(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def close_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_close_async: (Method)
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
      LibGio.g_output_stream_close_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def close_finish(result : Gio::AsyncResult) : Bool
      # g_output_stream_close_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_output_stream_close_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def flush(cancellable : Gio::Cancellable?) : Bool
      # g_output_stream_flush: (Method | Throws)
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
      _retval = LibGio.g_output_stream_flush(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def flush_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_flush_async: (Method)
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
      LibGio.g_output_stream_flush_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def flush_finish(result : Gio::AsyncResult) : Bool
      # g_output_stream_flush_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_output_stream_flush_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_pending : Bool
      # g_output_stream_has_pending: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_output_stream_has_pending(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_closed : Bool
      # g_output_stream_is_closed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_output_stream_is_closed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_closing : Bool
      # g_output_stream_is_closing: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_output_stream_is_closing(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_pending : Bool
      # g_output_stream_set_pending: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_output_stream_set_pending(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def splice(source : Gio::InputStream, flags : Gio::OutputStreamSpliceFlags, cancellable : Gio::Cancellable?) : Int64
      # g_output_stream_splice: (Method | Throws)
      # @source:
      # @flags:
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
      _retval = LibGio.g_output_stream_splice(to_unsafe, source, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def splice_async(source : Gio::InputStream, flags : Gio::OutputStreamSpliceFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_splice_async: (Method)
      # @source:
      # @flags:
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
      LibGio.g_output_stream_splice_async(to_unsafe, source, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def splice_finish(result : Gio::AsyncResult) : Int64
      # g_output_stream_splice_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_output_stream_splice_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def write(buffer : ::Bytes, cancellable : Gio::Cancellable?) : Int64
      # g_output_stream_write: (Method | Throws)
      # @buffer: (array length=count element-type UInt8)
      # @count:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      count = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_output_stream_write(to_unsafe, buffer, count, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def write_all(buffer : ::Bytes, cancellable : Gio::Cancellable?) : Bool
      # g_output_stream_write_all: (Method | Throws)
      # @buffer: (array length=count element-type UInt8)
      # @count:
      # @bytes_written: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      count = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_output_stream_write_all(to_unsafe, buffer, count, bytes_written, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def write_all_async(buffer : ::Bytes, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_write_all_async: (Method)
      # @buffer: (array length=count element-type UInt8)
      # @count:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      count = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
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
      LibGio.g_output_stream_write_all_async(to_unsafe, buffer, count, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def write_all_finish(result : Gio::AsyncResult) : Bool
      # g_output_stream_write_all_finish: (Method | Throws)
      # @result:
      # @bytes_written: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_output_stream_write_all_finish(to_unsafe, result, bytes_written, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def write_async(buffer : ::Bytes, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_write_async: (Method)
      # @buffer: (array length=count element-type UInt8)
      # @count:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      count = buffer.size
      # Generator::ArrayArgPlan
      buffer = buffer.to_a.to_unsafe.as(Pointer(UInt8))
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
      LibGio.g_output_stream_write_async(to_unsafe, buffer, count, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def write_bytes(bytes : GLib::Bytes, cancellable : Gio::Cancellable?) : Int64
      # g_output_stream_write_bytes: (Method | Throws)
      # @bytes:
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
      _retval = LibGio.g_output_stream_write_bytes(to_unsafe, bytes, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def write_bytes_async(bytes : GLib::Bytes, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_write_bytes_async: (Method)
      # @bytes:
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
      LibGio.g_output_stream_write_bytes_async(to_unsafe, bytes, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def write_bytes_finish(result : Gio::AsyncResult) : Int64
      # g_output_stream_write_bytes_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_output_stream_write_bytes_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def write_finish(result : Gio::AsyncResult) : Int64
      # g_output_stream_write_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_output_stream_write_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def writev(vectors : Enumerable(Gio::OutputVector), cancellable : Gio::Cancellable?) : Bool
      # g_output_stream_writev: (Method | Throws)
      # @vectors: (array length=n_vectors element-type Interface)
      # @n_vectors:
      # @bytes_written: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      n_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputVector))
      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_output_stream_writev(to_unsafe, vectors, n_vectors, bytes_written, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def writev_all(vectors : Enumerable(Gio::OutputVector), cancellable : Gio::Cancellable?) : Bool
      # g_output_stream_writev_all: (Method | Throws)
      # @vectors: (array length=n_vectors element-type Interface)
      # @n_vectors:
      # @bytes_written: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      n_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputVector))
      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_output_stream_writev_all(to_unsafe, vectors, n_vectors, bytes_written, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def writev_all_async(vectors : Enumerable(Gio::OutputVector), io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_writev_all_async: (Method)
      # @vectors: (array length=n_vectors element-type Interface)
      # @n_vectors:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputVector))
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
      LibGio.g_output_stream_writev_all_async(to_unsafe, vectors, n_vectors, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def writev_all_finish(result : Gio::AsyncResult) : Bool
      # g_output_stream_writev_all_finish: (Method | Throws)
      # @result:
      # @bytes_written: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_output_stream_writev_all_finish(to_unsafe, result, bytes_written, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def writev_async(vectors : Enumerable(Gio::OutputVector), io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_output_stream_writev_async: (Method)
      # @vectors: (array length=n_vectors element-type Interface)
      # @n_vectors:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::OutputVector))
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
      LibGio.g_output_stream_writev_async(to_unsafe, vectors, n_vectors, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def writev_finish(result : Gio::AsyncResult) : Bool
      # g_output_stream_writev_finish: (Method | Throws)
      # @result:
      # @bytes_written: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      bytes_written = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_output_stream_writev_finish(to_unsafe, result, bytes_written, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # close_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_close_async_vfunc(impl_method_name)
      private def self._vfunc_close_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

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

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_close_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # close_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_close_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_close_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # close_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_close_finish_vfunc(impl_method_name)
      private def self._vfunc_close_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_close_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # close_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_close_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_close_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # close_fn: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_close_fn_vfunc(impl_method_name)
      private def self._vfunc_close_fn(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_close_fn(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # close_fn: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_close_fn_vfunc(impl_method_name)
      private def self._vfunc_unsafe_close_fn(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close_fn = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close_fn(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close_fn : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # flush: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_flush_vfunc(impl_method_name)
      private def self._vfunc_flush(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_flush(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # flush: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_flush_vfunc(impl_method_name)
      private def self._vfunc_unsafe_flush(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_flush = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_flush(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_flush : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # flush_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_flush_async_vfunc(impl_method_name)
      private def self._vfunc_flush_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

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

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_flush_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # flush_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_flush_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_flush_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_flush_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_flush_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_flush_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # flush_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_flush_finish_vfunc(impl_method_name)
      private def self._vfunc_flush_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_flush_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # flush_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_flush_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_flush_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_flush_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_flush_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_flush_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # splice: (Throws)
    # @source:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_splice_vfunc(impl_method_name)
      private def self._vfunc_splice(%this : Pointer(Void), lib_source :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Int64
        # @source: 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
source=Gio::InputStream.new(lib_source, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::OutputStreamSpliceFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(source, flags, cancellable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_splice(Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # splice: (Throws)
    # @source:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_splice_vfunc(impl_method_name)
      private def self._vfunc_unsafe_splice(%this : Pointer(Void), lib_source :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Int64
# @source: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_source, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_splice = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_splice(Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_splice : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Int64)? = nil
    end

    # splice_async: (None)
    # @source:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_splice_async_vfunc(impl_method_name)
      private def self._vfunc_splice_async(%this : Pointer(Void), lib_source :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @source: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
source=Gio::InputStream.new(lib_source, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::OutputStreamSpliceFlags.new(lib_flags)
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

        %retval = %instance.as(self).{{ impl_method_name.id }}(source, flags, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_splice_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # splice_async: (None)
    # @source:
    # @flags:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_splice_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_splice_async(%this : Pointer(Void), lib_source :  Pointer(Void), lib_flags :  UInt32, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @source: 
# @flags: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_source, lib_flags, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_splice_async = Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_splice_async(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_splice_async : Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # splice_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_splice_finish_vfunc(impl_method_name)
      private def self._vfunc_splice_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Int64
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_splice_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # splice_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_splice_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_splice_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Int64
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_splice_finish = Proc(Pointer(Void), Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_splice_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_splice_finish : Proc(Pointer(Void), Pointer(Void), Int64)? = nil
    end

    # write_async: (None)
    # @buffer: (nullable) (array length=count element-type UInt8)
    # @count:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_write_async_vfunc(impl_method_name)
      private def self._vfunc_write_async(%this : Pointer(Void), lib_buffer :  Pointer(UInt8), lib_count :  UInt64, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @buffer: (nullable) (array length=count element-type UInt8)
# @count: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::ArrayLengthArgPlan
# Generator::NullableArrayPlan
buffer=(lib_buffer.null? ? nil : GICrystal.transfer_array(lib_buffer, count,GICrystal::Transfer::None))
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

        %retval = %instance.as(self).{{ impl_method_name.id }}(buffer, count, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write_async(Pointer(Void), Pointer(UInt8), UInt64, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # write_async: (None)
    # @buffer: (nullable) (array length=count element-type UInt8)
    # @count:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_write_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write_async(%this : Pointer(Void), lib_buffer :  Pointer(UInt8), lib_count :  UInt64, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @buffer: (nullable) (array length=count element-type UInt8)
# @count: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_buffer, lib_count, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write_async = Proc(Pointer(Void), Pointer(UInt8), UInt64, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write_async(Pointer(Void), Pointer(UInt8), UInt64, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write_async : Proc(Pointer(Void), Pointer(UInt8), UInt64, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # write_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_write_finish_vfunc(impl_method_name)
      private def self._vfunc_write_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Int64
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # write_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_write_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Int64
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write_finish = Proc(Pointer(Void), Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write_finish : Proc(Pointer(Void), Pointer(Void), Int64)? = nil
    end

    # write_fn: (Throws)
    # @buffer: (nullable) (array length=count element-type UInt8)
    # @count:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_write_fn_vfunc(impl_method_name)
      private def self._vfunc_write_fn(%this : Pointer(Void), lib_buffer :  Pointer(UInt8), lib_count :  UInt64, lib_cancellable :  Pointer(Void), ) : Int64
        # @buffer: (nullable) (array length=count element-type UInt8)
# @count: 
# @cancellable: (nullable) 

# Generator::ArrayLengthArgPlan
# Generator::NullableArrayPlan
buffer=(lib_buffer.null? ? nil : GICrystal.transfer_array(lib_buffer, count,GICrystal::Transfer::None))
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(buffer, count, cancellable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_write_fn(Pointer(Void), Pointer(UInt8), UInt64, Pointer(Void))).pointer
        previous_def
      end
    end

    # write_fn: (Throws)
    # @buffer: (nullable) (array length=count element-type UInt8)
    # @count:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_write_fn_vfunc(impl_method_name)
      private def self._vfunc_unsafe_write_fn(%this : Pointer(Void), lib_buffer :  Pointer(UInt8), lib_count :  UInt64, lib_cancellable :  Pointer(Void), ) : Int64
# @buffer: (nullable) (array length=count element-type UInt8)
# @count: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_buffer, lib_count, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_write_fn = Proc(Pointer(Void), Pointer(UInt8), UInt64, Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_write_fn(Pointer(Void), Pointer(UInt8), UInt64, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_write_fn : Proc(Pointer(Void), Pointer(UInt8), UInt64, Pointer(Void), Int64)? = nil
    end

    # writev_async: (None)
    # @vectors: (array length=n_vectors element-type Interface)
    # @n_vectors:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_writev_async_vfunc(impl_method_name)
      private def self._vfunc_writev_async(%this : Pointer(Void), lib_vectors :  Pointer(LibGio::OutputVector), lib_n_vectors :  UInt64, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @vectors: (array length=n_vectors element-type Interface)
# @n_vectors: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_vectors = lib_vectors.as(Pointer(Pointer(Void)))
vectors= Array(Gio::OutputVector).new(lib_n_vectors) do |_i|
Gio::OutputVector.new((lib_vectors + _i).value, GICrystal::Transfer::None)
end
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

        %retval = %instance.as(self).{{ impl_method_name.id }}(vectors, n_vectors, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_writev_async(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # writev_async: (None)
    # @vectors: (array length=n_vectors element-type Interface)
    # @n_vectors:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_writev_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_writev_async(%this : Pointer(Void), lib_vectors :  Pointer(LibGio::OutputVector), lib_n_vectors :  UInt64, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @vectors: (array length=n_vectors element-type Interface)
# @n_vectors: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_vectors, lib_n_vectors, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_writev_async = Proc(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_writev_async(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_writev_async : Proc(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # writev_finish: (Throws)
    # @result:
    # @bytes_written: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_writev_finish_vfunc(impl_method_name)
      private def self._vfunc_writev_finish(%this : Pointer(Void), lib_result :  Pointer(Void), lib_bytes_written :  UInt64, ) : LibC::Int
        # @result: 
# @bytes_written: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result, bytes_written)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_writev_finish(Pointer(Void), Pointer(Void), UInt64)).pointer
        previous_def
      end
    end

    # writev_finish: (Throws)
    # @result:
    # @bytes_written: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_writev_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_writev_finish(%this : Pointer(Void), lib_result :  Pointer(Void), lib_bytes_written :  UInt64, ) : LibC::Int
# @result: 
# @bytes_written: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result, lib_bytes_written)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_writev_finish = Proc(Pointer(Void), Pointer(Void), UInt64, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_writev_finish(Pointer(Void), Pointer(Void), UInt64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_writev_finish : Proc(Pointer(Void), Pointer(Void), UInt64, LibC::Int)? = nil
    end

    # writev_fn: (Throws)
    # @vectors: (array length=n_vectors element-type Interface)
    # @n_vectors:
    # @bytes_written: (out) (transfer full) (optional)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_writev_fn_vfunc(impl_method_name)
      private def self._vfunc_writev_fn(%this : Pointer(Void), lib_vectors :  Pointer(LibGio::OutputVector), lib_n_vectors :  UInt64, lib_bytes_written :  UInt64, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @vectors: (array length=n_vectors element-type Interface)
# @n_vectors: 
# @bytes_written: (out) (transfer full) (optional) 
# @cancellable: (nullable) 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_vectors = lib_vectors.as(Pointer(Pointer(Void)))
vectors= Array(Gio::OutputVector).new(lib_n_vectors) do |_i|
Gio::OutputVector.new((lib_vectors + _i).value, GICrystal::Transfer::None)
end
# Generator::OutArgUsedInReturnPlan
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(vectors, n_vectors, bytes_written, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_writev_fn(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64, Pointer(Void))).pointer
        previous_def
      end
    end

    # writev_fn: (Throws)
    # @vectors: (array length=n_vectors element-type Interface)
    # @n_vectors:
    # @bytes_written: (out) (transfer full) (optional)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_writev_fn_vfunc(impl_method_name)
      private def self._vfunc_unsafe_writev_fn(%this : Pointer(Void), lib_vectors :  Pointer(LibGio::OutputVector), lib_n_vectors :  UInt64, lib_bytes_written :  UInt64, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @vectors: (array length=n_vectors element-type Interface)
# @n_vectors: 
# @bytes_written: (out) (transfer full) (optional) 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_vectors, lib_n_vectors, lib_bytes_written, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_writev_fn = Proc(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_writev_fn(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_writev_fn : Proc(Pointer(Void), Pointer(LibGio::OutputVector), UInt64, UInt64, Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
