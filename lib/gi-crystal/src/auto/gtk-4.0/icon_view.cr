require "./widget"
require "./accessible"

require "./buildable"

require "./cell_layout"

require "./constraint_target"

require "./scrollable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class IconView < Widget
    include Accessible
    include Buildable
    include CellLayout
    include ConstraintTarget
    include Scrollable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(IconView, g_object_get_qdata)

    # Initialize a new `IconView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, activate_on_single_click : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, cell_area : Gtk::CellArea? = nil, column_spacing : Int32? = nil, columns : Int32? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, hadjustment : Gtk::Adjustment? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hscroll_policy : Gtk::ScrollablePolicy? = nil, item_orientation : Gtk::Orientation? = nil, item_padding : Int32? = nil, item_width : Int32? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin : Int32? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, markup_column : Int32? = nil, model : Gtk::TreeModel? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, pixbuf_column : Int32? = nil, receives_default : Bool? = nil, reorderable : Bool? = nil, root : Gtk::Root? = nil, row_spacing : Int32? = nil, scale_factor : Int32? = nil, selection_mode : Gtk::SelectionMode? = nil, sensitive : Bool? = nil, spacing : Int32? = nil, text_column : Int32? = nil, tooltip_column : Int32? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, vadjustment : Gtk::Adjustment? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, vscroll_policy : Gtk::ScrollablePolicy? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[57]
      _values = StaticArray(LibGObject::Value, 57).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !activate_on_single_click.nil?
        (_names.to_unsafe + _n).value = "activate-on-single-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, activate_on_single_click)
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
      if !cell_area.nil?
        (_names.to_unsafe + _n).value = "cell-area".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cell_area)
        _n += 1
      end
      if !column_spacing.nil?
        (_names.to_unsafe + _n).value = "column-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column_spacing)
        _n += 1
      end
      if !columns.nil?
        (_names.to_unsafe + _n).value = "columns".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, columns)
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
      if !item_orientation.nil?
        (_names.to_unsafe + _n).value = "item-orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_orientation)
        _n += 1
      end
      if !item_padding.nil?
        (_names.to_unsafe + _n).value = "item-padding".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_padding)
        _n += 1
      end
      if !item_width.nil?
        (_names.to_unsafe + _n).value = "item-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, item_width)
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
      if !margin.nil?
        (_names.to_unsafe + _n).value = "margin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin)
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
      if !markup_column.nil?
        (_names.to_unsafe + _n).value = "markup-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, markup_column)
        _n += 1
      end
      if !model.nil?
        (_names.to_unsafe + _n).value = "model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, model)
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
      if !pixbuf_column.nil?
        (_names.to_unsafe + _n).value = "pixbuf-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pixbuf_column)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !reorderable.nil?
        (_names.to_unsafe + _n).value = "reorderable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reorderable)
        _n += 1
      end
      if !root.nil?
        (_names.to_unsafe + _n).value = "root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, root)
        _n += 1
      end
      if !row_spacing.nil?
        (_names.to_unsafe + _n).value = "row-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, row_spacing)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !selection_mode.nil?
        (_names.to_unsafe + _n).value = "selection-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selection_mode)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !spacing.nil?
        (_names.to_unsafe + _n).value = "spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, spacing)
        _n += 1
      end
      if !text_column.nil?
        (_names.to_unsafe + _n).value = "text-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_column)
        _n += 1
      end
      if !tooltip_column.nil?
        (_names.to_unsafe + _n).value = "tooltip-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_column)
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
      @@g_type ||= LibGtk.gtk_icon_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::IconView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def activate_on_single_click=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "activate-on-single-click", unsafe_value, Pointer(Void).null)
      value
    end

    def activate_on_single_click? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "activate-on-single-click", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def cell_area=(value : Gtk::CellArea?) : Gtk::CellArea?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "cell-area", unsafe_value, Pointer(Void).null)
      value
    end

    def cell_area : Gtk::CellArea?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "cell-area", pointerof(value), Pointer(Void).null)
      Gtk::CellArea.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def column_spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "column-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def column_spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "column-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def columns=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "columns", unsafe_value, Pointer(Void).null)
      value
    end

    def columns : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "columns", pointerof(value), Pointer(Void).null)
      value
    end

    def item_orientation=(value : Gtk::Orientation) : Gtk::Orientation
      unsafe_value = value

      LibGObject.g_object_set(self, "item-orientation", unsafe_value, Pointer(Void).null)
      value
    end

    def item_orientation : Gtk::Orientation
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "item-orientation", pointerof(value), Pointer(Void).null)
      Gtk::Orientation.new(value)
    end

    def item_padding=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "item-padding", unsafe_value, Pointer(Void).null)
      value
    end

    def item_padding : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "item-padding", pointerof(value), Pointer(Void).null)
      value
    end

    def item_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "item-width", unsafe_value, Pointer(Void).null)
      value
    end

    def item_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "item-width", pointerof(value), Pointer(Void).null)
      value
    end

    def margin=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "margin", unsafe_value, Pointer(Void).null)
      value
    end

    def margin : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "margin", pointerof(value), Pointer(Void).null)
      value
    end

    def markup_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "markup-column", unsafe_value, Pointer(Void).null)
      value
    end

    def markup_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "markup-column", pointerof(value), Pointer(Void).null)
      value
    end

    def model=(value : Gtk::TreeModel?) : Gtk::TreeModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "model", unsafe_value, Pointer(Void).null)
      value
    end

    def model : Gtk::TreeModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      Gtk::AbstractTreeModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def pixbuf_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "pixbuf-column", unsafe_value, Pointer(Void).null)
      value
    end

    def pixbuf_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "pixbuf-column", pointerof(value), Pointer(Void).null)
      value
    end

    def reorderable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "reorderable", unsafe_value, Pointer(Void).null)
      value
    end

    def reorderable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "reorderable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def row_spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "row-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def row_spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "row-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def selection_mode=(value : Gtk::SelectionMode) : Gtk::SelectionMode
      unsafe_value = value

      LibGObject.g_object_set(self, "selection-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def selection_mode : Gtk::SelectionMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "selection-mode", pointerof(value), Pointer(Void).null)
      Gtk::SelectionMode.new(value)
    end

    def spacing=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def spacing : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def text_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "text-column", unsafe_value, Pointer(Void).null)
      value
    end

    def text_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "text-column", pointerof(value), Pointer(Void).null)
      value
    end

    def tooltip_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip-column", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "tooltip-column", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def self.new : self
      # gtk_icon_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_new

      # Return value handling
      Gtk::IconView.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_area(area : Gtk::CellArea) : self
      # gtk_icon_view_new_with_area: (Constructor)
      # @area:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_new_with_area(area)

      # Return value handling
      Gtk::IconView.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_model(model : Gtk::TreeModel) : self
      # gtk_icon_view_new_with_model: (Constructor)
      # @model:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_new_with_model(model)

      # Return value handling
      Gtk::IconView.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def create_drag_icon(path : Gtk::TreePath) : Gdk::Paintable?
      # gtk_icon_view_create_drag_icon: (Method)
      # @path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_icon_view_create_drag_icon(to_unsafe, path)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def enable_model_drag_dest(formats : Gdk::ContentFormats, actions : Gdk::DragAction) : Nil
      # gtk_icon_view_enable_model_drag_dest: (Method)
      # @formats:
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_enable_model_drag_dest(to_unsafe, formats, actions)

      # Return value handling
    end

    @[Deprecated]
    def enable_model_drag_source(start_button_mask : Gdk::ModifierType, formats : Gdk::ContentFormats, actions : Gdk::DragAction) : Nil
      # gtk_icon_view_enable_model_drag_source: (Method)
      # @start_button_mask:
      # @formats:
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_enable_model_drag_source(to_unsafe, start_button_mask, formats, actions)

      # Return value handling
    end

    @[Deprecated]
    def activate_on_single_click : Bool
      # gtk_icon_view_get_activate_on_single_click: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_activate_on_single_click(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def cell_rect(path : Gtk::TreePath, cell : Gtk::CellRenderer?) : Gdk::Rectangle
      # gtk_icon_view_get_cell_rect: (Method)
      # @path:
      # @cell: (nullable)
      # @rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cell = if cell.nil?
               Pointer(Void).null
             else
               cell.to_unsafe
             end
      # Generator::CallerAllocatesPlan
      rect = Gdk::Rectangle.new
      # C call
      _retval = LibGtk.gtk_icon_view_get_cell_rect(to_unsafe, path, cell, rect)

      # Return value handling
      rect
    end

    @[Deprecated]
    def column_spacing : Int32
      # gtk_icon_view_get_column_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_column_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def columns : Int32
      # gtk_icon_view_get_columns: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_columns(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def cursor : Bool
      # gtk_icon_view_get_cursor: (Method)
      # @path: (out) (transfer full) (optional)
      # @cell: (out) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      cell = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGtk.gtk_icon_view_get_cursor(to_unsafe, path, cell)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def dest_item_at_pos(drag_x : Int32, drag_y : Int32) : Bool
      # gtk_icon_view_get_dest_item_at_pos: (Method)
      # @drag_x:
      # @drag_y:
      # @path: (out) (transfer full) (optional)
      # @pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      pos = Pointer(UInt32).null
      # C call
      _retval = LibGtk.gtk_icon_view_get_dest_item_at_pos(to_unsafe, drag_x, drag_y, path, pos)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def drag_dest_item : Nil
      # gtk_icon_view_get_drag_dest_item: (Method)
      # @path: (out) (transfer full) (nullable) (optional)
      # @pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      pos = Pointer(UInt32).null
      # C call
      LibGtk.gtk_icon_view_get_drag_dest_item(to_unsafe, path, pos)

      # Return value handling
    end

    @[Deprecated]
    def item_at_pos(x : Int32, y : Int32) : Bool
      # gtk_icon_view_get_item_at_pos: (Method)
      # @x:
      # @y:
      # @path: (out) (transfer full) (optional)
      # @cell: (out) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      cell = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGtk.gtk_icon_view_get_item_at_pos(to_unsafe, x, y, path, cell)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def item_column(path : Gtk::TreePath) : Int32
      # gtk_icon_view_get_item_column: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_item_column(to_unsafe, path)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def item_orientation : Gtk::Orientation
      # gtk_icon_view_get_item_orientation: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_item_orientation(to_unsafe)

      # Return value handling
      Gtk::Orientation.new(_retval)
    end

    @[Deprecated]
    def item_padding : Int32
      # gtk_icon_view_get_item_padding: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_item_padding(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def item_row(path : Gtk::TreePath) : Int32
      # gtk_icon_view_get_item_row: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_item_row(to_unsafe, path)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def item_width : Int32
      # gtk_icon_view_get_item_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_item_width(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def margin : Int32
      # gtk_icon_view_get_margin: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_margin(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def markup_column : Int32
      # gtk_icon_view_get_markup_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_markup_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def model : Gtk::TreeModel?
      # gtk_icon_view_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_icon_view_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def path_at_pos(x : Int32, y : Int32) : Gtk::TreePath?
      # gtk_icon_view_get_path_at_pos: (Method)
      # @x:
      # @y:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_icon_view_get_path_at_pos(to_unsafe, x, y)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def pixbuf_column : Int32
      # gtk_icon_view_get_pixbuf_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_pixbuf_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def reorderable : Bool
      # gtk_icon_view_get_reorderable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_reorderable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def row_spacing : Int32
      # gtk_icon_view_get_row_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_row_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def selected_items : GLib::List
      # gtk_icon_view_get_selected_items: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_icon_view_get_selected_items(to_unsafe)

      # Return value handling
      GLib::List(Gtk::TreePath).new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def selection_mode : Gtk::SelectionMode
      # gtk_icon_view_get_selection_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_selection_mode(to_unsafe)

      # Return value handling
      Gtk::SelectionMode.new(_retval)
    end

    @[Deprecated]
    def spacing : Int32
      # gtk_icon_view_get_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def text_column : Int32
      # gtk_icon_view_get_text_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_text_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def tooltip_column : Int32
      # gtk_icon_view_get_tooltip_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_get_tooltip_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def tooltip_context(x : Int32, y : Int32, keyboard_tip : Bool) : Gtk::TreeIter
      # gtk_icon_view_get_tooltip_context: (Method)
      # @x:
      # @y:
      # @keyboard_tip:
      # @model: (out) (optional)
      # @path: (out) (transfer full) (optional)
      # @iter: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      model = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null  # Generator::OutArgUsedInReturnPlan
      iter = Pointer(Void).null           # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_icon_view_get_tooltip_context(to_unsafe, x, y, keyboard_tip, model, path, iter)

      # Return value handling
      iter
    end

    @[Deprecated]
    def visible_range : Bool
      # gtk_icon_view_get_visible_range: (Method)
      # @start_path: (out) (transfer full) (optional)
      # @end_path: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      start_path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      end_path = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGtk.gtk_icon_view_get_visible_range(to_unsafe, start_path, end_path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def item_activated(path : Gtk::TreePath) : Nil
      # gtk_icon_view_item_activated: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_item_activated(to_unsafe, path)

      # Return value handling
    end

    @[Deprecated]
    def path_is_selected(path : Gtk::TreePath) : Bool
      # gtk_icon_view_path_is_selected: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_icon_view_path_is_selected(to_unsafe, path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def scroll_to_path(path : Gtk::TreePath, use_align : Bool, row_align : Float32, col_align : Float32) : Nil
      # gtk_icon_view_scroll_to_path: (Method)
      # @path:
      # @use_align:
      # @row_align:
      # @col_align:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_scroll_to_path(to_unsafe, path, use_align, row_align, col_align)

      # Return value handling
    end

    @[Deprecated]
    def select_all : Nil
      # gtk_icon_view_select_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_select_all(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def select_path(path : Gtk::TreePath) : Nil
      # gtk_icon_view_select_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_select_path(to_unsafe, path)

      # Return value handling
    end

    @[Deprecated]
    def selected_foreach(func : Gtk::IconViewForeachFunc, data : Pointer(Void)?) : Nil
      # gtk_icon_view_selected_foreach: (Method)
      # @func:
      # @data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end

      # C call
      LibGtk.gtk_icon_view_selected_foreach(to_unsafe, func, data)

      # Return value handling
    end

    @[Deprecated]
    def activate_on_single_click=(single : Bool) : Nil
      # gtk_icon_view_set_activate_on_single_click: (Method | Setter)
      # @single:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_activate_on_single_click(to_unsafe, single)

      # Return value handling
    end

    @[Deprecated]
    def column_spacing=(column_spacing : Int32) : Nil
      # gtk_icon_view_set_column_spacing: (Method | Setter)
      # @column_spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_column_spacing(to_unsafe, column_spacing)

      # Return value handling
    end

    @[Deprecated]
    def columns=(columns : Int32) : Nil
      # gtk_icon_view_set_columns: (Method | Setter)
      # @columns:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_columns(to_unsafe, columns)

      # Return value handling
    end

    @[Deprecated]
    def set_cursor(path : Gtk::TreePath, cell : Gtk::CellRenderer?, start_editing : Bool) : Nil
      # gtk_icon_view_set_cursor: (Method)
      # @path:
      # @cell: (nullable)
      # @start_editing:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cell = if cell.nil?
               Pointer(Void).null
             else
               cell.to_unsafe
             end

      # C call
      LibGtk.gtk_icon_view_set_cursor(to_unsafe, path, cell, start_editing)

      # Return value handling
    end

    @[Deprecated]
    def set_drag_dest_item(path : Gtk::TreePath?, pos : Gtk::IconViewDropPosition) : Nil
      # gtk_icon_view_set_drag_dest_item: (Method)
      # @path: (nullable)
      # @pos:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(Void).null
             else
               path.to_unsafe
             end

      # C call
      LibGtk.gtk_icon_view_set_drag_dest_item(to_unsafe, path, pos)

      # Return value handling
    end

    @[Deprecated]
    def item_orientation=(orientation : Gtk::Orientation) : Nil
      # gtk_icon_view_set_item_orientation: (Method | Setter)
      # @orientation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_item_orientation(to_unsafe, orientation)

      # Return value handling
    end

    @[Deprecated]
    def item_padding=(item_padding : Int32) : Nil
      # gtk_icon_view_set_item_padding: (Method | Setter)
      # @item_padding:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_item_padding(to_unsafe, item_padding)

      # Return value handling
    end

    @[Deprecated]
    def item_width=(item_width : Int32) : Nil
      # gtk_icon_view_set_item_width: (Method | Setter)
      # @item_width:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_item_width(to_unsafe, item_width)

      # Return value handling
    end

    @[Deprecated]
    def margin=(margin : Int32) : Nil
      # gtk_icon_view_set_margin: (Method | Setter)
      # @margin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_margin(to_unsafe, margin)

      # Return value handling
    end

    @[Deprecated]
    def markup_column=(column : Int32) : Nil
      # gtk_icon_view_set_markup_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_markup_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def model=(model : Gtk::TreeModel?) : Nil
      # gtk_icon_view_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_icon_view_set_model(to_unsafe, model)

      # Return value handling
    end

    @[Deprecated]
    def pixbuf_column=(column : Int32) : Nil
      # gtk_icon_view_set_pixbuf_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_pixbuf_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def reorderable=(reorderable : Bool) : Nil
      # gtk_icon_view_set_reorderable: (Method | Setter)
      # @reorderable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_reorderable(to_unsafe, reorderable)

      # Return value handling
    end

    @[Deprecated]
    def row_spacing=(row_spacing : Int32) : Nil
      # gtk_icon_view_set_row_spacing: (Method | Setter)
      # @row_spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_row_spacing(to_unsafe, row_spacing)

      # Return value handling
    end

    @[Deprecated]
    def selection_mode=(mode : Gtk::SelectionMode) : Nil
      # gtk_icon_view_set_selection_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_selection_mode(to_unsafe, mode)

      # Return value handling
    end

    @[Deprecated]
    def spacing=(spacing : Int32) : Nil
      # gtk_icon_view_set_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_spacing(to_unsafe, spacing)

      # Return value handling
    end

    @[Deprecated]
    def text_column=(column : Int32) : Nil
      # gtk_icon_view_set_text_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_text_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def set_tooltip_cell(tooltip : Gtk::Tooltip, path : Gtk::TreePath, cell : Gtk::CellRenderer?) : Nil
      # gtk_icon_view_set_tooltip_cell: (Method)
      # @tooltip:
      # @path:
      # @cell: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cell = if cell.nil?
               Pointer(Void).null
             else
               cell.to_unsafe
             end

      # C call
      LibGtk.gtk_icon_view_set_tooltip_cell(to_unsafe, tooltip, path, cell)

      # Return value handling
    end

    @[Deprecated]
    def tooltip_column=(column : Int32) : Nil
      # gtk_icon_view_set_tooltip_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_tooltip_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def set_tooltip_item(tooltip : Gtk::Tooltip, path : Gtk::TreePath) : Nil
      # gtk_icon_view_set_tooltip_item: (Method)
      # @tooltip:
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_set_tooltip_item(to_unsafe, tooltip, path)

      # Return value handling
    end

    @[Deprecated]
    def unselect_all : Nil
      # gtk_icon_view_unselect_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_unselect_all(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def unselect_path(path : Gtk::TreePath) : Nil
      # gtk_icon_view_unselect_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_unselect_path(to_unsafe, path)

      # Return value handling
    end

    @[Deprecated]
    def unset_model_drag_dest : Nil
      # gtk_icon_view_unset_model_drag_dest: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_unset_model_drag_dest(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def unset_model_drag_source : Nil
      # gtk_icon_view_unset_model_drag_source: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_icon_view_unset_model_drag_source(to_unsafe)

      # Return value handling
    end

    struct ActivateCursorItemSignal < GObject::Signal
      def name : String
        @detail ? "activate-cursor-item::#{@detail}" : "activate-cursor-item"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::IconView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconView, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-cursor-item")
      end
    end

    def activate_cursor_item_signal
      ActivateCursorItemSignal.new(self)
    end

    struct ItemActivatedSignal < GObject::Signal
      def name : String
        @detail ? "item-activated::#{@detail}" : "item-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreePath, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreePath, Nil)).unbox(_lib_box).call(path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::IconView, Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconView, Gtk::TreePath, Nil)).unbox(_lib_box).call(_sender, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(path : Gtk::TreePath) : Nil
        LibGObject.g_signal_emit_by_name(@source, "item-activated", path)
      end
    end

    def item_activated_signal
      ItemActivatedSignal.new(self)
    end

    struct MoveCursorSignal < GObject::Signal
      def name : String
        @detail ? "move-cursor::#{@detail}" : "move-cursor"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::MovementStep, Int32, Bool, Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::MovementStep, Int32, Bool, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, lib__extend : LibC::Int, lib_modify : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          count = lib_count
          # Generator::BuiltInTypeArgPlan
          _extend = GICrystal.to_bool(lib__extend)
          # Generator::BuiltInTypeArgPlan
          modify = GICrystal.to_bool(lib_modify)
          ::Box(Proc(Gtk::MovementStep, Int32, Bool, Bool, Bool)).unbox(_lib_box).call(step, count, _extend, modify)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::IconView, Gtk::MovementStep, Int32, Bool, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, lib__extend : LibC::Int, lib_modify : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          count = lib_count
          # Generator::BuiltInTypeArgPlan
          _extend = GICrystal.to_bool(lib__extend)
          # Generator::BuiltInTypeArgPlan
          modify = GICrystal.to_bool(lib_modify)
          ::Box(Proc(Gtk::IconView, Gtk::MovementStep, Int32, Bool, Bool, Bool)).unbox(_lib_box).call(_sender, step, count, _extend, modify)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(step : Gtk::MovementStep, count : Int32, extend _extend : Bool, modify : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-cursor", step, count, _extend, modify)
      end
    end

    def move_cursor_signal
      MoveCursorSignal.new(self)
    end

    struct SelectAllSignal < GObject::Signal
      def name : String
        @detail ? "select-all::#{@detail}" : "select-all"
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

      def connect(handler : Proc(Gtk::IconView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "select-all")
      end
    end

    def select_all_signal
      SelectAllSignal.new(self)
    end

    struct SelectCursorItemSignal < GObject::Signal
      def name : String
        @detail ? "select-cursor-item::#{@detail}" : "select-cursor-item"
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

      def connect(handler : Proc(Gtk::IconView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "select-cursor-item")
      end
    end

    def select_cursor_item_signal
      SelectCursorItemSignal.new(self)
    end

    struct SelectionChangedSignal < GObject::Signal
      def name : String
        @detail ? "selection-changed::#{@detail}" : "selection-changed"
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

      def connect(handler : Proc(Gtk::IconView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "selection-changed")
      end
    end

    def selection_changed_signal
      SelectionChangedSignal.new(self)
    end

    struct ToggleCursorItemSignal < GObject::Signal
      def name : String
        @detail ? "toggle-cursor-item::#{@detail}" : "toggle-cursor-item"
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

      def connect(handler : Proc(Gtk::IconView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "toggle-cursor-item")
      end
    end

    def toggle_cursor_item_signal
      ToggleCursorItemSignal.new(self)
    end

    struct UnselectAllSignal < GObject::Signal
      def name : String
        @detail ? "unselect-all::#{@detail}" : "unselect-all"
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

      def connect(handler : Proc(Gtk::IconView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::IconView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::IconView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "unselect-all")
      end
    end

    def unselect_all_signal
      UnselectAllSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
