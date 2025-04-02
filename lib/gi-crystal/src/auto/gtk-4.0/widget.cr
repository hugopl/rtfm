require "../g_object-2.0/initially_unowned"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Widget < GObject::InitiallyUnowned
    include Accessible
    include Buildable
    include ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::WidgetClass), class_init,
        sizeof(LibGtk::Widget), instance_init, 0)
    end

    GICrystal.declare_new_method(Widget, g_object_get_qdata)

    # Initialize a new `Widget`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[36]
      _values = StaticArray(LibGObject::Value, 36).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_target.nil?
        (_names.to_unsafe + _n).value = "can-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_target)
        _n += 1
      end
      if !css_classes.nil?
        (_names.to_unsafe + _n).value = "css-classes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_classes)
        _n += 1
      end
      if !css_name.nil?
        (_names.to_unsafe + _n).value = "css-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_name)
        _n += 1
      end
      if !cursor.nil?
        (_names.to_unsafe + _n).value = "cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor)
        _n += 1
      end
      if !focus_on_click.nil?
        (_names.to_unsafe + _n).value = "focus-on-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_on_click)
        _n += 1
      end
      if !focusable.nil?
        (_names.to_unsafe + _n).value = "focusable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focusable)
        _n += 1
      end
      if !halign.nil?
        (_names.to_unsafe + _n).value = "halign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, halign)
        _n += 1
      end
      if !has_default.nil?
        (_names.to_unsafe + _n).value = "has-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_default)
        _n += 1
      end
      if !has_focus.nil?
        (_names.to_unsafe + _n).value = "has-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_focus)
        _n += 1
      end
      if !has_tooltip.nil?
        (_names.to_unsafe + _n).value = "has-tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_tooltip)
        _n += 1
      end
      if !height_request.nil?
        (_names.to_unsafe + _n).value = "height-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height_request)
        _n += 1
      end
      if !hexpand.nil?
        (_names.to_unsafe + _n).value = "hexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand)
        _n += 1
      end
      if !hexpand_set.nil?
        (_names.to_unsafe + _n).value = "hexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand_set)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !limit_events.nil?
        (_names.to_unsafe + _n).value = "limit-events".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, limit_events)
        _n += 1
      end
      if !margin_bottom.nil?
        (_names.to_unsafe + _n).value = "margin-bottom".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_bottom)
        _n += 1
      end
      if !margin_end.nil?
        (_names.to_unsafe + _n).value = "margin-end".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_end)
        _n += 1
      end
      if !margin_start.nil?
        (_names.to_unsafe + _n).value = "margin-start".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_start)
        _n += 1
      end
      if !margin_top.nil?
        (_names.to_unsafe + _n).value = "margin-top".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_top)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !opacity.nil?
        (_names.to_unsafe + _n).value = "opacity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, opacity)
        _n += 1
      end
      if !overflow.nil?
        (_names.to_unsafe + _n).value = "overflow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overflow)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !root.nil?
        (_names.to_unsafe + _n).value = "root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, root)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_markup)
        _n += 1
      end
      if !tooltip_text.nil?
        (_names.to_unsafe + _n).value = "tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_text)
        _n += 1
      end
      if !valign.nil?
        (_names.to_unsafe + _n).value = "valign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valign)
        _n += 1
      end
      if !vexpand.nil?
        (_names.to_unsafe + _n).value = "vexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand)
        _n += 1
      end
      if !vexpand_set.nil?
        (_names.to_unsafe + _n).value = "vexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand_set)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
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
      @@g_type ||= LibGtk.gtk_widget_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Widget.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def can_focus=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-focus", unsafe_value, Pointer(Void).null)
      value
    end

    def can_focus? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-focus", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def can_target=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-target", unsafe_value, Pointer(Void).null)
      value
    end

    def can_target? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-target", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def css_classes=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "css-classes", unsafe_value, Pointer(Void).null)
      value
    end

    def css_classes : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "css-classes", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def css_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "css-name", unsafe_value, Pointer(Void).null)
      value
    end

    def css_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "css-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#css_name` property to nil.
    def css_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "css-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#css_name`, but can return nil.
    def css_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "css-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def cursor=(value : Gdk::Cursor?) : Gdk::Cursor?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "cursor", unsafe_value, Pointer(Void).null)
      value
    end

    def cursor : Gdk::Cursor?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "cursor", pointerof(value), Pointer(Void).null)
      Gdk::Cursor.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def focus_on_click=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "focus-on-click", unsafe_value, Pointer(Void).null)
      value
    end

    def focus_on_click? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "focus-on-click", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def focusable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "focusable", unsafe_value, Pointer(Void).null)
      value
    end

    def focusable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "focusable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def halign=(value : Gtk::Align) : Gtk::Align
      unsafe_value = value

      LibGObject.g_object_set(self, "halign", unsafe_value, Pointer(Void).null)
      value
    end

    def halign : Gtk::Align
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "halign", pointerof(value), Pointer(Void).null)
      Gtk::Align.new(value)
    end

    def has_default? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-default", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_focus? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-focus", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_tooltip=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-tooltip", unsafe_value, Pointer(Void).null)
      value
    end

    def has_tooltip? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-tooltip", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def height_request=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "height-request", unsafe_value, Pointer(Void).null)
      value
    end

    def height_request : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "height-request", pointerof(value), Pointer(Void).null)
      value
    end

    def hexpand=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "hexpand", unsafe_value, Pointer(Void).null)
      value
    end

    def hexpand? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "hexpand", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def hexpand_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "hexpand-set", unsafe_value, Pointer(Void).null)
      value
    end

    def hexpand_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "hexpand-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def layout_manager=(value : Gtk::LayoutManager?) : Gtk::LayoutManager?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "layout-manager", unsafe_value, Pointer(Void).null)
      value
    end

    def layout_manager : Gtk::LayoutManager?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "layout-manager", pointerof(value), Pointer(Void).null)
      Gtk::LayoutManager.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def limit_events=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "limit-events", unsafe_value, Pointer(Void).null)
      value
    end

    def limit_events? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "limit-events", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def margin_bottom=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "margin-bottom", unsafe_value, Pointer(Void).null)
      value
    end

    def margin_bottom : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "margin-bottom", pointerof(value), Pointer(Void).null)
      value
    end

    def margin_end=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "margin-end", unsafe_value, Pointer(Void).null)
      value
    end

    def margin_end : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "margin-end", pointerof(value), Pointer(Void).null)
      value
    end

    def margin_start=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "margin-start", unsafe_value, Pointer(Void).null)
      value
    end

    def margin_start : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "margin-start", pointerof(value), Pointer(Void).null)
      value
    end

    def margin_top=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "margin-top", unsafe_value, Pointer(Void).null)
      value
    end

    def margin_top : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "margin-top", pointerof(value), Pointer(Void).null)
      value
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

    def opacity=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "opacity", unsafe_value, Pointer(Void).null)
      value
    end

    def opacity : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "opacity", pointerof(value), Pointer(Void).null)
      value
    end

    def overflow=(value : Gtk::Overflow) : Gtk::Overflow
      unsafe_value = value

      LibGObject.g_object_set(self, "overflow", unsafe_value, Pointer(Void).null)
      value
    end

    def overflow : Gtk::Overflow
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "overflow", pointerof(value), Pointer(Void).null)
      Gtk::Overflow.new(value)
    end

    def parent : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "parent", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def receives_default=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "receives-default", unsafe_value, Pointer(Void).null)
      value
    end

    def receives_default? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "receives-default", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def root : Gtk::Root?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "root", pointerof(value), Pointer(Void).null)
      Gtk::AbstractRoot.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def scale_factor : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "scale-factor", pointerof(value), Pointer(Void).null)
      value
    end

    def sensitive=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "sensitive", unsafe_value, Pointer(Void).null)
      value
    end

    def sensitive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "sensitive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tooltip_markup=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip_markup : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-markup", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tooltip_markup` property to nil.
    def tooltip_markup=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tooltip-markup", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tooltip_markup`, but can return nil.
    def tooltip_markup? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-markup", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def tooltip_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip-text", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tooltip_text` property to nil.
    def tooltip_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tooltip-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tooltip_text`, but can return nil.
    def tooltip_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def valign=(value : Gtk::Align) : Gtk::Align
      unsafe_value = value

      LibGObject.g_object_set(self, "valign", unsafe_value, Pointer(Void).null)
      value
    end

    def valign : Gtk::Align
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "valign", pointerof(value), Pointer(Void).null)
      Gtk::Align.new(value)
    end

    def vexpand=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "vexpand", unsafe_value, Pointer(Void).null)
      value
    end

    def vexpand? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "vexpand", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def vexpand_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "vexpand-set", unsafe_value, Pointer(Void).null)
      value
    end

    def vexpand_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "vexpand-set", pointerof(value), Pointer(Void).null)
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

    def width_request=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "width-request", unsafe_value, Pointer(Void).null)
      value
    end

    def width_request : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width-request", pointerof(value), Pointer(Void).null)
      value
    end

    def self.default_direction : Gtk::TextDirection
      # gtk_widget_get_default_direction: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_default_direction

      # Return value handling
      Gtk::TextDirection.new(_retval)
    end

    def self.default_direction=(dir : Gtk::TextDirection) : Nil
      # gtk_widget_set_default_direction: (None)
      # @dir:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_default_direction(dir)

      # Return value handling
    end

    def action_set_enabled(action_name : ::String, enabled : Bool) : Nil
      # gtk_widget_action_set_enabled: (Method)
      # @action_name:
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_action_set_enabled(to_unsafe, action_name, enabled)

      # Return value handling
    end

    def activate : Bool
      # gtk_widget_activate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_activate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def activate_action(name : ::String, args : _?) : Bool
      # gtk_widget_activate_action_variant: (Method)
      # @name:
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
      _retval = LibGtk.gtk_widget_activate_action_variant(to_unsafe, name, args)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def activate_default : Nil
      # gtk_widget_activate_default: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_activate_default(to_unsafe)

      # Return value handling
    end

    def add_controller(controller : Gtk::EventController) : Nil
      # gtk_widget_add_controller: (Method)
      # @controller: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(controller)

      # C call
      LibGtk.gtk_widget_add_controller(to_unsafe, controller)

      # Return value handling
    end

    def add_css_class(css_class : ::String) : Nil
      # gtk_widget_add_css_class: (Method)
      # @css_class:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_add_css_class(to_unsafe, css_class)

      # Return value handling
    end

    def add_mnemonic_label(label : Gtk::Widget) : Nil
      # gtk_widget_add_mnemonic_label: (Method)
      # @label:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_add_mnemonic_label(to_unsafe, label)

      # Return value handling
    end

    def add_tick_callback(callback : Gtk::TickCallback) : UInt32
      # gtk_widget_add_tick_callback: (Method)
      # @callback:
      # @user_data: (nullable)
      # @notify:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_widget : Pointer(Void), lib_frame_clock : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          widget = Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          frame_clock = Gdk::FrameClock.new(lib_frame_clock, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Gdk::FrameClock, Bool)).unbox(lib_user_data).call(widget, frame_clock)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = notify = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_widget_add_tick_callback(to_unsafe, callback, user_data, notify)

      # Return value handling
      _retval
    end

    def allocate(width : Int32, height : Int32, baseline : Int32, transform : Gsk::Transform?) : Nil
      # gtk_widget_allocate: (Method)
      # @width:
      # @height:
      # @baseline:
      # @transform: (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      transform = if transform.nil?
                    Pointer(Void).null
                  else
                    transform.to_unsafe
                  end

      # C call
      LibGtk.gtk_widget_allocate(to_unsafe, width, height, baseline, transform)

      # Return value handling
    end

    def child_focus(direction : Gtk::DirectionType) : Bool
      # gtk_widget_child_focus: (Method)
      # @direction:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_child_focus(to_unsafe, direction)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def compute_bounds(target : Gtk::Widget) : Graphene::Rect
      # gtk_widget_compute_bounds: (Method)
      # @target:
      # @out_bounds: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      out_bounds = Graphene::Rect.new
      # C call
      _retval = LibGtk.gtk_widget_compute_bounds(to_unsafe, target, out_bounds)

      # Return value handling
      out_bounds
    end

    def compute_expand(orientation : Gtk::Orientation) : Bool
      # gtk_widget_compute_expand: (Method)
      # @orientation:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_compute_expand(to_unsafe, orientation)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def compute_point(target : Gtk::Widget, point : Graphene::Point) : Graphene::Point
      # gtk_widget_compute_point: (Method)
      # @target:
      # @point:
      # @out_point: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      out_point = Graphene::Point.new
      # C call
      _retval = LibGtk.gtk_widget_compute_point(to_unsafe, target, point, out_point)

      # Return value handling
      out_point
    end

    def compute_transform(target : Gtk::Widget) : Graphene::Matrix
      # gtk_widget_compute_transform: (Method)
      # @target:
      # @out_transform: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      out_transform = Graphene::Matrix.new
      # C call
      _retval = LibGtk.gtk_widget_compute_transform(to_unsafe, target, out_transform)

      # Return value handling
      out_transform
    end

    def contains(x : Float64, y : Float64) : Bool
      # gtk_widget_contains: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_contains(to_unsafe, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def create_pango_context : Pango::Context
      # gtk_widget_create_pango_context: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_widget_create_pango_context(to_unsafe)

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::Full)
    end

    def create_pango_layout(text : ::String?) : Pango::Layout
      # gtk_widget_create_pango_layout: (Method)
      # @text: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_widget_create_pango_layout(to_unsafe, text)

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::Full)
    end

    def dispose_template(widget_type : UInt64) : Nil
      # gtk_widget_dispose_template: (Method)
      # @widget_type:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_dispose_template(to_unsafe, widget_type)

      # Return value handling
    end

    def drag_check_threshold(start_x : Int32, start_y : Int32, current_x : Int32, current_y : Int32) : Bool
      # gtk_drag_check_threshold: (Method)
      # @start_x:
      # @start_y:
      # @current_x:
      # @current_y:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_drag_check_threshold(to_unsafe, start_x, start_y, current_x, current_y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def error_bell : Nil
      # gtk_widget_error_bell: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_error_bell(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def allocated_baseline : Int32
      # gtk_widget_get_allocated_baseline: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_allocated_baseline(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def allocated_height : Int32
      # gtk_widget_get_allocated_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_allocated_height(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def allocated_width : Int32
      # gtk_widget_get_allocated_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_allocated_width(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def allocation : Gdk::Rectangle
      # gtk_widget_get_allocation: (Method)
      # @allocation: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      allocation = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_widget_get_allocation(to_unsafe, allocation)

      # Return value handling
      allocation
    end

    def ancestor(widget_type : UInt64) : Gtk::Widget?
      # gtk_widget_get_ancestor: (Method)
      # @widget_type:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_ancestor(to_unsafe, widget_type)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def baseline : Int32
      # gtk_widget_get_baseline: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_baseline(to_unsafe)

      # Return value handling
      _retval
    end

    def can_focus : Bool
      # gtk_widget_get_can_focus: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_can_focus(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_target : Bool
      # gtk_widget_get_can_target: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_can_target(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child_visible : Bool
      # gtk_widget_get_child_visible: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_child_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def clipboard : Gdk::Clipboard
      # gtk_widget_get_clipboard: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_clipboard(to_unsafe)

      # Return value handling
      Gdk::Clipboard.new(_retval, GICrystal::Transfer::None)
    end

    def color : Gdk::RGBA
      # gtk_widget_get_color: (Method)
      # @color: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      color = Gdk::RGBA.new
      # C call
      LibGtk.gtk_widget_get_color(to_unsafe, color)

      # Return value handling
      color
    end

    def css_classes : Enumerable(::String)
      # gtk_widget_get_css_classes: (Method | Getter)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_widget_get_css_classes(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def css_name : ::String
      # gtk_widget_get_css_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_css_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def cursor : Gdk::Cursor?
      # gtk_widget_get_cursor: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_cursor(to_unsafe)

      # Return value handling
      Gdk::Cursor.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def direction : Gtk::TextDirection
      # gtk_widget_get_direction: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_direction(to_unsafe)

      # Return value handling
      Gtk::TextDirection.new(_retval)
    end

    def display : Gdk::Display
      # gtk_widget_get_display: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def first_child : Gtk::Widget?
      # gtk_widget_get_first_child: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_first_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def focus_child : Gtk::Widget?
      # gtk_widget_get_focus_child: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_focus_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def focus_on_click : Bool
      # gtk_widget_get_focus_on_click: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_focus_on_click(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def focusable : Bool
      # gtk_widget_get_focusable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_focusable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def font_map : Pango::FontMap?
      # gtk_widget_get_font_map: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_font_map(to_unsafe)

      # Return value handling
      Pango::FontMap.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def font_options : Cairo::FontOptions?
      # gtk_widget_get_font_options: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_font_options(to_unsafe)

      # Return value handling
      Cairo::FontOptions.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def frame_clock : Gdk::FrameClock?
      # gtk_widget_get_frame_clock: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_frame_clock(to_unsafe)

      # Return value handling
      Gdk::FrameClock.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def halign : Gtk::Align
      # gtk_widget_get_halign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_halign(to_unsafe)

      # Return value handling
      Gtk::Align.new(_retval)
    end

    def has_tooltip : Bool
      # gtk_widget_get_has_tooltip: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_has_tooltip(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def height : Int32
      # gtk_widget_get_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def hexpand : Bool
      # gtk_widget_get_hexpand: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_hexpand(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hexpand_set : Bool
      # gtk_widget_get_hexpand_set: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_hexpand_set(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def last_child : Gtk::Widget?
      # gtk_widget_get_last_child: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_last_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout_manager : Gtk::LayoutManager?
      # gtk_widget_get_layout_manager: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_layout_manager(to_unsafe)

      # Return value handling
      Gtk::LayoutManager.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def limit_events : Bool
      # gtk_widget_get_limit_events: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_limit_events(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def mapped : Bool
      # gtk_widget_get_mapped: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_mapped(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def margin_bottom : Int32
      # gtk_widget_get_margin_bottom: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_margin_bottom(to_unsafe)

      # Return value handling
      _retval
    end

    def margin_end : Int32
      # gtk_widget_get_margin_end: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_margin_end(to_unsafe)

      # Return value handling
      _retval
    end

    def margin_start : Int32
      # gtk_widget_get_margin_start: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_margin_start(to_unsafe)

      # Return value handling
      _retval
    end

    def margin_top : Int32
      # gtk_widget_get_margin_top: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_margin_top(to_unsafe)

      # Return value handling
      _retval
    end

    def name : ::String
      # gtk_widget_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def native : Gtk::Native?
      # gtk_widget_get_native: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_native(to_unsafe)

      # Return value handling
      Gtk::AbstractNative.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def next_sibling : Gtk::Widget?
      # gtk_widget_get_next_sibling: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_next_sibling(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def opacity : Float64
      # gtk_widget_get_opacity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_opacity(to_unsafe)

      # Return value handling
      _retval
    end

    def overflow : Gtk::Overflow
      # gtk_widget_get_overflow: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_overflow(to_unsafe)

      # Return value handling
      Gtk::Overflow.new(_retval)
    end

    def pango_context : Pango::Context
      # gtk_widget_get_pango_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_pango_context(to_unsafe)

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::None)
    end

    def parent : Gtk::Widget?
      # gtk_widget_get_parent: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_parent(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def preferred_size : Gtk::Requisition
      # gtk_widget_get_preferred_size: (Method)
      # @minimum_size: (out) (caller-allocates) (optional)
      # @natural_size: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_size = Pointer(Void).null   # Generator::CallerAllocatesPlan
      minimum_size = Gtk::Requisition.new # Generator::OutArgUsedInReturnPlan
      natural_size = Pointer(Void).null   # Generator::CallerAllocatesPlan
      natural_size = Gtk::Requisition.new
      # C call
      LibGtk.gtk_widget_get_preferred_size(to_unsafe, minimum_size, natural_size)

      # Return value handling
      minimum_size
    end

    def prev_sibling : Gtk::Widget?
      # gtk_widget_get_prev_sibling: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_prev_sibling(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def primary_clipboard : Gdk::Clipboard
      # gtk_widget_get_primary_clipboard: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_primary_clipboard(to_unsafe)

      # Return value handling
      Gdk::Clipboard.new(_retval, GICrystal::Transfer::None)
    end

    def realized : Bool
      # gtk_widget_get_realized: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_realized(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def receives_default : Bool
      # gtk_widget_get_receives_default: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_receives_default(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def request_mode : Gtk::SizeRequestMode
      # gtk_widget_get_request_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_request_mode(to_unsafe)

      # Return value handling
      Gtk::SizeRequestMode.new(_retval)
    end

    def root : Gtk::Root?
      # gtk_widget_get_root: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_root(to_unsafe)

      # Return value handling
      Gtk::AbstractRoot.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def scale_factor : Int32
      # gtk_widget_get_scale_factor: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_scale_factor(to_unsafe)

      # Return value handling
      _retval
    end

    def sensitive : Bool
      # gtk_widget_get_sensitive: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_sensitive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def settings : Gtk::Settings
      # gtk_widget_get_settings: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_settings(to_unsafe)

      # Return value handling
      Gtk::Settings.new(_retval, GICrystal::Transfer::None)
    end

    def size(orientation : Gtk::Orientation) : Int32
      # gtk_widget_get_size: (Method)
      # @orientation:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_size(to_unsafe, orientation)

      # Return value handling
      _retval
    end

    def size_request : Nil
      # gtk_widget_get_size_request: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_widget_get_size_request(to_unsafe, width, height)

      # Return value handling
    end

    def state_flags : Gtk::StateFlags
      # gtk_widget_get_state_flags: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_state_flags(to_unsafe)

      # Return value handling
      Gtk::StateFlags.new(_retval)
    end

    @[Deprecated]
    def style_context : Gtk::StyleContext
      # gtk_widget_get_style_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_style_context(to_unsafe)

      # Return value handling
      Gtk::StyleContext.new(_retval, GICrystal::Transfer::None)
    end

    def template_child(widget_type : UInt64, name : ::String) : GObject::Object
      # gtk_widget_get_template_child: (Method)
      # @widget_type:
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_template_child(to_unsafe, widget_type, name)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None)
    end

    def tooltip_markup : ::String?
      # gtk_widget_get_tooltip_markup: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_tooltip_markup(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def tooltip_text : ::String?
      # gtk_widget_get_tooltip_text: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_get_tooltip_text(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def valign : Gtk::Align
      # gtk_widget_get_valign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_valign(to_unsafe)

      # Return value handling
      Gtk::Align.new(_retval)
    end

    def vexpand : Bool
      # gtk_widget_get_vexpand: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_vexpand(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def vexpand_set : Bool
      # gtk_widget_get_vexpand_set: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_vexpand_set(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def visible : Bool
      # gtk_widget_get_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def width : Int32
      # gtk_widget_get_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def grab_focus : Bool
      # gtk_widget_grab_focus: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_grab_focus(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_css_class(css_class : ::String) : Bool
      # gtk_widget_has_css_class: (Method)
      # @css_class:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_has_css_class(to_unsafe, css_class)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_default : Bool
      # gtk_widget_has_default: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_has_default(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_focus : Bool
      # gtk_widget_has_focus: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_has_focus(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_visible_focus : Bool
      # gtk_widget_has_visible_focus: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_has_visible_focus(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def hide : Nil
      # gtk_widget_hide: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_hide(to_unsafe)

      # Return value handling
    end

    def in_destruction : Bool
      # gtk_widget_in_destruction: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_in_destruction(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def init_template : Nil
      # gtk_widget_init_template: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_init_template(to_unsafe)

      # Return value handling
    end

    def insert_action_group(name : ::String, group : Gio::ActionGroup?) : Nil
      # gtk_widget_insert_action_group: (Method)
      # @name:
      # @group: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      group = if group.nil?
                Pointer(Void).null
              else
                group.to_unsafe
              end

      # C call
      LibGtk.gtk_widget_insert_action_group(to_unsafe, name, group)

      # Return value handling
    end

    def insert_after(parent : Gtk::Widget, previous_sibling : Gtk::Widget?) : Nil
      # gtk_widget_insert_after: (Method)
      # @parent:
      # @previous_sibling: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      previous_sibling = if previous_sibling.nil?
                           Pointer(Void).null
                         else
                           previous_sibling.to_unsafe
                         end

      # C call
      LibGtk.gtk_widget_insert_after(to_unsafe, parent, previous_sibling)

      # Return value handling
    end

    def insert_before(parent : Gtk::Widget, next_sibling : Gtk::Widget?) : Nil
      # gtk_widget_insert_before: (Method)
      # @parent:
      # @next_sibling: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      next_sibling = if next_sibling.nil?
                       Pointer(Void).null
                     else
                       next_sibling.to_unsafe
                     end

      # C call
      LibGtk.gtk_widget_insert_before(to_unsafe, parent, next_sibling)

      # Return value handling
    end

    def is_ancestor(ancestor : Gtk::Widget) : Bool
      # gtk_widget_is_ancestor: (Method)
      # @ancestor:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_is_ancestor(to_unsafe, ancestor)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_drawable : Bool
      # gtk_widget_is_drawable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_is_drawable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_focus : Bool
      # gtk_widget_is_focus: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_is_focus(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_sensitive : Bool
      # gtk_widget_is_sensitive: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_is_sensitive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_visible : Bool
      # gtk_widget_is_visible: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_is_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def keynav_failed(direction : Gtk::DirectionType) : Bool
      # gtk_widget_keynav_failed: (Method)
      # @direction:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_keynav_failed(to_unsafe, direction)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_mnemonic_labels : GLib::List
      # gtk_widget_list_mnemonic_labels: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_widget_list_mnemonic_labels(to_unsafe)

      # Return value handling
      GLib::List(Gtk::Widget).new(_retval, GICrystal::Transfer::Container)
    end

    def map : Nil
      # gtk_widget_map: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_map(to_unsafe)

      # Return value handling
    end

    def measure(orientation : Gtk::Orientation, for_size : Int32) : Nil
      # gtk_widget_measure: (Method)
      # @orientation:
      # @for_size:
      # @minimum: (out) (transfer full) (optional)
      # @natural: (out) (transfer full) (optional)
      # @minimum_baseline: (out) (transfer full) (optional)
      # @natural_baseline: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum = Pointer(Int32).null          # Generator::OutArgUsedInReturnPlan
      natural = Pointer(Int32).null          # Generator::OutArgUsedInReturnPlan
      minimum_baseline = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_baseline = Pointer(Int32).null
      # C call
      LibGtk.gtk_widget_measure(to_unsafe, orientation, for_size, minimum, natural, minimum_baseline, natural_baseline)

      # Return value handling
    end

    def mnemonic_activate(group_cycling : Bool) : Bool
      # gtk_widget_mnemonic_activate: (Method)
      # @group_cycling:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_mnemonic_activate(to_unsafe, group_cycling)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def observe_children : Gio::ListModel
      # gtk_widget_observe_children: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_widget_observe_children(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def observe_controllers : Gio::ListModel
      # gtk_widget_observe_controllers: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_widget_observe_controllers(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def pick(x : Float64, y : Float64, flags : Gtk::PickFlags) : Gtk::Widget?
      # gtk_widget_pick: (Method)
      # @x:
      # @y:
      # @flags:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_widget_pick(to_unsafe, x, y, flags)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def queue_allocate : Nil
      # gtk_widget_queue_allocate: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_queue_allocate(to_unsafe)

      # Return value handling
    end

    def queue_draw : Nil
      # gtk_widget_queue_draw: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_queue_draw(to_unsafe)

      # Return value handling
    end

    def queue_resize : Nil
      # gtk_widget_queue_resize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_queue_resize(to_unsafe)

      # Return value handling
    end

    def realize : Nil
      # gtk_widget_realize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_realize(to_unsafe)

      # Return value handling
    end

    def remove_controller(controller : Gtk::EventController) : Nil
      # gtk_widget_remove_controller: (Method)
      # @controller:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_remove_controller(to_unsafe, controller)

      # Return value handling
    end

    def remove_css_class(css_class : ::String) : Nil
      # gtk_widget_remove_css_class: (Method)
      # @css_class:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_remove_css_class(to_unsafe, css_class)

      # Return value handling
    end

    def remove_mnemonic_label(label : Gtk::Widget) : Nil
      # gtk_widget_remove_mnemonic_label: (Method)
      # @label:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_remove_mnemonic_label(to_unsafe, label)

      # Return value handling
    end

    def remove_tick_callback(id : UInt32) : Nil
      # gtk_widget_remove_tick_callback: (Method)
      # @id:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_remove_tick_callback(to_unsafe, id)

      # Return value handling
    end

    def can_focus=(can_focus : Bool) : Nil
      # gtk_widget_set_can_focus: (Method | Setter)
      # @can_focus:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_can_focus(to_unsafe, can_focus)

      # Return value handling
    end

    def can_target=(can_target : Bool) : Nil
      # gtk_widget_set_can_target: (Method | Setter)
      # @can_target:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_can_target(to_unsafe, can_target)

      # Return value handling
    end

    def child_visible=(child_visible : Bool) : Nil
      # gtk_widget_set_child_visible: (Method)
      # @child_visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_child_visible(to_unsafe, child_visible)

      # Return value handling
    end

    def css_classes=(classes : Enumerable(::String)) : Nil
      # gtk_widget_set_css_classes: (Method | Setter)
      # @classes: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      classes = classes.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibGtk.gtk_widget_set_css_classes(to_unsafe, classes)

      # Return value handling
    end

    def cursor=(cursor : Gdk::Cursor?) : Nil
      # gtk_widget_set_cursor: (Method | Setter)
      # @cursor: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cursor = if cursor.nil?
                 Pointer(Void).null
               else
                 cursor.to_unsafe
               end

      # C call
      LibGtk.gtk_widget_set_cursor(to_unsafe, cursor)

      # Return value handling
    end

    def cursor_from_name=(name : ::String?) : Nil
      # gtk_widget_set_cursor_from_name: (Method)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_widget_set_cursor_from_name(to_unsafe, name)

      # Return value handling
    end

    def direction=(dir : Gtk::TextDirection) : Nil
      # gtk_widget_set_direction: (Method)
      # @dir:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_direction(to_unsafe, dir)

      # Return value handling
    end

    def focus_child=(child : Gtk::Widget?) : Nil
      # gtk_widget_set_focus_child: (Method)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibGtk.gtk_widget_set_focus_child(to_unsafe, child)

      # Return value handling
    end

    def focus_on_click=(focus_on_click : Bool) : Nil
      # gtk_widget_set_focus_on_click: (Method | Setter)
      # @focus_on_click:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_focus_on_click(to_unsafe, focus_on_click)

      # Return value handling
    end

    def focusable=(focusable : Bool) : Nil
      # gtk_widget_set_focusable: (Method | Setter)
      # @focusable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_focusable(to_unsafe, focusable)

      # Return value handling
    end

    def font_map=(font_map : Pango::FontMap?) : Nil
      # gtk_widget_set_font_map: (Method)
      # @font_map: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      font_map = if font_map.nil?
                   Pointer(Void).null
                 else
                   font_map.to_unsafe
                 end

      # C call
      LibGtk.gtk_widget_set_font_map(to_unsafe, font_map)

      # Return value handling
    end

    @[Deprecated]
    def font_options=(options : Cairo::FontOptions?) : Nil
      # gtk_widget_set_font_options: (Method)
      # @options: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      options = if options.nil?
                  Pointer(Void).null
                else
                  options.to_unsafe
                end

      # C call
      LibGtk.gtk_widget_set_font_options(to_unsafe, options)

      # Return value handling
    end

    def halign=(align : Gtk::Align) : Nil
      # gtk_widget_set_halign: (Method | Setter)
      # @align:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_halign(to_unsafe, align)

      # Return value handling
    end

    def has_tooltip=(has_tooltip : Bool) : Nil
      # gtk_widget_set_has_tooltip: (Method | Setter)
      # @has_tooltip:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_has_tooltip(to_unsafe, has_tooltip)

      # Return value handling
    end

    def hexpand=(expand : Bool) : Nil
      # gtk_widget_set_hexpand: (Method | Setter)
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_hexpand(to_unsafe, expand)

      # Return value handling
    end

    def hexpand_set=(set : Bool) : Nil
      # gtk_widget_set_hexpand_set: (Method | Setter)
      # @set:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_hexpand_set(to_unsafe, set)

      # Return value handling
    end

    def layout_manager=(layout_manager : Gtk::LayoutManager?) : Nil
      # gtk_widget_set_layout_manager: (Method | Setter)
      # @layout_manager: (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(layout_manager)
      # Generator::NullableArrayPlan
      layout_manager = if layout_manager.nil?
                         Pointer(Void).null
                       else
                         layout_manager.to_unsafe
                       end

      # C call
      LibGtk.gtk_widget_set_layout_manager(to_unsafe, layout_manager)

      # Return value handling
    end

    def limit_events=(limit_events : Bool) : Nil
      # gtk_widget_set_limit_events: (Method | Setter)
      # @limit_events:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_limit_events(to_unsafe, limit_events)

      # Return value handling
    end

    def margin_bottom=(margin : Int32) : Nil
      # gtk_widget_set_margin_bottom: (Method | Setter)
      # @margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_margin_bottom(to_unsafe, margin)

      # Return value handling
    end

    def margin_end=(margin : Int32) : Nil
      # gtk_widget_set_margin_end: (Method | Setter)
      # @margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_margin_end(to_unsafe, margin)

      # Return value handling
    end

    def margin_start=(margin : Int32) : Nil
      # gtk_widget_set_margin_start: (Method | Setter)
      # @margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_margin_start(to_unsafe, margin)

      # Return value handling
    end

    def margin_top=(margin : Int32) : Nil
      # gtk_widget_set_margin_top: (Method | Setter)
      # @margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_margin_top(to_unsafe, margin)

      # Return value handling
    end

    def name=(name : ::String) : Nil
      # gtk_widget_set_name: (Method | Setter)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_name(to_unsafe, name)

      # Return value handling
    end

    def opacity=(opacity : Float64) : Nil
      # gtk_widget_set_opacity: (Method | Setter)
      # @opacity:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_opacity(to_unsafe, opacity)

      # Return value handling
    end

    def overflow=(overflow : Gtk::Overflow) : Nil
      # gtk_widget_set_overflow: (Method | Setter)
      # @overflow:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_overflow(to_unsafe, overflow)

      # Return value handling
    end

    def parent=(parent : Gtk::Widget) : Nil
      # gtk_widget_set_parent: (Method)
      # @parent:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_parent(to_unsafe, parent)

      # Return value handling
    end

    def receives_default=(receives_default : Bool) : Nil
      # gtk_widget_set_receives_default: (Method | Setter)
      # @receives_default:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_receives_default(to_unsafe, receives_default)

      # Return value handling
    end

    def sensitive=(sensitive : Bool) : Nil
      # gtk_widget_set_sensitive: (Method | Setter)
      # @sensitive:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_sensitive(to_unsafe, sensitive)

      # Return value handling
    end

    def set_size_request(width : Int32, height : Int32) : Nil
      # gtk_widget_set_size_request: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_size_request(to_unsafe, width, height)

      # Return value handling
    end

    def set_state_flags(flags : Gtk::StateFlags, clear : Bool) : Nil
      # gtk_widget_set_state_flags: (Method)
      # @flags:
      # @clear:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_state_flags(to_unsafe, flags, clear)

      # Return value handling
    end

    def tooltip_markup=(markup : ::String?) : Nil
      # gtk_widget_set_tooltip_markup: (Method | Setter)
      # @markup: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      markup = if markup.nil?
                 Pointer(LibC::Char).null
               else
                 markup.to_unsafe
               end

      # C call
      LibGtk.gtk_widget_set_tooltip_markup(to_unsafe, markup)

      # Return value handling
    end

    def tooltip_text=(text : ::String?) : Nil
      # gtk_widget_set_tooltip_text: (Method | Setter)
      # @text: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      LibGtk.gtk_widget_set_tooltip_text(to_unsafe, text)

      # Return value handling
    end

    def valign=(align : Gtk::Align) : Nil
      # gtk_widget_set_valign: (Method | Setter)
      # @align:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_valign(to_unsafe, align)

      # Return value handling
    end

    def vexpand=(expand : Bool) : Nil
      # gtk_widget_set_vexpand: (Method | Setter)
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_vexpand(to_unsafe, expand)

      # Return value handling
    end

    def vexpand_set=(set : Bool) : Nil
      # gtk_widget_set_vexpand_set: (Method | Setter)
      # @set:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_vexpand_set(to_unsafe, set)

      # Return value handling
    end

    def visible=(visible : Bool) : Nil
      # gtk_widget_set_visible: (Method | Setter)
      # @visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_set_visible(to_unsafe, visible)

      # Return value handling
    end

    def should_layout : Bool
      # gtk_widget_should_layout: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_widget_should_layout(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def show : Nil
      # gtk_widget_show: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_show(to_unsafe)

      # Return value handling
    end

    def size_allocate(allocation : Gdk::Rectangle, baseline : Int32) : Nil
      # gtk_widget_size_allocate: (Method)
      # @allocation:
      # @baseline:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_size_allocate(to_unsafe, allocation, baseline)

      # Return value handling
    end

    def snapshot_child(child : Gtk::Widget, snapshot : Gtk::Snapshot) : Nil
      # gtk_widget_snapshot_child: (Method)
      # @child:
      # @snapshot:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_snapshot_child(to_unsafe, child, snapshot)

      # Return value handling
    end

    @[Deprecated]
    def translate_coordinates(dest_widget : Gtk::Widget, src_x : Float64, src_y : Float64) : Bool
      # gtk_widget_translate_coordinates: (Method)
      # @dest_widget:
      # @src_x:
      # @src_y:
      # @dest_x: (out) (transfer full) (optional)
      # @dest_y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      dest_x = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      dest_y = Pointer(Float64).null
      # C call
      _retval = LibGtk.gtk_widget_translate_coordinates(to_unsafe, dest_widget, src_x, src_y, dest_x, dest_y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def trigger_tooltip_query : Nil
      # gtk_widget_trigger_tooltip_query: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_trigger_tooltip_query(to_unsafe)

      # Return value handling
    end

    def unmap : Nil
      # gtk_widget_unmap: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_unmap(to_unsafe)

      # Return value handling
    end

    def unparent : Nil
      # gtk_widget_unparent: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_unparent(to_unsafe)

      # Return value handling
    end

    def unrealize : Nil
      # gtk_widget_unrealize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_unrealize(to_unsafe)

      # Return value handling
    end

    def unset_state_flags(flags : Gtk::StateFlags) : Nil
      # gtk_widget_unset_state_flags: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_widget_unset_state_flags(to_unsafe, flags)

      # Return value handling
    end

    struct DestroySignal < GObject::Signal
      def name : String
        @detail ? "destroy::#{@detail}" : "destroy"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "destroy")
      end
    end

    def destroy_signal
      DestroySignal.new(self)
    end

    struct DirectionChangedSignal < GObject::Signal
      def name : String
        @detail ? "direction-changed::#{@detail}" : "direction-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextDirection, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextDirection, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_previous_direction : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          previous_direction = Gtk::TextDirection.new(lib_previous_direction)
          ::Box(Proc(Gtk::TextDirection, Nil)).unbox(_lib_box).call(previous_direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Gtk::TextDirection, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_previous_direction : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          previous_direction = Gtk::TextDirection.new(lib_previous_direction)
          ::Box(Proc(Gtk::Widget, Gtk::TextDirection, Nil)).unbox(_lib_box).call(_sender, previous_direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(previous_direction : Gtk::TextDirection) : Nil
        LibGObject.g_signal_emit_by_name(@source, "direction-changed", previous_direction)
      end
    end

    def direction_changed_signal
      DirectionChangedSignal.new(self)
    end

    struct HideSignal < GObject::Signal
      def name : String
        @detail ? "hide::#{@detail}" : "hide"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "hide")
      end
    end

    def hide_signal
      HideSignal.new(self)
    end

    struct KeynavFailedSignal < GObject::Signal
      def name : String
        @detail ? "keynav-failed::#{@detail}" : "keynav-failed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::DirectionType, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::DirectionType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          ::Box(Proc(Gtk::DirectionType, Bool)).unbox(_lib_box).call(direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Gtk::DirectionType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          ::Box(Proc(Gtk::Widget, Gtk::DirectionType, Bool)).unbox(_lib_box).call(_sender, direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(direction : Gtk::DirectionType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "keynav-failed", direction)
      end
    end

    def keynav_failed_signal
      KeynavFailedSignal.new(self)
    end

    struct MapSignal < GObject::Signal
      def name : String
        @detail ? "map::#{@detail}" : "map"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "map")
      end
    end

    def map_signal
      MapSignal.new(self)
    end

    struct MnemonicActivateSignal < GObject::Signal
      def name : String
        @detail ? "mnemonic-activate::#{@detail}" : "mnemonic-activate"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_group_cycling : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          group_cycling = GICrystal.to_bool(lib_group_cycling)
          ::Box(Proc(Bool, Bool)).unbox(_lib_box).call(group_cycling)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_group_cycling : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          group_cycling = GICrystal.to_bool(lib_group_cycling)
          ::Box(Proc(Gtk::Widget, Bool, Bool)).unbox(_lib_box).call(_sender, group_cycling)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(group_cycling : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mnemonic-activate", group_cycling)
      end
    end

    def mnemonic_activate_signal
      MnemonicActivateSignal.new(self)
    end

    struct MoveFocusSignal < GObject::Signal
      def name : String
        @detail ? "move-focus::#{@detail}" : "move-focus"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::DirectionType, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::DirectionType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          ::Box(Proc(Gtk::DirectionType, Nil)).unbox(_lib_box).call(direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Gtk::DirectionType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          ::Box(Proc(Gtk::Widget, Gtk::DirectionType, Nil)).unbox(_lib_box).call(_sender, direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(direction : Gtk::DirectionType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-focus", direction)
      end
    end

    def move_focus_signal
      MoveFocusSignal.new(self)
    end

    struct QueryTooltipSignal < GObject::Signal
      def name : String
        @detail ? "query-tooltip::#{@detail}" : "query-tooltip"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Int32, Bool, Gtk::Tooltip, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Int32, Bool, Gtk::Tooltip, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Int32, lib_y : Int32, lib_keyboard_mode : LibC::Int, lib_tooltip : Pointer(Void), _lib_box : Pointer(Void)) {
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          # Generator::BuiltInTypeArgPlan
          keyboard_mode = GICrystal.to_bool(lib_keyboard_mode)
          # Generator::BuiltInTypeArgPlan
          tooltip = Gtk::Tooltip.new(lib_tooltip, GICrystal::Transfer::None)
          ::Box(Proc(Int32, Int32, Bool, Gtk::Tooltip, Bool)).unbox(_lib_box).call(x, y, keyboard_mode, tooltip)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Int32, Int32, Bool, Gtk::Tooltip, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_x : Int32, lib_y : Int32, lib_keyboard_mode : LibC::Int, lib_tooltip : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          x = lib_x
          # NoStrategy
          y = lib_y
          # Generator::BuiltInTypeArgPlan
          keyboard_mode = GICrystal.to_bool(lib_keyboard_mode)
          # Generator::BuiltInTypeArgPlan
          tooltip = Gtk::Tooltip.new(lib_tooltip, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Int32, Int32, Bool, Gtk::Tooltip, Bool)).unbox(_lib_box).call(_sender, x, y, keyboard_mode, tooltip)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(x : Int32, y : Int32, keyboard_mode : Bool, tooltip : Gtk::Tooltip) : Nil
        LibGObject.g_signal_emit_by_name(@source, "query-tooltip", x, y, keyboard_mode, tooltip)
      end
    end

    def query_tooltip_signal
      QueryTooltipSignal.new(self)
    end

    struct RealizeSignal < GObject::Signal
      def name : String
        @detail ? "realize::#{@detail}" : "realize"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "realize")
      end
    end

    def realize_signal
      RealizeSignal.new(self)
    end

    struct ShowSignal < GObject::Signal
      def name : String
        @detail ? "show::#{@detail}" : "show"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "show")
      end
    end

    def show_signal
      ShowSignal.new(self)
    end

    struct StateFlagsChangedSignal < GObject::Signal
      def name : String
        @detail ? "state-flags-changed::#{@detail}" : "state-flags-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::StateFlags, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::StateFlags, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_flags : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          flags = Gtk::StateFlags.new(lib_flags)
          ::Box(Proc(Gtk::StateFlags, Nil)).unbox(_lib_box).call(flags)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Gtk::StateFlags, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_flags : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          flags = Gtk::StateFlags.new(lib_flags)
          ::Box(Proc(Gtk::Widget, Gtk::StateFlags, Nil)).unbox(_lib_box).call(_sender, flags)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(flags : Gtk::StateFlags) : Nil
        LibGObject.g_signal_emit_by_name(@source, "state-flags-changed", flags)
      end
    end

    def state_flags_changed_signal
      StateFlagsChangedSignal.new(self)
    end

    struct UnmapSignal < GObject::Signal
      def name : String
        @detail ? "unmap::#{@detail}" : "unmap"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "unmap")
      end
    end

    def unmap_signal
      UnmapSignal.new(self)
    end

    struct UnrealizeSignal < GObject::Signal
      def name : String
        @detail ? "unrealize::#{@detail}" : "unrealize"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Widget.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "unrealize")
      end
    end

    def unrealize_signal
      UnrealizeSignal.new(self)
    end

    # compute_expand: (None)
    # @hexpand_p:
    # @vexpand_p:
    # Returns: (transfer none)
    private macro _register_compute_expand_vfunc(impl_method_name)
      private def self._vfunc_compute_expand(%this : Pointer(Void), lib_hexpand_p :  Pointer(LibC::Int), lib_vexpand_p :  Pointer(LibC::Int), ) : Void
        # @hexpand_p: 
# @vexpand_p: 

# Generator::BuiltInTypeArgPlan
hexpand_p=GICrystal.to_bool(lib_hexpand_p)
# Generator::BuiltInTypeArgPlan
vexpand_p=GICrystal.to_bool(lib_vexpand_p)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(hexpand_p, vexpand_p)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 296).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_compute_expand(Pointer(Void), Pointer(LibC::Int), Pointer(LibC::Int))).pointer
        previous_def
      end
    end

    # compute_expand: (None)
    # @hexpand_p:
    # @vexpand_p:
    # Returns: (transfer none)
    private macro _register_unsafe_compute_expand_vfunc(impl_method_name)
      private def self._vfunc_unsafe_compute_expand(%this : Pointer(Void), lib_hexpand_p :  Pointer(LibC::Int), lib_vexpand_p :  Pointer(LibC::Int), ) : Void
# @hexpand_p: 
# @vexpand_p: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_hexpand_p, lib_vexpand_p)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 296).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_compute_expand = Proc(Pointer(Void), Pointer(LibC::Int), Pointer(LibC::Int), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_compute_expand(Pointer(Void), Pointer(LibC::Int), Pointer(LibC::Int))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_compute_expand : Proc(Pointer(Void), Pointer(LibC::Int), Pointer(LibC::Int), Void)? = nil
    end

    # contains: (None)
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_contains_vfunc(impl_method_name)
      private def self._vfunc_contains(%this : Pointer(Void), lib_x :  Float64, lib_y :  Float64, ) : LibC::Int
        # @x: 
# @y: 

x=lib_x
y=lib_y


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(x, y)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 328).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_contains(Pointer(Void), Float64, Float64)).pointer
        previous_def
      end
    end

    # contains: (None)
    # @x:
    # @y:
    # Returns: (transfer none)
    private macro _register_unsafe_contains_vfunc(impl_method_name)
      private def self._vfunc_unsafe_contains(%this : Pointer(Void), lib_x :  Float64, lib_y :  Float64, ) : LibC::Int
# @x: 
# @y: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_x, lib_y)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 328).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_contains = Proc(Pointer(Void), Float64, Float64, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_contains(Pointer(Void), Float64, Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_contains : Proc(Pointer(Void), Float64, Float64, LibC::Int)? = nil
    end

    # css_changed: (None)
    # @change:
    # Returns: (transfer none)
    private macro _register_css_changed_vfunc(impl_method_name)
      private def self._vfunc_css_changed(%this : Pointer(Void), lib_change :  Pointer(Void), ) : Void
        # @change: 

# Generator::BuiltInTypeArgPlan
change=Gtk::CssStyleChange.new(lib_change, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(change)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 304).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_css_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # css_changed: (None)
    # @change:
    # Returns: (transfer none)
    private macro _register_unsafe_css_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_css_changed(%this : Pointer(Void), lib_change :  Pointer(Void), ) : Void
# @change: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_change)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 304).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_css_changed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_css_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_css_changed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # direction_changed: (None)
    # @previous_direction:
    # Returns: (transfer none)
    private macro _register_direction_changed_vfunc(impl_method_name)
      private def self._vfunc_direction_changed(%this : Pointer(Void), lib_previous_direction :  UInt32, ) : Void
        # @previous_direction: 

# Generator::BuiltInTypeArgPlan
previous_direction=Gtk::TextDirection.new(lib_previous_direction)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(previous_direction)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_direction_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # direction_changed: (None)
    # @previous_direction:
    # Returns: (transfer none)
    private macro _register_unsafe_direction_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_direction_changed(%this : Pointer(Void), lib_previous_direction :  UInt32, ) : Void
# @previous_direction: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_previous_direction)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_direction_changed = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_direction_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_direction_changed : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # focus: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_focus_vfunc(impl_method_name)
      private def self._vfunc_focus(%this : Pointer(Void), lib_direction :  UInt32, ) : LibC::Int
        # @direction: 

# Generator::BuiltInTypeArgPlan
direction=Gtk::DirectionType.new(lib_direction)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(direction)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_focus(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # focus: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_unsafe_focus_vfunc(impl_method_name)
      private def self._vfunc_unsafe_focus(%this : Pointer(Void), lib_direction :  UInt32, ) : LibC::Int
# @direction: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_direction)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_focus = Proc(Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_focus(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_focus : Proc(Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # get_request_mode: (None)
    # Returns: (transfer none)
    private macro _register_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_get_request_mode(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_request_mode(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_request_mode: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_request_mode(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_request_mode = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_request_mode(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_request_mode : Proc(Pointer(Void), UInt32)? = nil
    end

    # grab_focus: (None)
    # Returns: (transfer none)
    private macro _register_grab_focus_vfunc(impl_method_name)
      private def self._vfunc_grab_focus(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_grab_focus(Pointer(Void))).pointer
        previous_def
      end
    end

    # grab_focus: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_grab_focus_vfunc(impl_method_name)
      private def self._vfunc_unsafe_grab_focus(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_grab_focus = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_grab_focus(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_grab_focus : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # hide: (None)
    # Returns: (transfer none)
    private macro _register_hide_vfunc(impl_method_name)
      private def self._vfunc_hide(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_hide(Pointer(Void))).pointer
        previous_def
      end
    end

    # hide: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_hide_vfunc(impl_method_name)
      private def self._vfunc_unsafe_hide(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_hide = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_hide(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_hide : Proc(Pointer(Void), Void)? = nil
    end

    # keynav_failed: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_keynav_failed_vfunc(impl_method_name)
      private def self._vfunc_keynav_failed(%this : Pointer(Void), lib_direction :  UInt32, ) : LibC::Int
        # @direction: 

# Generator::BuiltInTypeArgPlan
direction=Gtk::DirectionType.new(lib_direction)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(direction)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_keynav_failed(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # keynav_failed: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_unsafe_keynav_failed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_keynav_failed(%this : Pointer(Void), lib_direction :  UInt32, ) : LibC::Int
# @direction: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_direction)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_keynav_failed = Proc(Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_keynav_failed(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_keynav_failed : Proc(Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # map: (None)
    # Returns: (transfer none)
    private macro _register_map_vfunc(impl_method_name)
      private def self._vfunc_map(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_map(Pointer(Void))).pointer
        previous_def
      end
    end

    # map: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_map_vfunc(impl_method_name)
      private def self._vfunc_unsafe_map(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_map = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_map(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_map : Proc(Pointer(Void), Void)? = nil
    end

    # measure: (None)
    # @orientation:
    # @for_size:
    # @minimum: (out) (transfer full) (optional)
    # @natural: (out) (transfer full) (optional)
    # @minimum_baseline: (out) (transfer full) (optional)
    # @natural_baseline: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_measure_vfunc(impl_method_name)
      private def self._vfunc_measure(%this : Pointer(Void), lib_orientation :  UInt32, lib_for_size :  Int32, lib_minimum :  Int32, lib_natural :  Int32, lib_minimum_baseline :  Int32, lib_natural_baseline :  Int32, ) : Void
        # @orientation: 
# @for_size: 
# @minimum: (out) (transfer full) (optional) 
# @natural: (out) (transfer full) (optional) 
# @minimum_baseline: (out) (transfer full) (optional) 
# @natural_baseline: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
orientation=Gtk::Orientation.new(lib_orientation)
for_size=lib_for_size
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(orientation, for_size, minimum, natural, minimum_baseline, natural_baseline)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_measure(Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # measure: (None)
    # @orientation:
    # @for_size:
    # @minimum: (out) (transfer full) (optional)
    # @natural: (out) (transfer full) (optional)
    # @minimum_baseline: (out) (transfer full) (optional)
    # @natural_baseline: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_measure_vfunc(impl_method_name)
      private def self._vfunc_unsafe_measure(%this : Pointer(Void), lib_orientation :  UInt32, lib_for_size :  Int32, lib_minimum :  Int32, lib_natural :  Int32, lib_minimum_baseline :  Int32, lib_natural_baseline :  Int32, ) : Void
# @orientation: 
# @for_size: 
# @minimum: (out) (transfer full) (optional) 
# @natural: (out) (transfer full) (optional) 
# @minimum_baseline: (out) (transfer full) (optional) 
# @natural_baseline: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_orientation, lib_for_size, lib_minimum, lib_natural, lib_minimum_baseline, lib_natural_baseline)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_measure = Proc(Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_measure(Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_measure : Proc(Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32, Void)? = nil
    end

    # mnemonic_activate: (None)
    # @group_cycling:
    # Returns: (transfer none)
    private macro _register_mnemonic_activate_vfunc(impl_method_name)
      private def self._vfunc_mnemonic_activate(%this : Pointer(Void), lib_group_cycling :  LibC::Int, ) : LibC::Int
        # @group_cycling: 

# Generator::BuiltInTypeArgPlan
group_cycling=GICrystal.to_bool(lib_group_cycling)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(group_cycling)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mnemonic_activate(Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # mnemonic_activate: (None)
    # @group_cycling:
    # Returns: (transfer none)
    private macro _register_unsafe_mnemonic_activate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mnemonic_activate(%this : Pointer(Void), lib_group_cycling :  LibC::Int, ) : LibC::Int
# @group_cycling: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_group_cycling)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mnemonic_activate = Proc(Pointer(Void), LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mnemonic_activate(Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mnemonic_activate : Proc(Pointer(Void), LibC::Int, LibC::Int)? = nil
    end

    # move_focus: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_move_focus_vfunc(impl_method_name)
      private def self._vfunc_move_focus(%this : Pointer(Void), lib_direction :  UInt32, ) : Void
        # @direction: 

# Generator::BuiltInTypeArgPlan
direction=Gtk::DirectionType.new(lib_direction)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(direction)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_move_focus(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # move_focus: (None)
    # @direction:
    # Returns: (transfer none)
    private macro _register_unsafe_move_focus_vfunc(impl_method_name)
      private def self._vfunc_unsafe_move_focus(%this : Pointer(Void), lib_direction :  UInt32, ) : Void
# @direction: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_direction)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_move_focus = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_move_focus(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_move_focus : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # query_tooltip: (None)
    # @x:
    # @y:
    # @keyboard_tooltip:
    # @tooltip:
    # Returns: (transfer none)
    private macro _register_query_tooltip_vfunc(impl_method_name)
      private def self._vfunc_query_tooltip(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_keyboard_tooltip :  LibC::Int, lib_tooltip :  Pointer(Void), ) : LibC::Int
        # @x: 
# @y: 
# @keyboard_tooltip: 
# @tooltip: 

x=lib_x
y=lib_y
# Generator::BuiltInTypeArgPlan
keyboard_tooltip=GICrystal.to_bool(lib_keyboard_tooltip)
# Generator::BuiltInTypeArgPlan
tooltip=Gtk::Tooltip.new(lib_tooltip, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(x, y, keyboard_tooltip, tooltip)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_tooltip(Pointer(Void), Int32, Int32, LibC::Int, Pointer(Void))).pointer
        previous_def
      end
    end

    # query_tooltip: (None)
    # @x:
    # @y:
    # @keyboard_tooltip:
    # @tooltip:
    # Returns: (transfer none)
    private macro _register_unsafe_query_tooltip_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_tooltip(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_keyboard_tooltip :  LibC::Int, lib_tooltip :  Pointer(Void), ) : LibC::Int
# @x: 
# @y: 
# @keyboard_tooltip: 
# @tooltip: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_x, lib_y, lib_keyboard_tooltip, lib_tooltip)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 288).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_tooltip = Proc(Pointer(Void), Int32, Int32, LibC::Int, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_tooltip(Pointer(Void), Int32, Int32, LibC::Int, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_tooltip : Proc(Pointer(Void), Int32, Int32, LibC::Int, Pointer(Void), LibC::Int)? = nil
    end

    # realize: (None)
    # Returns: (transfer none)
    private macro _register_realize_vfunc(impl_method_name)
      private def self._vfunc_realize(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_realize(Pointer(Void))).pointer
        previous_def
      end
    end

    # realize: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_realize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_realize(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_realize = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_realize(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_realize : Proc(Pointer(Void), Void)? = nil
    end

    # root: (None)
    # Returns: (transfer none)
    private macro _register_root_vfunc(impl_method_name)
      private def self._vfunc_root(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_root(Pointer(Void))).pointer
        previous_def
      end
    end

    # root: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_root_vfunc(impl_method_name)
      private def self._vfunc_unsafe_root(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_root = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_root(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_root : Proc(Pointer(Void), Void)? = nil
    end

    # set_focus_child: (None)
    # @child: (nullable)
    # Returns: (transfer none)
    private macro _register_set_focus_child_vfunc(impl_method_name)
      private def self._vfunc_set_focus_child(%this : Pointer(Void), lib_child :  Pointer(Void), ) : Void
        # @child: (nullable) 

# Generator::NullableArrayPlan
child=(lib_child.null? ? nil : Gtk::Widget.new(lib_child, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
child=Gtk::Widget.new(lib_child, GICrystal::Transfer::None) unless lib_child.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(child)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_focus_child(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_focus_child: (None)
    # @child: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_focus_child_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_focus_child(%this : Pointer(Void), lib_child :  Pointer(Void), ) : Void
# @child: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_child)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 264).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_focus_child = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_focus_child(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_focus_child : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # show: (None)
    # Returns: (transfer none)
    private macro _register_show_vfunc(impl_method_name)
      private def self._vfunc_show(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_show(Pointer(Void))).pointer
        previous_def
      end
    end

    # show: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_show_vfunc(impl_method_name)
      private def self._vfunc_unsafe_show(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_show = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_show(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_show : Proc(Pointer(Void), Void)? = nil
    end

    # size_allocate: (None)
    # @width:
    # @height:
    # @baseline:
    # Returns: (transfer none)
    private macro _register_size_allocate_vfunc(impl_method_name)
      private def self._vfunc_size_allocate(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, lib_baseline :  Int32, ) : Void
        # @width: 
# @height: 
# @baseline: 

width=lib_width
height=lib_height
baseline=lib_baseline


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(width, height, baseline)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_size_allocate(Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # size_allocate: (None)
    # @width:
    # @height:
    # @baseline:
    # Returns: (transfer none)
    private macro _register_unsafe_size_allocate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_size_allocate(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, lib_baseline :  Int32, ) : Void
# @width: 
# @height: 
# @baseline: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_width, lib_height, lib_baseline)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_size_allocate = Proc(Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_size_allocate(Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_size_allocate : Proc(Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # snapshot: (None)
    # @snapshot:
    # Returns: (transfer none)
    private macro _register_snapshot_vfunc(impl_method_name)
      private def self._vfunc_snapshot(%this : Pointer(Void), lib_snapshot :  Pointer(Void), ) : Void
        # @snapshot: 

# Generator::BuiltInTypeArgPlan
snapshot=Gtk::Snapshot.new(lib_snapshot, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(snapshot)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 320).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_snapshot(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # snapshot: (None)
    # @snapshot:
    # Returns: (transfer none)
    private macro _register_unsafe_snapshot_vfunc(impl_method_name)
      private def self._vfunc_unsafe_snapshot(%this : Pointer(Void), lib_snapshot :  Pointer(Void), ) : Void
# @snapshot: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_snapshot)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 320).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_snapshot = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_snapshot(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_snapshot : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # state_flags_changed: (None)
    # @previous_state_flags:
    # Returns: (transfer none)
    private macro _register_state_flags_changed_vfunc(impl_method_name)
      private def self._vfunc_state_flags_changed(%this : Pointer(Void), lib_previous_state_flags :  UInt32, ) : Void
        # @previous_state_flags: 

# Generator::BuiltInTypeArgPlan
previous_state_flags=Gtk::StateFlags.new(lib_previous_state_flags)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(previous_state_flags)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_state_flags_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # state_flags_changed: (None)
    # @previous_state_flags:
    # Returns: (transfer none)
    private macro _register_unsafe_state_flags_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_state_flags_changed(%this : Pointer(Void), lib_previous_state_flags :  UInt32, ) : Void
# @previous_state_flags: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_previous_state_flags)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_state_flags_changed = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_state_flags_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_state_flags_changed : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # system_setting_changed: (None)
    # @settings:
    # Returns: (transfer none)
    private macro _register_system_setting_changed_vfunc(impl_method_name)
      private def self._vfunc_system_setting_changed(%this : Pointer(Void), lib_settings :  UInt32, ) : Void
        # @settings: 

# Generator::BuiltInTypeArgPlan
settings=Gtk::SystemSetting.new(lib_settings)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(settings)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 312).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_system_setting_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # system_setting_changed: (None)
    # @settings:
    # Returns: (transfer none)
    private macro _register_unsafe_system_setting_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_system_setting_changed(%this : Pointer(Void), lib_settings :  UInt32, ) : Void
# @settings: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_settings)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 312).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_system_setting_changed = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_system_setting_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_system_setting_changed : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # unmap: (None)
    # Returns: (transfer none)
    private macro _register_unmap_vfunc(impl_method_name)
      private def self._vfunc_unmap(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unmap(Pointer(Void))).pointer
        previous_def
      end
    end

    # unmap: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_unmap_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unmap(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unmap = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unmap(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unmap : Proc(Pointer(Void), Void)? = nil
    end

    # unrealize: (None)
    # Returns: (transfer none)
    private macro _register_unrealize_vfunc(impl_method_name)
      private def self._vfunc_unrealize(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unrealize(Pointer(Void))).pointer
        previous_def
      end
    end

    # unrealize: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_unrealize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unrealize(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unrealize = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unrealize(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unrealize : Proc(Pointer(Void), Void)? = nil
    end

    # unroot: (None)
    # Returns: (transfer none)
    private macro _register_unroot_vfunc(impl_method_name)
      private def self._vfunc_unroot(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unroot(Pointer(Void))).pointer
        previous_def
      end
    end

    # unroot: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_unroot_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unroot(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unroot = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unroot(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unroot : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
