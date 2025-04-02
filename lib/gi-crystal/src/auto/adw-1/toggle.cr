require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Toggle < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Toggle, g_object_get_qdata)

    # Initialize a new `Toggle`.
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

    def initialize(*, child : Gtk::Widget? = nil, enabled : Bool? = nil, icon_name : ::String? = nil, label : ::String? = nil, name : ::String? = nil, tooltip : ::String? = nil, use_underline : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[7]
      _values = StaticArray(LibGObject::Value, 7).new(LibGObject::Value.new)
      _n = 0

      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
        _n += 1
      end
      if !enabled.nil?
        (_names.to_unsafe + _n).value = "enabled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enabled)
        _n += 1
      end
      if !icon_name.nil?
        (_names.to_unsafe + _n).value = "icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_name)
        _n += 1
      end
      if !label.nil?
        (_names.to_unsafe + _n).value = "label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, label)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !tooltip.nil?
        (_names.to_unsafe + _n).value = "tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip)
        _n += 1
      end
      if !use_underline.nil?
        (_names.to_unsafe + _n).value = "use-underline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_underline)
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
      @@g_type ||= LibAdw.adw_toggle_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Toggle.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def child=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "child", unsafe_value, Pointer(Void).null)
      value
    end

    def child : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "child", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def enabled=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enabled", unsafe_value, Pointer(Void).null)
      value
    end

    def enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def icon_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "icon-name", unsafe_value, Pointer(Void).null)
      value
    end

    def icon_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#icon_name` property to nil.
    def icon_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "icon-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#icon_name`, but can return nil.
    def icon_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "label", unsafe_value, Pointer(Void).null)
      value
    end

    def label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#label` property to nil.
    def label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#label`, but can return nil.
    def label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def tooltip=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tooltip` property to nil.
    def tooltip=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tooltip", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tooltip`, but can return nil.
    def tooltip? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def use_underline=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-underline", unsafe_value, Pointer(Void).null)
      value
    end

    def use_underline? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-underline", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # adw_toggle_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_toggle_new

      # Return value handling
      Adw::Toggle.new(_retval, GICrystal::Transfer::Full)
    end

    def child : Gtk::Widget?
      # adw_toggle_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toggle_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def enabled : Bool
      # adw_toggle_get_enabled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_get_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon_name : ::String?
      # adw_toggle_get_icon_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toggle_get_icon_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def index : UInt32
      # adw_toggle_get_index: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_get_index(to_unsafe)

      # Return value handling
      _retval
    end

    def label : ::String?
      # adw_toggle_get_label: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toggle_get_label(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def name : ::String
      # adw_toggle_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def tooltip : ::String
      # adw_toggle_get_tooltip: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_get_tooltip(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def use_underline : Bool
      # adw_toggle_get_use_underline: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_get_use_underline(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child=(child : Gtk::Widget?) : Nil
      # adw_toggle_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibAdw.adw_toggle_set_child(to_unsafe, child)

      # Return value handling
    end

    def enabled=(enabled : Bool) : Nil
      # adw_toggle_set_enabled: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_set_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def icon_name=(icon_name : ::String?) : Nil
      # adw_toggle_set_icon_name: (Method | Setter)
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      LibAdw.adw_toggle_set_icon_name(to_unsafe, icon_name)

      # Return value handling
    end

    def label=(label : ::String?) : Nil
      # adw_toggle_set_label: (Method | Setter)
      # @label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibAdw.adw_toggle_set_label(to_unsafe, label)

      # Return value handling
    end

    def name=(name : ::String?) : Nil
      # adw_toggle_set_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibAdw.adw_toggle_set_name(to_unsafe, name)

      # Return value handling
    end

    def tooltip=(tooltip : ::String) : Nil
      # adw_toggle_set_tooltip: (Method | Setter)
      # @tooltip:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_set_tooltip(to_unsafe, tooltip)

      # Return value handling
    end

    def use_underline=(use_underline : Bool) : Nil
      # adw_toggle_set_use_underline: (Method | Setter)
      # @use_underline:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_set_use_underline(to_unsafe, use_underline)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
