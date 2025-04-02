require "../gtk-4.0/widget"
require "./swipeable"

require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class OverlaySplitView < Gtk::Widget
    include Swipeable
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(OverlaySplitView, g_object_get_qdata)

    # Initialize a new `OverlaySplitView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, collapsed : Bool? = nil, content : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, enable_hide_gesture : Bool? = nil, enable_show_gesture : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, max_sidebar_width : Float64? = nil, min_sidebar_width : Float64? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, pin_sidebar : Bool? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_sidebar : Bool? = nil, sidebar : Gtk::Widget? = nil, sidebar_position : Gtk::PackType? = nil, sidebar_width_fraction : Float64? = nil, sidebar_width_unit : Adw::LengthUnit? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[48]
      _values = StaticArray(LibGObject::Value, 48).new(LibGObject::Value.new)
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
      if !collapsed.nil?
        (_names.to_unsafe + _n).value = "collapsed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, collapsed)
        _n += 1
      end
      if !content.nil?
        (_names.to_unsafe + _n).value = "content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content)
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
      if !enable_hide_gesture.nil?
        (_names.to_unsafe + _n).value = "enable-hide-gesture".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_hide_gesture)
        _n += 1
      end
      if !enable_show_gesture.nil?
        (_names.to_unsafe + _n).value = "enable-show-gesture".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_show_gesture)
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
      if !max_sidebar_width.nil?
        (_names.to_unsafe + _n).value = "max-sidebar-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_sidebar_width)
        _n += 1
      end
      if !min_sidebar_width.nil?
        (_names.to_unsafe + _n).value = "min-sidebar-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_sidebar_width)
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
      if !pin_sidebar.nil?
        (_names.to_unsafe + _n).value = "pin-sidebar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pin_sidebar)
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
      if !show_sidebar.nil?
        (_names.to_unsafe + _n).value = "show-sidebar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_sidebar)
        _n += 1
      end
      if !sidebar.nil?
        (_names.to_unsafe + _n).value = "sidebar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sidebar)
        _n += 1
      end
      if !sidebar_position.nil?
        (_names.to_unsafe + _n).value = "sidebar-position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sidebar_position)
        _n += 1
      end
      if !sidebar_width_fraction.nil?
        (_names.to_unsafe + _n).value = "sidebar-width-fraction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sidebar_width_fraction)
        _n += 1
      end
      if !sidebar_width_unit.nil?
        (_names.to_unsafe + _n).value = "sidebar-width-unit".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sidebar_width_unit)
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
      @@g_type ||= LibAdw.adw_overlay_split_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::OverlaySplitView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def collapsed=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "collapsed", unsafe_value, Pointer(Void).null)
      value
    end

    def collapsed? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "collapsed", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def content=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "content", unsafe_value, Pointer(Void).null)
      value
    end

    def content : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "content", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def enable_hide_gesture=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-hide-gesture", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_hide_gesture? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-hide-gesture", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_show_gesture=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-show-gesture", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_show_gesture? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-show-gesture", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def max_sidebar_width=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "max-sidebar-width", unsafe_value, Pointer(Void).null)
      value
    end

    def max_sidebar_width : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "max-sidebar-width", pointerof(value), Pointer(Void).null)
      value
    end

    def min_sidebar_width=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "min-sidebar-width", unsafe_value, Pointer(Void).null)
      value
    end

    def min_sidebar_width : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "min-sidebar-width", pointerof(value), Pointer(Void).null)
      value
    end

    def pin_sidebar=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "pin-sidebar", unsafe_value, Pointer(Void).null)
      value
    end

    def pin_sidebar? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "pin-sidebar", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_sidebar=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-sidebar", unsafe_value, Pointer(Void).null)
      value
    end

    def show_sidebar? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-sidebar", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sidebar=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "sidebar", unsafe_value, Pointer(Void).null)
      value
    end

    def sidebar : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sidebar", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def sidebar_position=(value : Gtk::PackType) : Gtk::PackType
      unsafe_value = value

      LibGObject.g_object_set(self, "sidebar-position", unsafe_value, Pointer(Void).null)
      value
    end

    def sidebar_position : Gtk::PackType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "sidebar-position", pointerof(value), Pointer(Void).null)
      Gtk::PackType.new(value)
    end

    def sidebar_width_fraction=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "sidebar-width-fraction", unsafe_value, Pointer(Void).null)
      value
    end

    def sidebar_width_fraction : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "sidebar-width-fraction", pointerof(value), Pointer(Void).null)
      value
    end

    def sidebar_width_unit=(value : Adw::LengthUnit) : Adw::LengthUnit
      unsafe_value = value

      LibGObject.g_object_set(self, "sidebar-width-unit", unsafe_value, Pointer(Void).null)
      value
    end

    def sidebar_width_unit : Adw::LengthUnit
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "sidebar-width-unit", pointerof(value), Pointer(Void).null)
      Adw::LengthUnit.new(value)
    end

    def self.new : self
      # adw_overlay_split_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_new

      # Return value handling
      Adw::OverlaySplitView.new(_retval, GICrystal::Transfer::Full)
    end

    def collapsed : Bool
      # adw_overlay_split_view_get_collapsed: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_collapsed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def content : Gtk::Widget?
      # adw_overlay_split_view_get_content: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_content(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def enable_hide_gesture : Bool
      # adw_overlay_split_view_get_enable_hide_gesture: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_enable_hide_gesture(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_show_gesture : Bool
      # adw_overlay_split_view_get_enable_show_gesture: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_enable_show_gesture(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def max_sidebar_width : Float64
      # adw_overlay_split_view_get_max_sidebar_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_max_sidebar_width(to_unsafe)

      # Return value handling
      _retval
    end

    def min_sidebar_width : Float64
      # adw_overlay_split_view_get_min_sidebar_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_min_sidebar_width(to_unsafe)

      # Return value handling
      _retval
    end

    def pin_sidebar : Bool
      # adw_overlay_split_view_get_pin_sidebar: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_pin_sidebar(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_sidebar : Bool
      # adw_overlay_split_view_get_show_sidebar: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_show_sidebar(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def sidebar : Gtk::Widget?
      # adw_overlay_split_view_get_sidebar: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_sidebar(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def sidebar_position : Gtk::PackType
      # adw_overlay_split_view_get_sidebar_position: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_sidebar_position(to_unsafe)

      # Return value handling
      Gtk::PackType.new(_retval)
    end

    def sidebar_width_fraction : Float64
      # adw_overlay_split_view_get_sidebar_width_fraction: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_sidebar_width_fraction(to_unsafe)

      # Return value handling
      _retval
    end

    def sidebar_width_unit : Adw::LengthUnit
      # adw_overlay_split_view_get_sidebar_width_unit: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_overlay_split_view_get_sidebar_width_unit(to_unsafe)

      # Return value handling
      Adw::LengthUnit.new(_retval)
    end

    def collapsed=(collapsed : Bool) : Nil
      # adw_overlay_split_view_set_collapsed: (Method | Setter)
      # @collapsed:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_collapsed(to_unsafe, collapsed)

      # Return value handling
    end

    def content=(content : Gtk::Widget?) : Nil
      # adw_overlay_split_view_set_content: (Method | Setter)
      # @content: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content = if content.nil?
                  Pointer(Void).null
                else
                  content.to_unsafe
                end

      # C call
      LibAdw.adw_overlay_split_view_set_content(to_unsafe, content)

      # Return value handling
    end

    def enable_hide_gesture=(enable_hide_gesture : Bool) : Nil
      # adw_overlay_split_view_set_enable_hide_gesture: (Method | Setter)
      # @enable_hide_gesture:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_enable_hide_gesture(to_unsafe, enable_hide_gesture)

      # Return value handling
    end

    def enable_show_gesture=(enable_show_gesture : Bool) : Nil
      # adw_overlay_split_view_set_enable_show_gesture: (Method | Setter)
      # @enable_show_gesture:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_enable_show_gesture(to_unsafe, enable_show_gesture)

      # Return value handling
    end

    def max_sidebar_width=(width : Float64) : Nil
      # adw_overlay_split_view_set_max_sidebar_width: (Method | Setter)
      # @width:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_max_sidebar_width(to_unsafe, width)

      # Return value handling
    end

    def min_sidebar_width=(width : Float64) : Nil
      # adw_overlay_split_view_set_min_sidebar_width: (Method | Setter)
      # @width:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_min_sidebar_width(to_unsafe, width)

      # Return value handling
    end

    def pin_sidebar=(pin_sidebar : Bool) : Nil
      # adw_overlay_split_view_set_pin_sidebar: (Method | Setter)
      # @pin_sidebar:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_pin_sidebar(to_unsafe, pin_sidebar)

      # Return value handling
    end

    def show_sidebar=(show_sidebar : Bool) : Nil
      # adw_overlay_split_view_set_show_sidebar: (Method | Setter)
      # @show_sidebar:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_show_sidebar(to_unsafe, show_sidebar)

      # Return value handling
    end

    def sidebar=(sidebar : Gtk::Widget?) : Nil
      # adw_overlay_split_view_set_sidebar: (Method | Setter)
      # @sidebar: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sidebar = if sidebar.nil?
                  Pointer(Void).null
                else
                  sidebar.to_unsafe
                end

      # C call
      LibAdw.adw_overlay_split_view_set_sidebar(to_unsafe, sidebar)

      # Return value handling
    end

    def sidebar_position=(position : Gtk::PackType) : Nil
      # adw_overlay_split_view_set_sidebar_position: (Method | Setter)
      # @position:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_sidebar_position(to_unsafe, position)

      # Return value handling
    end

    def sidebar_width_fraction=(fraction : Float64) : Nil
      # adw_overlay_split_view_set_sidebar_width_fraction: (Method | Setter)
      # @fraction:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_sidebar_width_fraction(to_unsafe, fraction)

      # Return value handling
    end

    def sidebar_width_unit=(unit : Adw::LengthUnit) : Nil
      # adw_overlay_split_view_set_sidebar_width_unit: (Method | Setter)
      # @unit:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_overlay_split_view_set_sidebar_width_unit(to_unsafe, unit)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
