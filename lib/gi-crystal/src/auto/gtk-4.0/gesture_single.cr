require "./gesture"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GestureSingle < Gesture
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GestureSingleClass), class_init,
        sizeof(LibGtk::GestureSingle), instance_init, 0)
    end

    GICrystal.declare_new_method(GestureSingle, g_object_get_qdata)

    # Initialize a new `GestureSingle`.
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

    def initialize(*, button : UInt32? = nil, exclusive : Bool? = nil, n_points : UInt32? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, touch_only : Bool? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !button.nil?
        (_names.to_unsafe + _n).value = "button".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, button)
        _n += 1
      end
      if !exclusive.nil?
        (_names.to_unsafe + _n).value = "exclusive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, exclusive)
        _n += 1
      end
      if !n_points.nil?
        (_names.to_unsafe + _n).value = "n-points".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_points)
        _n += 1
      end
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
      if !touch_only.nil?
        (_names.to_unsafe + _n).value = "touch-only".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, touch_only)
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
      @@g_type ||= LibGtk.gtk_gesture_single_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GestureSingle.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def button=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "button", unsafe_value, Pointer(Void).null)
      value
    end

    def button : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "button", pointerof(value), Pointer(Void).null)
      value
    end

    def exclusive=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "exclusive", unsafe_value, Pointer(Void).null)
      value
    end

    def exclusive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "exclusive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def touch_only=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "touch-only", unsafe_value, Pointer(Void).null)
      value
    end

    def touch_only? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "touch-only", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def button : UInt32
      # gtk_gesture_single_get_button: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_single_get_button(to_unsafe)

      # Return value handling
      _retval
    end

    def current_button : UInt32
      # gtk_gesture_single_get_current_button: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_single_get_current_button(to_unsafe)

      # Return value handling
      _retval
    end

    def current_sequence : Gdk::EventSequence?
      # gtk_gesture_single_get_current_sequence: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_gesture_single_get_current_sequence(to_unsafe)

      # Return value handling
      Gdk::EventSequence.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def exclusive : Bool
      # gtk_gesture_single_get_exclusive: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_single_get_exclusive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def touch_only : Bool
      # gtk_gesture_single_get_touch_only: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gesture_single_get_touch_only(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def button=(button : UInt32) : Nil
      # gtk_gesture_single_set_button: (Method | Setter)
      # @button:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gesture_single_set_button(to_unsafe, button)

      # Return value handling
    end

    def exclusive=(exclusive : Bool) : Nil
      # gtk_gesture_single_set_exclusive: (Method | Setter)
      # @exclusive:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gesture_single_set_exclusive(to_unsafe, exclusive)

      # Return value handling
    end

    def touch_only=(touch_only : Bool) : Nil
      # gtk_gesture_single_set_touch_only: (Method | Setter)
      # @touch_only:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gesture_single_set_touch_only(to_unsafe, touch_only)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
