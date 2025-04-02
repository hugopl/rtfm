require "./gesture_single"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GestureClick < GestureSingle
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GestureClickClass), class_init,
        sizeof(LibGtk::GestureClick), instance_init, 0)
    end

    GICrystal.declare_new_method(GestureClick, g_object_get_qdata)

    # Initialize a new `GestureClick`.
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
      @@g_type ||= LibGtk.gtk_gesture_click_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GestureClick.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_gesture_click_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_gesture_click_new

      # Return value handling
      Gtk::GestureClick.new(_retval, GICrystal::Transfer::Full)
    end

    struct PressedSignal < GObject::Signal
      def name : String
        @detail ? "pressed::#{@detail}" : "pressed"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_n_press : Int32, lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          n_press = lib_n_press
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Int32, Float64, Float64, Nil)).unbox(_lib_box).call(n_press, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureClick, Int32, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_n_press : Int32, lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureClick.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          n_press = lib_n_press
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::GestureClick, Int32, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, n_press, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(n_press : Int32, x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "pressed", n_press, x, y)
      end
    end

    def pressed_signal
      PressedSignal.new(self)
    end

    struct ReleasedSignal < GObject::Signal
      def name : String
        @detail ? "released::#{@detail}" : "released"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_n_press : Int32, lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          n_press = lib_n_press
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Int32, Float64, Float64, Nil)).unbox(_lib_box).call(n_press, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureClick, Int32, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_n_press : Int32, lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureClick.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          n_press = lib_n_press
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::GestureClick, Int32, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, n_press, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(n_press : Int32, x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "released", n_press, x, y)
      end
    end

    def released_signal
      ReleasedSignal.new(self)
    end

    struct StoppedSignal < GObject::Signal
      def name : String
        @detail ? "stopped::#{@detail}" : "stopped"
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

      def connect(handler : Proc(Gtk::GestureClick, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureClick.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::GestureClick, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "stopped")
      end
    end

    def stopped_signal
      StoppedSignal.new(self)
    end

    struct UnpairedReleaseSignal < GObject::Signal
      def name : String
        @detail ? "unpaired-release::#{@detail}" : "unpaired-release"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, UInt32, Gdk::EventSequence?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, UInt32, Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, lib_button : UInt32, lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          # NoStrategy
          button = lib_button
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Float64, Float64, UInt32, Gdk::EventSequence?, Nil)).unbox(_lib_box).call(x, y, button, sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GestureClick, Float64, Float64, UInt32, Gdk::EventSequence?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, lib_button : UInt32, lib_sequence : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::GestureClick.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          # NoStrategy
          button = lib_button
          # Generator::NullableArrayPlan
          sequence = (lib_sequence.null? ? nil : Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          sequence = Gdk::EventSequence.new(lib_sequence, GICrystal::Transfer::None) unless lib_sequence.null?
          ::Box(Proc(Gtk::GestureClick, Float64, Float64, UInt32, Gdk::EventSequence?, Nil)).unbox(_lib_box).call(_sender, x, y, button, sequence)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Float64, y : Float64, button : UInt32, sequence : Gdk::EventSequence?) : Nil
        # Generator::NullableArrayPlan
        sequence = if sequence.nil?
                     Void.null
                   else
                     sequence.to_unsafe
                   end

        LibGObject.g_signal_emit_by_name(@source, "unpaired-release", x, y, button, sequence)
      end
    end

    def unpaired_release_signal
      UnpairedReleaseSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
