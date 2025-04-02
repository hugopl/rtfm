require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Drag < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Drag, g_object_get_qdata)

    # Initialize a new `Drag`.
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

    def initialize(*, actions : Gdk::DragAction? = nil, content : Gdk::ContentProvider? = nil, device : Gdk::Device? = nil, display : Gdk::Display? = nil, formats : Gdk::ContentFormats? = nil, selected_action : Gdk::DragAction? = nil, surface : Gdk::Surface? = nil)
      _names = uninitialized Pointer(LibC::Char)[7]
      _values = StaticArray(LibGObject::Value, 7).new(LibGObject::Value.new)
      _n = 0

      if !actions.nil?
        (_names.to_unsafe + _n).value = "actions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, actions)
        _n += 1
      end
      if !content.nil?
        (_names.to_unsafe + _n).value = "content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content)
        _n += 1
      end
      if !device.nil?
        (_names.to_unsafe + _n).value = "device".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, device)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !formats.nil?
        (_names.to_unsafe + _n).value = "formats".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, formats)
        _n += 1
      end
      if !selected_action.nil?
        (_names.to_unsafe + _n).value = "selected-action".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected_action)
        _n += 1
      end
      if !surface.nil?
        (_names.to_unsafe + _n).value = "surface".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, surface)
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
      @@g_type ||= LibGdk.gdk_drag_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Drag.new(Void*, GICrystal::Transfer)
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

    def device=(value : Gdk::Device?) : Gdk::Device?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "device", unsafe_value, Pointer(Void).null)
      value
    end

    def device : Gdk::Device?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "device", pointerof(value), Pointer(Void).null)
      Gdk::Device.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
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

    def selected_action=(value : Gdk::DragAction) : Gdk::DragAction
      unsafe_value = value

      LibGObject.g_object_set(self, "selected-action", unsafe_value, Pointer(Void).null)
      value
    end

    def selected_action : Gdk::DragAction
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "selected-action", pointerof(value), Pointer(Void).null)
      Gdk::DragAction.new(value)
    end

    def surface=(value : Gdk::Surface?) : Gdk::Surface?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "surface", unsafe_value, Pointer(Void).null)
      value
    end

    def surface : Gdk::Surface?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "surface", pointerof(value), Pointer(Void).null)
      Gdk::Surface.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.begin(surface : Gdk::Surface, device : Gdk::Device, content : Gdk::ContentProvider, actions : Gdk::DragAction, dx : Float64, dy : Float64) : Gdk::Drag?
      # gdk_drag_begin: (None)
      # @surface:
      # @device:
      # @content:
      # @actions:
      # @dx:
      # @dy:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdk.gdk_drag_begin(surface, device, content, actions, dx, dy)

      # Return value handling
      Gdk::Drag.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def drop_done(success : Bool) : Nil
      # gdk_drag_drop_done: (Method)
      # @success:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_drag_drop_done(to_unsafe, success)

      # Return value handling
    end

    def actions : Gdk::DragAction
      # gdk_drag_get_actions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_get_actions(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def content : Gdk::ContentProvider
      # gdk_drag_get_content: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_get_content(to_unsafe)

      # Return value handling
      Gdk::ContentProvider.new(_retval, GICrystal::Transfer::None)
    end

    def device : Gdk::Device
      # gdk_drag_get_device: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_get_device(to_unsafe)

      # Return value handling
      Gdk::Device.new(_retval, GICrystal::Transfer::None)
    end

    def display : Gdk::Display
      # gdk_drag_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def drag_surface : Gdk::Surface?
      # gdk_drag_get_drag_surface: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_drag_get_drag_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def formats : Gdk::ContentFormats
      # gdk_drag_get_formats: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_get_formats(to_unsafe)

      # Return value handling
      Gdk::ContentFormats.new(_retval, GICrystal::Transfer::None)
    end

    def selected_action : Gdk::DragAction
      # gdk_drag_get_selected_action: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_get_selected_action(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def surface : Gdk::Surface
      # gdk_drag_get_surface: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_get_surface(to_unsafe)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None)
    end

    def set_hotspot(hot_x : Int32, hot_y : Int32) : Nil
      # gdk_drag_set_hotspot: (Method)
      # @hot_x:
      # @hot_y:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_drag_set_hotspot(to_unsafe, hot_x, hot_y)

      # Return value handling
    end

    struct CancelSignal < GObject::Signal
      def name : String
        @detail ? "cancel::#{@detail}" : "cancel"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::DragCancelReason, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::DragCancelReason, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_reason : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          reason = Gdk::DragCancelReason.new(lib_reason)
          ::Box(Proc(Gdk::DragCancelReason, Nil)).unbox(_lib_box).call(reason)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Drag, Gdk::DragCancelReason, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_reason : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gdk::Drag.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          reason = Gdk::DragCancelReason.new(lib_reason)
          ::Box(Proc(Gdk::Drag, Gdk::DragCancelReason, Nil)).unbox(_lib_box).call(_sender, reason)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(reason : Gdk::DragCancelReason) : Nil
        LibGObject.g_signal_emit_by_name(@source, "cancel", reason)
      end
    end

    def cancel_signal
      CancelSignal.new(self)
    end

    struct DndFinishedSignal < GObject::Signal
      def name : String
        @detail ? "dnd-finished::#{@detail}" : "dnd-finished"
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

      def connect(handler : Proc(Gdk::Drag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Drag.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Drag, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "dnd-finished")
      end
    end

    def dnd_finished_signal
      DndFinishedSignal.new(self)
    end

    struct DropPerformedSignal < GObject::Signal
      def name : String
        @detail ? "drop-performed::#{@detail}" : "drop-performed"
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

      def connect(handler : Proc(Gdk::Drag, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Drag.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Drag, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "drop-performed")
      end
    end

    def drop_performed_signal
      DropPerformedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
