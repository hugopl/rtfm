require "../g_object-2.0/object"

module GdkPixbuf
  @[GICrystal::GeneratedWrapper]
  class PixbufLoader < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdkPixbuf::PixbufLoaderClass), class_init,
        sizeof(LibGdkPixbuf::PixbufLoader), instance_init, 0)
    end

    GICrystal.declare_new_method(PixbufLoader, g_object_get_qdata)

    # Initialize a new `PixbufLoader`.
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
      @@g_type ||= LibGdkPixbuf.gdk_pixbuf_loader_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GdkPixbuf::PixbufLoader.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gdk_pixbuf_loader_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_new

      # Return value handling
      GdkPixbuf::PixbufLoader.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_mime_type(mime_type : ::String) : self
      # gdk_pixbuf_loader_new_with_mime_type: (Constructor | Throws)
      # @mime_type:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_new_with_mime_type(mime_type, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::PixbufLoader.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_type(image_type : ::String) : self
      # gdk_pixbuf_loader_new_with_type: (Constructor | Throws)
      # @image_type:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_new_with_type(image_type, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GdkPixbuf::PixbufLoader.new(_retval, GICrystal::Transfer::Full)
    end

    def close : Bool
      # gdk_pixbuf_loader_close: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_close(to_unsafe, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def animation : GdkPixbuf::PixbufAnimation?
      # gdk_pixbuf_loader_get_animation: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_get_animation(to_unsafe)

      # Return value handling
      GdkPixbuf::PixbufAnimation.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def format : GdkPixbuf::PixbufFormat?
      # gdk_pixbuf_loader_get_format: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_get_format(to_unsafe)

      # Return value handling
      GdkPixbuf::PixbufFormat.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def pixbuf : GdkPixbuf::Pixbuf?
      # gdk_pixbuf_loader_get_pixbuf: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_get_pixbuf(to_unsafe)

      # Return value handling
      GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def set_size(width : Int32, height : Int32) : Nil
      # gdk_pixbuf_loader_set_size: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_loader_set_size(to_unsafe, width, height)

      # Return value handling
    end

    def write(buf : ::Bytes) : Bool
      # gdk_pixbuf_loader_write: (Method | Throws)
      # @buf: (array length=count element-type UInt8)
      # @count:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayLengthArgPlan
      count = buf.size
      # Generator::ArrayArgPlan
      buf = buf.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_write(to_unsafe, buf, count, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def write(*buf : UInt8)
      write(buf)
    end

    def write_bytes(buffer : GLib::Bytes) : Bool
      # gdk_pixbuf_loader_write_bytes: (Method | Throws)
      # @buffer:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_loader_write_bytes(to_unsafe, buffer, pointerof(_error))

      # Error check
      GdkPixbuf.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct AreaPreparedSignal < GObject::Signal
      def name : String
        @detail ? "area-prepared::#{@detail}" : "area-prepared"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(GdkPixbuf::PixbufLoader, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = GdkPixbuf::PixbufLoader.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(GdkPixbuf::PixbufLoader, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "area-prepared")
      end
    end

    def area_prepared_signal
      AreaPreparedSignal.new(self)
    end

    struct AreaUpdatedSignal < GObject::Signal
      def name : String
        @detail ? "area-updated::#{@detail}" : "area-updated"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Int32, Int32, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Int32, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Int32, lib_y : Int32, lib_width : Int32, lib_height : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          # NoStrategy
          width = lib_width
          # NoStrategy
          height = lib_height
          ::Box(Proc(Int32, Int32, Int32, Int32, Nil)).unbox(_lib_box).call(x, y, width, height)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(GdkPixbuf::PixbufLoader, Int32, Int32, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Int32, lib_y : Int32, lib_width : Int32, lib_height : Int32, _lib_box : Pointer(Void)) {
          _sender = GdkPixbuf::PixbufLoader.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          # NoStrategy
          width = lib_width
          # NoStrategy
          height = lib_height
          ::Box(Proc(GdkPixbuf::PixbufLoader, Int32, Int32, Int32, Int32, Nil)).unbox(_lib_box).call(_sender, x, y, width, height)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Int32, y : Int32, width : Int32, height : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "area-updated", x, y, width, height)
      end
    end

    def area_updated_signal
      AreaUpdatedSignal.new(self)
    end

    struct ClosedSignal < GObject::Signal
      def name : String
        @detail ? "closed::#{@detail}" : "closed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(GdkPixbuf::PixbufLoader, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = GdkPixbuf::PixbufLoader.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(GdkPixbuf::PixbufLoader, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "closed")
      end
    end

    def closed_signal
      ClosedSignal.new(self)
    end

    struct SizePreparedSignal < GObject::Signal
      def name : String
        @detail ? "size-prepared::#{@detail}" : "size-prepared"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_width : Int32, lib_height : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          width = lib_width
          # NoStrategy
          height = lib_height
          ::Box(Proc(Int32, Int32, Nil)).unbox(_lib_box).call(width, height)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(GdkPixbuf::PixbufLoader, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_width : Int32, lib_height : Int32, _lib_box : Pointer(Void)) {
          _sender = GdkPixbuf::PixbufLoader.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          width = lib_width
          # NoStrategy
          height = lib_height
          ::Box(Proc(GdkPixbuf::PixbufLoader, Int32, Int32, Nil)).unbox(_lib_box).call(_sender, width, height)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(width : Int32, height : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "size-prepared", width, height)
      end
    end

    def size_prepared_signal
      SizePreparedSignal.new(self)
    end

    # area_prepared: (None)
    # Returns: (transfer none)
    private macro _register_area_prepared_vfunc(impl_method_name)
      private def self._vfunc_area_prepared(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_area_prepared(Pointer(Void))).pointer
        previous_def
      end
    end

    # area_prepared: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_area_prepared_vfunc(impl_method_name)
      private def self._vfunc_unsafe_area_prepared(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_area_prepared = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_area_prepared(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_area_prepared : Proc(Pointer(Void), Void)? = nil
    end

    # area_updated: (None)
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_area_updated_vfunc(impl_method_name)
      private def self._vfunc_area_updated(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
        # @x: 
# @y: 
# @width: 
# @height: 

x=lib_x
y=lib_y
width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(x, y, width, height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_area_updated(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # area_updated: (None)
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_area_updated_vfunc(impl_method_name)
      private def self._vfunc_unsafe_area_updated(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : Void
# @x: 
# @y: 
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_x, lib_y, lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_area_updated = Proc(Pointer(Void), Int32, Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_area_updated(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_area_updated : Proc(Pointer(Void), Int32, Int32, Int32, Int32, Void)? = nil
    end

    # closed: (None)
    # Returns: (transfer none)
    private macro _register_closed_vfunc(impl_method_name)
      private def self._vfunc_closed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_closed(Pointer(Void))).pointer
        previous_def
      end
    end

    # closed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_closed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_closed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_closed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_closed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_closed : Proc(Pointer(Void), Void)? = nil
    end

    # size_prepared: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_size_prepared_vfunc(impl_method_name)
      private def self._vfunc_size_prepared(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, ) : Void
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_size_prepared(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # size_prepared: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_size_prepared_vfunc(impl_method_name)
      private def self._vfunc_unsafe_size_prepared(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, ) : Void
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_size_prepared = Proc(Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_size_prepared(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_size_prepared : Proc(Pointer(Void), Int32, Int32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
