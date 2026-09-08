require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class ShortcutsItem < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ShortcutsItem, g_object_get_qdata)

    # Initialize a new `ShortcutsItem`.
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

    def initialize(*, accelerator : ::String? = nil, action_name : ::String? = nil, direction : Gtk::TextDirection? = nil, subtitle : ::String? = nil, title : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !accelerator.nil?
        (_names.to_unsafe + _n).value = "accelerator".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accelerator)
        _n += 1
      end
      if !action_name.nil?
        (_names.to_unsafe + _n).value = "action-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_name)
        _n += 1
      end
      if !direction.nil?
        (_names.to_unsafe + _n).value = "direction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, direction)
        _n += 1
      end
      if !subtitle.nil?
        (_names.to_unsafe + _n).value = "subtitle".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, subtitle)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
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
      @@g_type ||= LibAdw.adw_shortcuts_item_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::ShortcutsItem.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accelerator=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "accelerator", unsafe_value, Pointer(Void).null)
      value
    end

    def accelerator : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "accelerator", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#accelerator` property to nil.
    def accelerator=(value : Nil) : Nil
      LibGObject.g_object_set(self, "accelerator", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#accelerator`, but can return nil.
    def accelerator? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "accelerator", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def action_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "action-name", unsafe_value, Pointer(Void).null)
      value
    end

    def action_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "action-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#action_name` property to nil.
    def action_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "action-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#action_name`, but can return nil.
    def action_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "action-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def direction=(value : Gtk::TextDirection) : Gtk::TextDirection
      unsafe_value = value

      LibGObject.g_object_set(self, "direction", unsafe_value, Pointer(Void).null)
      value
    end

    def direction : Gtk::TextDirection
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "direction", pointerof(value), Pointer(Void).null)
      Gtk::TextDirection.new(value)
    end

    def subtitle=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "subtitle", unsafe_value, Pointer(Void).null)
      value
    end

    def subtitle : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "subtitle", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#subtitle` property to nil.
    def subtitle=(value : Nil) : Nil
      LibGObject.g_object_set(self, "subtitle", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#subtitle`, but can return nil.
    def subtitle? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "subtitle", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def title=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "title", unsafe_value, Pointer(Void).null)
      value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#title` property to nil.
    def title=(value : Nil) : Nil
      LibGObject.g_object_set(self, "title", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(title : ::String, accelerator : ::String) : self
      # adw_shortcuts_item_new: (Constructor)
      # @title:
      # @accelerator:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_shortcuts_item_new(title, accelerator)

      # Return value handling
      Adw::ShortcutsItem.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_action(title : ::String, action_name : ::String) : self
      # adw_shortcuts_item_new_from_action: (Constructor)
      # @title:
      # @action_name:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_shortcuts_item_new_from_action(title, action_name)

      # Return value handling
      Adw::ShortcutsItem.new(_retval, GICrystal::Transfer::Full)
    end

    def accelerator : ::String
      # adw_shortcuts_item_get_accelerator: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_shortcuts_item_get_accelerator(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def action_name : ::String
      # adw_shortcuts_item_get_action_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_shortcuts_item_get_action_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def direction : Gtk::TextDirection
      # adw_shortcuts_item_get_direction: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_shortcuts_item_get_direction(to_unsafe)

      # Return value handling
      Gtk::TextDirection.new(_retval)
    end

    def subtitle : ::String
      # adw_shortcuts_item_get_subtitle: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_shortcuts_item_get_subtitle(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def title : ::String
      # adw_shortcuts_item_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_shortcuts_item_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def accelerator=(accelerator : ::String) : Nil
      # adw_shortcuts_item_set_accelerator: (Method | Setter)
      # @accelerator:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_shortcuts_item_set_accelerator(to_unsafe, accelerator)

      # Return value handling
    end

    def action_name=(action_name : ::String) : Nil
      # adw_shortcuts_item_set_action_name: (Method | Setter)
      # @action_name:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_shortcuts_item_set_action_name(to_unsafe, action_name)

      # Return value handling
    end

    def direction=(direction : Gtk::TextDirection) : Nil
      # adw_shortcuts_item_set_direction: (Method | Setter)
      # @direction:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_shortcuts_item_set_direction(to_unsafe, direction)

      # Return value handling
    end

    def subtitle=(subtitle : ::String) : Nil
      # adw_shortcuts_item_set_subtitle: (Method | Setter)
      # @subtitle:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_shortcuts_item_set_subtitle(to_unsafe, subtitle)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # adw_shortcuts_item_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_shortcuts_item_set_title(to_unsafe, title)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
