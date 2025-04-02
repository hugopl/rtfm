require "./event_controller"
require "../gio-2.0/list_model"

require "./buildable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ShortcutController < EventController
    include Gio::ListModel
    include Buildable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ShortcutControllerClass), class_init,
        sizeof(LibGtk::ShortcutController), instance_init, 0)
    end

    GICrystal.declare_new_method(ShortcutController, g_object_get_qdata)

    # Initialize a new `ShortcutController`.
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

    def initialize(*, item_type : UInt64? = nil, mnemonic_modifiers : Gdk::ModifierType? = nil, model : Gio::ListModel? = nil, n_items : UInt32? = nil, name : ::String? = nil, propagation_limit : Gtk::PropagationLimit? = nil, propagation_phase : Gtk::PropagationPhase? = nil, scope : Gtk::ShortcutScope? = nil, widget : Gtk::Widget? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !item_type.nil?
        (_names.to_unsafe + _n).value = "item-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_type)
        _n += 1
      end
      if !mnemonic_modifiers.nil?
        (_names.to_unsafe + _n).value = "mnemonic-modifiers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mnemonic_modifiers)
        _n += 1
      end
      if !model.nil?
        (_names.to_unsafe + _n).value = "model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, model)
        _n += 1
      end
      if !n_items.nil?
        (_names.to_unsafe + _n).value = "n-items".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_items)
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
      if !scope.nil?
        (_names.to_unsafe + _n).value = "scope".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scope)
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
      @@g_type ||= LibGtk.gtk_shortcut_controller_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ShortcutController.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def item_type : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "item-type", pointerof(value), Pointer(Void).null)
      value
    end

    def mnemonic_modifiers=(value : Gdk::ModifierType) : Gdk::ModifierType
      unsafe_value = value

      LibGObject.g_object_set(self, "mnemonic-modifiers", unsafe_value, Pointer(Void).null)
      value
    end

    def mnemonic_modifiers : Gdk::ModifierType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "mnemonic-modifiers", pointerof(value), Pointer(Void).null)
      Gdk::ModifierType.new(value)
    end

    def model=(value : Gio::ListModel?) : Gio::ListModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "model", unsafe_value, Pointer(Void).null)
      value
    end

    def n_items : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-items", pointerof(value), Pointer(Void).null)
      value
    end

    def scope=(value : Gtk::ShortcutScope) : Gtk::ShortcutScope
      unsafe_value = value

      LibGObject.g_object_set(self, "scope", unsafe_value, Pointer(Void).null)
      value
    end

    def scope : Gtk::ShortcutScope
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "scope", pointerof(value), Pointer(Void).null)
      Gtk::ShortcutScope.new(value)
    end

    def self.new : self
      # gtk_shortcut_controller_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_shortcut_controller_new

      # Return value handling
      Gtk::ShortcutController.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_model(model : Gio::ListModel) : self
      # gtk_shortcut_controller_new_for_model: (Constructor)
      # @model:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_shortcut_controller_new_for_model(model)

      # Return value handling
      Gtk::ShortcutController.new(_retval, GICrystal::Transfer::Full)
    end

    def add_shortcut(shortcut : Gtk::Shortcut) : Nil
      # gtk_shortcut_controller_add_shortcut: (Method)
      # @shortcut: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(shortcut)

      # C call
      LibGtk.gtk_shortcut_controller_add_shortcut(to_unsafe, shortcut)

      # Return value handling
    end

    def mnemonics_modifiers : Gdk::ModifierType
      # gtk_shortcut_controller_get_mnemonics_modifiers: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_shortcut_controller_get_mnemonics_modifiers(to_unsafe)

      # Return value handling
      Gdk::ModifierType.new(_retval)
    end

    def scope : Gtk::ShortcutScope
      # gtk_shortcut_controller_get_scope: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_shortcut_controller_get_scope(to_unsafe)

      # Return value handling
      Gtk::ShortcutScope.new(_retval)
    end

    def remove_shortcut(shortcut : Gtk::Shortcut) : Nil
      # gtk_shortcut_controller_remove_shortcut: (Method)
      # @shortcut:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_shortcut_controller_remove_shortcut(to_unsafe, shortcut)

      # Return value handling
    end

    def mnemonics_modifiers=(modifiers : Gdk::ModifierType) : Nil
      # gtk_shortcut_controller_set_mnemonics_modifiers: (Method | Setter)
      # @modifiers:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_shortcut_controller_set_mnemonics_modifiers(to_unsafe, modifiers)

      # Return value handling
    end

    def scope=(scope : Gtk::ShortcutScope) : Nil
      # gtk_shortcut_controller_set_scope: (Method | Setter)
      # @scope:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_shortcut_controller_set_scope(to_unsafe, scope)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
