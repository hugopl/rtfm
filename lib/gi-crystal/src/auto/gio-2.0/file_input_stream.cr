require "./input_stream"
require "./seekable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class FileInputStream < InputStream
    include Seekable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::FileInputStreamClass), class_init,
        sizeof(LibGio::FileInputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(FileInputStream, g_object_get_qdata)

    # Initialize a new `FileInputStream`.
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
      @@g_type ||= LibGio.g_file_input_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::FileInputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def query_info(attributes : ::String, cancellable : Gio::Cancellable?) : Gio::FileInfo
      # g_file_input_stream_query_info: (Method | Throws)
      # @attributes:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_file_input_stream_query_info(to_unsafe, attributes, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def query_info_async(attributes : ::String, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_file_input_stream_query_info_async: (Method)
      # @attributes:
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
      LibGio.g_file_input_stream_query_info_async(to_unsafe, attributes, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def query_info_finish(result : Gio::AsyncResult) : Gio::FileInfo
      # g_file_input_stream_query_info_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_file_input_stream_query_info_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::Full)
    end

    # can_seek: (None)
    # Returns: (transfer none)
    private macro _register_can_seek_vfunc(impl_method_name)
      private def self._vfunc_can_seek(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_seek(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_seek: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_seek_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_seek(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_seek = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_seek(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_seek : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # query_info: (Throws)
    # @attributes:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_query_info_vfunc(impl_method_name)
      private def self._vfunc_query_info(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @attributes: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_info(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_info: (Throws)
    # @attributes:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_query_info_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_info(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @attributes: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_info = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_info(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_info : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void))? = nil
    end

    # query_info_async: (None)
    # @attributes:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_query_info_async_vfunc(impl_method_name)
      private def self._vfunc_query_info_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @attributes: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
attributes=::String.new(lib_attributes)
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

        %retval = %instance.as(self).{{ impl_method_name.id }}(attributes, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_info_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # query_info_async: (None)
    # @attributes:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_query_info_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_info_async(%this : Pointer(Void), lib_attributes :  Pointer(LibC::Char), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @attributes: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attributes, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_info_async = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_info_async(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_info_async : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # query_info_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_query_info_finish_vfunc(impl_method_name)
      private def self._vfunc_query_info_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_info_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_info_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_query_info_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_info_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_info_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_info_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_info_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # seek: (Throws)
    # @offset:
    # @type:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_seek_vfunc(impl_method_name)
      private def self._vfunc_seek(%this : Pointer(Void), lib_offset :  Int64, lib_type :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @offset: 
# @type: 
# @cancellable: (nullable) 

offset=lib_offset
# Generator::BuiltInTypeArgPlan
type=GLib::SeekType.new(lib_type)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(offset, type, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_seek(Pointer(Void), Int64, UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # seek: (Throws)
    # @offset:
    # @type:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_seek_vfunc(impl_method_name)
      private def self._vfunc_unsafe_seek(%this : Pointer(Void), lib_offset :  Int64, lib_type :  UInt32, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @offset: 
# @type: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_offset, lib_type, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_seek = Proc(Pointer(Void), Int64, UInt32, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_seek(Pointer(Void), Int64, UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_seek : Proc(Pointer(Void), Int64, UInt32, Pointer(Void), LibC::Int)? = nil
    end

    # tell: (None)
    # Returns: (transfer none)
    private macro _register_tell_vfunc(impl_method_name)
      private def self._vfunc_tell(%this : Pointer(Void), ) : Int64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_tell(Pointer(Void))).pointer
        previous_def
      end
    end

    # tell: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_tell_vfunc(impl_method_name)
      private def self._vfunc_unsafe_tell(%this : Pointer(Void), ) : Int64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_tell = Proc(Pointer(Void), Int64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_tell(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_tell : Proc(Pointer(Void), Int64)? = nil
    end

    def_equals_and_hash @pointer
  end
end
