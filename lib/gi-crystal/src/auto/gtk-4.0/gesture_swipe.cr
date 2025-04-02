require "./gesture_single"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GestureSwipe < GestureSingle
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GestureSwipeClass), class_init,
        sizeof(LibGtk::GestureSwipe), instance_init, 0)
    end

    GICrystal.declare_new_method(GestureSwipe, g_object_get_qdata)

    # Initialize a new `GestureSwipe`.
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
      @@g_type ||= LibGtk.gtk_gesture_swipe_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GestureSwipe.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_gesture_swipe_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_gesture_swipe_new

      # Return value handling
      Gtk::GestureSwipe.new(_retval, GICrystal::Transfer::Full)
    end

    def velocity(velocity_x : Float64, velocity_y : Float64) : Bool
      # gtk_gesture_swipe_get_velocity: (Method)
      # @velocity_x: (out) (transfer full)
      # @velocity_y: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_swipe_get_velocity(to_unsafe, velocity_x, velocity_y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct SwipeSignal < GObject::Signal
      def name : String
        @detail ? "swipe::#{@detail}" : "swipe"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_velocity_x : Float64, lib_velocity_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          velocity_x = lib_velocity_x
          # NoStrategy
          velocity_y = lib_velocity_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(velocity_x, velocity_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureSwipe, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_velocity_x : Float64, lib_velocity_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureSwipe.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          velocity_x = lib_velocity_x
          # NoStrategy
          velocity_y = lib_velocity_y
          ::Box(Proc(Gtk::GestureSwipe, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, velocity_x, velocity_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(velocity_x : Float64, velocity_y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "swipe", velocity_x, velocity_y)
      end
    end

    def swipe_signal
      SwipeSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
