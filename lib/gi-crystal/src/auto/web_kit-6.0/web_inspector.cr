require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebInspector < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebInspector, g_object_get_qdata)

    # Initialize a new `WebInspector`.
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

    def initialize(*, attached_height : UInt32? = nil, can_attach : Bool? = nil, inspected_uri : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !attached_height.nil?
        (_names.to_unsafe + _n).value = "attached-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, attached_height)
        _n += 1
      end
      if !can_attach.nil?
        (_names.to_unsafe + _n).value = "can-attach".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_attach)
        _n += 1
      end
      if !inspected_uri.nil?
        (_names.to_unsafe + _n).value = "inspected-uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, inspected_uri)
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
      @@g_type ||= LibWebKit.webkit_web_inspector_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebInspector.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def attached_height : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "attached-height", pointerof(value), Pointer(Void).null)
      value
    end

    def can_attach? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-attach", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def inspected_uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "inspected-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#inspected_uri`, but can return nil.
    def inspected_uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "inspected-uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def attach : Nil
      # webkit_web_inspector_attach: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_inspector_attach(to_unsafe)

      # Return value handling
    end

    def close : Nil
      # webkit_web_inspector_close: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_inspector_close(to_unsafe)

      # Return value handling
    end

    def detach : Nil
      # webkit_web_inspector_detach: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_inspector_detach(to_unsafe)

      # Return value handling
    end

    def attached_height : UInt32
      # webkit_web_inspector_get_attached_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_inspector_get_attached_height(to_unsafe)

      # Return value handling
      _retval
    end

    def can_attach : Bool
      # webkit_web_inspector_get_can_attach: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_inspector_get_can_attach(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def inspected_uri : ::String
      # webkit_web_inspector_get_inspected_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_inspector_get_inspected_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def web_view : WebKit::WebViewBase
      # webkit_web_inspector_get_web_view: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_inspector_get_web_view(to_unsafe)

      # Return value handling
      WebKit::WebViewBase.new(_retval, GICrystal::Transfer::None)
    end

    def is_attached : Bool
      # webkit_web_inspector_is_attached: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_inspector_is_attached(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show : Nil
      # webkit_web_inspector_show: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_inspector_show(to_unsafe)

      # Return value handling
    end

    struct AttachSignal < GObject::Signal
      def name : String
        @detail ? "attach::#{@detail}" : "attach"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebInspector, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebInspector.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebInspector, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "attach")
      end
    end

    def attach_signal
      AttachSignal.new(self)
    end

    struct BringToFrontSignal < GObject::Signal
      def name : String
        @detail ? "bring-to-front::#{@detail}" : "bring-to-front"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebInspector, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebInspector.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebInspector, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "bring-to-front")
      end
    end

    def bring_to_front_signal
      BringToFrontSignal.new(self)
    end

    struct ClosedSignal < GObject::Signal
      def name : String
        @detail ? "closed::#{@detail}" : "closed"
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

      def connect(handler : Proc(WebKit::WebInspector, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebInspector.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebInspector, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "closed")
      end
    end

    def closed_signal
      ClosedSignal.new(self)
    end

    struct DetachSignal < GObject::Signal
      def name : String
        @detail ? "detach::#{@detail}" : "detach"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebInspector, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebInspector.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebInspector, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "detach")
      end
    end

    def detach_signal
      DetachSignal.new(self)
    end

    struct OpenWindowSignal < GObject::Signal
      def name : String
        @detail ? "open-window::#{@detail}" : "open-window"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebInspector, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebInspector.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebInspector, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "open-window")
      end
    end

    def open_window_signal
      OpenWindowSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
