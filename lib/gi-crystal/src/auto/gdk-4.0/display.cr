require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Display < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Display, g_object_get_qdata)

    # Initialize a new `Display`.
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

    def initialize(*, composited : Bool? = nil, dmabuf_formats : Gdk::DmabufFormats? = nil, input_shapes : Bool? = nil, rgba : Bool? = nil, shadow_width : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !composited.nil?
        (_names.to_unsafe + _n).value = "composited".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, composited)
        _n += 1
      end
      if !dmabuf_formats.nil?
        (_names.to_unsafe + _n).value = "dmabuf-formats".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, dmabuf_formats)
        _n += 1
      end
      if !input_shapes.nil?
        (_names.to_unsafe + _n).value = "input-shapes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_shapes)
        _n += 1
      end
      if !rgba.nil?
        (_names.to_unsafe + _n).value = "rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, rgba)
        _n += 1
      end
      if !shadow_width.nil?
        (_names.to_unsafe + _n).value = "shadow-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, shadow_width)
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
      @@g_type ||= LibGdk.gdk_display_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Display.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def composited? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "composited", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def dmabuf_formats : Gdk::DmabufFormats?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "dmabuf-formats", pointerof(value), Pointer(Void).null)
      Gdk::DmabufFormats.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def input_shapes? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "input-shapes", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def rgba? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "rgba", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def shadow_width? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "shadow-width", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.default : Gdk::Display?
      # gdk_display_get_default: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_display_get_default

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def self.open(display_name : ::String?) : Gdk::Display?
      # gdk_display_open: (None)
      # @display_name: (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      display_name = if display_name.nil?
                       Pointer(LibC::Char).null
                     else
                       display_name.to_unsafe
                     end

      # C call
      _retval = LibGdk.gdk_display_open(display_name)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def beep : Nil
      # gdk_display_beep: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_display_beep(to_unsafe)

      # Return value handling
    end

    def close : Nil
      # gdk_display_close: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_display_close(to_unsafe)

      # Return value handling
    end

    def create_gl_context : Gdk::GLContext
      # gdk_display_create_gl_context: (Method | Throws)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_display_create_gl_context(to_unsafe, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::GLContext.new(_retval, GICrystal::Transfer::Full)
    end

    def device_is_grabbed(device : Gdk::Device) : Bool
      # gdk_display_device_is_grabbed: (Method)
      # @device:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_device_is_grabbed(to_unsafe, device)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def flush : Nil
      # gdk_display_flush: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_display_flush(to_unsafe)

      # Return value handling
    end

    def app_launch_context : Gdk::AppLaunchContext
      # gdk_display_get_app_launch_context: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_display_get_app_launch_context(to_unsafe)

      # Return value handling
      Gdk::AppLaunchContext.new(_retval, GICrystal::Transfer::Full)
    end

    def clipboard : Gdk::Clipboard
      # gdk_display_get_clipboard: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_get_clipboard(to_unsafe)

      # Return value handling
      Gdk::Clipboard.new(_retval, GICrystal::Transfer::None)
    end

    def default_seat : Gdk::Seat?
      # gdk_display_get_default_seat: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_display_get_default_seat(to_unsafe)

      # Return value handling
      Gdk::Seat.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def dmabuf_formats : Gdk::DmabufFormats
      # gdk_display_get_dmabuf_formats: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_get_dmabuf_formats(to_unsafe)

      # Return value handling
      Gdk::DmabufFormats.new(_retval, GICrystal::Transfer::None)
    end

    def monitor_at_surface(surface : Gdk::Surface) : Gdk::Monitor?
      # gdk_display_get_monitor_at_surface: (Method)
      # @surface:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_display_get_monitor_at_surface(to_unsafe, surface)

      # Return value handling
      Gdk::Monitor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def monitors : Gio::ListModel
      # gdk_display_get_monitors: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_get_monitors(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None)
    end

    def name : ::String
      # gdk_display_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def primary_clipboard : Gdk::Clipboard
      # gdk_display_get_primary_clipboard: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_get_primary_clipboard(to_unsafe)

      # Return value handling
      Gdk::Clipboard.new(_retval, GICrystal::Transfer::None)
    end

    def setting(name : ::String, value : _) : Bool
      # gdk_display_get_setting: (Method)
      # @name:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGdk.gdk_display_get_setting(to_unsafe, name, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def startup_notification_id : ::String?
      # gdk_display_get_startup_notification_id: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_display_get_startup_notification_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def is_closed : Bool
      # gdk_display_is_closed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_is_closed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_composited? : Bool
      # gdk_display_is_composited: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_is_composited(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_rgba? : Bool
      # gdk_display_is_rgba: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_is_rgba(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_seats : GLib::List
      # gdk_display_list_seats: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGdk.gdk_display_list_seats(to_unsafe)

      # Return value handling
      GLib::List(Gdk::Seat).new(_retval, GICrystal::Transfer::Container)
    end

    def map_keycode(keycode : UInt32) : Bool
      # gdk_display_map_keycode: (Method)
      # @keycode:
      # @keys: (out) (transfer full) (optional) (array length=n_entries element-type Interface)
      # @keyvals: (out) (transfer full) (optional) (array length=n_entries element-type UInt32)
      # @n_entries: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_entries = keys.size
      # Generator::OutArgUsedInReturnPlan
      keys = Pointer(Pointer(LibGdk::KeymapKey)).null # Generator::ArrayArgPlan
      keys = keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGdk::KeymapKey))
      # Generator::ArrayLengthArgPlan
      n_entries = keyvals.size
      # Generator::OutArgUsedInReturnPlan
      keyvals = Pointer(Pointer(UInt32)).null # Generator::ArrayArgPlan
      keyvals = keyvals.to_a.to_unsafe.as(Pointer(UInt32))

      # C call
      _retval = LibGdk.gdk_display_map_keycode(to_unsafe, keycode, keys, keyvals, n_entries)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def map_keyval(keyval : UInt32, keys : Enumerable(Gdk::KeymapKey)) : Bool
      # gdk_display_map_keyval: (Method)
      # @keyval:
      # @keys: (out) (transfer full) (array length=n_keys element-type Interface)
      # @n_keys: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_keys = keys.size
      # Generator::ArrayArgPlan
      keys = keys.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGdk::KeymapKey))

      # C call
      _retval = LibGdk.gdk_display_map_keyval(to_unsafe, keyval, keys, n_keys)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def notify_startup_complete(startup_id : ::String) : Nil
      # gdk_display_notify_startup_complete: (Method)
      # @startup_id:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_display_notify_startup_complete(to_unsafe, startup_id)

      # Return value handling
    end

    def prepare_gl : Bool
      # gdk_display_prepare_gl: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGdk.gdk_display_prepare_gl(to_unsafe, pointerof(_error))

      # Error check
      Gdk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def put_event(event : Gdk::Event) : Nil
      # gdk_display_put_event: (Method)
      # @event:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_display_put_event(to_unsafe, event)

      # Return value handling
    end

    def supports_input_shapes : Bool
      # gdk_display_supports_input_shapes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_supports_input_shapes(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def supports_shadow_width : Bool
      # gdk_display_supports_shadow_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_display_supports_shadow_width(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def sync : Nil
      # gdk_display_sync: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_display_sync(to_unsafe)

      # Return value handling
    end

    def translate_key(keycode : UInt32, state : Gdk::ModifierType, group : Int32) : Bool
      # gdk_display_translate_key: (Method)
      # @keycode:
      # @state:
      # @group:
      # @keyval: (out) (transfer full) (optional)
      # @effective_group: (out) (transfer full) (optional)
      # @level: (out) (transfer full) (optional)
      # @consumed: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      keyval = Pointer(UInt32).null         # Generator::OutArgUsedInReturnPlan
      effective_group = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      level = Pointer(Int32).null           # Generator::OutArgUsedInReturnPlan
      consumed = Pointer(UInt32).null
      # C call
      _retval = LibGdk.gdk_display_translate_key(to_unsafe, keycode, state, group, keyval, effective_group, level, consumed)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ClosedSignal < GObject::Signal
      def name : String
        @detail ? "closed::#{@detail}" : "closed"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_is_error : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          is_error = GICrystal.to_bool(lib_is_error)
          ::Box(Proc(Bool, Nil)).unbox(_lib_box).call(is_error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Display, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_is_error : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gdk::Display.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          is_error = GICrystal.to_bool(lib_is_error)
          ::Box(Proc(Gdk::Display, Bool, Nil)).unbox(_lib_box).call(_sender, is_error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(is_error : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "closed", is_error)
      end
    end

    def closed_signal
      ClosedSignal.new(self)
    end

    struct OpenedSignal < GObject::Signal
      def name : String
        @detail ? "opened::#{@detail}" : "opened"
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

      def connect(handler : Proc(Gdk::Display, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Display.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Display, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "opened")
      end
    end

    def opened_signal
      OpenedSignal.new(self)
    end

    struct SeatAddedSignal < GObject::Signal
      def name : String
        @detail ? "seat-added::#{@detail}" : "seat-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Seat, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Seat, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_seat : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          seat = Gdk::Seat.new(lib_seat, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Seat, Nil)).unbox(_lib_box).call(seat)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Display, Gdk::Seat, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_seat : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Display.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          seat = Gdk::Seat.new(lib_seat, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Display, Gdk::Seat, Nil)).unbox(_lib_box).call(_sender, seat)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(seat : Gdk::Seat) : Nil
        LibGObject.g_signal_emit_by_name(@source, "seat-added", seat)
      end
    end

    def seat_added_signal
      SeatAddedSignal.new(self)
    end

    struct SeatRemovedSignal < GObject::Signal
      def name : String
        @detail ? "seat-removed::#{@detail}" : "seat-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Seat, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Seat, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_seat : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          seat = Gdk::Seat.new(lib_seat, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Seat, Nil)).unbox(_lib_box).call(seat)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Display, Gdk::Seat, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_seat : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Display.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          seat = Gdk::Seat.new(lib_seat, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Display, Gdk::Seat, Nil)).unbox(_lib_box).call(_sender, seat)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(seat : Gdk::Seat) : Nil
        LibGObject.g_signal_emit_by_name(@source, "seat-removed", seat)
      end
    end

    def seat_removed_signal
      SeatRemovedSignal.new(self)
    end

    struct SettingChangedSignal < GObject::Signal
      def name : String
        @detail ? "setting-changed::#{@detail}" : "setting-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_setting : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          setting = ::String.new(lib_setting)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(setting)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Display, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_setting : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gdk::Display.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          setting = ::String.new(lib_setting)
          ::Box(Proc(Gdk::Display, ::String, Nil)).unbox(_lib_box).call(_sender, setting)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(setting : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "setting-changed", setting)
      end
    end

    def setting_changed_signal
      SettingChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
