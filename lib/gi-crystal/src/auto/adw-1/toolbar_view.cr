require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class ToolbarView < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ToolbarView, g_object_get_qdata)

    # Initialize a new `ToolbarView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, bottom_bar_height : Int32? = nil, bottom_bar_style : Adw::ToolbarStyle? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, content : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, extend_content_to_bottom_edge : Bool? = nil, extend_content_to_top_edge : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, reveal_bottom_bars : Bool? = nil, reveal_top_bars : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, top_bar_height : Int32? = nil, top_bar_style : Adw::ToolbarStyle? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[45]
      _values = StaticArray(LibGObject::Value, 45).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !bottom_bar_height.nil?
        (_names.to_unsafe + _n).value = "bottom-bar-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bottom_bar_height)
        _n += 1
      end
      if !bottom_bar_style.nil?
        (_names.to_unsafe + _n).value = "bottom-bar-style".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bottom_bar_style)
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
      if !extend_content_to_bottom_edge.nil?
        (_names.to_unsafe + _n).value = "extend-content-to-bottom-edge".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extend_content_to_bottom_edge)
        _n += 1
      end
      if !extend_content_to_top_edge.nil?
        (_names.to_unsafe + _n).value = "extend-content-to-top-edge".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extend_content_to_top_edge)
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
      if !reveal_bottom_bars.nil?
        (_names.to_unsafe + _n).value = "reveal-bottom-bars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reveal_bottom_bars)
        _n += 1
      end
      if !reveal_top_bars.nil?
        (_names.to_unsafe + _n).value = "reveal-top-bars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reveal_top_bars)
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
      if !top_bar_height.nil?
        (_names.to_unsafe + _n).value = "top-bar-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, top_bar_height)
        _n += 1
      end
      if !top_bar_style.nil?
        (_names.to_unsafe + _n).value = "top-bar-style".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, top_bar_style)
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
      @@g_type ||= LibAdw.adw_toolbar_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::ToolbarView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def bottom_bar_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "bottom-bar-height", pointerof(value), Pointer(Void).null)
      value
    end

    def bottom_bar_style=(value : Adw::ToolbarStyle) : Adw::ToolbarStyle
      unsafe_value = value

      LibGObject.g_object_set(self, "bottom-bar-style", unsafe_value, Pointer(Void).null)
      value
    end

    def bottom_bar_style : Adw::ToolbarStyle
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "bottom-bar-style", pointerof(value), Pointer(Void).null)
      Adw::ToolbarStyle.new(value)
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

    def extend_content_to_bottom_edge=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "extend-content-to-bottom-edge", unsafe_value, Pointer(Void).null)
      value
    end

    def extend_content_to_bottom_edge? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "extend-content-to-bottom-edge", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def extend_content_to_top_edge=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "extend-content-to-top-edge", unsafe_value, Pointer(Void).null)
      value
    end

    def extend_content_to_top_edge? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "extend-content-to-top-edge", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def reveal_bottom_bars=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reveal-bottom-bars", unsafe_value, Pointer(Void).null)
      value
    end

    def reveal_bottom_bars? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reveal-bottom-bars", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def reveal_top_bars=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reveal-top-bars", unsafe_value, Pointer(Void).null)
      value
    end

    def reveal_top_bars? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reveal-top-bars", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def top_bar_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "top-bar-height", pointerof(value), Pointer(Void).null)
      value
    end

    def top_bar_style=(value : Adw::ToolbarStyle) : Adw::ToolbarStyle
      unsafe_value = value

      LibGObject.g_object_set(self, "top-bar-style", unsafe_value, Pointer(Void).null)
      value
    end

    def top_bar_style : Adw::ToolbarStyle
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "top-bar-style", pointerof(value), Pointer(Void).null)
      Adw::ToolbarStyle.new(value)
    end

    def self.new : self
      # adw_toolbar_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_new

      # Return value handling
      Adw::ToolbarView.new(_retval, GICrystal::Transfer::Full)
    end

    def add_bottom_bar(widget : Gtk::Widget) : Nil
      # adw_toolbar_view_add_bottom_bar: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_add_bottom_bar(to_unsafe, widget)

      # Return value handling
    end

    def add_top_bar(widget : Gtk::Widget) : Nil
      # adw_toolbar_view_add_top_bar: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_add_top_bar(to_unsafe, widget)

      # Return value handling
    end

    def bottom_bar_height : Int32
      # adw_toolbar_view_get_bottom_bar_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_bottom_bar_height(to_unsafe)

      # Return value handling
      _retval
    end

    def bottom_bar_style : Adw::ToolbarStyle
      # adw_toolbar_view_get_bottom_bar_style: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_bottom_bar_style(to_unsafe)

      # Return value handling
      Adw::ToolbarStyle.new(_retval)
    end

    def content : Gtk::Widget?
      # adw_toolbar_view_get_content: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_content(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def extend_content_to_bottom_edge : Bool
      # adw_toolbar_view_get_extend_content_to_bottom_edge: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_extend_content_to_bottom_edge(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def extend_content_to_top_edge : Bool
      # adw_toolbar_view_get_extend_content_to_top_edge: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_extend_content_to_top_edge(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reveal_bottom_bars : Bool
      # adw_toolbar_view_get_reveal_bottom_bars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_reveal_bottom_bars(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reveal_top_bars : Bool
      # adw_toolbar_view_get_reveal_top_bars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_reveal_top_bars(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def top_bar_height : Int32
      # adw_toolbar_view_get_top_bar_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_top_bar_height(to_unsafe)

      # Return value handling
      _retval
    end

    def top_bar_style : Adw::ToolbarStyle
      # adw_toolbar_view_get_top_bar_style: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toolbar_view_get_top_bar_style(to_unsafe)

      # Return value handling
      Adw::ToolbarStyle.new(_retval)
    end

    def remove(widget : Gtk::Widget) : Nil
      # adw_toolbar_view_remove: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_remove(to_unsafe, widget)

      # Return value handling
    end

    def bottom_bar_style=(style : Adw::ToolbarStyle) : Nil
      # adw_toolbar_view_set_bottom_bar_style: (Method | Setter)
      # @style:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_set_bottom_bar_style(to_unsafe, style)

      # Return value handling
    end

    def content=(content : Gtk::Widget?) : Nil
      # adw_toolbar_view_set_content: (Method | Setter)
      # @content: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content = if content.nil?
                  Pointer(Void).null
                else
                  content.to_unsafe
                end

      # C call
      LibAdw.adw_toolbar_view_set_content(to_unsafe, content)

      # Return value handling
    end

    def extend_content_to_bottom_edge=(extend _extend : Bool) : Nil
      # adw_toolbar_view_set_extend_content_to_bottom_edge: (Method | Setter)
      # @extend:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_set_extend_content_to_bottom_edge(to_unsafe, _extend)

      # Return value handling
    end

    def extend_content_to_top_edge=(extend _extend : Bool) : Nil
      # adw_toolbar_view_set_extend_content_to_top_edge: (Method | Setter)
      # @extend:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_set_extend_content_to_top_edge(to_unsafe, _extend)

      # Return value handling
    end

    def reveal_bottom_bars=(reveal : Bool) : Nil
      # adw_toolbar_view_set_reveal_bottom_bars: (Method | Setter)
      # @reveal:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_set_reveal_bottom_bars(to_unsafe, reveal)

      # Return value handling
    end

    def reveal_top_bars=(reveal : Bool) : Nil
      # adw_toolbar_view_set_reveal_top_bars: (Method | Setter)
      # @reveal:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_set_reveal_top_bars(to_unsafe, reveal)

      # Return value handling
    end

    def top_bar_style=(style : Adw::ToolbarStyle) : Nil
      # adw_toolbar_view_set_top_bar_style: (Method | Setter)
      # @style:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toolbar_view_set_top_bar_style(to_unsafe, style)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
