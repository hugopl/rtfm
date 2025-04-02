require "./gesture"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GestureRotate < Gesture
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GestureRotateClass), class_init,
        sizeof(LibGtk::GestureRotate), instance_init, 0)
    end

    GICrystal.declare_new_method(GestureRotate, g_object_get_qdata)

    # Initialize a new `GestureRotate`.
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

    def initialize(*, n_points : UInt32? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

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
      @@g_type ||= LibGtk.gtk_gesture_rotate_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GestureRotate.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_gesture_rotate_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_gesture_rotate_new

      # Return value handling
      Gtk::GestureRotate.new(_retval, GICrystal::Transfer::Full)
    end

    def angle_delta : Float64
      # gtk_gesture_rotate_get_angle_delta: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_rotate_get_angle_delta(to_unsafe)

      # Return value handling
      _retval
    end

    struct AngleChangedSignal < GObject::Signal
      def name : String
        @detail ? "angle-changed::#{@detail}" : "angle-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_angle : Float64, lib_angle_delta : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          angle = lib_angle
          # NoStrategy
          angle_delta = lib_angle_delta
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(angle, angle_delta)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureRotate, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_angle : Float64, lib_angle_delta : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureRotate.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          angle = lib_angle
          # NoStrategy
          angle_delta = lib_angle_delta
          ::Box(Proc(Gtk::GestureRotate, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, angle, angle_delta)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(angle : Float64, angle_delta : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "angle-changed", angle, angle_delta)
      end
    end

    def angle_changed_signal
      AngleChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
