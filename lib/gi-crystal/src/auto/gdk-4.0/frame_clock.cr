require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class FrameClock < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::FrameClockClass), class_init,
        sizeof(LibGdk::FrameClock), instance_init, 0)
    end

    GICrystal.declare_new_method(FrameClock, g_object_get_qdata)

    # Initialize a new `FrameClock`.
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
      @@g_type ||= LibGdk.gdk_frame_clock_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::FrameClock.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def begin_updating : Nil
      # gdk_frame_clock_begin_updating: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_frame_clock_begin_updating(to_unsafe)

      # Return value handling
    end

    def end_updating : Nil
      # gdk_frame_clock_end_updating: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_frame_clock_end_updating(to_unsafe)

      # Return value handling
    end

    def current_timings : Gdk::FrameTimings?
      # gdk_frame_clock_get_current_timings: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_frame_clock_get_current_timings(to_unsafe)

      # Return value handling
      Gdk::FrameTimings.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def fps : Float64
      # gdk_frame_clock_get_fps: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_clock_get_fps(to_unsafe)

      # Return value handling
      _retval
    end

    def frame_counter : Int64
      # gdk_frame_clock_get_frame_counter: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_clock_get_frame_counter(to_unsafe)

      # Return value handling
      _retval
    end

    def frame_time : Int64
      # gdk_frame_clock_get_frame_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_clock_get_frame_time(to_unsafe)

      # Return value handling
      _retval
    end

    def history_start : Int64
      # gdk_frame_clock_get_history_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_clock_get_history_start(to_unsafe)

      # Return value handling
      _retval
    end

    def refresh_info(base_time : Int64, presentation_time_return : Int64) : Nil
      # gdk_frame_clock_get_refresh_info: (Method)
      # @base_time:
      # @refresh_interval_return: (out) (transfer full) (optional)
      # @presentation_time_return: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      refresh_interval_return = Pointer(Int64).null
      # C call
      LibGdk.gdk_frame_clock_get_refresh_info(to_unsafe, base_time, refresh_interval_return, presentation_time_return)

      # Return value handling
    end

    def timings(frame_counter : Int64) : Gdk::FrameTimings?
      # gdk_frame_clock_get_timings: (Method)
      # @frame_counter:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_frame_clock_get_timings(to_unsafe, frame_counter)

      # Return value handling
      Gdk::FrameTimings.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def request_phase(phase : Gdk::FrameClockPhase) : Nil
      # gdk_frame_clock_request_phase: (Method)
      # @phase:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_frame_clock_request_phase(to_unsafe, phase)

      # Return value handling
    end

    struct AfterPaintSignal < GObject::Signal
      def name : String
        @detail ? "after-paint::#{@detail}" : "after-paint"
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

      def connect(handler : Proc(Gdk::FrameClock, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::FrameClock.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::FrameClock, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "after-paint")
      end
    end

    def after_paint_signal
      AfterPaintSignal.new(self)
    end

    struct BeforePaintSignal < GObject::Signal
      def name : String
        @detail ? "before-paint::#{@detail}" : "before-paint"
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

      def connect(handler : Proc(Gdk::FrameClock, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::FrameClock.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::FrameClock, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "before-paint")
      end
    end

    def before_paint_signal
      BeforePaintSignal.new(self)
    end

    struct FlushEventsSignal < GObject::Signal
      def name : String
        @detail ? "flush-events::#{@detail}" : "flush-events"
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

      def connect(handler : Proc(Gdk::FrameClock, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::FrameClock.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::FrameClock, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "flush-events")
      end
    end

    def flush_events_signal
      FlushEventsSignal.new(self)
    end

    struct LayoutSignal < GObject::Signal
      def name : String
        @detail ? "layout::#{@detail}" : "layout"
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

      def connect(handler : Proc(Gdk::FrameClock, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::FrameClock.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::FrameClock, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "layout")
      end
    end

    def layout_signal
      LayoutSignal.new(self)
    end

    struct PaintSignal < GObject::Signal
      def name : String
        @detail ? "paint::#{@detail}" : "paint"
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

      def connect(handler : Proc(Gdk::FrameClock, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::FrameClock.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::FrameClock, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "paint")
      end
    end

    def paint_signal
      PaintSignal.new(self)
    end

    struct ResumeEventsSignal < GObject::Signal
      def name : String
        @detail ? "resume-events::#{@detail}" : "resume-events"
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

      def connect(handler : Proc(Gdk::FrameClock, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::FrameClock.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::FrameClock, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "resume-events")
      end
    end

    def resume_events_signal
      ResumeEventsSignal.new(self)
    end

    struct UpdateSignal < GObject::Signal
      def name : String
        @detail ? "update::#{@detail}" : "update"
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

      def connect(handler : Proc(Gdk::FrameClock, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::FrameClock.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::FrameClock, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "update")
      end
    end

    def update_signal
      UpdateSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
