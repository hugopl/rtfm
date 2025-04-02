require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Animation < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::AnimationClass), class_init,
        sizeof(LibAdw::Animation), instance_init, 0)
    end

    GICrystal.declare_new_method(Animation, g_object_get_qdata)

    # Initialize a new `Animation`.
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

    def initialize(*, follow_enable_animations_setting : Bool? = nil, state : Adw::AnimationState? = nil, target : Adw::AnimationTarget? = nil, value : Float64? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !follow_enable_animations_setting.nil?
        (_names.to_unsafe + _n).value = "follow-enable-animations-setting".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, follow_enable_animations_setting)
        _n += 1
      end
      if !state.nil?
        (_names.to_unsafe + _n).value = "state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, state)
        _n += 1
      end
      if !target.nil?
        (_names.to_unsafe + _n).value = "target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, target)
        _n += 1
      end
      if !value.nil?
        (_names.to_unsafe + _n).value = "value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value)
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
      @@g_type ||= LibAdw.adw_animation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Animation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def follow_enable_animations_setting=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "follow-enable-animations-setting", unsafe_value, Pointer(Void).null)
      value
    end

    def follow_enable_animations_setting? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "follow-enable-animations-setting", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def state : Adw::AnimationState
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "state", pointerof(value), Pointer(Void).null)
      Adw::AnimationState.new(value)
    end

    def target=(value : Adw::AnimationTarget?) : Adw::AnimationTarget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "target", unsafe_value, Pointer(Void).null)
      value
    end

    def target : Adw::AnimationTarget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "target", pointerof(value), Pointer(Void).null)
      Adw::AnimationTarget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def value : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "value", pointerof(value), Pointer(Void).null)
      value
    end

    def widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "widget", unsafe_value, Pointer(Void).null)
      value
    end

    def widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def follow_enable_animations_setting : Bool
      # adw_animation_get_follow_enable_animations_setting: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_animation_get_follow_enable_animations_setting(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def state : Adw::AnimationState
      # adw_animation_get_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_animation_get_state(to_unsafe)

      # Return value handling
      Adw::AnimationState.new(_retval)
    end

    def target : Adw::AnimationTarget
      # adw_animation_get_target: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_animation_get_target(to_unsafe)

      # Return value handling
      Adw::AnimationTarget.new(_retval, GICrystal::Transfer::None)
    end

    def value : Float64
      # adw_animation_get_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_animation_get_value(to_unsafe)

      # Return value handling
      _retval
    end

    def widget : Gtk::Widget
      # adw_animation_get_widget: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_animation_get_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    def pause : Nil
      # adw_animation_pause: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_animation_pause(to_unsafe)

      # Return value handling
    end

    def play : Nil
      # adw_animation_play: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_animation_play(to_unsafe)

      # Return value handling
    end

    def reset : Nil
      # adw_animation_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_animation_reset(to_unsafe)

      # Return value handling
    end

    def resume : Nil
      # adw_animation_resume: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_animation_resume(to_unsafe)

      # Return value handling
    end

    def follow_enable_animations_setting=(setting : Bool) : Nil
      # adw_animation_set_follow_enable_animations_setting: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_animation_set_follow_enable_animations_setting(to_unsafe, setting)

      # Return value handling
    end

    def target=(target : Adw::AnimationTarget) : Nil
      # adw_animation_set_target: (Method | Setter)
      # @target:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_animation_set_target(to_unsafe, target)

      # Return value handling
    end

    def skip : Nil
      # adw_animation_skip: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_animation_skip(to_unsafe)

      # Return value handling
    end

    struct DoneSignal < GObject::Signal
      def name : String
        @detail ? "done::#{@detail}" : "done"
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

      def connect(handler : Proc(Adw::Animation, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Animation.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Animation, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "done")
      end
    end

    def done_signal
      DoneSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
