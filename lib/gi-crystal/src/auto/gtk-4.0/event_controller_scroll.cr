require "./event_controller"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class EventControllerScroll < EventController
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::EventControllerScrollClass), class_init,
        sizeof(LibGtk::EventControllerScroll), instance_init, 0)
    end

    GICrystal.declare_new_method(EventControllerScroll, g_object_get_qdata)

    # Initialize a new `EventControllerScroll`.
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

    def initialize(*, flags : Gtk::EventControllerScrollFlags? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
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
      @@g_type ||= LibGtk.gtk_event_controller_scroll_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::EventControllerScroll.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def flags=(value : Gtk::EventControllerScrollFlags) : Gtk::EventControllerScrollFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Gtk::EventControllerScrollFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Gtk::EventControllerScrollFlags.new(value)
    end

    def self.new(flags : Gtk::EventControllerScrollFlags) : self
      # gtk_event_controller_scroll_new: (Constructor)
      # @flags:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_event_controller_scroll_new(flags)

      # Return value handling
      Gtk::EventControllerScroll.new(_retval, GICrystal::Transfer::Full)
    end

    def flags : Gtk::EventControllerScrollFlags
      # gtk_event_controller_scroll_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_scroll_get_flags(to_unsafe)

      # Return value handling
      Gtk::EventControllerScrollFlags.new(_retval)
    end

    def unit : Gdk::ScrollUnit
      # gtk_event_controller_scroll_get_unit: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_scroll_get_unit(to_unsafe)

      # Return value handling
      Gdk::ScrollUnit.new(_retval)
    end

    def flags=(flags : Gtk::EventControllerScrollFlags) : Nil
      # gtk_event_controller_scroll_set_flags: (Method | Setter)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_event_controller_scroll_set_flags(to_unsafe, flags)

      # Return value handling
    end

    struct DecelerateSignal < GObject::Signal
      def name : String
        @detail ? "decelerate::#{@detail}" : "decelerate"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_vel_x : Float64, lib_vel_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          vel_x = lib_vel_x
          # NoStrategy
          vel_y = lib_vel_y
          ::Box(Proc(Float64, Float64, Nil)).unbox(_lib_box).call(vel_x, vel_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EventControllerScroll, Float64, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_vel_x : Float64, lib_vel_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerScroll.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          vel_x = lib_vel_x
          # NoStrategy
          vel_y = lib_vel_y
          ::Box(Proc(Gtk::EventControllerScroll, Float64, Float64, Nil)).unbox(_lib_box).call(_sender, vel_x, vel_y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(vel_x : Float64, vel_y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "decelerate", vel_x, vel_y)
      end
    end

    def decelerate_signal
      DecelerateSignal.new(self)
    end

    struct ScrollSignal < GObject::Signal
      def name : String
        @detail ? "scroll::#{@detail}" : "scroll"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_dx : Float64, lib_dy : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          dx = lib_dx
          # NoStrategy
          dy = lib_dy
          ::Box(Proc(Float64, Float64, Bool)).unbox(_lib_box).call(dx, dy)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EventControllerScroll, Float64, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_dx : Float64, lib_dy : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerScroll.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          dx = lib_dx
          # NoStrategy
          dy = lib_dy
          ::Box(Proc(Gtk::EventControllerScroll, Float64, Float64, Bool)).unbox(_lib_box).call(_sender, dx, dy)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(dx : Float64, dy : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "scroll", dx, dy)
      end
    end

    def scroll_signal
      ScrollSignal.new(self)
    end

    struct ScrollBeginSignal < GObject::Signal
      def name : String
        @detail ? "scroll-begin::#{@detail}" : "scroll-begin"
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

      def connect(handler : Proc(Gtk::EventControllerScroll, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerScroll.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::EventControllerScroll, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "scroll-begin")
      end
    end

    def scroll_begin_signal
      ScrollBeginSignal.new(self)
    end

    struct ScrollEndSignal < GObject::Signal
      def name : String
        @detail ? "scroll-end::#{@detail}" : "scroll-end"
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

      def connect(handler : Proc(Gtk::EventControllerScroll, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerScroll.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::EventControllerScroll, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "scroll-end")
      end
    end

    def scroll_end_signal
      ScrollEndSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
