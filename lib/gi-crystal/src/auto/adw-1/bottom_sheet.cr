require "../gtk-4.0/widget"
require "./swipeable"

require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class BottomSheet < Gtk::Widget
    include Swipeable
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(BottomSheet, g_object_get_qdata)

    # Initialize a new `BottomSheet`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, align : Float32? = nil, bottom_bar : Gtk::Widget? = nil, bottom_bar_height : Int32? = nil, can_close : Bool? = nil, can_focus : Bool? = nil, can_open : Bool? = nil, can_target : Bool? = nil, content : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, full_width : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, open : Bool? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, reveal_bottom_bar : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, sheet : Gtk::Widget? = nil, sheet_height : Int32? = nil, show_drag_handle : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[49]
      _values = StaticArray(LibGObject::Value, 49).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !align.nil?
        (_names.to_unsafe + _n).value = "align".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, align)
        _n += 1
      end
      if !bottom_bar.nil?
        (_names.to_unsafe + _n).value = "bottom-bar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bottom_bar)
        _n += 1
      end
      if !bottom_bar_height.nil?
        (_names.to_unsafe + _n).value = "bottom-bar-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bottom_bar_height)
        _n += 1
      end
      if !can_close.nil?
        (_names.to_unsafe + _n).value = "can-close".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_close)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_open.nil?
        (_names.to_unsafe + _n).value = "can-open".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_open)
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
      if !full_width.nil?
        (_names.to_unsafe + _n).value = "full-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, full_width)
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
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
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
      if !open.nil?
        (_names.to_unsafe + _n).value = "open".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, open)
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
      if !reveal_bottom_bar.nil?
        (_names.to_unsafe + _n).value = "reveal-bottom-bar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reveal_bottom_bar)
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
      if !sheet.nil?
        (_names.to_unsafe + _n).value = "sheet".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sheet)
        _n += 1
      end
      if !sheet_height.nil?
        (_names.to_unsafe + _n).value = "sheet-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sheet_height)
        _n += 1
      end
      if !show_drag_handle.nil?
        (_names.to_unsafe + _n).value = "show-drag-handle".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_drag_handle)
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
      @@g_type ||= LibAdw.adw_bottom_sheet_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::BottomSheet.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def align=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "align", unsafe_value, Pointer(Void).null)
      value
    end

    def align : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "align", pointerof(value), Pointer(Void).null)
      value
    end

    def bottom_bar=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "bottom-bar", unsafe_value, Pointer(Void).null)
      value
    end

    def bottom_bar : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "bottom-bar", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def bottom_bar_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "bottom-bar-height", pointerof(value), Pointer(Void).null)
      value
    end

    def can_close=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-close", unsafe_value, Pointer(Void).null)
      value
    end

    def can_close? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-close", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def can_open=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-open", unsafe_value, Pointer(Void).null)
      value
    end

    def can_open? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-open", pointerof(value), Pointer(Void).null)
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

    def full_width=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "full-width", unsafe_value, Pointer(Void).null)
      value
    end

    def full_width? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "full-width", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def modal=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "modal", unsafe_value, Pointer(Void).null)
      value
    end

    def modal? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "modal", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def open=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "open", unsafe_value, Pointer(Void).null)
      value
    end

    def open? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "open", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def reveal_bottom_bar=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reveal-bottom-bar", unsafe_value, Pointer(Void).null)
      value
    end

    def reveal_bottom_bar? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reveal-bottom-bar", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sheet=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "sheet", unsafe_value, Pointer(Void).null)
      value
    end

    def sheet : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sheet", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def sheet_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "sheet-height", pointerof(value), Pointer(Void).null)
      value
    end

    def show_drag_handle=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-drag-handle", unsafe_value, Pointer(Void).null)
      value
    end

    def show_drag_handle? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-drag-handle", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # adw_bottom_sheet_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_new

      # Return value handling
      Adw::BottomSheet.new(_retval, GICrystal::Transfer::Full)
    end

    def align : Float32
      # adw_bottom_sheet_get_align: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_align(to_unsafe)

      # Return value handling
      _retval
    end

    def bottom_bar : Gtk::Widget?
      # adw_bottom_sheet_get_bottom_bar: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_bottom_bar(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def bottom_bar_height : Int32
      # adw_bottom_sheet_get_bottom_bar_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_bottom_bar_height(to_unsafe)

      # Return value handling
      _retval
    end

    def can_close : Bool
      # adw_bottom_sheet_get_can_close: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_can_close(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_open : Bool
      # adw_bottom_sheet_get_can_open: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_can_open(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def content : Gtk::Widget?
      # adw_bottom_sheet_get_content: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_content(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def full_width : Bool
      # adw_bottom_sheet_get_full_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_full_width(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def modal : Bool
      # adw_bottom_sheet_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def open : Bool
      # adw_bottom_sheet_get_open: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_open(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reveal_bottom_bar : Bool
      # adw_bottom_sheet_get_reveal_bottom_bar: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_reveal_bottom_bar(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def sheet : Gtk::Widget?
      # adw_bottom_sheet_get_sheet: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_sheet(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def sheet_height : Int32
      # adw_bottom_sheet_get_sheet_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_sheet_height(to_unsafe)

      # Return value handling
      _retval
    end

    def show_drag_handle : Bool
      # adw_bottom_sheet_get_show_drag_handle: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_bottom_sheet_get_show_drag_handle(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def align=(align : Float32) : Nil
      # adw_bottom_sheet_set_align: (Method | Setter)
      # @align:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_align(to_unsafe, align)

      # Return value handling
    end

    def bottom_bar=(bottom_bar : Gtk::Widget?) : Nil
      # adw_bottom_sheet_set_bottom_bar: (Method | Setter)
      # @bottom_bar: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      bottom_bar = if bottom_bar.nil?
                     Pointer(Void).null
                   else
                     bottom_bar.to_unsafe
                   end

      # C call
      LibAdw.adw_bottom_sheet_set_bottom_bar(to_unsafe, bottom_bar)

      # Return value handling
    end

    def can_close=(can_close : Bool) : Nil
      # adw_bottom_sheet_set_can_close: (Method | Setter)
      # @can_close:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_can_close(to_unsafe, can_close)

      # Return value handling
    end

    def can_open=(can_open : Bool) : Nil
      # adw_bottom_sheet_set_can_open: (Method | Setter)
      # @can_open:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_can_open(to_unsafe, can_open)

      # Return value handling
    end

    def content=(content : Gtk::Widget?) : Nil
      # adw_bottom_sheet_set_content: (Method | Setter)
      # @content: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content = if content.nil?
                  Pointer(Void).null
                else
                  content.to_unsafe
                end

      # C call
      LibAdw.adw_bottom_sheet_set_content(to_unsafe, content)

      # Return value handling
    end

    def full_width=(full_width : Bool) : Nil
      # adw_bottom_sheet_set_full_width: (Method | Setter)
      # @full_width:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_full_width(to_unsafe, full_width)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # adw_bottom_sheet_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def open=(open : Bool) : Nil
      # adw_bottom_sheet_set_open: (Method | Setter)
      # @open:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_open(to_unsafe, open)

      # Return value handling
    end

    def reveal_bottom_bar=(reveal : Bool) : Nil
      # adw_bottom_sheet_set_reveal_bottom_bar: (Method | Setter)
      # @reveal:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_reveal_bottom_bar(to_unsafe, reveal)

      # Return value handling
    end

    def sheet=(sheet : Gtk::Widget?) : Nil
      # adw_bottom_sheet_set_sheet: (Method | Setter)
      # @sheet: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sheet = if sheet.nil?
                Pointer(Void).null
              else
                sheet.to_unsafe
              end

      # C call
      LibAdw.adw_bottom_sheet_set_sheet(to_unsafe, sheet)

      # Return value handling
    end

    def show_drag_handle=(show_drag_handle : Bool) : Nil
      # adw_bottom_sheet_set_show_drag_handle: (Method | Setter)
      # @show_drag_handle:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_bottom_sheet_set_show_drag_handle(to_unsafe, show_drag_handle)

      # Return value handling
    end

    struct CloseAttemptSignal < GObject::Signal
      def name : String
        @detail ? "close-attempt::#{@detail}" : "close-attempt"
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

      def connect(handler : Proc(Adw::BottomSheet, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::BottomSheet.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::BottomSheet, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "close-attempt")
      end
    end

    def close_attempt_signal
      CloseAttemptSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
