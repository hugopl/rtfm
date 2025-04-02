require "./widget"
require "./accessible"

require "./accessible_text"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Label < Widget
    include Accessible
    include AccessibleText
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Label, g_object_get_qdata)

    # Initialize a new `Label`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, attributes : Pango::AttrList? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, ellipsize : Pango::EllipsizeMode? = nil, extra_menu : Gio::MenuModel? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, justify : Gtk::Justification? = nil, label : ::String? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, lines : Int32? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, max_width_chars : Int32? = nil, mnemonic_keyval : UInt32? = nil, mnemonic_widget : Gtk::Widget? = nil, name : ::String? = nil, natural_wrap_mode : Gtk::NaturalWrapMode? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, selectable : Bool? = nil, sensitive : Bool? = nil, single_line_mode : Bool? = nil, tabs : Pango::TabArray? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, use_markup : Bool? = nil, use_underline : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_chars : Int32? = nil, width_request : Int32? = nil, wrap : Bool? = nil, wrap_mode : Pango::WrapMode? = nil, xalign : Float32? = nil, yalign : Float32? = nil)
      _names = uninitialized Pointer(LibC::Char)[56]
      _values = StaticArray(LibGObject::Value, 56).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !attributes.nil?
        (_names.to_unsafe + _n).value = "attributes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, attributes)
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
      if !ellipsize.nil?
        (_names.to_unsafe + _n).value = "ellipsize".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ellipsize)
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
      if !justify.nil?
        (_names.to_unsafe + _n).value = "justify".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, justify)
        _n += 1
      end
      if !label.nil?
        (_names.to_unsafe + _n).value = "label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, label)
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
      if !lines.nil?
        (_names.to_unsafe + _n).value = "lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, lines)
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
      if !max_width_chars.nil?
        (_names.to_unsafe + _n).value = "max-width-chars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_width_chars)
        _n += 1
      end
      if !mnemonic_keyval.nil?
        (_names.to_unsafe + _n).value = "mnemonic-keyval".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mnemonic_keyval)
        _n += 1
      end
      if !mnemonic_widget.nil?
        (_names.to_unsafe + _n).value = "mnemonic-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mnemonic_widget)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !natural_wrap_mode.nil?
        (_names.to_unsafe + _n).value = "natural-wrap-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, natural_wrap_mode)
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
      if !selectable.nil?
        (_names.to_unsafe + _n).value = "selectable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selectable)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !single_line_mode.nil?
        (_names.to_unsafe + _n).value = "single-line-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, single_line_mode)
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
      if !use_markup.nil?
        (_names.to_unsafe + _n).value = "use-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_markup)
        _n += 1
      end
      if !use_underline.nil?
        (_names.to_unsafe + _n).value = "use-underline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_underline)
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
      if !width_chars.nil?
        (_names.to_unsafe + _n).value = "width-chars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_chars)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
        _n += 1
      end
      if !wrap.nil?
        (_names.to_unsafe + _n).value = "wrap".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap)
        _n += 1
      end
      if !wrap_mode.nil?
        (_names.to_unsafe + _n).value = "wrap-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap_mode)
        _n += 1
      end
      if !xalign.nil?
        (_names.to_unsafe + _n).value = "xalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, xalign)
        _n += 1
      end
      if !yalign.nil?
        (_names.to_unsafe + _n).value = "yalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, yalign)
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
      @@g_type ||= LibGtk.gtk_label_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Label.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def attributes=(value : Pango::AttrList?) : Pango::AttrList?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "attributes", unsafe_value, Pointer(Void).null)
      value
    end

    def attributes : Pango::AttrList?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "attributes", pointerof(value), Pointer(Void).null)
      Pango::AttrList.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def ellipsize=(value : Pango::EllipsizeMode) : Pango::EllipsizeMode
      unsafe_value = value

      LibGObject.g_object_set(self, "ellipsize", unsafe_value, Pointer(Void).null)
      value
    end

    def ellipsize : Pango::EllipsizeMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "ellipsize", pointerof(value), Pointer(Void).null)
      Pango::EllipsizeMode.new(value)
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

    def justify=(value : Gtk::Justification) : Gtk::Justification
      unsafe_value = value

      LibGObject.g_object_set(self, "justify", unsafe_value, Pointer(Void).null)
      value
    end

    def justify : Gtk::Justification
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "justify", pointerof(value), Pointer(Void).null)
      Gtk::Justification.new(value)
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

    def lines=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "lines", unsafe_value, Pointer(Void).null)
      value
    end

    def lines : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "lines", pointerof(value), Pointer(Void).null)
      value
    end

    def max_width_chars=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-width-chars", unsafe_value, Pointer(Void).null)
      value
    end

    def max_width_chars : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-width-chars", pointerof(value), Pointer(Void).null)
      value
    end

    def mnemonic_keyval : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "mnemonic-keyval", pointerof(value), Pointer(Void).null)
      value
    end

    def mnemonic_widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "mnemonic-widget", unsafe_value, Pointer(Void).null)
      value
    end

    def mnemonic_widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "mnemonic-widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def natural_wrap_mode=(value : Gtk::NaturalWrapMode) : Gtk::NaturalWrapMode
      unsafe_value = value

      LibGObject.g_object_set(self, "natural-wrap-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def natural_wrap_mode : Gtk::NaturalWrapMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "natural-wrap-mode", pointerof(value), Pointer(Void).null)
      Gtk::NaturalWrapMode.new(value)
    end

    def selectable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "selectable", unsafe_value, Pointer(Void).null)
      value
    end

    def selectable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "selectable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def single_line_mode=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "single-line-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def single_line_mode? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "single-line-mode", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def use_markup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def use_markup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-markup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def width_chars=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "width-chars", unsafe_value, Pointer(Void).null)
      value
    end

    def width_chars : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width-chars", pointerof(value), Pointer(Void).null)
      value
    end

    def wrap=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "wrap", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def wrap_mode=(value : Pango::WrapMode) : Pango::WrapMode
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap_mode : Pango::WrapMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "wrap-mode", pointerof(value), Pointer(Void).null)
      Pango::WrapMode.new(value)
    end

    def xalign=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "xalign", unsafe_value, Pointer(Void).null)
      value
    end

    def xalign : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "xalign", pointerof(value), Pointer(Void).null)
      value
    end

    def yalign=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "yalign", unsafe_value, Pointer(Void).null)
      value
    end

    def yalign : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "yalign", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(str : ::String?) : self
      # gtk_label_new: (Constructor)
      # @str: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      str = if str.nil?
              Pointer(LibC::Char).null
            else
              str.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_label_new(str)

      # Return value handling
      Gtk::Label.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_mnemonic(str : ::String?) : self
      # gtk_label_new_with_mnemonic: (Constructor)
      # @str: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      str = if str.nil?
              Pointer(LibC::Char).null
            else
              str.to_unsafe
            end

      # C call
      _retval = LibGtk.gtk_label_new_with_mnemonic(str)

      # Return value handling
      Gtk::Label.new(_retval, GICrystal::Transfer::Full)
    end

    def attributes : Pango::AttrList?
      # gtk_label_get_attributes: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_label_get_attributes(to_unsafe)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def current_uri : ::String?
      # gtk_label_get_current_uri: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_label_get_current_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def ellipsize : Pango::EllipsizeMode
      # gtk_label_get_ellipsize: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_ellipsize(to_unsafe)

      # Return value handling
      Pango::EllipsizeMode.new(_retval)
    end

    def extra_menu : Gio::MenuModel?
      # gtk_label_get_extra_menu: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_label_get_extra_menu(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def justify : Gtk::Justification
      # gtk_label_get_justify: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_justify(to_unsafe)

      # Return value handling
      Gtk::Justification.new(_retval)
    end

    def label : ::String
      # gtk_label_get_label: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_label(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def layout : Pango::Layout
      # gtk_label_get_layout: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_layout(to_unsafe)

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::None)
    end

    def layout_offsets : Nil
      # gtk_label_get_layout_offsets: (Method)
      # @x: (out) (transfer full) (optional)
      # @y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      y = Pointer(Int32).null
      # C call
      LibGtk.gtk_label_get_layout_offsets(to_unsafe, x, y)

      # Return value handling
    end

    def lines : Int32
      # gtk_label_get_lines: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_lines(to_unsafe)

      # Return value handling
      _retval
    end

    def max_width_chars : Int32
      # gtk_label_get_max_width_chars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_max_width_chars(to_unsafe)

      # Return value handling
      _retval
    end

    def mnemonic_keyval : UInt32
      # gtk_label_get_mnemonic_keyval: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_mnemonic_keyval(to_unsafe)

      # Return value handling
      _retval
    end

    def mnemonic_widget : Gtk::Widget?
      # gtk_label_get_mnemonic_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_label_get_mnemonic_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def natural_wrap_mode : Gtk::NaturalWrapMode
      # gtk_label_get_natural_wrap_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_natural_wrap_mode(to_unsafe)

      # Return value handling
      Gtk::NaturalWrapMode.new(_retval)
    end

    def selectable : Bool
      # gtk_label_get_selectable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_selectable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def selection_bounds : Bool
      # gtk_label_get_selection_bounds: (Method)
      # @start: (out) (transfer full) (optional)
      # @end: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      start = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      _end = Pointer(Int32).null
      # C call
      _retval = LibGtk.gtk_label_get_selection_bounds(to_unsafe, start, _end)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def single_line_mode : Bool
      # gtk_label_get_single_line_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_single_line_mode(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def tabs : Pango::TabArray?
      # gtk_label_get_tabs: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_label_get_tabs(to_unsafe)

      # Return value handling
      Pango::TabArray.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def text : ::String
      # gtk_label_get_text: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_text(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def use_markup : Bool
      # gtk_label_get_use_markup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_use_markup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def use_underline : Bool
      # gtk_label_get_use_underline: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_use_underline(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def width_chars : Int32
      # gtk_label_get_width_chars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_width_chars(to_unsafe)

      # Return value handling
      _retval
    end

    def wrap : Bool
      # gtk_label_get_wrap: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_wrap(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def wrap_mode : Pango::WrapMode
      # gtk_label_get_wrap_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_wrap_mode(to_unsafe)

      # Return value handling
      Pango::WrapMode.new(_retval)
    end

    def xalign : Float32
      # gtk_label_get_xalign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_xalign(to_unsafe)

      # Return value handling
      _retval
    end

    def yalign : Float32
      # gtk_label_get_yalign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_label_get_yalign(to_unsafe)

      # Return value handling
      _retval
    end

    def select_region(start_offset : Int32, end_offset : Int32) : Nil
      # gtk_label_select_region: (Method)
      # @start_offset:
      # @end_offset:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_select_region(to_unsafe, start_offset, end_offset)

      # Return value handling
    end

    def attributes=(attrs : Pango::AttrList?) : Nil
      # gtk_label_set_attributes: (Method | Setter)
      # @attrs: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      attrs = if attrs.nil?
                Pointer(Void).null
              else
                attrs.to_unsafe
              end

      # C call
      LibGtk.gtk_label_set_attributes(to_unsafe, attrs)

      # Return value handling
    end

    def ellipsize=(mode : Pango::EllipsizeMode) : Nil
      # gtk_label_set_ellipsize: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_ellipsize(to_unsafe, mode)

      # Return value handling
    end

    def extra_menu=(model : Gio::MenuModel?) : Nil
      # gtk_label_set_extra_menu: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_label_set_extra_menu(to_unsafe, model)

      # Return value handling
    end

    def justify=(jtype : Gtk::Justification) : Nil
      # gtk_label_set_justify: (Method | Setter)
      # @jtype:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_justify(to_unsafe, jtype)

      # Return value handling
    end

    def label=(str : ::String) : Nil
      # gtk_label_set_label: (Method | Setter)
      # @str:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_label(to_unsafe, str)

      # Return value handling
    end

    def lines=(lines : Int32) : Nil
      # gtk_label_set_lines: (Method | Setter)
      # @lines:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_lines(to_unsafe, lines)

      # Return value handling
    end

    def markup=(str : ::String) : Nil
      # gtk_label_set_markup: (Method)
      # @str:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_markup(to_unsafe, str)

      # Return value handling
    end

    def markup_with_mnemonic=(str : ::String) : Nil
      # gtk_label_set_markup_with_mnemonic: (Method)
      # @str:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_markup_with_mnemonic(to_unsafe, str)

      # Return value handling
    end

    def max_width_chars=(n_chars : Int32) : Nil
      # gtk_label_set_max_width_chars: (Method | Setter)
      # @n_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_max_width_chars(to_unsafe, n_chars)

      # Return value handling
    end

    def mnemonic_widget=(widget : Gtk::Widget?) : Nil
      # gtk_label_set_mnemonic_widget: (Method | Setter)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_label_set_mnemonic_widget(to_unsafe, widget)

      # Return value handling
    end

    def natural_wrap_mode=(wrap_mode : Gtk::NaturalWrapMode) : Nil
      # gtk_label_set_natural_wrap_mode: (Method | Setter)
      # @wrap_mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_natural_wrap_mode(to_unsafe, wrap_mode)

      # Return value handling
    end

    def selectable=(setting : Bool) : Nil
      # gtk_label_set_selectable: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_selectable(to_unsafe, setting)

      # Return value handling
    end

    def single_line_mode=(single_line_mode : Bool) : Nil
      # gtk_label_set_single_line_mode: (Method | Setter)
      # @single_line_mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_single_line_mode(to_unsafe, single_line_mode)

      # Return value handling
    end

    def tabs=(tabs : Pango::TabArray?) : Nil
      # gtk_label_set_tabs: (Method | Setter)
      # @tabs: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tabs = if tabs.nil?
               Pointer(Void).null
             else
               tabs.to_unsafe
             end

      # C call
      LibGtk.gtk_label_set_tabs(to_unsafe, tabs)

      # Return value handling
    end

    def text=(str : ::String) : Nil
      # gtk_label_set_text: (Method)
      # @str:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_text(to_unsafe, str)

      # Return value handling
    end

    def text_with_mnemonic=(str : ::String) : Nil
      # gtk_label_set_text_with_mnemonic: (Method)
      # @str:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_text_with_mnemonic(to_unsafe, str)

      # Return value handling
    end

    def use_markup=(setting : Bool) : Nil
      # gtk_label_set_use_markup: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_use_markup(to_unsafe, setting)

      # Return value handling
    end

    def use_underline=(setting : Bool) : Nil
      # gtk_label_set_use_underline: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_use_underline(to_unsafe, setting)

      # Return value handling
    end

    def width_chars=(n_chars : Int32) : Nil
      # gtk_label_set_width_chars: (Method | Setter)
      # @n_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_width_chars(to_unsafe, n_chars)

      # Return value handling
    end

    def wrap=(wrap : Bool) : Nil
      # gtk_label_set_wrap: (Method | Setter)
      # @wrap:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_wrap(to_unsafe, wrap)

      # Return value handling
    end

    def wrap_mode=(wrap_mode : Pango::WrapMode) : Nil
      # gtk_label_set_wrap_mode: (Method | Setter)
      # @wrap_mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_wrap_mode(to_unsafe, wrap_mode)

      # Return value handling
    end

    def xalign=(xalign : Float32) : Nil
      # gtk_label_set_xalign: (Method | Setter)
      # @xalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_xalign(to_unsafe, xalign)

      # Return value handling
    end

    def yalign=(yalign : Float32) : Nil
      # gtk_label_set_yalign: (Method | Setter)
      # @yalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_label_set_yalign(to_unsafe, yalign)

      # Return value handling
    end

    struct ActivateCurrentLinkSignal < GObject::Signal
      def name : String
        @detail ? "activate-current-link::#{@detail}" : "activate-current-link"
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

      def connect(handler : Proc(Gtk::Label, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Label.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Label, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-current-link")
      end
    end

    def activate_current_link_signal
      ActivateCurrentLinkSignal.new(self)
    end

    struct ActivateLinkSignal < GObject::Signal
      def name : String
        @detail ? "activate-link::#{@detail}" : "activate-link"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_uri : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          uri = ::String.new(lib_uri)
          ::Box(Proc(::String, Bool)).unbox(_lib_box).call(uri)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Label, ::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_uri : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::Label.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          uri = ::String.new(lib_uri)
          ::Box(Proc(Gtk::Label, ::String, Bool)).unbox(_lib_box).call(_sender, uri)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(uri : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-link", uri)
      end
    end

    def activate_link_signal
      ActivateLinkSignal.new(self)
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

      def connect(handler : Proc(Gtk::Label, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Label.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Label, Nil)).unbox(_lib_box).call(_sender)
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

      def connect(handler : Proc(Gtk::Label, Gtk::MovementStep, Int32, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, lib_extend_selection : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::Label.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          count = lib_count
          # Generator::BuiltInTypeArgPlan
          extend_selection = GICrystal.to_bool(lib_extend_selection)
          ::Box(Proc(Gtk::Label, Gtk::MovementStep, Int32, Bool, Nil)).unbox(_lib_box).call(_sender, step, count, extend_selection)
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

    def_equals_and_hash @pointer
  end
end
