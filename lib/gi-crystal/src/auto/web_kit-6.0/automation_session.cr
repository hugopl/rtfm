require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class AutomationSession < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AutomationSession, g_object_get_qdata)

    # Initialize a new `AutomationSession`.
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

    def initialize(*, id : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !id.nil?
        (_names.to_unsafe + _n).value = "id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, id)
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
      @@g_type ||= LibWebKit.webkit_automation_session_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::AutomationSession.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "id", unsafe_value, Pointer(Void).null)
      value
    end

    def id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#id` property to nil.
    def id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#id`, but can return nil.
    def id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def application_info : WebKit::ApplicationInfo
      # webkit_automation_session_get_application_info: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_automation_session_get_application_info(to_unsafe)

      # Return value handling
      WebKit::ApplicationInfo.new(_retval, GICrystal::Transfer::None)
    end

    def id : ::String
      # webkit_automation_session_get_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_automation_session_get_id(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def application_info=(info : WebKit::ApplicationInfo) : Nil
      # webkit_automation_session_set_application_info: (Method)
      # @info:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_automation_session_set_application_info(to_unsafe, info)

      # Return value handling
    end

    struct CreateWebViewSignal < GObject::Signal
      def name : String
        @detail ? "create-web-view::#{@detail}" : "create-web-view"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::WebView)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::WebView), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(WebKit::WebView)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::AutomationSession, WebKit::WebView), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::AutomationSession.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::AutomationSession, WebKit::WebView)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "create-web-view")
      end
    end

    def create_web_view_signal
      CreateWebViewSignal.new(self)
    end

    struct WillCloseSignal < GObject::Signal
      def name : String
        @detail ? "will-close::#{@detail}" : "will-close"
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

      def connect(handler : Proc(WebKit::AutomationSession, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::AutomationSession.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::AutomationSession, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "will-close")
      end
    end

    def will_close_signal
      WillCloseSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
