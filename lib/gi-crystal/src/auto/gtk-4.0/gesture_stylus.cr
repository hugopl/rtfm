require "./gesture_single"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GestureStylus < GestureSingle
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GestureStylusClass), class_init,
        sizeof(LibGtk::GestureStylus), instance_init, 0)
    end

    GICrystal.declare_new_method(GestureStylus, g_object_get_qdata)

    # Initialize a new `GestureStylus`.
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

    def initialize(*, button : UInt32? = nil, exclusive : Bool? = nil, n_points : UInt32? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, stylus_only : Bool? = nil, touch_only : Bool? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !button.nil?
        (_names.to_unsafe + _n).value = "button".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, button)
        _n += 1
      end
      if !exclusive.nil?
        (_names.to_unsafe + _n).value = "exclusive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, exclusive)
        _n += 1
      end
      if !n_points.nil?
        (_names.to_unsafe + _n).value = "n-points".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_points)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !propagation_limit.nil?
        (_names.to_unsafe + _n).value = "propagation-limit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, propagation_limit)
        _n += 1
      end
      if !propagation_phase.nil?
        (_names.to_unsafe + _n).value = "propagation-phase".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, propagation_phase)
        _n += 1
      end
      if !stylus_only.nil?
        (_names.to_unsafe + _n).value = "stylus-only".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, stylus_only)
        _n += 1
      end
      if !touch_only.nil?
        (_names.to_unsafe + _n).value = "touch-only".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, touch_only)
        _n += 1
      end
      if !widget.nil?
        (_names.to_unsafe + _n).value = "widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, widget)
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
      @@g_type ||= LibGtk.gtk_gesture_stylus_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GestureStylus.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def stylus_only=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "stylus-only", unsafe_value, Pointer(Void).null)
      value
    end

    def stylus_only? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "stylus-only", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # gtk_gesture_stylus_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_gesture_stylus_new

      # Return value handling
      Gtk::GestureStylus.new(_retval, GICrystal::Transfer::Full)
    end

    def axes(axes : Enumerable(Gdk::AxisUse), values : Enumerable(Float64)) : Bool
      # gtk_gesture_stylus_get_axes: (Method)
      # @axes: (array element-type Interface)
      # @values: (out) (transfer full) (array element-type Double)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      axes = axes.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(UInt32))
      # Generator::ArrayArgPlan
      values = values.to_a.to_unsafe.as(Pointer(Float64))

      # C call
      _retval = LibGtk.gtk_gesture_stylus_get_axes(to_unsafe, axes, values)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def axis(axis : Gdk::AxisUse, value : Float64) : Bool
      # gtk_gesture_stylus_get_axis: (Method)
      # @axis:
      # @value: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_stylus_get_axis(to_unsafe, axis, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backlog(backlog : Enumerable(Gdk::TimeCoord)) : Bool
      # gtk_gesture_stylus_get_backlog: (Method)
      # @backlog: (out) (transfer full) (array length=n_elems element-type Interface)
      # @n_elems: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_elems = backlog.size
      # Generator::ArrayArgPlan
      backlog = backlog.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGdk::TimeCoord))

      # C call
      _retval = LibGtk.gtk_gesture_stylus_get_backlog(to_unsafe, backlog, n_elems)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backlog(*backlog : Gdk::TimeCoord)
      backlog(backlog)
    end

    def device_tool : Gdk::DeviceTool?
      # gtk_gesture_stylus_get_device_tool: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_gesture_stylus_get_device_tool(to_unsafe)

      # Return value handling
      Gdk::DeviceTool.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def stylus_only : Bool
      # gtk_gesture_stylus_get_stylus_only: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_stylus_get_stylus_only(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def stylus_only=(stylus_only : Bool) : Nil
      # gtk_gesture_stylus_set_stylus_only: (Method | Setter)
      # @stylus_only:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gesture_stylus_set_stylus_only(to_unsafe, stylus_only)

      # Return value handling
    end

    struct DownSignal < GObject::Signal
      def name : String
        @detail ? "down::#{@detail}" : "down"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureStylus, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureStylus.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::GestureStylus, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "down", x, y)
      end
    end

    def down_signal
      DownSignal.new(self)
    end

    struct MotionSignal < GObject::Signal
      def name : String
        @detail ? "motion::#{@detail}" : "motion"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureStylus, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureStylus.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::GestureStylus, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "motion", x, y)
      end
    end

    def motion_signal
      MotionSignal.new(self)
    end

    struct ProximitySignal < GObject::Signal
      def name : String
        @detail ? "proximity::#{@detail}" : "proximity"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureStylus, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureStylus.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::GestureStylus, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "proximity", x, y)
      end
    end

    def proximity_signal
      ProximitySignal.new(self)
    end

    struct UpSignal < GObject::Signal
      def name : String
        @detail ? "up::#{@detail}" : "up"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureStylus, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureStylus.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::GestureStylus, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "up", x, y)
      end
    end

    def up_signal
      UpSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
