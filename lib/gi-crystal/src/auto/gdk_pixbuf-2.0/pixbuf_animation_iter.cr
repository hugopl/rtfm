require "../g_object-2.0/object"

module GdkPixbuf
  @[GICrystal::GeneratedWrapper]
  class PixbufAnimationIter < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdkPixbuf::PixbufAnimationIterClass), class_init,
        sizeof(LibGdkPixbuf::PixbufAnimationIter), instance_init, 0)
    end

    GICrystal.declare_new_method(PixbufAnimationIter, g_object_get_qdata)

    # Initialize a new `PixbufAnimationIter`.
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
      @@g_type ||= LibGdkPixbuf.gdk_pixbuf_animation_iter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GdkPixbuf::PixbufAnimationIter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def advance(current_time : GLib::TimeVal?) : Bool
      # gdk_pixbuf_animation_iter_advance: (Method)
      # @current_time: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      current_time = if current_time.nil?
                       Pointer(Void).null
                     else
                       current_time.to_unsafe
                     end

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_iter_advance(to_unsafe, current_time)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def delay_time : Int32
      # gdk_pixbuf_animation_iter_get_delay_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_iter_get_delay_time(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def pixbuf : GdkPixbuf::Pixbuf
      # gdk_pixbuf_animation_iter_get_pixbuf: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_iter_get_pixbuf(to_unsafe)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def on_currently_loading_frame : Bool
      # gdk_pixbuf_animation_iter_on_currently_loading_frame: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_animation_iter_on_currently_loading_frame(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # advance: (None)
    # @current_time: (nullable)
    # Returns: (transfer none)
    private macro _register_advance_vfunc(impl_method_name)
      private def self._vfunc_advance(%this : Pointer(Void), lib_current_time :  Pointer(Void), ) : LibC::Int
        # @current_time: (nullable) 

# Generator::NullableArrayPlan
current_time=(lib_current_time.null? ? nil : GLib::TimeVal.new(lib_current_time, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
current_time=GLib::TimeVal.new(lib_current_time, GICrystal::Transfer::None) unless lib_current_time.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(current_time)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_advance(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # advance: (None)
    # @current_time: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_advance_vfunc(impl_method_name)
      private def self._vfunc_unsafe_advance(%this : Pointer(Void), lib_current_time :  Pointer(Void), ) : LibC::Int
# @current_time: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_current_time)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_advance = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_advance(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_advance : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # get_delay_time: (None)
    # Returns: (transfer none)
    private macro _register_get_delay_time_vfunc(impl_method_name)
      private def self._vfunc_get_delay_time(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_delay_time(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_delay_time: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_delay_time_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_delay_time(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_delay_time = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_delay_time(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_delay_time : Proc(Pointer(Void), Int32)? = nil
    end

    # get_pixbuf: (None)
    # Returns: (transfer none)
    private macro _register_get_pixbuf_vfunc(impl_method_name)
      private def self._vfunc_get_pixbuf(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_pixbuf(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_pixbuf: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_pixbuf_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_pixbuf(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_pixbuf = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_pixbuf(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_pixbuf : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # on_currently_loading_frame: (None)
    # Returns: (transfer none)
    private macro _register_on_currently_loading_frame_vfunc(impl_method_name)
      private def self._vfunc_on_currently_loading_frame(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_on_currently_loading_frame(Pointer(Void))).pointer
        previous_def
      end
    end

    # on_currently_loading_frame: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_on_currently_loading_frame_vfunc(impl_method_name)
      private def self._vfunc_unsafe_on_currently_loading_frame(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_on_currently_loading_frame = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_on_currently_loading_frame(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_on_currently_loading_frame : Proc(Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
