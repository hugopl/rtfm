require "./shortcut_trigger"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class KeyvalTrigger < ShortcutTrigger
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::KeyvalTriggerClass), class_init,
        sizeof(LibGtk::KeyvalTrigger), instance_init, 0)
    end

    GICrystal.declare_new_method(KeyvalTrigger, g_object_get_qdata)

    # Initialize a new `KeyvalTrigger`.
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

    def initialize(*, keyval : UInt32? = nil, modifiers : Gdk::ModifierType? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !keyval.nil?
        (_names.to_unsafe + _n).value = "keyval".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, keyval)
        _n += 1
      end
      if !modifiers.nil?
        (_names.to_unsafe + _n).value = "modifiers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modifiers)
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
      @@g_type ||= LibGtk.gtk_keyval_trigger_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::KeyvalTrigger.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def keyval=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "keyval", unsafe_value, Pointer(Void).null)
      value
    end

    def keyval : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "keyval", pointerof(value), Pointer(Void).null)
      value
    end

    def modifiers=(value : Gdk::ModifierType) : Gdk::ModifierType
      unsafe_value = value

      LibGObject.g_object_set(self, "modifiers", unsafe_value, Pointer(Void).null)
      value
    end

    def modifiers : Gdk::ModifierType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "modifiers", pointerof(value), Pointer(Void).null)
      Gdk::ModifierType.new(value)
    end

    def self.new(keyval : UInt32, modifiers : Gdk::ModifierType) : self
      # gtk_keyval_trigger_new: (Constructor)
      # @keyval:
      # @modifiers:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_keyval_trigger_new(keyval, modifiers)

      # Return value handling
      Gtk::KeyvalTrigger.new(_retval, GICrystal::Transfer::Full)
    end

    def keyval : UInt32
      # gtk_keyval_trigger_get_keyval: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_keyval_trigger_get_keyval(to_unsafe)

      # Return value handling
      _retval
    end

    def modifiers : Gdk::ModifierType
      # gtk_keyval_trigger_get_modifiers: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_keyval_trigger_get_modifiers(to_unsafe)

      # Return value handling
      Gdk::ModifierType.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
