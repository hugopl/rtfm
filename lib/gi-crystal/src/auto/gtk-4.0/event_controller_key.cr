require "./event_controller"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class EventControllerKey < EventController
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::EventControllerKeyClass), class_init,
        sizeof(LibGtk::EventControllerKey), instance_init, 0)
    end

    GICrystal.declare_new_method(EventControllerKey, g_object_get_qdata)

    # Initialize a new `EventControllerKey`.
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

    def initialize(*, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !propagation_limit.nil?
        (_names.to_unsafe + _n).value = "propagation-limit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, propagation_limit)
        _n += 1
      end
      if !propagation_phase.nil?
        (_names.to_unsafe + _n).value = "propagation-phase".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, propagation_phase)
        _n += 1
      end
      if !widget.nil?
        (_names.to_unsafe + _n).value = "widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, widget)
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
      @@g_type ||= LibGtk.gtk_event_controller_key_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::EventControllerKey.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_event_controller_key_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_event_controller_key_new

      # Return value handling
      Gtk::EventControllerKey.new(_retval, GICrystal::Transfer::Full)
    end

    def forward(widget : Gtk::Widget) : Bool
      # gtk_event_controller_key_forward: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_key_forward(to_unsafe, widget)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def group : UInt32
      # gtk_event_controller_key_get_group: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_key_get_group(to_unsafe)

      # Return value handling
      _retval
    end

    def im_context : Gtk::IMContext?
      # gtk_event_controller_key_get_im_context: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_event_controller_key_get_im_context(to_unsafe)

      # Return value handling
      Gtk::IMContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def im_context=(im_context : Gtk::IMContext?) : Nil
      # gtk_event_controller_key_set_im_context: (Method)
      # @im_context: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      im_context = if im_context.nil?
                     Pointer(Void).null
                   else
                     im_context.to_unsafe
                   end

      # C call
      LibGtk.gtk_event_controller_key_set_im_context(to_unsafe, im_context)

      # Return value handling
    end

    struct ImUpdateSignal < GObject::Signal
      def name : String
        @detail ? "im-update::#{@detail}" : "im-update"
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

      def connect(handler : Proc(Gtk::EventControllerKey, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerKey.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::EventControllerKey, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "im-update")
      end
    end

    def im_update_signal
      ImUpdateSignal.new(self)
    end

    struct KeyPressedSignal < GObject::Signal
      def name : String
        @detail ? "key-pressed::#{@detail}" : "key-pressed"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, UInt32, Gdk::ModifierType, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, UInt32, Gdk::ModifierType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_keyval : UInt32, lib_keycode : UInt32, lib_state : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          keyval = lib_keyval
          # NoStrategy
          keycode = lib_keycode
          # Generator::BuiltInTypeArgPlan
          state = Gdk::ModifierType.new(lib_state)
          ::Box(Proc(UInt32, UInt32, Gdk::ModifierType, Bool)).unbox(_lib_box).call(keyval, keycode, state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EventControllerKey, UInt32, UInt32, Gdk::ModifierType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_keyval : UInt32, lib_keycode : UInt32, lib_state : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerKey.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          keyval = lib_keyval
          # NoStrategy
          keycode = lib_keycode
          # Generator::BuiltInTypeArgPlan
          state = Gdk::ModifierType.new(lib_state)
          ::Box(Proc(Gtk::EventControllerKey, UInt32, UInt32, Gdk::ModifierType, Bool)).unbox(_lib_box).call(_sender, keyval, keycode, state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(keyval : UInt32, keycode : UInt32, state : Gdk::ModifierType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "key-pressed", keyval, keycode, state)
      end
    end

    def key_pressed_signal
      KeyPressedSignal.new(self)
    end

    struct KeyReleasedSignal < GObject::Signal
      def name : String
        @detail ? "key-released::#{@detail}" : "key-released"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, UInt32, Gdk::ModifierType, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, UInt32, Gdk::ModifierType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_keyval : UInt32, lib_keycode : UInt32, lib_state : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          keyval = lib_keyval
          # NoStrategy
          keycode = lib_keycode
          # Generator::BuiltInTypeArgPlan
          state = Gdk::ModifierType.new(lib_state)
          ::Box(Proc(UInt32, UInt32, Gdk::ModifierType, Nil)).unbox(_lib_box).call(keyval, keycode, state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EventControllerKey, UInt32, UInt32, Gdk::ModifierType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_keyval : UInt32, lib_keycode : UInt32, lib_state : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerKey.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          keyval = lib_keyval
          # NoStrategy
          keycode = lib_keycode
          # Generator::BuiltInTypeArgPlan
          state = Gdk::ModifierType.new(lib_state)
          ::Box(Proc(Gtk::EventControllerKey, UInt32, UInt32, Gdk::ModifierType, Nil)).unbox(_lib_box).call(_sender, keyval, keycode, state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(keyval : UInt32, keycode : UInt32, state : Gdk::ModifierType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "key-released", keyval, keycode, state)
      end
    end

    def key_released_signal
      KeyReleasedSignal.new(self)
    end

    struct ModifiersSignal < GObject::Signal
      def name : String
        @detail ? "modifiers::#{@detail}" : "modifiers"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::ModifierType, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::ModifierType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_state : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          state = Gdk::ModifierType.new(lib_state)
          ::Box(Proc(Gdk::ModifierType, Bool)).unbox(_lib_box).call(state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::EventControllerKey, Gdk::ModifierType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_state : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::EventControllerKey.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          state = Gdk::ModifierType.new(lib_state)
          ::Box(Proc(Gtk::EventControllerKey, Gdk::ModifierType, Bool)).unbox(_lib_box).call(_sender, state)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(state : Gdk::ModifierType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "modifiers", state)
      end
    end

    def modifiers_signal
      ModifiersSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
