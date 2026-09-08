require "../g_object-2.0/object"

module GdkPixbuf
  @[GICrystal::GeneratedWrapper]
  class PixbufAnimation < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdkPixbuf::PixbufAnimationClass), class_init,
        sizeof(LibGdkPixbuf::PixbufAnimation), instance_init, 0)
    end

    GICrystal.declare_new_method(PixbufAnimation, g_object_get_qdata)

    # Initialize a new `PixbufAnimation`.
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
      @@g_type ||= LibGdkPixbuf.gdk_pixbuf_animation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GdkPixbuf::PixbufAnimation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.new_from_file(filename : ::String) : self?
      # gdk_pixbuf_animation_new_from_file: (Constructor | Throws)
      # @filename:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_new_from_file(filename, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::PixbufAnimation.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def self.new_from_resource(resource_path : ::String) : self?
      # gdk_pixbuf_animation_new_from_resource: (Constructor | Throws)
      # @resource_path:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_new_from_resource(resource_path, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::PixbufAnimation.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def self.new_from_stream(stream : Gio::InputStream, cancellable : Gio::Cancellable?) : self?
      # gdk_pixbuf_animation_new_from_stream: (Constructor | Throws)
      # @stream:
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_new_from_stream(stream, cancellable, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::PixbufAnimation.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def self.new_from_stream_finish(async_result : Gio::AsyncResult) : self?
      # gdk_pixbuf_animation_new_from_stream_finish: (Constructor | Throws)
      # @async_result:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_new_from_stream_finish(async_result, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::PixbufAnimation.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def self.new_from_stream_async(stream : Gio::InputStream, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # gdk_pixbuf_animation_new_from_stream_async: (None)
      # @stream:
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
      LibGdkPixbuf.gdk_pixbuf_animation_new_from_stream_async(stream, cancellable, callback, user_data)

      # Return value handling
    end

    @[Deprecated]
    def height : Int32
      # gdk_pixbuf_animation_get_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def iter(start_time : GLib::TimeVal?) : GdkPixbuf::PixbufAnimationIter
      # gdk_pixbuf_animation_get_iter: (Method)
      # @start_time: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      start_time = if start_time.nil?
                     Pointer(Void).null
                   else
                     start_time.to_unsafe
                   end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_get_iter(to_unsafe, start_time)

      # Return value handling
      GdkPixbuf::PixbufAnimationIter.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def static_image : GdkPixbuf::Pixbuf
      # gdk_pixbuf_animation_get_static_image: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_get_static_image(to_unsafe)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def width : Int32
      # gdk_pixbuf_animation_get_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def is_static_image : Bool
      # gdk_pixbuf_animation_is_static_image: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_is_static_image(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # get_iter: (None)
    # @start_time: (nullable)
    # Returns: (transfer full)
    private macro _register_get_iter_vfunc(impl_method_name)
      private def self._vfunc_get_iter(%this : Pointer(Void), lib_start_time :  Pointer(Void), ) : Pointer(Void)
        # @start_time: (nullable) 

# Generator::NullableArrayPlan
start_time=(lib_start_time.null? ? nil : GLib::TimeVal.new(lib_start_time, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
start_time=GLib::TimeVal.new(lib_start_time, GICrystal::Transfer::None) unless lib_start_time.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start_time)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_iter(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_iter: (None)
    # @start_time: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_get_iter_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_iter(%this : Pointer(Void), lib_start_time :  Pointer(Void), ) : Pointer(Void)
# @start_time: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start_time)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_iter = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_iter(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_iter : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # get_size: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_get_size_vfunc(impl_method_name)
      private def self._vfunc_get_size(%this : Pointer(Void), lib_width :  Pointer(Int32), lib_height :  Pointer(Int32), ) : Void
        # @width: 
# @height: 

width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(width, height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_size(Pointer(Void), Pointer(Int32), Pointer(Int32))).pointer
        previous_def
      end
    end

    # get_size: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_get_size_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_size(%this : Pointer(Void), lib_width :  Pointer(Int32), lib_height :  Pointer(Int32), ) : Void
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_size = Proc(Pointer(Void), Pointer(Int32), Pointer(Int32), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_size(Pointer(Void), Pointer(Int32), Pointer(Int32))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_size : Proc(Pointer(Void), Pointer(Int32), Pointer(Int32), Void)? = nil
    end

    # get_static_image: (None)
    # Returns: (transfer none)
    private macro _register_get_static_image_vfunc(impl_method_name)
      private def self._vfunc_get_static_image(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_static_image(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_static_image: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_static_image_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_static_image(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_static_image = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_static_image(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_static_image : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # is_static_image: (None)
    # Returns: (transfer none)
    private macro _register_is_static_image_vfunc(impl_method_name)
      private def self._vfunc_is_static_image(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_static_image(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_static_image: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_static_image_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_static_image(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_static_image = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_static_image(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_static_image : Proc(Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
