require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Seat < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Seat, g_object_get_qdata)

    # Initialize a new `Seat`.
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

    def initialize(*, display : Gdk::Display? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
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
      @@g_type ||= LibGdk.gdk_seat_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Seat.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def capabilities : Gdk::SeatCapabilities
      # gdk_seat_get_capabilities: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_seat_get_capabilities(to_unsafe)

      # Return value handling
      Gdk::SeatCapabilities.new(_retval)
    end

    def devices(capabilities : Gdk::SeatCapabilities) : GLib::List
      # gdk_seat_get_devices: (Method)
      # @capabilities:
      # Returns: (transfer container)

      # C call
      _retval = LibGdk.gdk_seat_get_devices(to_unsafe, capabilities)

      # Return value handling
      GLib::List(Gdk::Device).new(_retval, GICrystal::Transfer::Container)
    end

    def display : Gdk::Display
      # gdk_seat_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_seat_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def keyboard : Gdk::Device?
      # gdk_seat_get_keyboard: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_seat_get_keyboard(to_unsafe)

      # Return value handling
      Gdk::Device.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def pointer : Gdk::Device?
      # gdk_seat_get_pointer: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_seat_get_pointer(to_unsafe)

      # Return value handling
      Gdk::Device.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tools : GLib::List
      # gdk_seat_get_tools: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGdk.gdk_seat_get_tools(to_unsafe)

      # Return value handling
      GLib::List(Gdk::DeviceTool).new(_retval, GICrystal::Transfer::Container)
    end

    struct DeviceAddedSignal < GObject::Signal
      def name : String
        @detail ? "device-added::#{@detail}" : "device-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Device, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Device, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_device : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          device = Gdk::Device.new(lib_device, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Device, Nil)).unbox(_lib_box).call(device)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Seat, Gdk::Device, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_device : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Seat.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          device = Gdk::Device.new(lib_device, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Seat, Gdk::Device, Nil)).unbox(_lib_box).call(_sender, device)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(device : Gdk::Device) : Nil
        LibGObject.g_signal_emit_by_name(@source, "device-added", device)
      end
    end

    def device_added_signal
      DeviceAddedSignal.new(self)
    end

    struct DeviceRemovedSignal < GObject::Signal
      def name : String
        @detail ? "device-removed::#{@detail}" : "device-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::Device, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::Device, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_device : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          device = Gdk::Device.new(lib_device, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Device, Nil)).unbox(_lib_box).call(device)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Seat, Gdk::Device, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_device : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Seat.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          device = Gdk::Device.new(lib_device, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Seat, Gdk::Device, Nil)).unbox(_lib_box).call(_sender, device)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(device : Gdk::Device) : Nil
        LibGObject.g_signal_emit_by_name(@source, "device-removed", device)
      end
    end

    def device_removed_signal
      DeviceRemovedSignal.new(self)
    end

    struct ToolAddedSignal < GObject::Signal
      def name : String
        @detail ? "tool-added::#{@detail}" : "tool-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::DeviceTool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::DeviceTool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tool : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tool = Gdk::DeviceTool.new(lib_tool, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::DeviceTool, Nil)).unbox(_lib_box).call(tool)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Seat, Gdk::DeviceTool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tool : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Seat.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tool = Gdk::DeviceTool.new(lib_tool, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Seat, Gdk::DeviceTool, Nil)).unbox(_lib_box).call(_sender, tool)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tool : Gdk::DeviceTool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "tool-added", tool)
      end
    end

    def tool_added_signal
      ToolAddedSignal.new(self)
    end

    struct ToolRemovedSignal < GObject::Signal
      def name : String
        @detail ? "tool-removed::#{@detail}" : "tool-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::DeviceTool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::DeviceTool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tool : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tool = Gdk::DeviceTool.new(lib_tool, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::DeviceTool, Nil)).unbox(_lib_box).call(tool)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Seat, Gdk::DeviceTool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tool : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Seat.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tool = Gdk::DeviceTool.new(lib_tool, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Seat, Gdk::DeviceTool, Nil)).unbox(_lib_box).call(_sender, tool)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tool : Gdk::DeviceTool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "tool-removed", tool)
      end
    end

    def tool_removed_signal
      ToolRemovedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
