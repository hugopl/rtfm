require "./object"

module GObject
  @[GICrystal::GeneratedWrapper]
  class SignalGroup < Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SignalGroup, g_object_get_qdata)

    # Initialize a new `SignalGroup`.
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

    def initialize(*, target : GObject::Object? = nil, target_type : UInt64? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !target.nil?
        (_names.to_unsafe + _n).value = "target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, target)
        _n += 1
      end
      if !target_type.nil?
        (_names.to_unsafe + _n).value = "target-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, target_type)
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
      @@g_type ||= LibGObject.g_signal_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->GObject::SignalGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def target=(value : GObject::Object?) : GObject::Object?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "target", unsafe_value, Pointer(Void).null)
      value
    end

    def target : GObject::Object?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "target", pointerof(value), Pointer(Void).null)
      GObject::Object.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def target_type=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "target-type", unsafe_value, Pointer(Void).null)
      value
    end

    def target_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "target-type", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(target_type : UInt64) : self
      # g_signal_group_new: (Constructor)
      # @target_type:
      # Returns: (transfer full)

      # C call
      _retval = LibGObject.g_signal_group_new(target_type)

      # Return value handling
      GObject::SignalGroup.new(_retval, GICrystal::Transfer::Full)
    end

    def block : Nil
      # g_signal_group_block: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_signal_group_block(to_unsafe)

      # Return value handling
    end

    def connect_closure(detailed_signal : ::String, closure : GObject::Closure, after : Bool) : Nil
      # g_signal_group_connect_closure: (Method)
      # @detailed_signal:
      # @closure:
      # @after:
      # Returns: (transfer none)

      # C call
      LibGObject.g_signal_group_connect_closure(to_unsafe, detailed_signal, closure, after)

      # Return value handling
    end

    def connect_data(detailed_signal : ::String, c_handler : GObject::Callback, data : Pointer(Void)?, notify : GObject::ClosureNotify, flags : GObject::ConnectFlags) : Nil
      # g_signal_group_connect_data: (Method)
      # @detailed_signal:
      # @c_handler:
      # @data: (nullable)
      # @notify:
      # @flags:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGObject.g_signal_group_connect_data(to_unsafe, detailed_signal, c_handler, data, notify, flags)

      # Return value handling
    end

    def connect_swapped(detailed_signal : ::String, c_handler : GObject::Callback, data : Pointer(Void)?) : Nil
      # g_signal_group_connect_swapped: (Method)
      # @detailed_signal:
      # @c_handler:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGObject.g_signal_group_connect_swapped(to_unsafe, detailed_signal, c_handler, data)

      # Return value handling
    end

    def dup_target : GObject::Object?
      # g_signal_group_dup_target: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGObject.g_signal_group_dup_target(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def target=(target : GObject::Object?) : Nil
      # g_signal_group_set_target: (Method | Setter)
      # @target: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      target = if target.nil?
                 Pointer(Void).null
               else
                 target.to_unsafe
               end

      # C call
      LibGObject.g_signal_group_set_target(to_unsafe, target)

      # Return value handling
    end

    def unblock : Nil
      # g_signal_group_unblock: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_signal_group_unblock(to_unsafe)

      # Return value handling
    end

    struct BindSignal < GObject::Signal
      def name : String
        @detail ? "bind::#{@detail}" : "bind"
      end

      def connect(*, after : Bool = false, &block : Proc(GObject::Object, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_instance : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          instance = GObject::Object.new(lib_instance, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Nil)).unbox(_lib_box).call(instance)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(GObject::SignalGroup, GObject::Object, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_instance : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = GObject::SignalGroup.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          instance = GObject::Object.new(lib_instance, GICrystal::Transfer::None)
          ::Box(Proc(GObject::SignalGroup, GObject::Object, Nil)).unbox(_lib_box).call(_sender, instance)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(instance : GObject::Object) : Nil
        LibGObject.g_signal_emit_by_name(@source, "bind", instance)
      end
    end

    def bind_signal
      BindSignal.new(self)
    end

    struct UnbindSignal < GObject::Signal
      def name : String
        @detail ? "unbind::#{@detail}" : "unbind"
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

      def connect(handler : Proc(GObject::SignalGroup, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = GObject::SignalGroup.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(GObject::SignalGroup, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "unbind")
      end
    end

    def unbind_signal
      UnbindSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
