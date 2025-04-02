require "./event_controller"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class DropTarget < EventController
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::DropTargetClass), class_init,
        sizeof(LibGtk::DropTarget), instance_init, 0)
    end

    GICrystal.declare_new_method(DropTarget, g_object_get_qdata)

    # Initialize a new `DropTarget`.
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

    def initialize(*, actions : Gdk::DragAction? = nil, current_drop : Gdk::Drop? = nil, drop : Gdk::Drop? = nil, formats : Gdk::ContentFormats? = nil, name : ::String? = nil, preload : Bool? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, value : GObject::Value? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !actions.nil?
        (_names.to_unsafe + _n).value = "actions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, actions)
        _n += 1
      end
      if !current_drop.nil?
        (_names.to_unsafe + _n).value = "current-drop".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, current_drop)
        _n += 1
      end
      if !drop.nil?
        (_names.to_unsafe + _n).value = "drop".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, drop)
        _n += 1
      end
      if !formats.nil?
        (_names.to_unsafe + _n).value = "formats".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, formats)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !preload.nil?
        (_names.to_unsafe + _n).value = "preload".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, preload)
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
      if !value.nil?
        (_names.to_unsafe + _n).value = "value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value)
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
      @@g_type ||= LibGtk.gtk_drop_target_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::DropTarget.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def actions=(value : Gdk::DragAction) : Gdk::DragAction
      unsafe_value = value

      LibGObject.g_object_set(self, "actions", unsafe_value, Pointer(Void).null)
      value
    end

    def actions : Gdk::DragAction
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "actions", pointerof(value), Pointer(Void).null)
      Gdk::DragAction.new(value)
    end

    def current_drop : Gdk::Drop?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "current-drop", pointerof(value), Pointer(Void).null)
      Gdk::Drop.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def drop : Gdk::Drop?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "drop", pointerof(value), Pointer(Void).null)
      Gdk::Drop.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def formats=(value : Gdk::ContentFormats?) : Gdk::ContentFormats?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "formats", unsafe_value, Pointer(Void).null)
      value
    end

    def formats : Gdk::ContentFormats?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "formats", pointerof(value), Pointer(Void).null)
      Gdk::ContentFormats.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def preload=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "preload", unsafe_value, Pointer(Void).null)
      value
    end

    def preload? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "preload", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def value : GObject::Value?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "value", pointerof(value), Pointer(Void).null)
      GObject::Value.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(type : UInt64, actions : Gdk::DragAction) : self
      # gtk_drop_target_new: (Constructor)
      # @type:
      # @actions:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_drop_target_new(type, actions)

      # Return value handling
      Gtk::DropTarget.new(_retval, GICrystal::Transfer::Full)
    end

    def actions : Gdk::DragAction
      # gtk_drop_target_get_actions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_drop_target_get_actions(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def current_drop : Gdk::Drop?
      # gtk_drop_target_get_current_drop: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_drop_target_get_current_drop(to_unsafe)

      # Return value handling
      Gdk::Drop.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def drop : Gdk::Drop?
      # gtk_drop_target_get_drop: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_drop_target_get_drop(to_unsafe)

      # Return value handling
      Gdk::Drop.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def formats : Gdk::ContentFormats?
      # gtk_drop_target_get_formats: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_drop_target_get_formats(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def gtypes : Enumerable(UInt64)?
      # gtk_drop_target_get_gtypes: (Method)
      # @n_types: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable) (array length=n_types element-type Gtype)

      # Generator::OutArgUsedInReturnPlan
      n_types = 0_u64
      # C call
      _retval = LibGtk.gtk_drop_target_get_gtypes(to_unsafe, pointerof(n_types))

      # Return value handling
      GICrystal.transfer_array(_retval, n_types, GICrystal::Transfer::None) unless _retval.null?
    end

    def preload : Bool
      # gtk_drop_target_get_preload: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_drop_target_get_preload(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def value : GObject::Value?
      # gtk_drop_target_get_value: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_drop_target_get_value(to_unsafe)

      # Return value handling
      GObject::Value.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def reject : Nil
      # gtk_drop_target_reject: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_drop_target_reject(to_unsafe)

      # Return value handling
    end

    def actions=(actions : Gdk::DragAction) : Nil
      # gtk_drop_target_set_actions: (Method | Setter)
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_drop_target_set_actions(to_unsafe, actions)

      # Return value handling
    end

    def gtypes=(types : Enumerable(UInt64)?) : Nil
      # gtk_drop_target_set_gtypes: (Method)
      # @types: (nullable) (array length=n_types element-type Gtype)
      # @n_types:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_types = types.try(&.size) || 0
      # Generator::NullableArrayPlan
      types = if types.nil?
                Pointer(UInt64).null
              else
                types.to_a.to_unsafe.as(Pointer(UInt64))
              end

      # C call
      LibGtk.gtk_drop_target_set_gtypes(to_unsafe, types, n_types)

      # Return value handling
    end

    def preload=(preload : Bool) : Nil
      # gtk_drop_target_set_preload: (Method | Setter)
      # @preload:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_drop_target_set_preload(to_unsafe, preload)

      # Return value handling
    end

    struct AcceptSignal < GObject::Signal
      def name : String
        @detail ? "accept::#{@detail}" : "accept"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drop, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drop, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Drop, Bool)).unbox(_lib_box).call(drop)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTarget, Gdk::Drop, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTarget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::DropTarget, Gdk::Drop, Bool)).unbox(_lib_box).call(_sender, drop)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drop : Gdk::Drop) : Nil
        LibGObject.g_signal_emit_by_name(@source, "accept", drop)
      end
    end

    def accept_signal
      AcceptSignal.new(self)
    end

    struct DropSignal < GObject::Signal
      def name : String
        @detail ? "drop::#{@detail}" : "drop"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::Value, Float64, Float64, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::Value, Float64, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(GObject::Value, Float64, Float64, Bool)).unbox(_lib_box).call(value, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTarget, GObject::Value, Float64, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTarget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::DropTarget, GObject::Value, Float64, Float64, Bool)).unbox(_lib_box).call(_sender, value, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(value : _, x : Float64, y : Float64) : Nil
        # Generator::HandmadeArgPlan
        value = if !value.is_a?(GObject::Value)
                  GObject::Value.new(value).to_unsafe
                else
                  value.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "drop", value, x, y)
      end
    end

    def drop_signal
      DropSignal.new(self)
    end

    struct EnterSignal < GObject::Signal
      def name : String
        @detail ? "enter::#{@detail}" : "enter"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Gdk::DragAction)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTarget, Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTarget.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::DropTarget, Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(_sender, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "enter", x, y)
      end
    end

    def enter_signal
      EnterSignal.new(self)
    end

    struct LeaveSignal < GObject::Signal
      def name : String
        @detail ? "leave::#{@detail}" : "leave"
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

      def connect(handler : Proc(Gtk::DropTarget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTarget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::DropTarget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "leave")
      end
    end

    def leave_signal
      LeaveSignal.new(self)
    end

    struct MotionSignal < GObject::Signal
      def name : String
        @detail ? "motion::#{@detail}" : "motion"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Gdk::DragAction)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTarget, Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTarget.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::DropTarget, Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(_sender, x, y)
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

    def_equals_and_hash @pointer
  end
end
