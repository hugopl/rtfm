require "./animation"

module Adw
  @[GICrystal::GeneratedWrapper]
  class TimedAnimation < Animation
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TimedAnimation, g_object_get_qdata)

    # Initialize a new `TimedAnimation`.
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

    def initialize(*, alternate : Bool? = nil, duration : UInt32? = nil, easing : Adw::Easing? = nil, follow_enable_animations_setting : Bool? = nil, repeat_count : UInt32? = nil, reverse : Bool? = nil, state : Adw::AnimationState? = nil, target : Adw::AnimationTarget? = nil, value : Float64? = nil, value_from : Float64? = nil, value_to : Float64? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[12]
      _values = StaticArray(LibGObject::Value, 12).new(LibGObject::Value.new)
      _n = 0

      if !alternate.nil?
        (_names.to_unsafe + _n).value = "alternate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, alternate)
        _n += 1
      end
      if !duration.nil?
        (_names.to_unsafe + _n).value = "duration".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, duration)
        _n += 1
      end
      if !easing.nil?
        (_names.to_unsafe + _n).value = "easing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, easing)
        _n += 1
      end
      if !follow_enable_animations_setting.nil?
        (_names.to_unsafe + _n).value = "follow-enable-animations-setting".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, follow_enable_animations_setting)
        _n += 1
      end
      if !repeat_count.nil?
        (_names.to_unsafe + _n).value = "repeat-count".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, repeat_count)
        _n += 1
      end
      if !reverse.nil?
        (_names.to_unsafe + _n).value = "reverse".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reverse)
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
      if !value_from.nil?
        (_names.to_unsafe + _n).value = "value-from".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value_from)
        _n += 1
      end
      if !value_to.nil?
        (_names.to_unsafe + _n).value = "value-to".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value_to)
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
      @@g_type ||= LibAdw.adw_timed_animation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::TimedAnimation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def alternate=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "alternate", unsafe_value, Pointer(Void).null)
      value
    end

    def alternate? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "alternate", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def duration=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "duration", unsafe_value, Pointer(Void).null)
      value
    end

    def duration : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "duration", pointerof(value), Pointer(Void).null)
      value
    end

    def easing=(value : Adw::Easing) : Adw::Easing
      unsafe_value = value

      LibGObject.g_object_set(self, "easing", unsafe_value, Pointer(Void).null)
      value
    end

    def easing : Adw::Easing
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "easing", pointerof(value), Pointer(Void).null)
      Adw::Easing.new(value)
    end

    def repeat_count=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "repeat-count", unsafe_value, Pointer(Void).null)
      value
    end

    def repeat_count : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "repeat-count", pointerof(value), Pointer(Void).null)
      value
    end

    def reverse=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reverse", unsafe_value, Pointer(Void).null)
      value
    end

    def reverse? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reverse", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def value_from=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "value-from", unsafe_value, Pointer(Void).null)
      value
    end

    def value_from : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "value-from", pointerof(value), Pointer(Void).null)
      value
    end

    def value_to=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "value-to", unsafe_value, Pointer(Void).null)
      value
    end

    def value_to : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "value-to", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(widget : Gtk::Widget, from : Float64, to : Float64, duration : UInt32, target : Adw::AnimationTarget) : self
      # adw_timed_animation_new: (Constructor)
      # @widget:
      # @from:
      # @to:
      # @duration:
      # @target: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(target)

      # C call
      _retval = LibAdw.adw_timed_animation_new(widget, from, to, duration, target)

      # Return value handling
      Adw::TimedAnimation.new(_retval, GICrystal::Transfer::Full)
    end

    def alternate : Bool
      # adw_timed_animation_get_alternate: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_timed_animation_get_alternate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def duration : UInt32
      # adw_timed_animation_get_duration: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_timed_animation_get_duration(to_unsafe)

      # Return value handling
      _retval
    end

    def easing : Adw::Easing
      # adw_timed_animation_get_easing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_timed_animation_get_easing(to_unsafe)

      # Return value handling
      Adw::Easing.new(_retval)
    end

    def repeat_count : UInt32
      # adw_timed_animation_get_repeat_count: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_timed_animation_get_repeat_count(to_unsafe)

      # Return value handling
      _retval
    end

    def reverse : Bool
      # adw_timed_animation_get_reverse: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_timed_animation_get_reverse(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def value_from : Float64
      # adw_timed_animation_get_value_from: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_timed_animation_get_value_from(to_unsafe)

      # Return value handling
      _retval
    end

    def value_to : Float64
      # adw_timed_animation_get_value_to: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_timed_animation_get_value_to(to_unsafe)

      # Return value handling
      _retval
    end

    def alternate=(alternate : Bool) : Nil
      # adw_timed_animation_set_alternate: (Method | Setter)
      # @alternate:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_timed_animation_set_alternate(to_unsafe, alternate)

      # Return value handling
    end

    def duration=(duration : UInt32) : Nil
      # adw_timed_animation_set_duration: (Method | Setter)
      # @duration:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_timed_animation_set_duration(to_unsafe, duration)

      # Return value handling
    end

    def easing=(easing : Adw::Easing) : Nil
      # adw_timed_animation_set_easing: (Method | Setter)
      # @easing:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_timed_animation_set_easing(to_unsafe, easing)

      # Return value handling
    end

    def repeat_count=(repeat_count : UInt32) : Nil
      # adw_timed_animation_set_repeat_count: (Method | Setter)
      # @repeat_count:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_timed_animation_set_repeat_count(to_unsafe, repeat_count)

      # Return value handling
    end

    def reverse=(reverse : Bool) : Nil
      # adw_timed_animation_set_reverse: (Method | Setter)
      # @reverse:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_timed_animation_set_reverse(to_unsafe, reverse)

      # Return value handling
    end

    def value_from=(value : Float64) : Nil
      # adw_timed_animation_set_value_from: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_timed_animation_set_value_from(to_unsafe, value)

      # Return value handling
    end

    def value_to=(value : Float64) : Nil
      # adw_timed_animation_set_value_to: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_timed_animation_set_value_to(to_unsafe, value)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
