require "../g_object-2.0/object"

module Adw
  @[GICrystal::GeneratedWrapper]
  class SidebarItem < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::SidebarItemClass), class_init,
        sizeof(LibAdw::SidebarItem), instance_init, 0)
    end

    GICrystal.declare_new_method(SidebarItem, g_object_get_qdata)

    # Initialize a new `SidebarItem`.
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

    def initialize(*, drag_motion_activate : Bool? = nil, enabled : Bool? = nil, icon_name : ::String? = nil, icon_paintable : Gdk::Paintable? = nil, section : Adw::SidebarSection? = nil, subtitle : ::String? = nil, suffix : Gtk::Widget? = nil, title : ::String? = nil, tooltip : ::String? = nil, use_underline : Bool? = nil, visible : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[11]
      _values = StaticArray(LibGObject::Value, 11).new(LibGObject::Value.new)
      _n = 0

      if !drag_motion_activate.nil?
        (_names.to_unsafe + _n).value = "drag-motion-activate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, drag_motion_activate)
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
      if !icon_paintable.nil?
        (_names.to_unsafe + _n).value = "icon-paintable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_paintable)
        _n += 1
      end
      if !section.nil?
        (_names.to_unsafe + _n).value = "section".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, section)
        _n += 1
      end
      if !subtitle.nil?
        (_names.to_unsafe + _n).value = "subtitle".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, subtitle)
        _n += 1
      end
      if !suffix.nil?
        (_names.to_unsafe + _n).value = "suffix".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, suffix)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
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
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
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
      @@g_type ||= LibAdw.adw_sidebar_item_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::SidebarItem.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def drag_motion_activate=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "drag-motion-activate", unsafe_value, Pointer(Void).null)
      value
    end

    def drag_motion_activate? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "drag-motion-activate", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def icon_paintable=(value : Gdk::Paintable?) : Gdk::Paintable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "icon-paintable", unsafe_value, Pointer(Void).null)
      value
    end

    def icon_paintable : Gdk::Paintable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "icon-paintable", pointerof(value), Pointer(Void).null)
      Gdk::AbstractPaintable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def section : Adw::SidebarSection?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "section", pointerof(value), Pointer(Void).null)
      Adw::SidebarSection.new(value, GICrystal::Transfer::None) unless value.null?
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

    def suffix=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "suffix", unsafe_value, Pointer(Void).null)
      value
    end

    def suffix : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "suffix", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
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

    def visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "visible", unsafe_value, Pointer(Void).null)
      value
    end

    def visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(title : ::String) : self
      # adw_sidebar_item_new: (Constructor)
      # @title:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_sidebar_item_new(title)

      # Return value handling
      Adw::SidebarItem.new(_retval, GICrystal::Transfer::Full)
    end

    def drag_motion_activate : Bool
      # adw_sidebar_item_get_drag_motion_activate: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_drag_motion_activate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enabled : Bool
      # adw_sidebar_item_get_enabled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon_name : ::String?
      # adw_sidebar_item_get_icon_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_icon_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def icon_paintable : Gdk::Paintable?
      # adw_sidebar_item_get_icon_paintable: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_icon_paintable(to_unsafe)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def index : UInt32
      # adw_sidebar_item_get_index: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_index(to_unsafe)

      # Return value handling
      _retval
    end

    def section : Adw::SidebarSection?
      # adw_sidebar_item_get_section: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_section(to_unsafe)

      # Return value handling
      Adw::SidebarSection.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def section_index : UInt32
      # adw_sidebar_item_get_section_index: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_section_index(to_unsafe)

      # Return value handling
      _retval
    end

    def subtitle : ::String?
      # adw_sidebar_item_get_subtitle: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_subtitle(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def suffix : Gtk::Widget?
      # adw_sidebar_item_get_suffix: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_suffix(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def title : ::String?
      # adw_sidebar_item_get_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def tooltip : ::String?
      # adw_sidebar_item_get_tooltip: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_tooltip(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def use_underline : Bool
      # adw_sidebar_item_get_use_underline: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_use_underline(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def visible : Bool
      # adw_sidebar_item_get_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_sidebar_item_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def drag_motion_activate=(drag_motion_activate : Bool) : Nil
      # adw_sidebar_item_set_drag_motion_activate: (Method | Setter)
      # @drag_motion_activate:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_item_set_drag_motion_activate(to_unsafe, drag_motion_activate)

      # Return value handling
    end

    def enabled=(enabled : Bool) : Nil
      # adw_sidebar_item_set_enabled: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_item_set_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def icon_name=(icon_name : ::String?) : Nil
      # adw_sidebar_item_set_icon_name: (Method | Setter)
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      LibAdw.adw_sidebar_item_set_icon_name(to_unsafe, icon_name)

      # Return value handling
    end

    def icon_paintable=(paintable : Gdk::Paintable?) : Nil
      # adw_sidebar_item_set_icon_paintable: (Method | Setter)
      # @paintable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      LibAdw.adw_sidebar_item_set_icon_paintable(to_unsafe, paintable)

      # Return value handling
    end

    def subtitle=(subtitle : ::String?) : Nil
      # adw_sidebar_item_set_subtitle: (Method | Setter)
      # @subtitle: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      subtitle = if subtitle.nil?
                   Pointer(LibC::Char).null
                 else
                   subtitle.to_unsafe
                 end

      # C call
      LibAdw.adw_sidebar_item_set_subtitle(to_unsafe, subtitle)

      # Return value handling
    end

    def suffix=(suffix : Gtk::Widget?) : Nil
      # adw_sidebar_item_set_suffix: (Method | Setter)
      # @suffix: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      suffix = if suffix.nil?
                 Pointer(Void).null
               else
                 suffix.to_unsafe
               end

      # C call
      LibAdw.adw_sidebar_item_set_suffix(to_unsafe, suffix)

      # Return value handling
    end

    def title=(title : ::String?) : Nil
      # adw_sidebar_item_set_title: (Method | Setter)
      # @title: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end

      # C call
      LibAdw.adw_sidebar_item_set_title(to_unsafe, title)

      # Return value handling
    end

    def tooltip=(tooltip : ::String?) : Nil
      # adw_sidebar_item_set_tooltip: (Method | Setter)
      # @tooltip: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tooltip = if tooltip.nil?
                  Pointer(LibC::Char).null
                else
                  tooltip.to_unsafe
                end

      # C call
      LibAdw.adw_sidebar_item_set_tooltip(to_unsafe, tooltip)

      # Return value handling
    end

    def use_underline=(use_underline : Bool) : Nil
      # adw_sidebar_item_set_use_underline: (Method | Setter)
      # @use_underline:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_item_set_use_underline(to_unsafe, use_underline)

      # Return value handling
    end

    def visible=(visible : Bool) : Nil
      # adw_sidebar_item_set_visible: (Method | Setter)
      # @visible:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_sidebar_item_set_visible(to_unsafe, visible)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
