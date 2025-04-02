require "./shortcut_trigger"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class AlternativeTrigger < ShortcutTrigger
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::AlternativeTriggerClass), class_init,
        sizeof(LibGtk::AlternativeTrigger), instance_init, 0)
    end

    GICrystal.declare_new_method(AlternativeTrigger, g_object_get_qdata)

    # Initialize a new `AlternativeTrigger`.
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

    def initialize(*, first : Gtk::ShortcutTrigger? = nil, second : Gtk::ShortcutTrigger? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !first.nil?
        (_names.to_unsafe + _n).value = "first".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, first)
        _n += 1
      end
      if !second.nil?
        (_names.to_unsafe + _n).value = "second".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, second)
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
      @@g_type ||= LibGtk.gtk_alternative_trigger_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AlternativeTrigger.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def first=(value : Gtk::ShortcutTrigger?) : Gtk::ShortcutTrigger?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "first", unsafe_value, Pointer(Void).null)
      value
    end

    def first : Gtk::ShortcutTrigger?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "first", pointerof(value), Pointer(Void).null)
      Gtk::ShortcutTrigger.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def second=(value : Gtk::ShortcutTrigger?) : Gtk::ShortcutTrigger?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "second", unsafe_value, Pointer(Void).null)
      value
    end

    def second : Gtk::ShortcutTrigger?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "second", pointerof(value), Pointer(Void).null)
      Gtk::ShortcutTrigger.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(first : Gtk::ShortcutTrigger, second : Gtk::ShortcutTrigger) : self
      # gtk_alternative_trigger_new: (Constructor)
      # @first: (transfer full)
      # @second: (transfer full)
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(first)
      # Generator::TransferFullArgPlan
      GICrystal.ref(second)

      # C call
      _retval = LibGtk.gtk_alternative_trigger_new(first, second)

      # Return value handling
      Gtk::AlternativeTrigger.new(_retval, GICrystal::Transfer::Full)
    end

    def first : Gtk::ShortcutTrigger
      # gtk_alternative_trigger_get_first: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_alternative_trigger_get_first(to_unsafe)

      # Return value handling
      Gtk::ShortcutTrigger.new(_retval, GICrystal::Transfer::None)
    end

    def second : Gtk::ShortcutTrigger
      # gtk_alternative_trigger_get_second: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_alternative_trigger_get_second(to_unsafe)

      # Return value handling
      Gtk::ShortcutTrigger.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
