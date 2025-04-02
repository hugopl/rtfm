require "./widget"
require "./accessible"

require "./accessible_text"

require "./buildable"

require "./constraint_target"

require "./scrollable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TextView < Widget
    include Accessible
    include AccessibleText
    include Buildable
    include ConstraintTarget
    include Scrollable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TextViewClass), class_init,
        sizeof(LibGtk::TextView), instance_init, 0)
    end

    GICrystal.declare_new_method(TextView, g_object_get_qdata)

    # Initialize a new `TextView`.
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

    def initialize(*, accepts_tab : Bool? = nil, accessible_role : Gtk::AccessibleRole? = nil, bottom_margin : Int32? = nil, buffer : Gtk::TextBuffer? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, cursor_visible : Bool? = nil, editable : Bool? = nil, extra_menu : Gio::MenuModel? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, hadjustment : Gtk::Adjustment? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hscroll_policy : Gtk::ScrollablePolicy? = nil, im_module : ::String? = nil, indent : Int32? = nil, input_hints : Gtk::InputHints? = nil, input_purpose : Gtk::InputPurpose? = nil, justification : Gtk::Justification? = nil, layout_manager : Gtk::LayoutManager? = nil, left_margin : Int32? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, monospace : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, overwrite : Bool? = nil, parent : Gtk::Widget? = nil, pixels_above_lines : Int32? = nil, pixels_below_lines : Int32? = nil, pixels_inside_wrap : Int32? = nil, receives_default : Bool? = nil, right_margin : Int32? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tabs : Pango::TabArray? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, top_margin : Int32? = nil, vadjustment : Gtk::Adjustment? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, vscroll_policy : Gtk::ScrollablePolicy? = nil, width_request : Int32? = nil, wrap_mode : Gtk::WrapMode? = nil)
      _names = uninitialized Pointer(LibC::Char)[61]
      _values = StaticArray(LibGObject::Value, 61).new(LibGObject::Value.new)
      _n = 0

      if !accepts_tab.nil?
        (_names.to_unsafe + _n).value = "accepts-tab".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accepts_tab)
        _n += 1
      end
      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !bottom_margin.nil?
        (_names.to_unsafe + _n).value = "bottom-margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bottom_margin)
        _n += 1
      end
      if !buffer.nil?
        (_names.to_unsafe + _n).value = "buffer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, buffer)
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
      if !cursor_visible.nil?
        (_names.to_unsafe + _n).value = "cursor-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor_visible)
        _n += 1
      end
      if !editable.nil?
        (_names.to_unsafe + _n).value = "editable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editable)
        _n += 1
      end
      if !extra_menu.nil?
        (_names.to_unsafe + _n).value = "extra-menu".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extra_menu)
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
      if !hadjustment.nil?
        (_names.to_unsafe + _n).value = "hadjustment".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hadjustment)
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
      if !hscroll_policy.nil?
        (_names.to_unsafe + _n).value = "hscroll-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hscroll_policy)
        _n += 1
      end
      if !im_module.nil?
        (_names.to_unsafe + _n).value = "im-module".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, im_module)
        _n += 1
      end
      if !indent.nil?
        (_names.to_unsafe + _n).value = "indent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, indent)
        _n += 1
      end
      if !input_hints.nil?
        (_names.to_unsafe + _n).value = "input-hints".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_hints)
        _n += 1
      end
      if !input_purpose.nil?
        (_names.to_unsafe + _n).value = "input-purpose".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_purpose)
        _n += 1
      end
      if !justification.nil?
        (_names.to_unsafe + _n).value = "justification".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, justification)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !left_margin.nil?
        (_names.to_unsafe + _n).value = "left-margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, left_margin)
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
      if !monospace.nil?
        (_names.to_unsafe + _n).value = "monospace".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, monospace)
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
      if !overwrite.nil?
        (_names.to_unsafe + _n).value = "overwrite".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overwrite)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !pixels_above_lines.nil?
        (_names.to_unsafe + _n).value = "pixels-above-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_above_lines)
        _n += 1
      end
      if !pixels_below_lines.nil?
        (_names.to_unsafe + _n).value = "pixels-below-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_below_lines)
        _n += 1
      end
      if !pixels_inside_wrap.nil?
        (_names.to_unsafe + _n).value = "pixels-inside-wrap".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixels_inside_wrap)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !right_margin.nil?
        (_names.to_unsafe + _n).value = "right-margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, right_margin)
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
      if !tabs.nil?
        (_names.to_unsafe + _n).value = "tabs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tabs)
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
      if !top_margin.nil?
        (_names.to_unsafe + _n).value = "top-margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, top_margin)
        _n += 1
      end
      if !vadjustment.nil?
        (_names.to_unsafe + _n).value = "vadjustment".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vadjustment)
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
      if !vscroll_policy.nil?
        (_names.to_unsafe + _n).value = "vscroll-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vscroll_policy)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
        _n += 1
      end
      if !wrap_mode.nil?
        (_names.to_unsafe + _n).value = "wrap-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap_mode)
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
      @@g_type ||= LibGtk.gtk_text_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TextView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accepts_tab=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "accepts-tab", unsafe_value, Pointer(Void).null)
      value
    end

    def accepts_tab? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "accepts-tab", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def bottom_margin=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "bottom-margin", unsafe_value, Pointer(Void).null)
      value
    end

    def bottom_margin : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "bottom-margin", pointerof(value), Pointer(Void).null)
      value
    end

    def buffer=(value : Gtk::TextBuffer?) : Gtk::TextBuffer?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "buffer", unsafe_value, Pointer(Void).null)
      value
    end

    def buffer : Gtk::TextBuffer?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "buffer", pointerof(value), Pointer(Void).null)
      Gtk::TextBuffer.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def cursor_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "cursor-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def cursor_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "cursor-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def editable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "editable", unsafe_value, Pointer(Void).null)
      value
    end

    def editable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "editable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def extra_menu=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "extra-menu", unsafe_value, Pointer(Void).null)
      value
    end

    def extra_menu : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "extra-menu", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def im_module=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "im-module", unsafe_value, Pointer(Void).null)
      value
    end

    def im_module : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "im-module", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#im_module` property to nil.
    def im_module=(value : Nil) : Nil
      LibGObject.g_object_set(self, "im-module", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#im_module`, but can return nil.
    def im_module? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "im-module", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def indent=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "indent", unsafe_value, Pointer(Void).null)
      value
    end

    def indent : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "indent", pointerof(value), Pointer(Void).null)
      value
    end

    def input_hints=(value : Gtk::InputHints) : Gtk::InputHints
      unsafe_value = value

      LibGObject.g_object_set(self, "input-hints", unsafe_value, Pointer(Void).null)
      value
    end

    def input_hints : Gtk::InputHints
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-hints", pointerof(value), Pointer(Void).null)
      Gtk::InputHints.new(value)
    end

    def input_purpose=(value : Gtk::InputPurpose) : Gtk::InputPurpose
      unsafe_value = value

      LibGObject.g_object_set(self, "input-purpose", unsafe_value, Pointer(Void).null)
      value
    end

    def input_purpose : Gtk::InputPurpose
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-purpose", pointerof(value), Pointer(Void).null)
      Gtk::InputPurpose.new(value)
    end

    def justification=(value : Gtk::Justification) : Gtk::Justification
      unsafe_value = value

      LibGObject.g_object_set(self, "justification", unsafe_value, Pointer(Void).null)
      value
    end

    def justification : Gtk::Justification
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "justification", pointerof(value), Pointer(Void).null)
      Gtk::Justification.new(value)
    end

    def left_margin=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "left-margin", unsafe_value, Pointer(Void).null)
      value
    end

    def left_margin : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "left-margin", pointerof(value), Pointer(Void).null)
      value
    end

    def monospace=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "monospace", unsafe_value, Pointer(Void).null)
      value
    end

    def monospace? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "monospace", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def overwrite=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "overwrite", unsafe_value, Pointer(Void).null)
      value
    end

    def overwrite? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "overwrite", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def pixels_above_lines=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-above-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_above_lines : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixels-above-lines", pointerof(value), Pointer(Void).null)
      value
    end

    def pixels_below_lines=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-below-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_below_lines : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixels-below-lines", pointerof(value), Pointer(Void).null)
      value
    end

    def pixels_inside_wrap=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixels-inside-wrap", unsafe_value, Pointer(Void).null)
      value
    end

    def pixels_inside_wrap : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixels-inside-wrap", pointerof(value), Pointer(Void).null)
      value
    end

    def right_margin=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "right-margin", unsafe_value, Pointer(Void).null)
      value
    end

    def right_margin : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "right-margin", pointerof(value), Pointer(Void).null)
      value
    end

    def tabs=(value : Pango::TabArray?) : Pango::TabArray?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tabs", unsafe_value, Pointer(Void).null)
      value
    end

    def tabs : Pango::TabArray?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tabs", pointerof(value), Pointer(Void).null)
      Pango::TabArray.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def top_margin=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "top-margin", unsafe_value, Pointer(Void).null)
      value
    end

    def top_margin : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "top-margin", pointerof(value), Pointer(Void).null)
      value
    end

    def wrap_mode=(value : Gtk::WrapMode) : Gtk::WrapMode
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap_mode : Gtk::WrapMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "wrap-mode", pointerof(value), Pointer(Void).null)
      Gtk::WrapMode.new(value)
    end

    def self.new : self
      # gtk_text_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_new

      # Return value handling
      Gtk::TextView.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_buffer(buffer : Gtk::TextBuffer) : self
      # gtk_text_view_new_with_buffer: (Constructor)
      # @buffer:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_new_with_buffer(buffer)

      # Return value handling
      Gtk::TextView.new(_retval, GICrystal::Transfer::Full)
    end

    def add_child_at_anchor(child : Gtk::Widget, anchor : Gtk::TextChildAnchor) : Nil
      # gtk_text_view_add_child_at_anchor: (Method)
      # @child:
      # @anchor:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_add_child_at_anchor(to_unsafe, child, anchor)

      # Return value handling
    end

    def add_overlay(child : Gtk::Widget, xpos : Int32, ypos : Int32) : Nil
      # gtk_text_view_add_overlay: (Method)
      # @child:
      # @xpos:
      # @ypos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_add_overlay(to_unsafe, child, xpos, ypos)

      # Return value handling
    end

    def backward_display_line(iter : Gtk::TextIter) : Bool
      # gtk_text_view_backward_display_line: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_backward_display_line(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def backward_display_line_start(iter : Gtk::TextIter) : Bool
      # gtk_text_view_backward_display_line_start: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_backward_display_line_start(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def buffer_to_window_coords(win : Gtk::TextWindowType, buffer_x : Int32, buffer_y : Int32) : Nil
      # gtk_text_view_buffer_to_window_coords: (Method)
      # @win:
      # @buffer_x:
      # @buffer_y:
      # @window_x: (out) (transfer full) (optional)
      # @window_y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      window_x = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      window_y = Pointer(Int32).null
      # C call
      LibGtk.gtk_text_view_buffer_to_window_coords(to_unsafe, win, buffer_x, buffer_y, window_x, window_y)

      # Return value handling
    end

    def forward_display_line(iter : Gtk::TextIter) : Bool
      # gtk_text_view_forward_display_line: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_forward_display_line(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def forward_display_line_end(iter : Gtk::TextIter) : Bool
      # gtk_text_view_forward_display_line_end: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_forward_display_line_end(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def accepts_tab : Bool
      # gtk_text_view_get_accepts_tab: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_accepts_tab(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def bottom_margin : Int32
      # gtk_text_view_get_bottom_margin: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_bottom_margin(to_unsafe)

      # Return value handling
      _retval
    end

    def buffer : Gtk::TextBuffer
      # gtk_text_view_get_buffer: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_buffer(to_unsafe)

      # Return value handling
      Gtk::TextBuffer.new(_retval, GICrystal::Transfer::None)
    end

    def cursor_locations(iter : Gtk::TextIter?) : Gdk::Rectangle
      # gtk_text_view_get_cursor_locations: (Method)
      # @iter: (nullable)
      # @strong: (out) (caller-allocates) (optional)
      # @weak: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      iter = if iter.nil?
               Pointer(Void).null
             else
               iter.to_unsafe
             end
      # Generator::OutArgUsedInReturnPlan
      strong = Pointer(Void).null # Generator::CallerAllocatesPlan
      strong = Gdk::Rectangle.new # Generator::OutArgUsedInReturnPlan
      weak = Pointer(Void).null   # Generator::CallerAllocatesPlan
      weak = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_text_view_get_cursor_locations(to_unsafe, iter, strong, weak)

      # Return value handling
      strong
    end

    def cursor_visible : Bool
      # gtk_text_view_get_cursor_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_cursor_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def editable : Bool
      # gtk_text_view_get_editable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_editable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def extra_menu : Gio::MenuModel
      # gtk_text_view_get_extra_menu: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_extra_menu(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None)
    end

    def gutter(win : Gtk::TextWindowType) : Gtk::Widget?
      # gtk_text_view_get_gutter: (Method)
      # @win:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_text_view_get_gutter(to_unsafe, win)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def indent : Int32
      # gtk_text_view_get_indent: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_indent(to_unsafe)

      # Return value handling
      _retval
    end

    def input_hints : Gtk::InputHints
      # gtk_text_view_get_input_hints: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_input_hints(to_unsafe)

      # Return value handling
      Gtk::InputHints.new(_retval)
    end

    def input_purpose : Gtk::InputPurpose
      # gtk_text_view_get_input_purpose: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_input_purpose(to_unsafe)

      # Return value handling
      Gtk::InputPurpose.new(_retval)
    end

    def iter_at_location(x : Int32, y : Int32) : Gtk::TextIter
      # gtk_text_view_get_iter_at_location: (Method)
      # @iter: (out) (caller-allocates)
      # @x:
      # @y:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new
      # C call
      _retval = LibGtk.gtk_text_view_get_iter_at_location(to_unsafe, iter, x, y)

      # Return value handling
      iter
    end

    def iter_at_position(x : Int32, y : Int32) : Gtk::TextIter
      # gtk_text_view_get_iter_at_position: (Method)
      # @iter: (out) (caller-allocates)
      # @trailing: (out) (transfer full) (optional)
      # @x:
      # @y:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TextIter.new # Generator::OutArgUsedInReturnPlan
      trailing = Pointer(Int32).null
      # C call
      _retval = LibGtk.gtk_text_view_get_iter_at_position(to_unsafe, iter, trailing, x, y)

      # Return value handling
      iter
    end

    def iter_location(iter : Gtk::TextIter) : Gdk::Rectangle
      # gtk_text_view_get_iter_location: (Method)
      # @iter:
      # @location: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      location = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_text_view_get_iter_location(to_unsafe, iter, location)

      # Return value handling
      location
    end

    def justification : Gtk::Justification
      # gtk_text_view_get_justification: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_justification(to_unsafe)

      # Return value handling
      Gtk::Justification.new(_retval)
    end

    def left_margin : Int32
      # gtk_text_view_get_left_margin: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_left_margin(to_unsafe)

      # Return value handling
      _retval
    end

    def line_at_y(y : Int32, line_top : Int32) : Gtk::TextIter
      # gtk_text_view_get_line_at_y: (Method)
      # @target_iter: (out) (caller-allocates)
      # @y:
      # @line_top: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      target_iter = Gtk::TextIter.new
      # C call
      LibGtk.gtk_text_view_get_line_at_y(to_unsafe, target_iter, y, line_top)

      # Return value handling
      target_iter
    end

    def line_yrange(iter : Gtk::TextIter, y : Int32, height : Int32) : Nil
      # gtk_text_view_get_line_yrange: (Method)
      # @iter:
      # @y: (out) (transfer full)
      # @height: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_get_line_yrange(to_unsafe, iter, y, height)

      # Return value handling
    end

    def ltr_context : Pango::Context
      # gtk_text_view_get_ltr_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_ltr_context(to_unsafe)

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::None)
    end

    def monospace : Bool
      # gtk_text_view_get_monospace: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_monospace(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def overwrite : Bool
      # gtk_text_view_get_overwrite: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_overwrite(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pixels_above_lines : Int32
      # gtk_text_view_get_pixels_above_lines: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_pixels_above_lines(to_unsafe)

      # Return value handling
      _retval
    end

    def pixels_below_lines : Int32
      # gtk_text_view_get_pixels_below_lines: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_pixels_below_lines(to_unsafe)

      # Return value handling
      _retval
    end

    def pixels_inside_wrap : Int32
      # gtk_text_view_get_pixels_inside_wrap: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_pixels_inside_wrap(to_unsafe)

      # Return value handling
      _retval
    end

    def right_margin : Int32
      # gtk_text_view_get_right_margin: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_right_margin(to_unsafe)

      # Return value handling
      _retval
    end

    def rtl_context : Pango::Context
      # gtk_text_view_get_rtl_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_rtl_context(to_unsafe)

      # Return value handling
      Pango::Context.new(_retval, GICrystal::Transfer::None)
    end

    def tabs : Pango::TabArray?
      # gtk_text_view_get_tabs: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_text_view_get_tabs(to_unsafe)

      # Return value handling
      Pango::TabArray.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def top_margin : Int32
      # gtk_text_view_get_top_margin: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_top_margin(to_unsafe)

      # Return value handling
      _retval
    end

    def visible_offset(x_offset : Float64?, y_offset : Float64?) : Nil
      # gtk_text_view_get_visible_offset: (Method)
      # @x_offset: (out) (transfer full) (nullable)
      # @y_offset: (out) (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      x_offset = if x_offset.nil?
                   Float64.null
                 else
                   x_offset.to_unsafe
                 end
      # Generator::NullableArrayPlan
      y_offset = if y_offset.nil?
                   Float64.null
                 else
                   y_offset.to_unsafe
                 end

      # C call
      LibGtk.gtk_text_view_get_visible_offset(to_unsafe, x_offset, y_offset)

      # Return value handling
    end

    def visible_rect : Gdk::Rectangle
      # gtk_text_view_get_visible_rect: (Method)
      # @visible_rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      visible_rect = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_text_view_get_visible_rect(to_unsafe, visible_rect)

      # Return value handling
      visible_rect
    end

    def wrap_mode : Gtk::WrapMode
      # gtk_text_view_get_wrap_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_get_wrap_mode(to_unsafe)

      # Return value handling
      Gtk::WrapMode.new(_retval)
    end

    def im_context_filter_keypress(event : Gdk::Event) : Bool
      # gtk_text_view_im_context_filter_keypress: (Method)
      # @event:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_im_context_filter_keypress(to_unsafe, event)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def move_mark_onscreen(mark : Gtk::TextMark) : Bool
      # gtk_text_view_move_mark_onscreen: (Method)
      # @mark:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_move_mark_onscreen(to_unsafe, mark)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def move_overlay(child : Gtk::Widget, xpos : Int32, ypos : Int32) : Nil
      # gtk_text_view_move_overlay: (Method)
      # @child:
      # @xpos:
      # @ypos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_move_overlay(to_unsafe, child, xpos, ypos)

      # Return value handling
    end

    def move_visually(iter : Gtk::TextIter, count : Int32) : Bool
      # gtk_text_view_move_visually: (Method)
      # @iter:
      # @count:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_move_visually(to_unsafe, iter, count)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def place_cursor_onscreen : Bool
      # gtk_text_view_place_cursor_onscreen: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_place_cursor_onscreen(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove(child : Gtk::Widget) : Nil
      # gtk_text_view_remove: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_remove(to_unsafe, child)

      # Return value handling
    end

    def reset_cursor_blink : Nil
      # gtk_text_view_reset_cursor_blink: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_reset_cursor_blink(to_unsafe)

      # Return value handling
    end

    def reset_im_context : Nil
      # gtk_text_view_reset_im_context: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_reset_im_context(to_unsafe)

      # Return value handling
    end

    def scroll_mark_onscreen(mark : Gtk::TextMark) : Nil
      # gtk_text_view_scroll_mark_onscreen: (Method)
      # @mark:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_scroll_mark_onscreen(to_unsafe, mark)

      # Return value handling
    end

    def scroll_to_iter(iter : Gtk::TextIter, within_margin : Float64, use_align : Bool, xalign : Float64, yalign : Float64) : Bool
      # gtk_text_view_scroll_to_iter: (Method)
      # @iter:
      # @within_margin:
      # @use_align:
      # @xalign:
      # @yalign:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_scroll_to_iter(to_unsafe, iter, within_margin, use_align, xalign, yalign)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def scroll_to_mark(mark : Gtk::TextMark, within_margin : Float64, use_align : Bool, xalign : Float64, yalign : Float64) : Nil
      # gtk_text_view_scroll_to_mark: (Method)
      # @mark:
      # @within_margin:
      # @use_align:
      # @xalign:
      # @yalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_scroll_to_mark(to_unsafe, mark, within_margin, use_align, xalign, yalign)

      # Return value handling
    end

    def accepts_tab=(accepts_tab : Bool) : Nil
      # gtk_text_view_set_accepts_tab: (Method | Setter)
      # @accepts_tab:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_accepts_tab(to_unsafe, accepts_tab)

      # Return value handling
    end

    def bottom_margin=(bottom_margin : Int32) : Nil
      # gtk_text_view_set_bottom_margin: (Method | Setter)
      # @bottom_margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_bottom_margin(to_unsafe, bottom_margin)

      # Return value handling
    end

    def buffer=(buffer : Gtk::TextBuffer?) : Nil
      # gtk_text_view_set_buffer: (Method | Setter)
      # @buffer: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      buffer = if buffer.nil?
                 Pointer(Void).null
               else
                 buffer.to_unsafe
               end

      # C call
      LibGtk.gtk_text_view_set_buffer(to_unsafe, buffer)

      # Return value handling
    end

    def cursor_visible=(setting : Bool) : Nil
      # gtk_text_view_set_cursor_visible: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_cursor_visible(to_unsafe, setting)

      # Return value handling
    end

    def editable=(setting : Bool) : Nil
      # gtk_text_view_set_editable: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_editable(to_unsafe, setting)

      # Return value handling
    end

    def extra_menu=(model : Gio::MenuModel?) : Nil
      # gtk_text_view_set_extra_menu: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_text_view_set_extra_menu(to_unsafe, model)

      # Return value handling
    end

    def set_gutter(win : Gtk::TextWindowType, widget : Gtk::Widget?) : Nil
      # gtk_text_view_set_gutter: (Method)
      # @win:
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_text_view_set_gutter(to_unsafe, win, widget)

      # Return value handling
    end

    def indent=(indent : Int32) : Nil
      # gtk_text_view_set_indent: (Method | Setter)
      # @indent:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_indent(to_unsafe, indent)

      # Return value handling
    end

    def input_hints=(hints : Gtk::InputHints) : Nil
      # gtk_text_view_set_input_hints: (Method | Setter)
      # @hints:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_input_hints(to_unsafe, hints)

      # Return value handling
    end

    def input_purpose=(purpose : Gtk::InputPurpose) : Nil
      # gtk_text_view_set_input_purpose: (Method | Setter)
      # @purpose:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_input_purpose(to_unsafe, purpose)

      # Return value handling
    end

    def justification=(justification : Gtk::Justification) : Nil
      # gtk_text_view_set_justification: (Method | Setter)
      # @justification:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_justification(to_unsafe, justification)

      # Return value handling
    end

    def left_margin=(left_margin : Int32) : Nil
      # gtk_text_view_set_left_margin: (Method | Setter)
      # @left_margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_left_margin(to_unsafe, left_margin)

      # Return value handling
    end

    def monospace=(monospace : Bool) : Nil
      # gtk_text_view_set_monospace: (Method | Setter)
      # @monospace:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_monospace(to_unsafe, monospace)

      # Return value handling
    end

    def overwrite=(overwrite : Bool) : Nil
      # gtk_text_view_set_overwrite: (Method | Setter)
      # @overwrite:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_overwrite(to_unsafe, overwrite)

      # Return value handling
    end

    def pixels_above_lines=(pixels_above_lines : Int32) : Nil
      # gtk_text_view_set_pixels_above_lines: (Method | Setter)
      # @pixels_above_lines:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_pixels_above_lines(to_unsafe, pixels_above_lines)

      # Return value handling
    end

    def pixels_below_lines=(pixels_below_lines : Int32) : Nil
      # gtk_text_view_set_pixels_below_lines: (Method | Setter)
      # @pixels_below_lines:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_pixels_below_lines(to_unsafe, pixels_below_lines)

      # Return value handling
    end

    def pixels_inside_wrap=(pixels_inside_wrap : Int32) : Nil
      # gtk_text_view_set_pixels_inside_wrap: (Method | Setter)
      # @pixels_inside_wrap:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_pixels_inside_wrap(to_unsafe, pixels_inside_wrap)

      # Return value handling
    end

    def right_margin=(right_margin : Int32) : Nil
      # gtk_text_view_set_right_margin: (Method | Setter)
      # @right_margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_right_margin(to_unsafe, right_margin)

      # Return value handling
    end

    def tabs=(tabs : Pango::TabArray) : Nil
      # gtk_text_view_set_tabs: (Method | Setter)
      # @tabs:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_tabs(to_unsafe, tabs)

      # Return value handling
    end

    def top_margin=(top_margin : Int32) : Nil
      # gtk_text_view_set_top_margin: (Method | Setter)
      # @top_margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_top_margin(to_unsafe, top_margin)

      # Return value handling
    end

    def wrap_mode=(wrap_mode : Gtk::WrapMode) : Nil
      # gtk_text_view_set_wrap_mode: (Method | Setter)
      # @wrap_mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_text_view_set_wrap_mode(to_unsafe, wrap_mode)

      # Return value handling
    end

    def starts_display_line(iter : Gtk::TextIter) : Bool
      # gtk_text_view_starts_display_line: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_text_view_starts_display_line(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def window_to_buffer_coords(win : Gtk::TextWindowType, window_x : Int32, window_y : Int32) : Nil
      # gtk_text_view_window_to_buffer_coords: (Method)
      # @win:
      # @window_x:
      # @window_y:
      # @buffer_x: (out) (transfer full) (optional)
      # @buffer_y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      buffer_x = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      buffer_y = Pointer(Int32).null
      # C call
      LibGtk.gtk_text_view_window_to_buffer_coords(to_unsafe, win, window_x, window_y, buffer_x, buffer_y)

      # Return value handling
    end

    struct BackspaceSignal < GObject::Signal
      def name : String
        @detail ? "backspace::#{@detail}" : "backspace"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "backspace")
      end
    end

    def backspace_signal
      BackspaceSignal.new(self)
    end

    struct CopyClipboardSignal < GObject::Signal
      def name : String
        @detail ? "copy-clipboard::#{@detail}" : "copy-clipboard"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "copy-clipboard")
      end
    end

    def copy_clipboard_signal
      CopyClipboardSignal.new(self)
    end

    struct CutClipboardSignal < GObject::Signal
      def name : String
        @detail ? "cut-clipboard::#{@detail}" : "cut-clipboard"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "cut-clipboard")
      end
    end

    def cut_clipboard_signal
      CutClipboardSignal.new(self)
    end

    struct DeleteFromCursorSignal < GObject::Signal
      def name : String
        @detail ? "delete-from-cursor::#{@detail}" : "delete-from-cursor"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::DeleteType, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::DeleteType, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_type : UInt32, lib_count : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          type = Gtk::DeleteType.new(lib_type)
          # NoStrategy
          count = lib_count
          ::Box(Proc(Gtk::DeleteType, Int32, Nil)).unbox(_lib_box).call(type, count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextView, Gtk::DeleteType, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_type : UInt32, lib_count : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          type = Gtk::DeleteType.new(lib_type)
          # NoStrategy
          count = lib_count
          ::Box(Proc(Gtk::TextView, Gtk::DeleteType, Int32, Nil)).unbox(_lib_box).call(_sender, type, count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(type : Gtk::DeleteType, count : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "delete-from-cursor", type, count)
      end
    end

    def delete_from_cursor_signal
      DeleteFromCursorSignal.new(self)
    end

    struct ExtendSelectionSignal < GObject::Signal
      def name : String
        @detail ? "extend-selection::#{@detail}" : "extend-selection"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TextExtendSelection, Gtk::TextIter, Gtk::TextIter, Gtk::TextIter, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TextExtendSelection, Gtk::TextIter, Gtk::TextIter, Gtk::TextIter, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_granularity : UInt32, lib_location : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          granularity = Gtk::TextExtendSelection.new(lib_granularity)
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextExtendSelection, Gtk::TextIter, Gtk::TextIter, Gtk::TextIter, Bool)).unbox(_lib_box).call(granularity, location, start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextView, Gtk::TextExtendSelection, Gtk::TextIter, Gtk::TextIter, Gtk::TextIter, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_granularity : UInt32, lib_location : Pointer(Void), lib_start : Pointer(Void), lib__end : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          granularity = Gtk::TextExtendSelection.new(lib_granularity)
          # Generator::BuiltInTypeArgPlan
          location = Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          start = Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _end = Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Gtk::TextExtendSelection, Gtk::TextIter, Gtk::TextIter, Gtk::TextIter, Bool)).unbox(_lib_box).call(_sender, granularity, location, start, _end)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(granularity : Gtk::TextExtendSelection, location : Gtk::TextIter, start : Gtk::TextIter, end _end : Gtk::TextIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "extend-selection", granularity, location, start, _end)
      end
    end

    def extend_selection_signal
      ExtendSelectionSignal.new(self)
    end

    struct InsertAtCursorSignal < GObject::Signal
      def name : String
        @detail ? "insert-at-cursor::#{@detail}" : "insert-at-cursor"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_string : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          string = ::String.new(lib_string)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(string)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextView, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_string : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          string = ::String.new(lib_string)
          ::Box(Proc(Gtk::TextView, ::String, Nil)).unbox(_lib_box).call(_sender, string)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(string : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "insert-at-cursor", string)
      end
    end

    def insert_at_cursor_signal
      InsertAtCursorSignal.new(self)
    end

    struct InsertEmojiSignal < GObject::Signal
      def name : String
        @detail ? "insert-emoji::#{@detail}" : "insert-emoji"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "insert-emoji")
      end
    end

    def insert_emoji_signal
      InsertEmojiSignal.new(self)
    end

    struct MoveCursorSignal < GObject::Signal
      def name : String
        @detail ? "move-cursor::#{@detail}" : "move-cursor"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::MovementStep, Int32, Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::MovementStep, Int32, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, lib_extend_selection : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          count = lib_count
          # Generator::BuiltInTypeArgPlan
          extend_selection = GICrystal.to_bool(lib_extend_selection)
          ::Box(Proc(Gtk::MovementStep, Int32, Bool, Nil)).unbox(_lib_box).call(step, count, extend_selection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextView, Gtk::MovementStep, Int32, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, lib_extend_selection : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          count = lib_count
          # Generator::BuiltInTypeArgPlan
          extend_selection = GICrystal.to_bool(lib_extend_selection)
          ::Box(Proc(Gtk::TextView, Gtk::MovementStep, Int32, Bool, Nil)).unbox(_lib_box).call(_sender, step, count, extend_selection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(step : Gtk::MovementStep, count : Int32, extend_selection : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-cursor", step, count, extend_selection)
      end
    end

    def move_cursor_signal
      MoveCursorSignal.new(self)
    end

    struct MoveViewportSignal < GObject::Signal
      def name : String
        @detail ? "move-viewport::#{@detail}" : "move-viewport"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::ScrollStep, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::ScrollStep, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          step = Gtk::ScrollStep.new(lib_step)
          # NoStrategy
          count = lib_count
          ::Box(Proc(Gtk::ScrollStep, Int32, Nil)).unbox(_lib_box).call(step, count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextView, Gtk::ScrollStep, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::ScrollStep.new(lib_step)
          # NoStrategy
          count = lib_count
          ::Box(Proc(Gtk::TextView, Gtk::ScrollStep, Int32, Nil)).unbox(_lib_box).call(_sender, step, count)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(step : Gtk::ScrollStep, count : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-viewport", step, count)
      end
    end

    def move_viewport_signal
      MoveViewportSignal.new(self)
    end

    struct PasteClipboardSignal < GObject::Signal
      def name : String
        @detail ? "paste-clipboard::#{@detail}" : "paste-clipboard"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "paste-clipboard")
      end
    end

    def paste_clipboard_signal
      PasteClipboardSignal.new(self)
    end

    struct PreeditChangedSignal < GObject::Signal
      def name : String
        @detail ? "preedit-changed::#{@detail}" : "preedit-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_preedit : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          preedit = ::String.new(lib_preedit)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(preedit)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextView, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_preedit : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          preedit = ::String.new(lib_preedit)
          ::Box(Proc(Gtk::TextView, ::String, Nil)).unbox(_lib_box).call(_sender, preedit)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(preedit : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "preedit-changed", preedit)
      end
    end

    def preedit_changed_signal
      PreeditChangedSignal.new(self)
    end

    struct SelectAllSignal < GObject::Signal
      def name : String
        @detail ? "select-all::#{@detail}" : "select-all"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib__select : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          _select = GICrystal.to_bool(lib__select)
          ::Box(Proc(Bool, Nil)).unbox(_lib_box).call(_select)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TextView, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib__select : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          _select = GICrystal.to_bool(lib__select)
          ::Box(Proc(Gtk::TextView, Bool, Nil)).unbox(_lib_box).call(_sender, _select)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(select _select : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "select-all", _select)
      end
    end

    def select_all_signal
      SelectAllSignal.new(self)
    end

    struct SetAnchorSignal < GObject::Signal
      def name : String
        @detail ? "set-anchor::#{@detail}" : "set-anchor"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "set-anchor")
      end
    end

    def set_anchor_signal
      SetAnchorSignal.new(self)
    end

    struct ToggleCursorVisibleSignal < GObject::Signal
      def name : String
        @detail ? "toggle-cursor-visible::#{@detail}" : "toggle-cursor-visible"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "toggle-cursor-visible")
      end
    end

    def toggle_cursor_visible_signal
      ToggleCursorVisibleSignal.new(self)
    end

    struct ToggleOverwriteSignal < GObject::Signal
      def name : String
        @detail ? "toggle-overwrite::#{@detail}" : "toggle-overwrite"
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

      def connect(handler : Proc(Gtk::TextView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TextView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TextView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "toggle-overwrite")
      end
    end

    def toggle_overwrite_signal
      ToggleOverwriteSignal.new(self)
    end

    # backspace: (None)
    # Returns: (transfer none)
    private macro _register_backspace_vfunc(impl_method_name)
      private def self._vfunc_backspace(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_backspace(Pointer(Void))).pointer
        previous_def
      end
    end

    # backspace: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_backspace_vfunc(impl_method_name)
      private def self._vfunc_unsafe_backspace(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_backspace = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_backspace(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_backspace : Proc(Pointer(Void), Void)? = nil
    end

    # copy_clipboard: (None)
    # Returns: (transfer none)
    private macro _register_copy_clipboard_vfunc(impl_method_name)
      private def self._vfunc_copy_clipboard(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 456).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_copy_clipboard(Pointer(Void))).pointer
        previous_def
      end
    end

    # copy_clipboard: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_copy_clipboard_vfunc(impl_method_name)
      private def self._vfunc_unsafe_copy_clipboard(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 456).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_copy_clipboard = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_copy_clipboard(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_copy_clipboard : Proc(Pointer(Void), Void)? = nil
    end

    # cut_clipboard: (None)
    # Returns: (transfer none)
    private macro _register_cut_clipboard_vfunc(impl_method_name)
      private def self._vfunc_cut_clipboard(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_cut_clipboard(Pointer(Void))).pointer
        previous_def
      end
    end

    # cut_clipboard: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_cut_clipboard_vfunc(impl_method_name)
      private def self._vfunc_unsafe_cut_clipboard(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_cut_clipboard = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_cut_clipboard(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_cut_clipboard : Proc(Pointer(Void), Void)? = nil
    end

    # delete_from_cursor: (None)
    # @type:
    # @count:
    # Returns: (transfer none)
    private macro _register_delete_from_cursor_vfunc(impl_method_name)
      private def self._vfunc_delete_from_cursor(%this : Pointer(Void), lib_type :  UInt32, lib_count :  Int32, ) : Void
        # @type: 
# @count: 

# Generator::BuiltInTypeArgPlan
type=Gtk::DeleteType.new(lib_type)
count=lib_count


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(type, count)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_from_cursor(Pointer(Void), UInt32, Int32)).pointer
        previous_def
      end
    end

    # delete_from_cursor: (None)
    # @type:
    # @count:
    # Returns: (transfer none)
    private macro _register_unsafe_delete_from_cursor_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_from_cursor(%this : Pointer(Void), lib_type :  UInt32, lib_count :  Int32, ) : Void
# @type: 
# @count: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_type, lib_count)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_from_cursor = Proc(Pointer(Void), UInt32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_from_cursor(Pointer(Void), UInt32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_from_cursor : Proc(Pointer(Void), UInt32, Int32, Void)? = nil
    end

    # extend_selection: (None)
    # @granularity:
    # @location:
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_extend_selection_vfunc(impl_method_name)
      private def self._vfunc_extend_selection(%this : Pointer(Void), lib_granularity :  UInt32, lib_location :  Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : LibC::Int
        # @granularity: 
# @location: 
# @start: 
# @end: 

# Generator::BuiltInTypeArgPlan
granularity=Gtk::TextExtendSelection.new(lib_granularity)
# Generator::BuiltInTypeArgPlan
location=Gtk::TextIter.new(lib_location, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
start=Gtk::TextIter.new(lib_start, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
_end=Gtk::TextIter.new(lib__end, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(granularity, location, start, _end)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_extend_selection(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # extend_selection: (None)
    # @granularity:
    # @location:
    # @start:
    # @end:
    # Returns: (transfer none)
    private macro _register_unsafe_extend_selection_vfunc(impl_method_name)
      private def self._vfunc_unsafe_extend_selection(%this : Pointer(Void), lib_granularity :  UInt32, lib_location :  Pointer(Void), lib_start :  Pointer(Void), lib__end :  Pointer(Void), ) : LibC::Int
# @granularity: 
# @location: 
# @start: 
# @end: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_granularity, lib_location, lib_start, lib__end)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_extend_selection = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_extend_selection(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_extend_selection : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # insert_at_cursor: (None)
    # @str:
    # Returns: (transfer none)
    private macro _register_insert_at_cursor_vfunc(impl_method_name)
      private def self._vfunc_insert_at_cursor(%this : Pointer(Void), lib_str :  Pointer(LibC::Char), ) : Void
        # @str: 

# Generator::BuiltInTypeArgPlan
str=::String.new(lib_str)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(str)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insert_at_cursor(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # insert_at_cursor: (None)
    # @str:
    # Returns: (transfer none)
    private macro _register_unsafe_insert_at_cursor_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insert_at_cursor(%this : Pointer(Void), lib_str :  Pointer(LibC::Char), ) : Void
# @str: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_str)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insert_at_cursor = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insert_at_cursor(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insert_at_cursor : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # insert_emoji: (None)
    # Returns: (transfer none)
    private macro _register_insert_emoji_vfunc(impl_method_name)
      private def self._vfunc_insert_emoji(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insert_emoji(Pointer(Void))).pointer
        previous_def
      end
    end

    # insert_emoji: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_insert_emoji_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insert_emoji(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insert_emoji = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insert_emoji(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insert_emoji : Proc(Pointer(Void), Void)? = nil
    end

    # move_cursor: (None)
    # @step:
    # @count:
    # @extend_selection:
    # Returns: (transfer none)
    private macro _register_move_cursor_vfunc(impl_method_name)
      private def self._vfunc_move_cursor(%this : Pointer(Void), lib_step :  UInt32, lib_count :  Int32, lib_extend_selection :  LibC::Int, ) : Void
        # @step: 
# @count: 
# @extend_selection: 

# Generator::BuiltInTypeArgPlan
step=Gtk::MovementStep.new(lib_step)
count=lib_count
# Generator::BuiltInTypeArgPlan
extend_selection=GICrystal.to_bool(lib_extend_selection)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(step, count, extend_selection)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_move_cursor(Pointer(Void), UInt32, Int32, LibC::Int)).pointer
        previous_def
      end
    end

    # move_cursor: (None)
    # @step:
    # @count:
    # @extend_selection:
    # Returns: (transfer none)
    private macro _register_unsafe_move_cursor_vfunc(impl_method_name)
      private def self._vfunc_unsafe_move_cursor(%this : Pointer(Void), lib_step :  UInt32, lib_count :  Int32, lib_extend_selection :  LibC::Int, ) : Void
# @step: 
# @count: 
# @extend_selection: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_step, lib_count, lib_extend_selection)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_move_cursor = Proc(Pointer(Void), UInt32, Int32, LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_move_cursor(Pointer(Void), UInt32, Int32, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_move_cursor : Proc(Pointer(Void), UInt32, Int32, LibC::Int, Void)? = nil
    end

    # paste_clipboard: (None)
    # Returns: (transfer none)
    private macro _register_paste_clipboard_vfunc(impl_method_name)
      private def self._vfunc_paste_clipboard(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_paste_clipboard(Pointer(Void))).pointer
        previous_def
      end
    end

    # paste_clipboard: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_paste_clipboard_vfunc(impl_method_name)
      private def self._vfunc_unsafe_paste_clipboard(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_paste_clipboard = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_paste_clipboard(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_paste_clipboard : Proc(Pointer(Void), Void)? = nil
    end

    # set_anchor: (None)
    # Returns: (transfer none)
    private macro _register_set_anchor_vfunc(impl_method_name)
      private def self._vfunc_set_anchor(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_anchor(Pointer(Void))).pointer
        previous_def
      end
    end

    # set_anchor: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_set_anchor_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_anchor(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_anchor = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_anchor(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_anchor : Proc(Pointer(Void), Void)? = nil
    end

    # snapshot_layer: (None)
    # @layer:
    # @snapshot:
    # Returns: (transfer none)
    private macro _register_snapshot_layer_vfunc(impl_method_name)
      private def self._vfunc_snapshot_layer(%this : Pointer(Void), lib_layer :  UInt32, lib_snapshot :  Pointer(Void), ) : Void
        # @layer: 
# @snapshot: 

# Generator::BuiltInTypeArgPlan
layer=Gtk::TextViewLayer.new(lib_layer)
# Generator::BuiltInTypeArgPlan
snapshot=Gtk::Snapshot.new(lib_snapshot, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(layer, snapshot)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_snapshot_layer(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # snapshot_layer: (None)
    # @layer:
    # @snapshot:
    # Returns: (transfer none)
    private macro _register_unsafe_snapshot_layer_vfunc(impl_method_name)
      private def self._vfunc_unsafe_snapshot_layer(%this : Pointer(Void), lib_layer :  UInt32, lib_snapshot :  Pointer(Void), ) : Void
# @layer: 
# @snapshot: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_layer, lib_snapshot)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_snapshot_layer = Proc(Pointer(Void), UInt32, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_snapshot_layer(Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_snapshot_layer : Proc(Pointer(Void), UInt32, Pointer(Void), Void)? = nil
    end

    # toggle_overwrite: (None)
    # Returns: (transfer none)
    private macro _register_toggle_overwrite_vfunc(impl_method_name)
      private def self._vfunc_toggle_overwrite(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_toggle_overwrite(Pointer(Void))).pointer
        previous_def
      end
    end

    # toggle_overwrite: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_toggle_overwrite_vfunc(impl_method_name)
      private def self._vfunc_unsafe_toggle_overwrite(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_toggle_overwrite = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_toggle_overwrite(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_toggle_overwrite : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
