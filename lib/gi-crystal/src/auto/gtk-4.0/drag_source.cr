require "./gesture_single"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class DragSource < GestureSingle
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::DragSourceClass), class_init,
        sizeof(LibGtk::DragSource), instance_init, 0)
    end

    GICrystal.declare_new_method(DragSource, g_object_get_qdata)

    # Initialize a new `DragSource`.
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

    def initialize(*, actions : Gdk::DragAction? = nil, button : UInt32? = nil, content : Gdk::ContentProvider? = nil, exclusive : Bool? = nil, n_points : UInt32? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, touch_only : Bool? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[10]
      _values = StaticArray(LibGObject::Value, 10).new(LibGObject::Value.new)
      _n = 0

      if !actions.nil?
        (_names.to_unsafe + _n).value = "actions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, actions)
        _n += 1
      end
      if !button.nil?
        (_names.to_unsafe + _n).value = "button".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, button)
        _n += 1
      end
      if !content.nil?
        (_names.to_unsafe + _n).value = "content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content)
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
      @@g_type ||= LibGtk.gtk_drag_source_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::DragSource.new(Void*, GICrystal::Transfer)
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

    def content=(value : Gdk::ContentProvider?) : Gdk::ContentProvider?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "content", unsafe_value, Pointer(Void).null)
      value
    end

    def content : Gdk::ContentProvider?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "content", pointerof(value), Pointer(Void).null)
      Gdk::ContentProvider.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # gtk_drag_source_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_drag_source_new

      # Return value handling
      Gtk::DragSource.new(_retval, GICrystal::Transfer::Full)
    end

    def drag_cancel : Nil
      # gtk_drag_source_drag_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_drag_source_drag_cancel(to_unsafe)

      # Return value handling
    end

    def actions : Gdk::DragAction
      # gtk_drag_source_get_actions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_drag_source_get_actions(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def content : Gdk::ContentProvider?
      # gtk_drag_source_get_content: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_drag_source_get_content(to_unsafe)

      # Return value handling
      Gdk::ContentProvider.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def drag : Gdk::Drag?
      # gtk_drag_source_get_drag: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_drag_source_get_drag(to_unsafe)

      # Return value handling
      Gdk::Drag.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def actions=(actions : Gdk::DragAction) : Nil
      # gtk_drag_source_set_actions: (Method | Setter)
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_drag_source_set_actions(to_unsafe, actions)

      # Return value handling
    end

    def content=(content : Gdk::ContentProvider?) : Nil
      # gtk_drag_source_set_content: (Method | Setter)
      # @content: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content = if content.nil?
                  Pointer(Void).null
                else
                  content.to_unsafe
                end

      # C call
      LibGtk.gtk_drag_source_set_content(to_unsafe, content)

      # Return value handling
    end

    def set_icon(paintable : Gdk::Paintable?, hot_x : Int32, hot_y : Int32) : Nil
      # gtk_drag_source_set_icon: (Method)
      # @paintable: (nullable)
      # @hot_x:
      # @hot_y:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      LibGtk.gtk_drag_source_set_icon(to_unsafe, paintable, hot_x, hot_y)

      # Return value handling
    end

    struct DragBeginSignal < GObject::Signal
      def name : String
        @detail ? "drag-begin::#{@detail}" : "drag-begin"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drag, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drag : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drag = Gdk::Drag.new(lib_drag, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Drag, Nil)).unbox(_lib_box).call(drag)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DragSource, Gdk::Drag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drag : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::DragSource.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drag = Gdk::Drag.new(lib_drag, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::DragSource, Gdk::Drag, Nil)).unbox(_lib_box).call(_sender, drag)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drag : Gdk::Drag) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-begin", drag)
      end
    end

    def drag_begin_signal
      DragBeginSignal.new(self)
    end

    struct DragCancelSignal < GObject::Signal
      def name : String
        @detail ? "drag-cancel::#{@detail}" : "drag-cancel"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drag, Gdk::DragCancelReason, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drag, Gdk::DragCancelReason, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drag : Pointer(Void), lib_reason : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drag = Gdk::Drag.new(lib_drag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          reason = Gdk::DragCancelReason.new(lib_reason)
          ::Box(Proc(Gdk::Drag, Gdk::DragCancelReason, Bool)).unbox(_lib_box).call(drag, reason)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DragSource, Gdk::Drag, Gdk::DragCancelReason, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drag : Pointer(Void), lib_reason : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::DragSource.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drag = Gdk::Drag.new(lib_drag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          reason = Gdk::DragCancelReason.new(lib_reason)
          ::Box(Proc(Gtk::DragSource, Gdk::Drag, Gdk::DragCancelReason, Bool)).unbox(_lib_box).call(_sender, drag, reason)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drag : Gdk::Drag, reason : Gdk::DragCancelReason) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-cancel", drag, reason)
      end
    end

    def drag_cancel_signal
      DragCancelSignal.new(self)
    end

    struct DragEndSignal < GObject::Signal
      def name : String
        @detail ? "drag-end::#{@detail}" : "drag-end"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Drag, Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Drag, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drag : Pointer(Void), lib_delete_data : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drag = Gdk::Drag.new(lib_drag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          delete_data = GICrystal.to_bool(lib_delete_data)
          ::Box(Proc(Gdk::Drag, Bool, Nil)).unbox(_lib_box).call(drag, delete_data)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DragSource, Gdk::Drag, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drag : Pointer(Void), lib_delete_data : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::DragSource.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drag = Gdk::Drag.new(lib_drag, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          delete_data = GICrystal.to_bool(lib_delete_data)
          ::Box(Proc(Gtk::DragSource, Gdk::Drag, Bool, Nil)).unbox(_lib_box).call(_sender, drag, delete_data)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drag : Gdk::Drag, delete_data : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drag-end", drag, delete_data)
      end
    end

    def drag_end_signal
      DragEndSignal.new(self)
    end

    struct PrepareSignal < GObject::Signal
      def name : String
        @detail ? "prepare::#{@detail}" : "prepare"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Float64, Gdk::ContentProvider)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Float64, Gdk::ContentProvider), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Float64, Float64, Gdk::ContentProvider)).unbox(_lib_box).call(x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::DragSource, Float64, Float64, Gdk::ContentProvider), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Float64, lib_y : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::DragSource.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          ::Box(Proc(Gtk::DragSource, Float64, Float64, Gdk::ContentProvider)).unbox(_lib_box).call(_sender, x, y)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Float64, y : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "prepare", x, y)
      end
    end

    def prepare_signal
      PrepareSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
