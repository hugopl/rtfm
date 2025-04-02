require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./scrollable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ColumnView < Widget
    include Accessible
    include Buildable
    include ConstraintTarget
    include Scrollable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ColumnViewClass), class_init,
        sizeof(LibGtk::ColumnView), instance_init, 0)
    end

    GICrystal.declare_new_method(ColumnView, g_object_get_qdata)

    # Initialize a new `ColumnView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, columns : Gio::ListModel? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, enable_rubberband : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, hadjustment : Gtk::Adjustment? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, header_factory : Gtk::ListItemFactory? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hscroll_policy : Gtk::ScrollablePolicy? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, model : Gtk::SelectionModel? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, reorderable : Bool? = nil, root : Gtk::Root? = nil, row_factory : Gtk::ListItemFactory? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_column_separators : Bool? = nil, show_row_separators : Bool? = nil, single_click_activate : Bool? = nil, sorter : Gtk::Sorter? = nil, tab_behavior : Gtk::ListTabBehavior? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, vadjustment : Gtk::Adjustment? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, vscroll_policy : Gtk::ScrollablePolicy? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[51]
      _values = StaticArray(LibGObject::Value, 51).new(LibGObject::Value.new)
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
      if !enable_rubberband.nil?
        (_names.to_unsafe + _n).value = "enable-rubberband".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_rubberband)
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
      if !header_factory.nil?
        (_names.to_unsafe + _n).value = "header-factory".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, header_factory)
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
      if !row_factory.nil?
        (_names.to_unsafe + _n).value = "row-factory".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, row_factory)
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
      if !show_column_separators.nil?
        (_names.to_unsafe + _n).value = "show-column-separators".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_column_separators)
        _n += 1
      end
      if !show_row_separators.nil?
        (_names.to_unsafe + _n).value = "show-row-separators".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_row_separators)
        _n += 1
      end
      if !single_click_activate.nil?
        (_names.to_unsafe + _n).value = "single-click-activate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, single_click_activate)
        _n += 1
      end
      if !sorter.nil?
        (_names.to_unsafe + _n).value = "sorter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sorter)
        _n += 1
      end
      if !tab_behavior.nil?
        (_names.to_unsafe + _n).value = "tab-behavior".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tab_behavior)
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
      @@g_type ||= LibGtk.gtk_column_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ColumnView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def columns : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "columns", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def enable_rubberband=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-rubberband", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_rubberband? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-rubberband", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def header_factory=(value : Gtk::ListItemFactory?) : Gtk::ListItemFactory?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "header-factory", unsafe_value, Pointer(Void).null)
      value
    end

    def header_factory : Gtk::ListItemFactory?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "header-factory", pointerof(value), Pointer(Void).null)
      Gtk::ListItemFactory.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def model=(value : Gtk::SelectionModel?) : Gtk::SelectionModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "model", unsafe_value, Pointer(Void).null)
      value
    end

    def model : Gtk::SelectionModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      Gtk::AbstractSelectionModel.new(value, GICrystal::Transfer::None) unless value.null?
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

    def row_factory=(value : Gtk::ListItemFactory?) : Gtk::ListItemFactory?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "row-factory", unsafe_value, Pointer(Void).null)
      value
    end

    def row_factory : Gtk::ListItemFactory?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "row-factory", pointerof(value), Pointer(Void).null)
      Gtk::ListItemFactory.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def show_column_separators=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-column-separators", unsafe_value, Pointer(Void).null)
      value
    end

    def show_column_separators? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-column-separators", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_row_separators=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-row-separators", unsafe_value, Pointer(Void).null)
      value
    end

    def show_row_separators? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-row-separators", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def single_click_activate=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "single-click-activate", unsafe_value, Pointer(Void).null)
      value
    end

    def single_click_activate? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "single-click-activate", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sorter : Gtk::Sorter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sorter", pointerof(value), Pointer(Void).null)
      Gtk::Sorter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def tab_behavior=(value : Gtk::ListTabBehavior) : Gtk::ListTabBehavior
      unsafe_value = value

      LibGObject.g_object_set(self, "tab-behavior", unsafe_value, Pointer(Void).null)
      value
    end

    def tab_behavior : Gtk::ListTabBehavior
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "tab-behavior", pointerof(value), Pointer(Void).null)
      Gtk::ListTabBehavior.new(value)
    end

    def self.new(model : Gtk::SelectionModel?) : self
      # gtk_column_view_new: (Constructor)
      # @model: (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(model)
      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_column_view_new(model)

      # Return value handling
      Gtk::ColumnView.new(_retval, GICrystal::Transfer::Full)
    end

    def append_column(column : Gtk::ColumnViewColumn) : Nil
      # gtk_column_view_append_column: (Method)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_append_column(to_unsafe, column)

      # Return value handling
    end

    def columns : Gio::ListModel
      # gtk_column_view_get_columns: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_get_columns(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None)
    end

    def enable_rubberband : Bool
      # gtk_column_view_get_enable_rubberband: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_get_enable_rubberband(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def header_factory : Gtk::ListItemFactory?
      # gtk_column_view_get_header_factory: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_get_header_factory(to_unsafe)

      # Return value handling
      Gtk::ListItemFactory.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def model : Gtk::SelectionModel?
      # gtk_column_view_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractSelectionModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def reorderable : Bool
      # gtk_column_view_get_reorderable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_get_reorderable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def row_factory : Gtk::ListItemFactory?
      # gtk_column_view_get_row_factory: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_get_row_factory(to_unsafe)

      # Return value handling
      Gtk::ListItemFactory.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def show_column_separators : Bool
      # gtk_column_view_get_show_column_separators: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_get_show_column_separators(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_row_separators : Bool
      # gtk_column_view_get_show_row_separators: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_get_show_row_separators(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def single_click_activate : Bool
      # gtk_column_view_get_single_click_activate: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_get_single_click_activate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def sorter : Gtk::Sorter?
      # gtk_column_view_get_sorter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_column_view_get_sorter(to_unsafe)

      # Return value handling
      Gtk::Sorter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tab_behavior : Gtk::ListTabBehavior
      # gtk_column_view_get_tab_behavior: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_column_view_get_tab_behavior(to_unsafe)

      # Return value handling
      Gtk::ListTabBehavior.new(_retval)
    end

    def insert_column(position : UInt32, column : Gtk::ColumnViewColumn) : Nil
      # gtk_column_view_insert_column: (Method)
      # @position:
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_insert_column(to_unsafe, position, column)

      # Return value handling
    end

    def remove_column(column : Gtk::ColumnViewColumn) : Nil
      # gtk_column_view_remove_column: (Method)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_remove_column(to_unsafe, column)

      # Return value handling
    end

    def scroll_to(pos : UInt32, column : Gtk::ColumnViewColumn?, flags : Gtk::ListScrollFlags, scroll : Gtk::ScrollInfo?) : Nil
      # gtk_column_view_scroll_to: (Method)
      # @pos:
      # @column: (nullable)
      # @flags:
      # @scroll: (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end
      # Generator::NullableArrayPlan
      scroll = if scroll.nil?
                 Pointer(Void).null
               else
                 scroll.to_unsafe
               end

      # C call
      LibGtk.gtk_column_view_scroll_to(to_unsafe, pos, column, flags, scroll)

      # Return value handling
    end

    def enable_rubberband=(enable_rubberband : Bool) : Nil
      # gtk_column_view_set_enable_rubberband: (Method | Setter)
      # @enable_rubberband:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_set_enable_rubberband(to_unsafe, enable_rubberband)

      # Return value handling
    end

    def header_factory=(factory : Gtk::ListItemFactory?) : Nil
      # gtk_column_view_set_header_factory: (Method | Setter)
      # @factory: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      factory = if factory.nil?
                  Pointer(Void).null
                else
                  factory.to_unsafe
                end

      # C call
      LibGtk.gtk_column_view_set_header_factory(to_unsafe, factory)

      # Return value handling
    end

    def model=(model : Gtk::SelectionModel?) : Nil
      # gtk_column_view_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_column_view_set_model(to_unsafe, model)

      # Return value handling
    end

    def reorderable=(reorderable : Bool) : Nil
      # gtk_column_view_set_reorderable: (Method | Setter)
      # @reorderable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_set_reorderable(to_unsafe, reorderable)

      # Return value handling
    end

    def row_factory=(factory : Gtk::ListItemFactory?) : Nil
      # gtk_column_view_set_row_factory: (Method | Setter)
      # @factory: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      factory = if factory.nil?
                  Pointer(Void).null
                else
                  factory.to_unsafe
                end

      # C call
      LibGtk.gtk_column_view_set_row_factory(to_unsafe, factory)

      # Return value handling
    end

    def show_column_separators=(show_column_separators : Bool) : Nil
      # gtk_column_view_set_show_column_separators: (Method | Setter)
      # @show_column_separators:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_set_show_column_separators(to_unsafe, show_column_separators)

      # Return value handling
    end

    def show_row_separators=(show_row_separators : Bool) : Nil
      # gtk_column_view_set_show_row_separators: (Method | Setter)
      # @show_row_separators:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_set_show_row_separators(to_unsafe, show_row_separators)

      # Return value handling
    end

    def single_click_activate=(single_click_activate : Bool) : Nil
      # gtk_column_view_set_single_click_activate: (Method | Setter)
      # @single_click_activate:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_set_single_click_activate(to_unsafe, single_click_activate)

      # Return value handling
    end

    def tab_behavior=(tab_behavior : Gtk::ListTabBehavior) : Nil
      # gtk_column_view_set_tab_behavior: (Method | Setter)
      # @tab_behavior:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_column_view_set_tab_behavior(to_unsafe, tab_behavior)

      # Return value handling
    end

    def sort_by_column(column : Gtk::ColumnViewColumn?, direction : Gtk::SortType) : Nil
      # gtk_column_view_sort_by_column: (Method)
      # @column: (nullable)
      # @direction:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end

      # C call
      LibGtk.gtk_column_view_sort_by_column(to_unsafe, column, direction)

      # Return value handling
    end

    struct ActivateSignal < GObject::Signal
      def name : String
        @detail ? "activate::#{@detail}" : "activate"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          position = lib_position
          ::Box(Proc(UInt32, Nil)).unbox(_lib_box).call(position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::ColumnView, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::ColumnView.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          ::Box(Proc(Gtk::ColumnView, UInt32, Nil)).unbox(_lib_box).call(_sender, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(position : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate", position)
      end
    end

    def activate_signal
      ActivateSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
