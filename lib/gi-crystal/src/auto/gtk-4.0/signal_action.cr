require "./shortcut_action"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class SignalAction < ShortcutAction
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SignalActionClass), class_init,
        sizeof(LibGtk::SignalAction), instance_init, 0)
    end

    GICrystal.declare_new_method(SignalAction, g_object_get_qdata)

    # Initialize a new `SignalAction`.
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

    def initialize(*, signal_name : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !signal_name.nil?
        (_names.to_unsafe + _n).value = "signal-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, signal_name)
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
      @@g_type ||= LibGtk.gtk_signal_action_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::SignalAction.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def signal_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "signal-name", unsafe_value, Pointer(Void).null)
      value
    end

    def signal_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "signal-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#signal_name` property to nil.
    def signal_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "signal-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#signal_name`, but can return nil.
    def signal_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "signal-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(signal_name : ::String) : self
      # gtk_signal_action_new: (Constructor)
      # @signal_name:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_signal_action_new(signal_name)

      # Return value handling
      Gtk::SignalAction.new(_retval, GICrystal::Transfer::Full)
    end

    def signal_name : ::String
      # gtk_signal_action_get_signal_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_signal_action_get_signal_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
