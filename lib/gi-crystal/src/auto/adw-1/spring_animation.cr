require "./animation"

module Adw
  @[GICrystal::GeneratedWrapper]
  class SpringAnimation < Animation
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SpringAnimation, g_object_get_qdata)

    # Initialize a new `SpringAnimation`.
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

    def initialize(*, clamp : Bool? = nil, epsilon : Float64? = nil, estimated_duration : UInt32? = nil, follow_enable_animations_setting : Bool? = nil, initial_velocity : Float64? = nil, spring_params : Adw::SpringParams? = nil, state : Adw::AnimationState? = nil, target : Adw::AnimationTarget? = nil, value : Float64? = nil, value_from : Float64? = nil, value_to : Float64? = nil, velocity : Float64? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[13]
      _values = StaticArray(LibGObject::Value, 13).new(LibGObject::Value.new)
      _n = 0

      if !clamp.nil?
        (_names.to_unsafe + _n).value = "clamp".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, clamp)
        _n += 1
      end
      if !epsilon.nil?
        (_names.to_unsafe + _n).value = "epsilon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, epsilon)
        _n += 1
      end
      if !estimated_duration.nil?
        (_names.to_unsafe + _n).value = "estimated-duration".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, estimated_duration)
        _n += 1
      end
      if !follow_enable_animations_setting.nil?
        (_names.to_unsafe + _n).value = "follow-enable-animations-setting".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, follow_enable_animations_setting)
        _n += 1
      end
      if !initial_velocity.nil?
        (_names.to_unsafe + _n).value = "initial-velocity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, initial_velocity)
        _n += 1
      end
      if !spring_params.nil?
        (_names.to_unsafe + _n).value = "spring-params".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, spring_params)
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
      if !velocity.nil?
        (_names.to_unsafe + _n).value = "velocity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, velocity)
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
      @@g_type ||= LibAdw.adw_spring_animation_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::SpringAnimation.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def clamp=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "clamp", unsafe_value, Pointer(Void).null)
      value
    end

    def clamp? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "clamp", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def epsilon=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "epsilon", unsafe_value, Pointer(Void).null)
      value
    end

    def epsilon : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "epsilon", pointerof(value), Pointer(Void).null)
      value
    end

    def estimated_duration : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "estimated-duration", pointerof(value), Pointer(Void).null)
      value
    end

    def initial_velocity=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "initial-velocity", unsafe_value, Pointer(Void).null)
      value
    end

    def initial_velocity : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "initial-velocity", pointerof(value), Pointer(Void).null)
      value
    end

    def spring_params=(value : Adw::SpringParams?) : Adw::SpringParams?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "spring-params", unsafe_value, Pointer(Void).null)
      value
    end

    def spring_params : Adw::SpringParams?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "spring-params", pointerof(value), Pointer(Void).null)
      Adw::SpringParams.new(value, GICrystal::Transfer::None) unless value.null?
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

    def velocity : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "velocity", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(widget : Gtk::Widget, from : Float64, to : Float64, spring_params : Adw::SpringParams, target : Adw::AnimationTarget) : self
      # adw_spring_animation_new: (Constructor)
      # @widget:
      # @from:
      # @to:
      # @spring_params: (transfer full)
      # @target: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(target)

      # C call
      _retval = LibAdw.adw_spring_animation_new(widget, from, to, spring_params, target)

      # Return value handling
      Adw::SpringAnimation.new(_retval, GICrystal::Transfer::Full)
    end

    def calculate_value(time : UInt32) : Float64
      # adw_spring_animation_calculate_value: (Method)
      # @time:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_calculate_value(to_unsafe, time)

      # Return value handling
      _retval
    end

    def calculate_velocity(time : UInt32) : Float64
      # adw_spring_animation_calculate_velocity: (Method)
      # @time:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_calculate_velocity(to_unsafe, time)

      # Return value handling
      _retval
    end

    def clamp : Bool
      # adw_spring_animation_get_clamp: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_clamp(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def epsilon : Float64
      # adw_spring_animation_get_epsilon: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_epsilon(to_unsafe)

      # Return value handling
      _retval
    end

    def estimated_duration : UInt32
      # adw_spring_animation_get_estimated_duration: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_estimated_duration(to_unsafe)

      # Return value handling
      _retval
    end

    def initial_velocity : Float64
      # adw_spring_animation_get_initial_velocity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_initial_velocity(to_unsafe)

      # Return value handling
      _retval
    end

    def spring_params : Adw::SpringParams
      # adw_spring_animation_get_spring_params: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_spring_params(to_unsafe)

      # Return value handling
      Adw::SpringParams.new(_retval, GICrystal::Transfer::None)
    end

    def value_from : Float64
      # adw_spring_animation_get_value_from: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_value_from(to_unsafe)

      # Return value handling
      _retval
    end

    def value_to : Float64
      # adw_spring_animation_get_value_to: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_value_to(to_unsafe)

      # Return value handling
      _retval
    end

    def velocity : Float64
      # adw_spring_animation_get_velocity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_animation_get_velocity(to_unsafe)

      # Return value handling
      _retval
    end

    def clamp=(clamp : Bool) : Nil
      # adw_spring_animation_set_clamp: (Method | Setter)
      # @clamp:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spring_animation_set_clamp(to_unsafe, clamp)

      # Return value handling
    end

    def epsilon=(epsilon : Float64) : Nil
      # adw_spring_animation_set_epsilon: (Method | Setter)
      # @epsilon:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spring_animation_set_epsilon(to_unsafe, epsilon)

      # Return value handling
    end

    def initial_velocity=(velocity : Float64) : Nil
      # adw_spring_animation_set_initial_velocity: (Method | Setter)
      # @velocity:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spring_animation_set_initial_velocity(to_unsafe, velocity)

      # Return value handling
    end

    def spring_params=(spring_params : Adw::SpringParams) : Nil
      # adw_spring_animation_set_spring_params: (Method | Setter)
      # @spring_params:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spring_animation_set_spring_params(to_unsafe, spring_params)

      # Return value handling
    end

    def value_from=(value : Float64) : Nil
      # adw_spring_animation_set_value_from: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spring_animation_set_value_from(to_unsafe, value)

      # Return value handling
    end

    def value_to=(value : Float64) : Nil
      # adw_spring_animation_set_value_to: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spring_animation_set_value_to(to_unsafe, value)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
