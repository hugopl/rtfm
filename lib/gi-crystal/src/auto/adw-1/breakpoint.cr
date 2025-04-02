require "../g_object-2.0/object"
require "../gtk-4.0/buildable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Breakpoint < GObject::Object
    include Gtk::Buildable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Breakpoint, g_object_get_qdata)

    # Initialize a new `Breakpoint`.
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

    def initialize(*, condition : Adw::BreakpointCondition? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !condition.nil?
        (_names.to_unsafe + _n).value = "condition".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, condition)
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
      @@g_type ||= LibAdw.adw_breakpoint_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Breakpoint.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def condition=(value : Adw::BreakpointCondition?) : Adw::BreakpointCondition?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "condition", unsafe_value, Pointer(Void).null)
      value
    end

    def condition : Adw::BreakpointCondition?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "condition", pointerof(value), Pointer(Void).null)
      Adw::BreakpointCondition.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(condition : Adw::BreakpointCondition) : self
      # adw_breakpoint_new: (Constructor)
      # @condition: (transfer full)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_new(condition)

      # Return value handling
      Adw::Breakpoint.new(_retval, GICrystal::Transfer::Full)
    end

    def add_setter(object : GObject::Object, property : ::String, value : _?) : Nil
      # adw_breakpoint_add_setter: (Method)
      # @object:
      # @property:
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if value.nil?
                Pointer(Void).null
              elsif !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibAdw.adw_breakpoint_add_setter(to_unsafe, object, property, value)

      # Return value handling
    end

    def add_setters(objects : Enumerable(GObject::Object), names : Enumerable(::String), values : Enumerable(_)) : Nil
      # adw_breakpoint_add_settersv: (Method)
      # @n_setters:
      # @objects: (array length=n_setters element-type Interface)
      # @names: (array length=n_setters element-type Utf8)
      # @values: (array length=n_setters element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_setters = objects.size
      # Generator::ArrayArgPlan
      objects = objects.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGObject::Object)))
      # Generator::ArrayLengthArgPlan
      n_setters = names.size
      # Generator::ArrayArgPlan
      names = names.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
      # Generator::ArrayLengthArgPlan
      n_setters = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe }.to_unsafe.as(Pointer(Pointer(LibGObject::Value)))

      # C call
      LibAdw.adw_breakpoint_add_settersv(to_unsafe, n_setters, objects, names, values)

      # Return value handling
    end

    def condition : Adw::BreakpointCondition?
      # adw_breakpoint_get_condition: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_breakpoint_get_condition(to_unsafe)

      # Return value handling
      Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def condition=(condition : Adw::BreakpointCondition?) : Nil
      # adw_breakpoint_set_condition: (Method | Setter)
      # @condition: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      condition = if condition.nil?
                    Pointer(Void).null
                  else
                    condition.to_unsafe
                  end

      # C call
      LibAdw.adw_breakpoint_set_condition(to_unsafe, condition)

      # Return value handling
    end

    struct ApplySignal < GObject::Signal
      def name : String
        @detail ? "apply::#{@detail}" : "apply"
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

      def connect(handler : Proc(Adw::Breakpoint, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Breakpoint.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Breakpoint, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "apply")
      end
    end

    def apply_signal
      ApplySignal.new(self)
    end

    struct UnapplySignal < GObject::Signal
      def name : String
        @detail ? "unapply::#{@detail}" : "unapply"
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

      def connect(handler : Proc(Adw::Breakpoint, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Breakpoint.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Breakpoint, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "unapply")
      end
    end

    def unapply_signal
      UnapplySignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
