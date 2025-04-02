require "../g_object-2.0/object"

module JavaScriptCore
  @[GICrystal::GeneratedWrapper]
  class WeakValue < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WeakValue, g_object_get_qdata)

    # Initialize a new `WeakValue`.
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

    def initialize(*, value : JavaScriptCore::Value? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !value.nil?
        (_names.to_unsafe + _n).value = "value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value)
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
      @@g_type ||= LibJavaScriptCore.jsc_weak_value_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->JavaScriptCore::WeakValue.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def value=(value : JavaScriptCore::Value?) : JavaScriptCore::Value?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "value", unsafe_value, Pointer(Void).null)
      value
    end

    def self.new(value : JavaScriptCore::Value) : self
      # jsc_weak_value_new: (Constructor)
      # @value:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_weak_value_new(value)

      # Return value handling
      JavaScriptCore::WeakValue.new(_retval, GICrystal::Transfer::Full)
    end

    def value : JavaScriptCore::Value
      # jsc_weak_value_get_value: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_weak_value_get_value(to_unsafe)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    struct ClearedSignal < GObject::Signal
      def name : String
        @detail ? "cleared::#{@detail}" : "cleared"
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

      def connect(handler : Proc(JavaScriptCore::WeakValue, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = JavaScriptCore::WeakValue.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(JavaScriptCore::WeakValue, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "cleared")
      end
    end

    def cleared_signal
      ClearedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
