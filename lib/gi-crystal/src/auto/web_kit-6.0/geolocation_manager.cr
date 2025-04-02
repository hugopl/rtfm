require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class GeolocationManager < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(GeolocationManager, g_object_get_qdata)

    # Initialize a new `GeolocationManager`.
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

    def initialize(*, enable_high_accuracy : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !enable_high_accuracy.nil?
        (_names.to_unsafe + _n).value = "enable-high-accuracy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_high_accuracy)
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
      @@g_type ||= LibWebKit.webkit_geolocation_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::GeolocationManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def enable_high_accuracy? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-high-accuracy", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def failed(error_message : ::String) : Nil
      # webkit_geolocation_manager_failed: (Method)
      # @error_message:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_manager_failed(to_unsafe, error_message)

      # Return value handling
    end

    def enable_high_accuracy : Bool
      # webkit_geolocation_manager_get_enable_high_accuracy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_geolocation_manager_get_enable_high_accuracy(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def update_position(position : WebKit::GeolocationPosition) : Nil
      # webkit_geolocation_manager_update_position: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_manager_update_position(to_unsafe, position)

      # Return value handling
    end

    struct StartSignal < GObject::Signal
      def name : String
        @detail ? "start::#{@detail}" : "start"
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

      def connect(handler : Proc(WebKit::GeolocationManager, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::GeolocationManager.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::GeolocationManager, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "start")
      end
    end

    def start_signal
      StartSignal.new(self)
    end

    struct StopSignal < GObject::Signal
      def name : String
        @detail ? "stop::#{@detail}" : "stop"
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

      def connect(handler : Proc(WebKit::GeolocationManager, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::GeolocationManager.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::GeolocationManager, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "stop")
      end
    end

    def stop_signal
      StopSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
