require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class Notification < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Notification, g_object_get_qdata)

    # Initialize a new `Notification`.
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

    def initialize(*, body : ::String? = nil, id : UInt64? = nil, tag : ::String? = nil, title : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !body.nil?
        (_names.to_unsafe + _n).value = "body".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, body)
        _n += 1
      end
      if !id.nil?
        (_names.to_unsafe + _n).value = "id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, id)
        _n += 1
      end
      if !tag.nil?
        (_names.to_unsafe + _n).value = "tag".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tag)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
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
      @@g_type ||= LibWebKit.webkit_notification_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::Notification.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def body : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "body", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#body`, but can return nil.
    def body? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "body", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def id : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "id", pointerof(value), Pointer(Void).null)
      value
    end

    def tag : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tag", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#tag`, but can return nil.
    def tag? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tag", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def clicked : Nil
      # webkit_notification_clicked: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_notification_clicked(to_unsafe)

      # Return value handling
    end

    def close : Nil
      # webkit_notification_close: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_notification_close(to_unsafe)

      # Return value handling
    end

    def body : ::String
      # webkit_notification_get_body: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_notification_get_body(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def id : UInt64
      # webkit_notification_get_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_notification_get_id(to_unsafe)

      # Return value handling
      _retval
    end

    def tag : ::String?
      # webkit_notification_get_tag: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_notification_get_tag(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def title : ::String
      # webkit_notification_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_notification_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    struct ClickedSignal < GObject::Signal
      def name : String
        @detail ? "clicked::#{@detail}" : "clicked"
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

      def connect(handler : Proc(WebKit::Notification, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::Notification.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::Notification, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "clicked")
      end
    end

    def clicked_signal
      ClickedSignal.new(self)
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

      def connect(handler : Proc(WebKit::Notification, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::Notification.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::Notification, Nil)).unbox(_lib_box).call(_sender)
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

    def_equals_and_hash @pointer
  end
end
