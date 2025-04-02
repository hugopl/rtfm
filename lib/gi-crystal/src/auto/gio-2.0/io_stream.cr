require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class IOStream < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::IOStreamClass), class_init,
        sizeof(LibGio::IOStream), instance_init, 0)
    end

    GICrystal.declare_new_method(IOStream, g_object_get_qdata)

    # Initialize a new `IOStream`.
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

    def initialize(*, closed : Bool? = nil, input_stream : Gio::InputStream? = nil, output_stream : Gio::OutputStream? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !closed.nil?
        (_names.to_unsafe + _n).value = "closed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, closed)
        _n += 1
      end
      if !input_stream.nil?
        (_names.to_unsafe + _n).value = "input-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_stream)
        _n += 1
      end
      if !output_stream.nil?
        (_names.to_unsafe + _n).value = "output-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, output_stream)
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
      @@g_type ||= LibGio.g_io_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::IOStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def closed? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "closed", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def input_stream : Gio::InputStream?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "input-stream", pointerof(value), Pointer(Void).null)
      Gio::InputStream.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def output_stream : Gio::OutputStream?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "output-stream", pointerof(value), Pointer(Void).null)
      Gio::OutputStream.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def splice_finish(result : Gio::AsyncResult) : Bool
      # g_io_stream_splice_finish: (Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_io_stream_splice_finish(result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def clear_pending : Nil
      # g_io_stream_clear_pending: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_io_stream_clear_pending(to_unsafe)

      # Return value handling
    end

    def close(cancellable : Gio::Cancellable?) : Bool
      # g_io_stream_close: (Method | Throws)
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
      _retval = LibGio.g_io_stream_close(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def close_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_io_stream_close_async: (Method)
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
      LibGio.g_io_stream_close_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def close_finish(result : Gio::AsyncResult) : Bool
      # g_io_stream_close_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_io_stream_close_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def input_stream : Gio::InputStream
      # g_io_stream_get_input_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_stream_get_input_stream(to_unsafe)

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::None)
    end

    def output_stream : Gio::OutputStream
      # g_io_stream_get_output_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_stream_get_output_stream(to_unsafe)

      # Return value handling
      Gio::OutputStream.new(_retval, GICrystal::Transfer::None)
    end

    def has_pending : Bool
      # g_io_stream_has_pending: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_stream_has_pending(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_closed? : Bool
      # g_io_stream_is_closed: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_stream_is_closed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_pending : Bool
      # g_io_stream_set_pending: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_io_stream_set_pending(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def splice_async(stream2 : Gio::IOStream, flags : Gio::IOStreamSpliceFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_io_stream_splice_async: (Method)
      # @stream2:
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
      LibGio.g_io_stream_splice_async(to_unsafe, stream2, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close_fn = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close_fn(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close_fn : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # get_input_stream: (None)
    # Returns: (transfer none)
    private macro _register_get_input_stream_vfunc(impl_method_name)
      private def self._vfunc_get_input_stream(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_input_stream(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_input_stream: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_input_stream_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_input_stream(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_input_stream = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_input_stream(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_input_stream : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_output_stream: (None)
    # Returns: (transfer none)
    private macro _register_get_output_stream_vfunc(impl_method_name)
      private def self._vfunc_get_output_stream(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_output_stream(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_output_stream: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_output_stream_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_output_stream(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_output_stream = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_output_stream(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_output_stream : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
