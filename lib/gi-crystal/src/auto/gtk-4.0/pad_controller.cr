require "./event_controller"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PadController < EventController
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::PadControllerClass), class_init,
        sizeof(LibGtk::PadController), instance_init, 0)
    end

    GICrystal.declare_new_method(PadController, g_object_get_qdata)

    # Initialize a new `PadController`.
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

    def initialize(*, action_group : Gio::ActionGroup? = nil, name : ::String? = nil, pad : Gdk::Device? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !action_group.nil?
        (_names.to_unsafe + _n).value = "action-group".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_group)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !pad.nil?
        (_names.to_unsafe + _n).value = "pad".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pad)
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
      @@g_type ||= LibGtk.gtk_pad_controller_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PadController.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def action_group=(value : Gio::ActionGroup?) : Gio::ActionGroup?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "action-group", unsafe_value, Pointer(Void).null)
      value
    end

    def action_group : Gio::ActionGroup?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "action-group", pointerof(value), Pointer(Void).null)
      Gio::AbstractActionGroup.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def pad=(value : Gdk::Device?) : Gdk::Device?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "pad", unsafe_value, Pointer(Void).null)
      value
    end

    def pad : Gdk::Device?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pad", pointerof(value), Pointer(Void).null)
      Gdk::Device.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(group : Gio::ActionGroup, pad : Gdk::Device?) : self
      # gtk_pad_controller_new: (Constructor)
      # @group:
      # @pad: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      pad = if pad.nil?
              Pointer(Void).null
            else
              pad.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_pad_controller_new(group, pad)

      # Return value handling
      Gtk::PadController.new(_retval, GICrystal::Transfer::Full)
    end

    def set_action(type : Gtk::PadActionType, index : Int32, mode : Int32, label : ::String, action_name : ::String) : Nil
      # gtk_pad_controller_set_action: (Method)
      # @type:
      # @index:
      # @mode:
      # @label:
      # @action_name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_pad_controller_set_action(to_unsafe, type, index, mode, label, action_name)

      # Return value handling
    end

    def action_entries=(entries : Enumerable(Gtk::PadActionEntry)) : Nil
      # gtk_pad_controller_set_action_entries: (Method)
      # @entries: (array length=n_entries element-type Interface)
      # @n_entries:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_entries = entries.size
      # Generator::ArrayArgPlan
      entries = entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGtk::PadActionEntry))

      # C call
      LibGtk.gtk_pad_controller_set_action_entries(to_unsafe, entries, n_entries)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
