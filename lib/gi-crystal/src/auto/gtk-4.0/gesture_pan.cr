require "./gesture_drag"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GesturePan < GestureDrag
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GesturePanClass), class_init,
        sizeof(LibGtk::GesturePan), instance_init, 0)
    end

    GICrystal.declare_new_method(GesturePan, g_object_get_qdata)

    # Initialize a new `GesturePan`.
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

    def initialize(*, button : UInt32? = nil, exclusive : Bool? = nil, n_points : UInt32? = nil, name : ::String? = nil, orientation : Gtk::Orientation? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, touch_only : Bool? = nil, widget : Gtk::Widget? = nil)
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
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
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
      @@g_type ||= LibGtk.gtk_gesture_pan_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GesturePan.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def orientation=(value : Gtk::Orientation) : Gtk::Orientation
      unsafe_value = value

      LibGObject.g_object_set(self, "orientation", unsafe_value, Pointer(Void).null)
      value
    end

    def orientation : Gtk::Orientation
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "orientation", pointerof(value), Pointer(Void).null)
      Gtk::Orientation.new(value)
    end

    def self.new(orientation : Gtk::Orientation) : self
      # gtk_gesture_pan_new: (Constructor)
      # @orientation:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_gesture_pan_new(orientation)

      # Return value handling
      Gtk::GesturePan.new(_retval, GICrystal::Transfer::Full)
    end

    def orientation : Gtk::Orientation
      # gtk_gesture_pan_get_orientation: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_pan_get_orientation(to_unsafe)

      # Return value handling
      Gtk::Orientation.new(_retval)
    end

    def orientation=(orientation : Gtk::Orientation) : Nil
      # gtk_gesture_pan_set_orientation: (Method | Setter)
      # @orientation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gesture_pan_set_orientation(to_unsafe, orientation)

      # Return value handling
    end

    struct PanSignal < GObject::Signal
      def name : String
        @detail ? "pan::#{@detail}" : "pan"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::PanDirection, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::PanDirection, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, lib_offset : Float64, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::PanDirection.new(lib_direction)
          # NoStrategy
          offset = lib_offset
          ::Box(Proc(Gtk::PanDirection, Float64, Nil)).unbox(_lib_box).call(direction, offset)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GesturePan, Gtk::PanDirection, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, lib_offset : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GesturePan.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::PanDirection.new(lib_direction)
          # NoStrategy
          offset = lib_offset
          ::Box(Proc(Gtk::GesturePan, Gtk::PanDirection, Float64, Nil)).unbox(_lib_box).call(_sender, direction, offset)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(direction : Gtk::PanDirection, offset : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "pan", direction, offset)
      end
    end

    def pan_signal
      PanSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
