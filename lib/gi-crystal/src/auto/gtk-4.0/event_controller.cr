require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class EventController < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::EventControllerClass), class_init,
        sizeof(LibGtk::EventController), instance_init, 0)
    end

    GICrystal.declare_new_method(EventController, g_object_get_qdata)

    # Initialize a new `EventController`.
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
      @@g_type ||= LibGtk.gtk_event_controller_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::EventController.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def propagation_limit=(value : Gtk::PropagationLimit) : Gtk::PropagationLimit
      unsafe_value = value

      LibGObject.g_object_set(self, "propagation-limit", unsafe_value, Pointer(Void).null)
      value
    end

    def propagation_limit : Gtk::PropagationLimit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "propagation-limit", pointerof(value), Pointer(Void).null)
      Gtk::PropagationLimit.new(value)
    end

    def propagation_phase=(value : Gtk::PropagationPhase) : Gtk::PropagationPhase
      unsafe_value = value

      LibGObject.g_object_set(self, "propagation-phase", unsafe_value, Pointer(Void).null)
      value
    end

    def propagation_phase : Gtk::PropagationPhase
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "propagation-phase", pointerof(value), Pointer(Void).null)
      Gtk::PropagationPhase.new(value)
    end

    def widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def current_event : Gdk::Event?
      # gtk_event_controller_get_current_event: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_event_controller_get_current_event(to_unsafe)

      # Return value handling
      Gdk::Event.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def current_event_device : Gdk::Device?
      # gtk_event_controller_get_current_event_device: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_event_controller_get_current_event_device(to_unsafe)

      # Return value handling
      Gdk::Device.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def current_event_state : Gdk::ModifierType
      # gtk_event_controller_get_current_event_state: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_get_current_event_state(to_unsafe)

      # Return value handling
      Gdk::ModifierType.new(_retval)
    end

    def current_event_time : UInt32
      # gtk_event_controller_get_current_event_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_get_current_event_time(to_unsafe)

      # Return value handling
      _retval
    end

    def name : ::String?
      # gtk_event_controller_get_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_event_controller_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def propagation_limit : Gtk::PropagationLimit
      # gtk_event_controller_get_propagation_limit: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_get_propagation_limit(to_unsafe)

      # Return value handling
      Gtk::PropagationLimit.new(_retval)
    end

    def propagation_phase : Gtk::PropagationPhase
      # gtk_event_controller_get_propagation_phase: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_event_controller_get_propagation_phase(to_unsafe)

      # Return value handling
      Gtk::PropagationPhase.new(_retval)
    end

    def widget : Gtk::Widget?
      # gtk_event_controller_get_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_event_controller_get_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def reset : Nil
      # gtk_event_controller_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_event_controller_reset(to_unsafe)

      # Return value handling
    end

    def name=(name : ::String?) : Nil
      # gtk_event_controller_set_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_event_controller_set_name(to_unsafe, name)

      # Return value handling
    end

    def propagation_limit=(limit : Gtk::PropagationLimit) : Nil
      # gtk_event_controller_set_propagation_limit: (Method | Setter)
      # @limit:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_event_controller_set_propagation_limit(to_unsafe, limit)

      # Return value handling
    end

    def propagation_phase=(phase : Gtk::PropagationPhase) : Nil
      # gtk_event_controller_set_propagation_phase: (Method | Setter)
      # @phase:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_event_controller_set_propagation_phase(to_unsafe, phase)

      # Return value handling
    end

    def static_name=(name : ::String?) : Nil
      # gtk_event_controller_set_static_name: (Method)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_event_controller_set_static_name(to_unsafe, name)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
