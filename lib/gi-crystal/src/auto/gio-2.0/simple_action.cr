require "../g_object-2.0/object"
require "./action"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SimpleAction < GObject::Object
    include Action

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SimpleAction, g_object_get_qdata)

    # Initialize a new `SimpleAction`.
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

    def initialize(*, enabled : Bool? = nil, name : ::String? = nil, parameter_type : GLib::VariantType? = nil, state : GLib::Variant? = nil, state_type : GLib::VariantType? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !enabled.nil?
        (_names.to_unsafe + _n).value = "enabled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enabled)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !parameter_type.nil?
        (_names.to_unsafe + _n).value = "parameter-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parameter_type)
        _n += 1
      end
      if !state.nil?
        (_names.to_unsafe + _n).value = "state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, state)
        _n += 1
      end
      if !state_type.nil?
        (_names.to_unsafe + _n).value = "state-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, state_type)
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
      @@g_type ||= LibGio.g_simple_action_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SimpleAction.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def enabled=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enabled", unsafe_value, Pointer(Void).null)
      value
    end

    def enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def parameter_type=(value : GLib::VariantType?) : GLib::VariantType?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "parameter-type", unsafe_value, Pointer(Void).null)
      value
    end

    def parameter_type : GLib::VariantType?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parameter-type", pointerof(value), Pointer(Void).null)
      GLib::VariantType.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def state=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "state", unsafe_value, Pointer(Void).null)
      value
    end

    def state : GLib::Variant?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "state", pointerof(value), Pointer(Void).null)
      GLib::Variant.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def state_type : GLib::VariantType?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "state-type", pointerof(value), Pointer(Void).null)
      GLib::VariantType.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(name : ::String, parameter_type : GLib::VariantType?) : self
      # g_simple_action_new: (Constructor)
      # @name:
      # @parameter_type: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      parameter_type = if parameter_type.nil?
                         Pointer(Void).null
                       else
                         parameter_type.to_unsafe
                       end

      # C call
      _retval = LibGio.g_simple_action_new(name, parameter_type)

      # Return value handling
      Gio::SimpleAction.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_stateful(name : ::String, parameter_type : GLib::VariantType?, state : _) : self
      # g_simple_action_new_stateful: (Constructor)
      # @name:
      # @parameter_type: (nullable)
      # @state:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      parameter_type = if parameter_type.nil?
                         Pointer(Void).null
                       else
                         parameter_type.to_unsafe
                       end
      # Generator::HandmadeArgPlan
      state = if !state.is_a?(GLib::Variant)
                GLib::Variant.new(state).to_unsafe
              else
                state.to_unsafe
              end

      # C call
      _retval = LibGio.g_simple_action_new_stateful(name, parameter_type, state)

      # Return value handling
      Gio::SimpleAction.new(_retval, GICrystal::Transfer::Full)
    end

    def enabled=(enabled : Bool) : Nil
      # g_simple_action_set_enabled: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_action_set_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def state=(value : _) : Nil
      # g_simple_action_set_state: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_simple_action_set_state(to_unsafe, value)

      # Return value handling
    end

    def state_hint=(state_hint : _?) : Nil
      # g_simple_action_set_state_hint: (Method)
      # @state_hint: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      state_hint = if state_hint.nil?
                     Pointer(Void).null
                   elsif !state_hint.is_a?(GLib::Variant)
                     GLib::Variant.new(state_hint).to_unsafe
                   else
                     state_hint.to_unsafe
                   end

      # C call
      LibGio.g_simple_action_set_state_hint(to_unsafe, state_hint)

      # Return value handling
    end

    struct ActivateSignal < GObject::Signal
      def name : String
        @detail ? "activate::#{@detail}" : "activate"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Variant?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Variant?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_parameter : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::HandmadeArgPlan
          parameter = GLib::Variant.new(lib_parameter, :none) unless lib_parameter.null?
          ::Box(Proc(GLib::Variant?, Nil)).unbox(_lib_box).call(parameter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::SimpleAction, GLib::Variant?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_parameter : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::SimpleAction.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          parameter = GLib::Variant.new(lib_parameter, :none) unless lib_parameter.null?
          ::Box(Proc(Gio::SimpleAction, GLib::Variant?, Nil)).unbox(_lib_box).call(_sender, parameter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(parameter : _?) : Nil
        # Generator::HandmadeArgPlan
        parameter = if parameter.nil?
                      Pointer(Void).null
                    elsif !parameter.is_a?(GLib::Variant)
                      GLib::Variant.new(parameter).to_unsafe
                    else
                      parameter.to_unsafe
                    end

        LibGObject.g_signal_emit_by_name(@source, "activate", parameter)
      end
    end

    def activate_signal
      ActivateSignal.new(self)
    end

    struct ChangeStateSignal < GObject::Signal
      def name : String
        @detail ? "change-state::#{@detail}" : "change-state"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Variant?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Variant?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::HandmadeArgPlan
          value = GLib::Variant.new(lib_value, :none) unless lib_value.null?
          ::Box(Proc(GLib::Variant?, Nil)).unbox(_lib_box).call(value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::SimpleAction, GLib::Variant?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::SimpleAction.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GLib::Variant.new(lib_value, :none) unless lib_value.null?
          ::Box(Proc(Gio::SimpleAction, GLib::Variant?, Nil)).unbox(_lib_box).call(_sender, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(value : _?) : Nil
        # Generator::HandmadeArgPlan
        value = if value.nil?
                  Pointer(Void).null
                elsif !value.is_a?(GLib::Variant)
                  GLib::Variant.new(value).to_unsafe
                else
                  value.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "change-state", value)
      end
    end

    def change_state_signal
      ChangeStateSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
