require "./gesture_single"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GestureDrag < GestureSingle
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GestureDragClass), class_init,
        sizeof(LibGtk::GestureDrag), instance_init, 0)
    end

    GICrystal.declare_new_method(GestureDrag, g_object_get_qdata)

    # Initialize a new `GestureDrag`.
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

    def initialize(*, button : UInt32? = nil, exclusive : Bool? = nil, n_points : UInt32? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, touch_only : Bool? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
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
      @@g_type ||= LibGtk.gtk_gesture_drag_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GestureDrag.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_gesture_drag_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_gesture_drag_new

      # Return value handling
      Gtk::GestureDrag.new(_retval, GICrystal::Transfer::Full)
    end

    def offset : Bool
      # gtk_gesture_drag_get_offset: (Method)
      # @x: (out) (transfer full) (optional)
      # @y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      y = Pointer(Float64).null
      # C call
      _retval = LibGtk.gtk_gesture_drag_get_offset(to_unsafe, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def start_point : Bool
      # gtk_gesture_drag_get_start_point: (Method)
      # @x: (out) (transfer full) (optional)
      # @y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      y = Pointer(Float64).null
      # C call
      _retval = LibGtk.gtk_gesture_drag_get_start_point(to_unsafe, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct DragBeginSignal < GObject::Signal
      def name : String
        @detail ? "drag-begin::#{@detail}" : "drag-begin"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_start_x : Float64, lib_start_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          start_x = lib_start_x
          # NoStrategy
          start_y = lib_start_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(start_x, start_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureDrag, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_start_x : Float64, lib_start_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureDrag.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          start_x = lib_start_x
          # NoStrategy
          start_y = lib_start_y
          ::Box(Proc(Gtk::GestureDrag, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, start_x, start_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(start_x : Float64, start_y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-begin", start_x, start_y)
      end
    end

    def drag_begin_signal
      DragBeginSignal.new(self)
    end

    struct DragEndSignal < GObject::Signal
      def name : String
        @detail ? "drag-end::#{@detail}" : "drag-end"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset_x : Float64, lib_offset_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          offset_x = lib_offset_x
          # NoStrategy
          offset_y = lib_offset_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(offset_x, offset_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureDrag, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset_x : Float64, lib_offset_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureDrag.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          offset_x = lib_offset_x
          # NoStrategy
          offset_y = lib_offset_y
          ::Box(Proc(Gtk::GestureDrag, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, offset_x, offset_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(offset_x : Float64, offset_y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-end", offset_x, offset_y)
      end
    end

    def drag_end_signal
      DragEndSignal.new(self)
    end

    struct DragUpdateSignal < GObject::Signal
      def name : String
        @detail ? "drag-update::#{@detail}" : "drag-update"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset_x : Float64, lib_offset_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          offset_x = lib_offset_x
          # NoStrategy
          offset_y = lib_offset_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(offset_x, offset_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureDrag, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_offset_x : Float64, lib_offset_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureDrag.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          offset_x = lib_offset_x
          # NoStrategy
          offset_y = lib_offset_y
          ::Box(Proc(Gtk::GestureDrag, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, offset_x, offset_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(offset_x : Float64, offset_y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-update", offset_x, offset_y)
      end
    end

    def drag_update_signal
      DragUpdateSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
