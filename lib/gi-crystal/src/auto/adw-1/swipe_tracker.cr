require "../g_object-2.0/object"
require "../gtk-4.0/orientable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class SwipeTracker < GObject::Object
    include Gtk::Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SwipeTracker, g_object_get_qdata)

    # Initialize a new `SwipeTracker`.
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

    def initialize(*, allow_long_swipes : Bool? = nil, allow_mouse_drag : Bool? = nil, allow_window_handle : Bool? = nil, enabled : Bool? = nil, lower_overshoot : Bool? = nil, orientation : Gtk::Orientation? = nil, reversed : Bool? = nil, swipeable : Adw::Swipeable? = nil, upper_overshoot : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !allow_long_swipes.nil?
        (_names.to_unsafe + _n).value = "allow-long-swipes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_long_swipes)
        _n += 1
      end
      if !allow_mouse_drag.nil?
        (_names.to_unsafe + _n).value = "allow-mouse-drag".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_mouse_drag)
        _n += 1
      end
      if !allow_window_handle.nil?
        (_names.to_unsafe + _n).value = "allow-window-handle".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_window_handle)
        _n += 1
      end
      if !enabled.nil?
        (_names.to_unsafe + _n).value = "enabled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enabled)
        _n += 1
      end
      if !lower_overshoot.nil?
        (_names.to_unsafe + _n).value = "lower-overshoot".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, lower_overshoot)
        _n += 1
      end
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
        _n += 1
      end
      if !reversed.nil?
        (_names.to_unsafe + _n).value = "reversed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reversed)
        _n += 1
      end
      if !swipeable.nil?
        (_names.to_unsafe + _n).value = "swipeable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, swipeable)
        _n += 1
      end
      if !upper_overshoot.nil?
        (_names.to_unsafe + _n).value = "upper-overshoot".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, upper_overshoot)
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
      @@g_type ||= LibAdw.adw_swipe_tracker_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::SwipeTracker.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allow_long_swipes=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-long-swipes", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_long_swipes? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-long-swipes", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_mouse_drag=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-mouse-drag", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_mouse_drag? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-mouse-drag", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_window_handle=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-window-handle", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_window_handle? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-window-handle", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enabled=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enabled", unsafe_value, Pointer(Void).null)
      value
    end

    def enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def lower_overshoot=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "lower-overshoot", unsafe_value, Pointer(Void).null)
      value
    end

    def lower_overshoot? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "lower-overshoot", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def reversed=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reversed", unsafe_value, Pointer(Void).null)
      value
    end

    def reversed? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reversed", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def swipeable=(value : Adw::Swipeable?) : Adw::Swipeable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "swipeable", unsafe_value, Pointer(Void).null)
      value
    end

    def swipeable : Adw::Swipeable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "swipeable", pointerof(value), Pointer(Void).null)
      Adw::AbstractSwipeable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def upper_overshoot=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "upper-overshoot", unsafe_value, Pointer(Void).null)
      value
    end

    def upper_overshoot? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "upper-overshoot", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(swipeable : Adw::Swipeable) : self
      # adw_swipe_tracker_new: (Constructor)
      # @swipeable:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_swipe_tracker_new(swipeable)

      # Return value handling
      Adw::SwipeTracker.new(_retval, GICrystal::Transfer::Full)
    end

    def allow_long_swipes : Bool
      # adw_swipe_tracker_get_allow_long_swipes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_allow_long_swipes(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_mouse_drag : Bool
      # adw_swipe_tracker_get_allow_mouse_drag: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_allow_mouse_drag(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_window_handle : Bool
      # adw_swipe_tracker_get_allow_window_handle: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_allow_window_handle(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enabled : Bool
      # adw_swipe_tracker_get_enabled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def lower_overshoot : Bool
      # adw_swipe_tracker_get_lower_overshoot: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_lower_overshoot(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reversed : Bool
      # adw_swipe_tracker_get_reversed: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_reversed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def swipeable : Adw::Swipeable
      # adw_swipe_tracker_get_swipeable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_swipeable(to_unsafe)

      # Return value handling
      Adw::AbstractSwipeable.new(_retval, GICrystal::Transfer::None)
    end

    def upper_overshoot : Bool
      # adw_swipe_tracker_get_upper_overshoot: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipe_tracker_get_upper_overshoot(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_long_swipes=(allow_long_swipes : Bool) : Nil
      # adw_swipe_tracker_set_allow_long_swipes: (Method | Setter)
      # @allow_long_swipes:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_set_allow_long_swipes(to_unsafe, allow_long_swipes)

      # Return value handling
    end

    def allow_mouse_drag=(allow_mouse_drag : Bool) : Nil
      # adw_swipe_tracker_set_allow_mouse_drag: (Method | Setter)
      # @allow_mouse_drag:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_set_allow_mouse_drag(to_unsafe, allow_mouse_drag)

      # Return value handling
    end

    def allow_window_handle=(allow_window_handle : Bool) : Nil
      # adw_swipe_tracker_set_allow_window_handle: (Method | Setter)
      # @allow_window_handle:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_set_allow_window_handle(to_unsafe, allow_window_handle)

      # Return value handling
    end

    def enabled=(enabled : Bool) : Nil
      # adw_swipe_tracker_set_enabled: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_set_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def lower_overshoot=(overshoot : Bool) : Nil
      # adw_swipe_tracker_set_lower_overshoot: (Method | Setter)
      # @overshoot:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_set_lower_overshoot(to_unsafe, overshoot)

      # Return value handling
    end

    def reversed=(reversed : Bool) : Nil
      # adw_swipe_tracker_set_reversed: (Method | Setter)
      # @reversed:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_set_reversed(to_unsafe, reversed)

      # Return value handling
    end

    def upper_overshoot=(overshoot : Bool) : Nil
      # adw_swipe_tracker_set_upper_overshoot: (Method | Setter)
      # @overshoot:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_set_upper_overshoot(to_unsafe, overshoot)

      # Return value handling
    end

    def shift_position(delta : Float64) : Nil
      # adw_swipe_tracker_shift_position: (Method)
      # @delta:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_swipe_tracker_shift_position(to_unsafe, delta)

      # Return value handling
    end

    struct BeginSwipeSignal < GObject::Signal
      def name : String
        @detail ? "begin-swipe::#{@detail}" : "begin-swipe"
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

      def connect(handler : Proc(Adw::SwipeTracker, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::SwipeTracker.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::SwipeTracker, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "begin-swipe")
      end
    end

    def begin_swipe_signal
      BeginSwipeSignal.new(self)
    end

    struct EndSwipeSignal < GObject::Signal
      def name : String
        @detail ? "end-swipe::#{@detail}" : "end-swipe"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_velocity : Float64, lib_to : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          velocity = lib_velocity
          # NoStrategy
          to = lib_to
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(velocity, to)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::SwipeTracker, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_velocity : Float64, lib_to : Float64, _lib_box : Pointer(Void)) {
          _sender = Adw::SwipeTracker.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          velocity = lib_velocity
          # NoStrategy
          to = lib_to
          ::Box(Proc(Adw::SwipeTracker, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, velocity, to)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(velocity : Float64, to : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "end-swipe", velocity, to)
      end
    end

    def end_swipe_signal
      EndSwipeSignal.new(self)
    end

    struct PrepareSignal < GObject::Signal
      def name : String
        @detail ? "prepare::#{@detail}" : "prepare"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::NavigationDirection, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::NavigationDirection, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          direction = Adw::NavigationDirection.new(lib_direction)
          ::Box(Proc(Adw::NavigationDirection, Nil)).unbox(_lib_box).call(direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::SwipeTracker, Adw::NavigationDirection, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          _sender = Adw::SwipeTracker.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          direction = Adw::NavigationDirection.new(lib_direction)
          ::Box(Proc(Adw::SwipeTracker, Adw::NavigationDirection, Nil)).unbox(_lib_box).call(_sender, direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(direction : Adw::NavigationDirection) : Nil
        LibGObject.g_signal_emit_by_name(@source, "prepare", direction)
      end
    end

    def prepare_signal
      PrepareSignal.new(self)
    end

    struct UpdateSwipeSignal < GObject::Signal
      def name : String
        @detail ? "update-swipe::#{@detail}" : "update-swipe"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_progress : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          progress = lib_progress
          ::Box(Proc(Float64, Nil)).unbox(_lib_box).call(progress)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::SwipeTracker, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_progress : Float64, _lib_box : Pointer(Void)) {
          _sender = Adw::SwipeTracker.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          progress = lib_progress
          ::Box(Proc(Adw::SwipeTracker, Float64, Nil)).unbox(_lib_box).call(_sender, progress)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(progress : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "update-swipe", progress)
      end
    end

    def update_swipe_signal
      UpdateSwipeSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
