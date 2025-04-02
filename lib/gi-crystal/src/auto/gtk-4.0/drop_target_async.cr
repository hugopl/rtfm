require "./event_controller"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class DropTargetAsync < EventController
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::DropTargetAsyncClass), class_init,
        sizeof(LibGtk::DropTargetAsync), instance_init, 0)
    end

    GICrystal.declare_new_method(DropTargetAsync, g_object_get_qdata)

    # Initialize a new `DropTargetAsync`.
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

    def initialize(*, actions : Gdk::DragAction? = nil, formats : Gdk::ContentFormats? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !actions.nil?
        (_names.to_unsafe + _n).value = "actions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, actions)
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
      @@g_type ||= LibGtk.gtk_drop_target_async_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::DropTargetAsync.new(Void*, GICrystal::Transfer)
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

    def self.new(formats : Gdk::ContentFormats?, actions : Gdk::DragAction) : self
      # gtk_drop_target_async_new: (Constructor)
      # @formats: (transfer full) (nullable)
      # @actions:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      formats = if formats.nil?
                  Pointer(Void).null
                else
                  formats.to_unsafe
                end

      # C call
      _retval = LibGtk.gtk_drop_target_async_new(formats, actions)

      # Return value handling
      Gtk::DropTargetAsync.new(_retval, GICrystal::Transfer::Full)
    end

    def actions : Gdk::DragAction
      # gtk_drop_target_async_get_actions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_drop_target_async_get_actions(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def formats : Gdk::ContentFormats?
      # gtk_drop_target_async_get_formats: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_drop_target_async_get_formats(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def reject_drop(drop : Gdk::Drop) : Nil
      # gtk_drop_target_async_reject_drop: (Method)
      # @drop:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_drop_target_async_reject_drop(to_unsafe, drop)

      # Return value handling
    end

    def actions=(actions : Gdk::DragAction) : Nil
      # gtk_drop_target_async_set_actions: (Method | Setter)
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_drop_target_async_set_actions(to_unsafe, actions)

      # Return value handling
    end

    def formats=(formats : Gdk::ContentFormats?) : Nil
      # gtk_drop_target_async_set_formats: (Method | Setter)
      # @formats: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      formats = if formats.nil?
                  Pointer(Void).null
                else
                  formats.to_unsafe
                end

      # C call
      LibGtk.gtk_drop_target_async_set_formats(to_unsafe, formats)

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

      def connect(handler : Proc(Gtk::DropTargetAsync, Gdk::Drop, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTargetAsync.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::DropTargetAsync, Gdk::Drop, Bool)).unbox(_lib_box).call(_sender, drop)
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

    struct DragEnterSignal < GObject::Signal
      def name : String
        @detail ? "drag-enter::#{@detail}" : "drag-enter"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drop, Float64, Float64, Gdk::DragAction)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drop, Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gdk::Drop, Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(drop, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTargetAsync, Gdk::Drop, Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTargetAsync.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::DropTargetAsync, Gdk::Drop, Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(_sender, drop, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drop : Gdk::Drop, x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-enter", drop, x, y)
      end
    end

    def drag_enter_signal
      DragEnterSignal.new(self)
    end

    struct DragLeaveSignal < GObject::Signal
      def name : String
        @detail ? "drag-leave::#{@detail}" : "drag-leave"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drop, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drop, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Drop, Nil)).unbox(_lib_box).call(drop)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTargetAsync, Gdk::Drop, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTargetAsync.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::DropTargetAsync, Gdk::Drop, Nil)).unbox(_lib_box).call(_sender, drop)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drop : Gdk::Drop) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-leave", drop)
      end
    end

    def drag_leave_signal
      DragLeaveSignal.new(self)
    end

    struct DragMotionSignal < GObject::Signal
      def name : String
        @detail ? "drag-motion::#{@detail}" : "drag-motion"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drop, Float64, Float64, Gdk::DragAction)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drop, Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gdk::Drop, Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(drop, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTargetAsync, Gdk::Drop, Float64, Float64, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTargetAsync.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::DropTargetAsync, Gdk::Drop, Float64, Float64, Gdk::DragAction)).unbox(_lib_box).call(_sender, drop, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drop : Gdk::Drop, x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-motion", drop, x, y)
      end
    end

    def drag_motion_signal
      DragMotionSignal.new(self)
    end

    struct DropSignal < GObject::Signal
      def name : String
        @detail ? "drop::#{@detail}" : "drop"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drop, Float64, Float64, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drop, Float64, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gdk::Drop, Float64, Float64, Bool)).unbox(_lib_box).call(drop, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DropTargetAsync, Gdk::Drop, Float64, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drop : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::DropTargetAsync.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drop = Gdk::Drop.new(lib_drop, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::DropTargetAsync, Gdk::Drop, Float64, Float64, Bool)).unbox(_lib_box).call(_sender, drop, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drop : Gdk::Drop, x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drop", drop, x, y)
      end
    end

    def drop_signal
      DropSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
