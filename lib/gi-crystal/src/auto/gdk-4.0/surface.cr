require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Surface < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::SurfaceClass), class_init,
        sizeof(LibGdk::Surface), instance_init, 0)
    end

    GICrystal.declare_new_method(Surface, g_object_get_qdata)

    # Initialize a new `Surface`.
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

    def initialize(*, cursor : Gdk::Cursor? = nil, display : Gdk::Display? = nil, frame_clock : Gdk::FrameClock? = nil, height : Int32? = nil, mapped : Bool? = nil, scale : Float64? = nil, scale_factor : Int32? = nil, width : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !cursor.nil?
        (_names.to_unsafe + _n).value = "cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !frame_clock.nil?
        (_names.to_unsafe + _n).value = "frame-clock".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, frame_clock)
        _n += 1
      end
      if !height.nil?
        (_names.to_unsafe + _n).value = "height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height)
        _n += 1
      end
      if !mapped.nil?
        (_names.to_unsafe + _n).value = "mapped".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mapped)
        _n += 1
      end
      if !scale.nil?
        (_names.to_unsafe + _n).value = "scale".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !width.nil?
        (_names.to_unsafe + _n).value = "width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width)
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
      @@g_type ||= LibGdk.gdk_surface_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Surface.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def cursor=(value : Gdk::Cursor?) : Gdk::Cursor?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "cursor", unsafe_value, Pointer(Void).null)
      value
    end

    def cursor : Gdk::Cursor?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "cursor", pointerof(value), Pointer(Void).null)
      Gdk::Cursor.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def frame_clock=(value : Gdk::FrameClock?) : Gdk::FrameClock?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "frame-clock", unsafe_value, Pointer(Void).null)
      value
    end

    def frame_clock : Gdk::FrameClock?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "frame-clock", pointerof(value), Pointer(Void).null)
      Gdk::FrameClock.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "height", pointerof(value), Pointer(Void).null)
      value
    end

    def mapped? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "mapped", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def scale : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "scale", pointerof(value), Pointer(Void).null)
      value
    end

    def scale_factor : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "scale-factor", pointerof(value), Pointer(Void).null)
      value
    end

    def width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new_popup(parent : Gdk::Surface, autohide : Bool) : self
      # gdk_surface_new_popup: (Constructor)
      # @parent:
      # @autohide:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_surface_new_popup(parent, autohide)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_toplevel(display : Gdk::Display) : self
      # gdk_surface_new_toplevel: (Constructor)
      # @display:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_surface_new_toplevel(display)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::Full)
    end

    def beep : Nil
      # gdk_surface_beep: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_surface_beep(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def create_cairo_context : Gdk::CairoContext
      # gdk_surface_create_cairo_context: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_surface_create_cairo_context(to_unsafe)

      # Return value handling
      Gdk::CairoContext.new(_retval, GICrystal::Transfer::Full)
    end

    def create_gl_context : Gdk::GLContext
      # gdk_surface_create_gl_context: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_surface_create_gl_context(to_unsafe, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::GLContext.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def create_similar_surface(content : Cairo::Content, width : Int32, height : Int32) : Cairo::Surface
      # gdk_surface_create_similar_surface: (Method)
      # @content:
      # @width:
      # @height:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_surface_create_similar_surface(to_unsafe, content, width, height)

      # Return value handling
      Cairo::Surface.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def create_vulkan_context : Gdk::VulkanContext
      # gdk_surface_create_vulkan_context: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_surface_create_vulkan_context(to_unsafe, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::VulkanContext.new(_retval, GICrystal::Transfer::Full)
    end

    def destroy : Nil
      # gdk_surface_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_surface_destroy(to_unsafe)

      # Return value handling
    end

    def cursor : Gdk::Cursor?
      # gdk_surface_get_cursor: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_surface_get_cursor(to_unsafe)

      # Return value handling
      Gdk::Cursor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def device_cursor(device : Gdk::Device) : Gdk::Cursor?
      # gdk_surface_get_device_cursor: (Method)
      # @device:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_surface_get_device_cursor(to_unsafe, device)

      # Return value handling
      Gdk::Cursor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def device_position(device : Gdk::Device) : Bool
      # gdk_surface_get_device_position: (Method)
      # @device:
      # @x: (out) (transfer full) (optional)
      # @y: (out) (transfer full) (optional)
      # @mask: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      y = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      mask = Pointer(UInt32).null
      # C call
      _retval = LibGdk.gdk_surface_get_device_position(to_unsafe, device, x, y, mask)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def display : Gdk::Display
      # gdk_surface_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def frame_clock : Gdk::FrameClock
      # gdk_surface_get_frame_clock: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_get_frame_clock(to_unsafe)

      # Return value handling
      Gdk::FrameClock.new(_retval, GICrystal::Transfer::None)
    end

    def height : Int32
      # gdk_surface_get_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def mapped : Bool
      # gdk_surface_get_mapped: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_get_mapped(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def scale : Float64
      # gdk_surface_get_scale: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_get_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def scale_factor : Int32
      # gdk_surface_get_scale_factor: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_get_scale_factor(to_unsafe)

      # Return value handling
      _retval
    end

    def width : Int32
      # gdk_surface_get_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def hide : Nil
      # gdk_surface_hide: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_surface_hide(to_unsafe)

      # Return value handling
    end

    def is_destroyed : Bool
      # gdk_surface_is_destroyed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_is_destroyed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def queue_render : Nil
      # gdk_surface_queue_render: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_surface_queue_render(to_unsafe)

      # Return value handling
    end

    def request_layout : Nil
      # gdk_surface_request_layout: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_surface_request_layout(to_unsafe)

      # Return value handling
    end

    def cursor=(cursor : Gdk::Cursor?) : Nil
      # gdk_surface_set_cursor: (Method | Setter)
      # @cursor: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cursor = if cursor.nil?
                 Pointer(Void).null
               else
                 cursor.to_unsafe
               end

      # C call
      LibGdk.gdk_surface_set_cursor(to_unsafe, cursor)

      # Return value handling
    end

    def set_device_cursor(device : Gdk::Device, cursor : Gdk::Cursor) : Nil
      # gdk_surface_set_device_cursor: (Method)
      # @device:
      # @cursor:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_surface_set_device_cursor(to_unsafe, device, cursor)

      # Return value handling
    end

    def input_region=(region : Cairo::Region) : Nil
      # gdk_surface_set_input_region: (Method)
      # @region:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_surface_set_input_region(to_unsafe, region)

      # Return value handling
    end

    @[Deprecated]
    def opaque_region=(region : Cairo::Region?) : Nil
      # gdk_surface_set_opaque_region: (Method)
      # @region: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      region = if region.nil?
                 Pointer(Void).null
               else
                 region.to_unsafe
               end

      # C call
      LibGdk.gdk_surface_set_opaque_region(to_unsafe, region)

      # Return value handling
    end

    def translate_coordinates(to : Gdk::Surface, x : Float64, y : Float64) : Bool
      # gdk_surface_translate_coordinates: (Method)
      # @to:
      # @x: (inout) (transfer full)
      # @y: (inout) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_surface_translate_coordinates(to_unsafe, to, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct EnterMonitorSignal < GObject::Signal
      def name : String
        @detail ? "enter-monitor::#{@detail}" : "enter-monitor"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Monitor, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Monitor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_monitor : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          monitor = Gdk::Monitor.new(lib_monitor, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Monitor, Nil)).unbox(_lib_box).call(monitor)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Surface, Gdk::Monitor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_monitor : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Surface.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          monitor = Gdk::Monitor.new(lib_monitor, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Surface, Gdk::Monitor, Nil)).unbox(_lib_box).call(_sender, monitor)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(monitor : Gdk::Monitor) : Nil
        LibGObject.g_signal_emit_by_name(@source, "enter-monitor", monitor)
      end
    end

    def enter_monitor_signal
      EnterMonitorSignal.new(self)
    end

    struct EventSignal < GObject::Signal
      def name : String
        @detail ? "event::#{@detail}" : "event"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Event, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Event, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          event = Gdk::Event.new(lib_event, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Event, Bool)).unbox(_lib_box).call(event)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Surface, Gdk::Event, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Surface.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          event = Gdk::Event.new(lib_event, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Surface, Gdk::Event, Bool)).unbox(_lib_box).call(_sender, event)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(event : Gdk::Event) : Nil
        LibGObject.g_signal_emit_by_name(@source, "event", event)
      end
    end

    def event_signal
      EventSignal.new(self)
    end

    struct LayoutSignal < GObject::Signal
      def name : String
        @detail ? "layout::#{@detail}" : "layout"
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

      def connect(handler : Proc(Gdk::Surface, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_width : Int32, lib_height : Int32, _lib_box : Pointer(Void)) {
          _sender = Gdk::Surface.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          width = lib_width
          # NoStrategy
          height = lib_height
          ::Box(Proc(Gdk::Surface, Int32, Int32, Nil)).unbox(_lib_box).call(_sender, width, height)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(width : Int32, height : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "layout", width, height)
      end
    end

    def layout_signal
      LayoutSignal.new(self)
    end

    struct LeaveMonitorSignal < GObject::Signal
      def name : String
        @detail ? "leave-monitor::#{@detail}" : "leave-monitor"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Monitor, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Monitor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_monitor : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          monitor = Gdk::Monitor.new(lib_monitor, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Monitor, Nil)).unbox(_lib_box).call(monitor)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Surface, Gdk::Monitor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_monitor : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Surface.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          monitor = Gdk::Monitor.new(lib_monitor, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Surface, Gdk::Monitor, Nil)).unbox(_lib_box).call(_sender, monitor)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(monitor : Gdk::Monitor) : Nil
        LibGObject.g_signal_emit_by_name(@source, "leave-monitor", monitor)
      end
    end

    def leave_monitor_signal
      LeaveMonitorSignal.new(self)
    end

    struct RenderSignal < GObject::Signal
      def name : String
        @detail ? "render::#{@detail}" : "render"
      end

      def connect(*, after : Bool = false, &block : Proc(Cairo::Region, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Cairo::Region, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_region : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          region = Cairo::Region.new(lib_region, GICrystal::Transfer::None)
          ::Box(Proc(Cairo::Region, Bool)).unbox(_lib_box).call(region)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Surface, Cairo::Region, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_region : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Surface.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          region = Cairo::Region.new(lib_region, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Surface, Cairo::Region, Bool)).unbox(_lib_box).call(_sender, region)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(region : Cairo::Region) : Nil
        LibGObject.g_signal_emit_by_name(@source, "render", region)
      end
    end

    def render_signal
      RenderSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
