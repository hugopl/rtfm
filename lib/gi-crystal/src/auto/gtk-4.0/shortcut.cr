require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Shortcut < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ShortcutClass), class_init,
        sizeof(LibGtk::Shortcut), instance_init, 0)
    end

    GICrystal.declare_new_method(Shortcut, g_object_get_qdata)

    # Initialize a new `Shortcut`.
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

    def initialize(*, action : Gtk::ShortcutAction? = nil, arguments : GLib::Variant? = nil, trigger : Gtk::ShortcutTrigger? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !action.nil?
        (_names.to_unsafe + _n).value = "action".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action)
        _n += 1
      end
      if !arguments.nil?
        (_names.to_unsafe + _n).value = "arguments".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, arguments)
        _n += 1
      end
      if !trigger.nil?
        (_names.to_unsafe + _n).value = "trigger".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, trigger)
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
      @@g_type ||= LibGtk.gtk_shortcut_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Shortcut.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def action=(value : Gtk::ShortcutAction?) : Gtk::ShortcutAction?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "action", unsafe_value, Pointer(Void).null)
      value
    end

    def action : Gtk::ShortcutAction?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "action", pointerof(value), Pointer(Void).null)
      Gtk::ShortcutAction.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def arguments=(value : GLib::Variant?) : GLib::Variant?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "arguments", unsafe_value, Pointer(Void).null)
      value
    end

    def arguments : GLib::Variant?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "arguments", pointerof(value), Pointer(Void).null)
      GLib::Variant.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def trigger=(value : Gtk::ShortcutTrigger?) : Gtk::ShortcutTrigger?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "trigger", unsafe_value, Pointer(Void).null)
      value
    end

    def trigger : Gtk::ShortcutTrigger?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "trigger", pointerof(value), Pointer(Void).null)
      Gtk::ShortcutTrigger.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(trigger : Gtk::ShortcutTrigger?, action : Gtk::ShortcutAction?) : self
      # gtk_shortcut_new: (Constructor)
      # @trigger: (transfer full) (nullable)
      # @action: (transfer full) (nullable)
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(trigger)
      # Generator::NullableArrayPlan
      trigger = if trigger.nil?
                  Pointer(Void).null
                else
                  trigger.to_unsafe
                end
      # Generator::TransferFullArgPlan
      GICrystal.ref(action)
      # Generator::NullableArrayPlan
      action = if action.nil?
                 Pointer(Void).null
               else
                 action.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_shortcut_new(trigger, action)

      # Return value handling
      Gtk::Shortcut.new(_retval, GICrystal::Transfer::Full)
    end

    def action : Gtk::ShortcutAction?
      # gtk_shortcut_get_action: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_shortcut_get_action(to_unsafe)

      # Return value handling
      Gtk::ShortcutAction.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def arguments : GLib::Variant?
      # gtk_shortcut_get_arguments: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_shortcut_get_arguments(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def trigger : Gtk::ShortcutTrigger?
      # gtk_shortcut_get_trigger: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_shortcut_get_trigger(to_unsafe)

      # Return value handling
      Gtk::ShortcutTrigger.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def action=(action : Gtk::ShortcutAction?) : Nil
      # gtk_shortcut_set_action: (Method | Setter)
      # @action: (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(action)
      # Generator::NullableArrayPlan
      action = if action.nil?
                 Pointer(Void).null
               else
                 action.to_unsafe
               end

      # C call
      LibGtk.gtk_shortcut_set_action(to_unsafe, action)

      # Return value handling
    end

    def arguments=(args : _?) : Nil
      # gtk_shortcut_set_arguments: (Method | Setter)
      # @args: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      args = if args.nil?
               Pointer(Void).null
             elsif !args.is_a?(GLib::Variant)
               GLib::Variant.new(args).to_unsafe
             else
               args.to_unsafe
             end

      # C call
      LibGtk.gtk_shortcut_set_arguments(to_unsafe, args)

      # Return value handling
    end

    def trigger=(trigger : Gtk::ShortcutTrigger?) : Nil
      # gtk_shortcut_set_trigger: (Method | Setter)
      # @trigger: (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(trigger)
      # Generator::NullableArrayPlan
      trigger = if trigger.nil?
                  Pointer(Void).null
                else
                  trigger.to_unsafe
                end

      # C call
      LibGtk.gtk_shortcut_set_trigger(to_unsafe, trigger)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
