require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./scrollable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeView < Widget
    include Accessible
    include Buildable
    include ConstraintTarget
    include Scrollable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TreeViewClass), class_init,
        sizeof(LibGtk::TreeView), instance_init, 0)
    end

    GICrystal.declare_new_method(TreeView, g_object_get_qdata)

    # Initialize a new `TreeView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, activate_on_single_click : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, enable_grid_lines : Gtk::TreeViewGridLines? = nil, enable_search : Bool? = nil, enable_tree_lines : Bool? = nil, expander_column : Gtk::TreeViewColumn? = nil, fixed_height_mode : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, hadjustment : Gtk::Adjustment? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, headers_clickable : Bool? = nil, headers_visible : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hover_expand : Bool? = nil, hover_selection : Bool? = nil, hscroll_policy : Gtk::ScrollablePolicy? = nil, layout_manager : Gtk::LayoutManager? = nil, level_indentation : Int32? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, model : Gtk::TreeModel? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, reorderable : Bool? = nil, root : Gtk::Root? = nil, rubber_banding : Bool? = nil, scale_factor : Int32? = nil, search_column : Int32? = nil, sensitive : Bool? = nil, show_expanders : Bool? = nil, tooltip_column : Int32? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, vadjustment : Gtk::Adjustment? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, vscroll_policy : Gtk::ScrollablePolicy? = nil, width_request : Int32? = nil)
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
      if !enable_grid_lines.nil?
        (_names.to_unsafe + _n).value = "enable-grid-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_grid_lines)
        _n += 1
      end
      if !enable_search.nil?
        (_names.to_unsafe + _n).value = "enable-search".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_search)
        _n += 1
      end
      if !enable_tree_lines.nil?
        (_names.to_unsafe + _n).value = "enable-tree-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_tree_lines)
        _n += 1
      end
      if !expander_column.nil?
        (_names.to_unsafe + _n).value = "expander-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, expander_column)
        _n += 1
      end
      if !fixed_height_mode.nil?
        (_names.to_unsafe + _n).value = "fixed-height-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fixed_height_mode)
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
      if !headers_clickable.nil?
        (_names.to_unsafe + _n).value = "headers-clickable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, headers_clickable)
        _n += 1
      end
      if !headers_visible.nil?
        (_names.to_unsafe + _n).value = "headers-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, headers_visible)
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
      if !hover_expand.nil?
        (_names.to_unsafe + _n).value = "hover-expand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hover_expand)
        _n += 1
      end
      if !hover_selection.nil?
        (_names.to_unsafe + _n).value = "hover-selection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hover_selection)
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
      if !level_indentation.nil?
        (_names.to_unsafe + _n).value = "level-indentation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, level_indentation)
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
      if !rubber_banding.nil?
        (_names.to_unsafe + _n).value = "rubber-banding".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, rubber_banding)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !search_column.nil?
        (_names.to_unsafe + _n).value = "search-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, search_column)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !show_expanders.nil?
        (_names.to_unsafe + _n).value = "show-expanders".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_expanders)
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
      @@g_type ||= LibGtk.gtk_tree_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeView.new(Void*, GICrystal::Transfer)
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

    def enable_grid_lines=(value : Gtk::TreeViewGridLines) : Gtk::TreeViewGridLines
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-grid-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_grid_lines : Gtk::TreeViewGridLines
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "enable-grid-lines", pointerof(value), Pointer(Void).null)
      Gtk::TreeViewGridLines.new(value)
    end

    def enable_search=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-search", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_search? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-search", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_tree_lines=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-tree-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_tree_lines? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-tree-lines", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def expander_column=(value : Gtk::TreeViewColumn?) : Gtk::TreeViewColumn?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "expander-column", unsafe_value, Pointer(Void).null)
      value
    end

    def expander_column : Gtk::TreeViewColumn?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "expander-column", pointerof(value), Pointer(Void).null)
      Gtk::TreeViewColumn.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def fixed_height_mode=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "fixed-height-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def fixed_height_mode? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "fixed-height-mode", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def headers_clickable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "headers-clickable", unsafe_value, Pointer(Void).null)
      value
    end

    def headers_clickable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "headers-clickable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def headers_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "headers-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def headers_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "headers-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def hover_expand=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "hover-expand", unsafe_value, Pointer(Void).null)
      value
    end

    def hover_expand? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "hover-expand", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def hover_selection=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "hover-selection", unsafe_value, Pointer(Void).null)
      value
    end

    def hover_selection? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "hover-selection", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def level_indentation=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "level-indentation", unsafe_value, Pointer(Void).null)
      value
    end

    def level_indentation : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "level-indentation", pointerof(value), Pointer(Void).null)
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

    def rubber_banding=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "rubber-banding", unsafe_value, Pointer(Void).null)
      value
    end

    def rubber_banding? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "rubber-banding", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def search_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "search-column", unsafe_value, Pointer(Void).null)
      value
    end

    def search_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "search-column", pointerof(value), Pointer(Void).null)
      value
    end

    def show_expanders=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-expanders", unsafe_value, Pointer(Void).null)
      value
    end

    def show_expanders? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-expanders", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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
      # gtk_tree_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_new

      # Return value handling
      Gtk::TreeView.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_model(model : Gtk::TreeModel) : self
      # gtk_tree_view_new_with_model: (Constructor)
      # @model:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_new_with_model(model)

      # Return value handling
      Gtk::TreeView.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def append_column(column : Gtk::TreeViewColumn) : Int32
      # gtk_tree_view_append_column: (Method)
      # @column:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_append_column(to_unsafe, column)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def collapse_all : Nil
      # gtk_tree_view_collapse_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_collapse_all(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def collapse_row(path : Gtk::TreePath) : Bool
      # gtk_tree_view_collapse_row: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_collapse_row(to_unsafe, path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def columns_autosize : Nil
      # gtk_tree_view_columns_autosize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_columns_autosize(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def convert_bin_window_to_tree_coords(bx : Int32, by : Int32, tx : Int32, ty : Int32) : Nil
      # gtk_tree_view_convert_bin_window_to_tree_coords: (Method)
      # @bx:
      # @by:
      # @tx: (out) (transfer full)
      # @ty: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_convert_bin_window_to_tree_coords(to_unsafe, bx, by, tx, ty)

      # Return value handling
    end

    @[Deprecated]
    def convert_bin_window_to_widget_coords(bx : Int32, by : Int32, wx : Int32, wy : Int32) : Nil
      # gtk_tree_view_convert_bin_window_to_widget_coords: (Method)
      # @bx:
      # @by:
      # @wx: (out) (transfer full)
      # @wy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_convert_bin_window_to_widget_coords(to_unsafe, bx, by, wx, wy)

      # Return value handling
    end

    @[Deprecated]
    def convert_tree_to_bin_window_coords(tx : Int32, ty : Int32, bx : Int32, by : Int32) : Nil
      # gtk_tree_view_convert_tree_to_bin_window_coords: (Method)
      # @tx:
      # @ty:
      # @bx: (out) (transfer full)
      # @by: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_convert_tree_to_bin_window_coords(to_unsafe, tx, ty, bx, by)

      # Return value handling
    end

    @[Deprecated]
    def convert_tree_to_widget_coords(tx : Int32, ty : Int32, wx : Int32, wy : Int32) : Nil
      # gtk_tree_view_convert_tree_to_widget_coords: (Method)
      # @tx:
      # @ty:
      # @wx: (out) (transfer full)
      # @wy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_convert_tree_to_widget_coords(to_unsafe, tx, ty, wx, wy)

      # Return value handling
    end

    @[Deprecated]
    def convert_widget_to_bin_window_coords(wx : Int32, wy : Int32, bx : Int32, by : Int32) : Nil
      # gtk_tree_view_convert_widget_to_bin_window_coords: (Method)
      # @wx:
      # @wy:
      # @bx: (out) (transfer full)
      # @by: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_convert_widget_to_bin_window_coords(to_unsafe, wx, wy, bx, by)

      # Return value handling
    end

    @[Deprecated]
    def convert_widget_to_tree_coords(wx : Int32, wy : Int32, tx : Int32, ty : Int32) : Nil
      # gtk_tree_view_convert_widget_to_tree_coords: (Method)
      # @wx:
      # @wy:
      # @tx: (out) (transfer full)
      # @ty: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_convert_widget_to_tree_coords(to_unsafe, wx, wy, tx, ty)

      # Return value handling
    end

    @[Deprecated]
    def create_row_drag_icon(path : Gtk::TreePath) : Gdk::Paintable?
      # gtk_tree_view_create_row_drag_icon: (Method)
      # @path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_view_create_row_drag_icon(to_unsafe, path)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def enable_model_drag_dest(formats : Gdk::ContentFormats, actions : Gdk::DragAction) : Nil
      # gtk_tree_view_enable_model_drag_dest: (Method)
      # @formats:
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_enable_model_drag_dest(to_unsafe, formats, actions)

      # Return value handling
    end

    @[Deprecated]
    def enable_model_drag_source(start_button_mask : Gdk::ModifierType, formats : Gdk::ContentFormats, actions : Gdk::DragAction) : Nil
      # gtk_tree_view_enable_model_drag_source: (Method)
      # @start_button_mask:
      # @formats:
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_enable_model_drag_source(to_unsafe, start_button_mask, formats, actions)

      # Return value handling
    end

    @[Deprecated]
    def expand_all : Nil
      # gtk_tree_view_expand_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_expand_all(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def expand_row(path : Gtk::TreePath, open_all : Bool) : Bool
      # gtk_tree_view_expand_row: (Method)
      # @path:
      # @open_all:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_expand_row(to_unsafe, path, open_all)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def expand_to_path(path : Gtk::TreePath) : Nil
      # gtk_tree_view_expand_to_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_expand_to_path(to_unsafe, path)

      # Return value handling
    end

    @[Deprecated]
    def activate_on_single_click : Bool
      # gtk_tree_view_get_activate_on_single_click: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_activate_on_single_click(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def background_area(path : Gtk::TreePath?, column : Gtk::TreeViewColumn?) : Gdk::Rectangle
      # gtk_tree_view_get_background_area: (Method)
      # @path: (nullable)
      # @column: (nullable)
      # @rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(Void).null
             else
               path.to_unsafe
             end
      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end
      # Generator::CallerAllocatesPlan
      rect = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_tree_view_get_background_area(to_unsafe, path, column, rect)

      # Return value handling
      rect
    end

    @[Deprecated]
    def cell_area(path : Gtk::TreePath?, column : Gtk::TreeViewColumn?) : Gdk::Rectangle
      # gtk_tree_view_get_cell_area: (Method)
      # @path: (nullable)
      # @column: (nullable)
      # @rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(Void).null
             else
               path.to_unsafe
             end
      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end
      # Generator::CallerAllocatesPlan
      rect = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_tree_view_get_cell_area(to_unsafe, path, column, rect)

      # Return value handling
      rect
    end

    @[Deprecated]
    def column(n : Int32) : Gtk::TreeViewColumn?
      # gtk_tree_view_get_column: (Method)
      # @n:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_view_get_column(to_unsafe, n)

      # Return value handling
      Gtk::TreeViewColumn.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def columns : GLib::List
      # gtk_tree_view_get_columns: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_tree_view_get_columns(to_unsafe)

      # Return value handling
      GLib::List(Gtk::TreeViewColumn).new(_retval, GICrystal::Transfer::Container)
    end

    @[Deprecated]
    def cursor : Nil
      # gtk_tree_view_get_cursor: (Method)
      # @path: (out) (transfer full) (nullable) (optional)
      # @focus_column: (out) (nullable) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      focus_column = Pointer(Pointer(Void)).null
      # C call
      LibGtk.gtk_tree_view_get_cursor(to_unsafe, path, focus_column)

      # Return value handling
    end

    @[Deprecated]
    def dest_row_at_pos(drag_x : Int32, drag_y : Int32) : Bool
      # gtk_tree_view_get_dest_row_at_pos: (Method)
      # @drag_x:
      # @drag_y:
      # @path: (out) (transfer full) (nullable) (optional)
      # @pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      pos = Pointer(UInt32).null
      # C call
      _retval = LibGtk.gtk_tree_view_get_dest_row_at_pos(to_unsafe, drag_x, drag_y, path, pos)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def drag_dest_row : Nil
      # gtk_tree_view_get_drag_dest_row: (Method)
      # @path: (out) (transfer full) (nullable) (optional)
      # @pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      pos = Pointer(UInt32).null
      # C call
      LibGtk.gtk_tree_view_get_drag_dest_row(to_unsafe, path, pos)

      # Return value handling
    end

    @[Deprecated]
    def enable_search : Bool
      # gtk_tree_view_get_enable_search: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_enable_search(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def enable_tree_lines : Bool
      # gtk_tree_view_get_enable_tree_lines: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_enable_tree_lines(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def expander_column : Gtk::TreeViewColumn?
      # gtk_tree_view_get_expander_column: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_view_get_expander_column(to_unsafe)

      # Return value handling
      Gtk::TreeViewColumn.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def fixed_height_mode : Bool
      # gtk_tree_view_get_fixed_height_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_fixed_height_mode(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def grid_lines : Gtk::TreeViewGridLines
      # gtk_tree_view_get_grid_lines: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_grid_lines(to_unsafe)

      # Return value handling
      Gtk::TreeViewGridLines.new(_retval)
    end

    @[Deprecated]
    def headers_clickable : Bool
      # gtk_tree_view_get_headers_clickable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_headers_clickable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def headers_visible : Bool
      # gtk_tree_view_get_headers_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_headers_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def hover_expand : Bool
      # gtk_tree_view_get_hover_expand: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_hover_expand(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def hover_selection : Bool
      # gtk_tree_view_get_hover_selection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_hover_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def level_indentation : Int32
      # gtk_tree_view_get_level_indentation: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_level_indentation(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def model : Gtk::TreeModel?
      # gtk_tree_view_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_view_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def n_columns : UInt32
      # gtk_tree_view_get_n_columns: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_n_columns(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def path_at_pos(x : Int32, y : Int32) : Bool
      # gtk_tree_view_get_path_at_pos: (Method)
      # @x:
      # @y:
      # @path: (out) (transfer full) (nullable) (optional)
      # @column: (out) (nullable) (optional)
      # @cell_x: (out) (transfer full) (optional)
      # @cell_y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null   # Generator::OutArgUsedInReturnPlan
      column = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      cell_x = Pointer(Int32).null         # Generator::OutArgUsedInReturnPlan
      cell_y = Pointer(Int32).null
      # C call
      _retval = LibGtk.gtk_tree_view_get_path_at_pos(to_unsafe, x, y, path, column, cell_x, cell_y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def reorderable : Bool
      # gtk_tree_view_get_reorderable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_reorderable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def rubber_banding : Bool
      # gtk_tree_view_get_rubber_banding: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_rubber_banding(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def search_column : Int32
      # gtk_tree_view_get_search_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_search_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def search_entry : Gtk::Editable?
      # gtk_tree_view_get_search_entry: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_view_get_search_entry(to_unsafe)

      # Return value handling
      Gtk::AbstractEditable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def selection : Gtk::TreeSelection
      # gtk_tree_view_get_selection: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_selection(to_unsafe)

      # Return value handling
      Gtk::TreeSelection.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def show_expanders : Bool
      # gtk_tree_view_get_show_expanders: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_show_expanders(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def tooltip_column : Int32
      # gtk_tree_view_get_tooltip_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_get_tooltip_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def tooltip_context(x : Int32, y : Int32, keyboard_tip : Bool) : Gtk::TreeIter
      # gtk_tree_view_get_tooltip_context: (Method)
      # @x:
      # @y:
      # @keyboard_tip:
      # @model: (out) (nullable) (optional)
      # @path: (out) (transfer full) (optional)
      # @iter: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      model = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null  # Generator::OutArgUsedInReturnPlan
      iter = Pointer(Void).null           # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_view_get_tooltip_context(to_unsafe, x, y, keyboard_tip, model, path, iter)

      # Return value handling
      iter
    end

    @[Deprecated]
    def visible_range : Bool
      # gtk_tree_view_get_visible_range: (Method)
      # @start_path: (out) (transfer full) (optional)
      # @end_path: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      start_path = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      end_path = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGtk.gtk_tree_view_get_visible_range(to_unsafe, start_path, end_path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def visible_rect : Gdk::Rectangle
      # gtk_tree_view_get_visible_rect: (Method)
      # @visible_rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      visible_rect = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_tree_view_get_visible_rect(to_unsafe, visible_rect)

      # Return value handling
      visible_rect
    end

    @[Deprecated]
    def insert_column(column : Gtk::TreeViewColumn, position : Int32) : Int32
      # gtk_tree_view_insert_column: (Method)
      # @column:
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_insert_column(to_unsafe, column, position)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def insert_column_with_data_func(position : Int32, title : ::String, cell : Gtk::CellRenderer, func : Gtk::TreeCellDataFunc) : Int32
      # gtk_tree_view_insert_column_with_data_func: (Method)
      # @position:
      # @title:
      # @cell:
      # @func:
      # @data: (nullable)
      # @dnotify:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_tree_column : Pointer(Void), lib_cell : Pointer(Void), lib_tree_model : Pointer(Void), lib_iter : Pointer(Void), lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tree_column = Gtk::TreeViewColumn.new(lib_tree_column, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          cell = Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tree_model = Gtk::AbstractTreeModel.new(lib_tree_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeViewColumn, Gtk::CellRenderer, Gtk::TreeModel, Gtk::TreeIter, Nil)).unbox(lib_data).call(tree_column, cell, tree_model, iter)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        dnotify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = data = dnotify = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_tree_view_insert_column_with_data_func(to_unsafe, position, title, cell, func, data, dnotify)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def is_blank_at_pos(x : Int32, y : Int32) : Bool
      # gtk_tree_view_is_blank_at_pos: (Method)
      # @x:
      # @y:
      # @path: (out) (transfer full) (nullable) (optional)
      # @column: (out) (nullable) (optional)
      # @cell_x: (out) (transfer full) (optional)
      # @cell_y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      path = Pointer(Pointer(Void)).null   # Generator::OutArgUsedInReturnPlan
      column = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      cell_x = Pointer(Int32).null         # Generator::OutArgUsedInReturnPlan
      cell_y = Pointer(Int32).null
      # C call
      _retval = LibGtk.gtk_tree_view_is_blank_at_pos(to_unsafe, x, y, path, column, cell_x, cell_y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def is_rubber_banding_active : Bool
      # gtk_tree_view_is_rubber_banding_active: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_is_rubber_banding_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def map_expanded_rows(func : Gtk::TreeViewMappingFunc, data : Pointer(Void)?) : Nil
      # gtk_tree_view_map_expanded_rows: (Method)
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
      LibGtk.gtk_tree_view_map_expanded_rows(to_unsafe, func, data)

      # Return value handling
    end

    @[Deprecated]
    def move_column_after(column : Gtk::TreeViewColumn, base_column : Gtk::TreeViewColumn?) : Nil
      # gtk_tree_view_move_column_after: (Method)
      # @column:
      # @base_column: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      base_column = if base_column.nil?
                      Pointer(Void).null
                    else
                      base_column.to_unsafe
                    end

      # C call
      LibGtk.gtk_tree_view_move_column_after(to_unsafe, column, base_column)

      # Return value handling
    end

    @[Deprecated]
    def remove_column(column : Gtk::TreeViewColumn) : Int32
      # gtk_tree_view_remove_column: (Method)
      # @column:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_remove_column(to_unsafe, column)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def row_activated(path : Gtk::TreePath, column : Gtk::TreeViewColumn?) : Nil
      # gtk_tree_view_row_activated: (Method)
      # @path:
      # @column: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end

      # C call
      LibGtk.gtk_tree_view_row_activated(to_unsafe, path, column)

      # Return value handling
    end

    @[Deprecated]
    def row_expanded(path : Gtk::TreePath) : Bool
      # gtk_tree_view_row_expanded: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_row_expanded(to_unsafe, path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def scroll_to_cell(path : Gtk::TreePath?, column : Gtk::TreeViewColumn?, use_align : Bool, row_align : Float32, col_align : Float32) : Nil
      # gtk_tree_view_scroll_to_cell: (Method)
      # @path: (nullable)
      # @column: (nullable)
      # @use_align:
      # @row_align:
      # @col_align:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(Void).null
             else
               path.to_unsafe
             end
      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end

      # C call
      LibGtk.gtk_tree_view_scroll_to_cell(to_unsafe, path, column, use_align, row_align, col_align)

      # Return value handling
    end

    @[Deprecated]
    def scroll_to_point(tree_x : Int32, tree_y : Int32) : Nil
      # gtk_tree_view_scroll_to_point: (Method)
      # @tree_x:
      # @tree_y:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_scroll_to_point(to_unsafe, tree_x, tree_y)

      # Return value handling
    end

    @[Deprecated]
    def activate_on_single_click=(single : Bool) : Nil
      # gtk_tree_view_set_activate_on_single_click: (Method | Setter)
      # @single:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_activate_on_single_click(to_unsafe, single)

      # Return value handling
    end

    @[Deprecated]
    def column_drag_function=(func : Gtk::TreeViewColumnDropFunc?) : Nil
      # gtk_tree_view_set_column_drag_function: (Method)
      # @func: (nullable)
      # @user_data: (nullable)
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_tree_view : Pointer(Void), lib_column : Pointer(Void), lib_prev_column : Pointer(Void), lib_next_column : Pointer(Void), lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tree_view = Gtk::TreeView.new(lib_tree_view, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          column = Gtk::TreeViewColumn.new(lib_column, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          prev_column = Gtk::TreeViewColumn.new(lib_prev_column, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          next_column = Gtk::TreeViewColumn.new(lib_next_column, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Gtk::TreeViewColumn, Gtk::TreeViewColumn, Gtk::TreeViewColumn, Bool)).unbox(lib_data).call(tree_view, column, prev_column, next_column)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_view_set_column_drag_function(to_unsafe, func, user_data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def set_cursor(path : Gtk::TreePath, focus_column : Gtk::TreeViewColumn?, start_editing : Bool) : Nil
      # gtk_tree_view_set_cursor: (Method)
      # @path:
      # @focus_column: (nullable)
      # @start_editing:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      focus_column = if focus_column.nil?
                       Pointer(Void).null
                     else
                       focus_column.to_unsafe
                     end

      # C call
      LibGtk.gtk_tree_view_set_cursor(to_unsafe, path, focus_column, start_editing)

      # Return value handling
    end

    @[Deprecated]
    def set_cursor_on_cell(path : Gtk::TreePath, focus_column : Gtk::TreeViewColumn?, focus_cell : Gtk::CellRenderer?, start_editing : Bool) : Nil
      # gtk_tree_view_set_cursor_on_cell: (Method)
      # @path:
      # @focus_column: (nullable)
      # @focus_cell: (nullable)
      # @start_editing:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      focus_column = if focus_column.nil?
                       Pointer(Void).null
                     else
                       focus_column.to_unsafe
                     end
      # Generator::NullableArrayPlan
      focus_cell = if focus_cell.nil?
                     Pointer(Void).null
                   else
                     focus_cell.to_unsafe
                   end

      # C call
      LibGtk.gtk_tree_view_set_cursor_on_cell(to_unsafe, path, focus_column, focus_cell, start_editing)

      # Return value handling
    end

    @[Deprecated]
    def set_drag_dest_row(path : Gtk::TreePath?, pos : Gtk::TreeViewDropPosition) : Nil
      # gtk_tree_view_set_drag_dest_row: (Method)
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
      LibGtk.gtk_tree_view_set_drag_dest_row(to_unsafe, path, pos)

      # Return value handling
    end

    @[Deprecated]
    def enable_search=(enable_search : Bool) : Nil
      # gtk_tree_view_set_enable_search: (Method | Setter)
      # @enable_search:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_enable_search(to_unsafe, enable_search)

      # Return value handling
    end

    @[Deprecated]
    def enable_tree_lines=(enabled : Bool) : Nil
      # gtk_tree_view_set_enable_tree_lines: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_enable_tree_lines(to_unsafe, enabled)

      # Return value handling
    end

    @[Deprecated]
    def expander_column=(column : Gtk::TreeViewColumn?) : Nil
      # gtk_tree_view_set_expander_column: (Method | Setter)
      # @column: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end

      # C call
      LibGtk.gtk_tree_view_set_expander_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def fixed_height_mode=(enable : Bool) : Nil
      # gtk_tree_view_set_fixed_height_mode: (Method | Setter)
      # @enable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_fixed_height_mode(to_unsafe, enable)

      # Return value handling
    end

    @[Deprecated]
    def grid_lines=(grid_lines : Gtk::TreeViewGridLines) : Nil
      # gtk_tree_view_set_grid_lines: (Method)
      # @grid_lines:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_grid_lines(to_unsafe, grid_lines)

      # Return value handling
    end

    @[Deprecated]
    def headers_clickable=(setting : Bool) : Nil
      # gtk_tree_view_set_headers_clickable: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_headers_clickable(to_unsafe, setting)

      # Return value handling
    end

    @[Deprecated]
    def headers_visible=(headers_visible : Bool) : Nil
      # gtk_tree_view_set_headers_visible: (Method | Setter)
      # @headers_visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_headers_visible(to_unsafe, headers_visible)

      # Return value handling
    end

    @[Deprecated]
    def hover_expand=(expand : Bool) : Nil
      # gtk_tree_view_set_hover_expand: (Method | Setter)
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_hover_expand(to_unsafe, expand)

      # Return value handling
    end

    @[Deprecated]
    def hover_selection=(hover : Bool) : Nil
      # gtk_tree_view_set_hover_selection: (Method | Setter)
      # @hover:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_hover_selection(to_unsafe, hover)

      # Return value handling
    end

    @[Deprecated]
    def level_indentation=(indentation : Int32) : Nil
      # gtk_tree_view_set_level_indentation: (Method | Setter)
      # @indentation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_level_indentation(to_unsafe, indentation)

      # Return value handling
    end

    @[Deprecated]
    def model=(model : Gtk::TreeModel?) : Nil
      # gtk_tree_view_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_tree_view_set_model(to_unsafe, model)

      # Return value handling
    end

    @[Deprecated]
    def reorderable=(reorderable : Bool) : Nil
      # gtk_tree_view_set_reorderable: (Method | Setter)
      # @reorderable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_reorderable(to_unsafe, reorderable)

      # Return value handling
    end

    @[Deprecated]
    def row_separator_func=(func : Gtk::TreeViewRowSeparatorFunc?) : Nil
      # gtk_tree_view_set_row_separator_func: (Method)
      # @func: (nullable)
      # @data: (nullable)
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_model : Pointer(Void), lib_iter : Pointer(Void), lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)).unbox(lib_data).call(model, iter)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_view_set_row_separator_func(to_unsafe, func, data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def rubber_banding=(enable : Bool) : Nil
      # gtk_tree_view_set_rubber_banding: (Method | Setter)
      # @enable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_rubber_banding(to_unsafe, enable)

      # Return value handling
    end

    @[Deprecated]
    def search_column=(column : Int32) : Nil
      # gtk_tree_view_set_search_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_search_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def search_entry=(entry : Gtk::Editable?) : Nil
      # gtk_tree_view_set_search_entry: (Method)
      # @entry: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      entry = if entry.nil?
                Pointer(Void).null
              else
                entry.to_unsafe
              end

      # C call
      LibGtk.gtk_tree_view_set_search_entry(to_unsafe, entry)

      # Return value handling
    end

    @[Deprecated]
    def search_equal_func=(search_equal_func : Gtk::TreeViewSearchEqualFunc) : Nil
      # gtk_tree_view_set_search_equal_func: (Method)
      # @search_equal_func:
      # @search_user_data: (nullable)
      # @search_destroy: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if search_equal_func
        _box = ::Box.box(search_equal_func)
        search_equal_func = ->(lib_model : Pointer(Void), lib_column : Int32, lib_key : Pointer(LibC::Char), lib_iter : Pointer(Void), lib_search_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # NoStrategy
          column = lib_column
          # Generator::BuiltInTypeArgPlan
          key = ::String.new(lib_key)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Int32, ::String, Gtk::TreeIter, Bool)).unbox(lib_search_data).call(model, column, key, iter)
        }.pointer
        search_user_data = GICrystal::ClosureDataManager.register(_box)
        search_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        search_equal_func = search_user_data = search_destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_view_set_search_equal_func(to_unsafe, search_equal_func, search_user_data, search_destroy)

      # Return value handling
    end

    @[Deprecated]
    def show_expanders=(enabled : Bool) : Nil
      # gtk_tree_view_set_show_expanders: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_show_expanders(to_unsafe, enabled)

      # Return value handling
    end

    @[Deprecated]
    def set_tooltip_cell(tooltip : Gtk::Tooltip, path : Gtk::TreePath?, column : Gtk::TreeViewColumn?, cell : Gtk::CellRenderer?) : Nil
      # gtk_tree_view_set_tooltip_cell: (Method)
      # @tooltip:
      # @path: (nullable)
      # @column: (nullable)
      # @cell: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(Void).null
             else
               path.to_unsafe
             end
      # Generator::NullableArrayPlan
      column = if column.nil?
                 Pointer(Void).null
               else
                 column.to_unsafe
               end
      # Generator::NullableArrayPlan
      cell = if cell.nil?
               Pointer(Void).null
             else
               cell.to_unsafe
             end

      # C call
      LibGtk.gtk_tree_view_set_tooltip_cell(to_unsafe, tooltip, path, column, cell)

      # Return value handling
    end

    @[Deprecated]
    def tooltip_column=(column : Int32) : Nil
      # gtk_tree_view_set_tooltip_column: (Method | Setter)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_tooltip_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def set_tooltip_row(tooltip : Gtk::Tooltip, path : Gtk::TreePath) : Nil
      # gtk_tree_view_set_tooltip_row: (Method)
      # @tooltip:
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_set_tooltip_row(to_unsafe, tooltip, path)

      # Return value handling
    end

    @[Deprecated]
    def unset_rows_drag_dest : Nil
      # gtk_tree_view_unset_rows_drag_dest: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_unset_rows_drag_dest(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def unset_rows_drag_source : Nil
      # gtk_tree_view_unset_rows_drag_source: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_unset_rows_drag_source(to_unsafe)

      # Return value handling
    end

    struct ColumnsChangedSignal < GObject::Signal
      def name : String
        @detail ? "columns-changed::#{@detail}" : "columns-changed"
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

      def connect(handler : Proc(Gtk::TreeView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "columns-changed")
      end
    end

    def columns_changed_signal
      ColumnsChangedSignal.new(self)
    end

    struct CursorChangedSignal < GObject::Signal
      def name : String
        @detail ? "cursor-changed::#{@detail}" : "cursor-changed"
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

      def connect(handler : Proc(Gtk::TreeView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "cursor-changed")
      end
    end

    def cursor_changed_signal
      CursorChangedSignal.new(self)
    end

    struct ExpandCollapseCursorRowSignal < GObject::Signal
      def name : String
        @detail ? "expand-collapse-cursor-row::#{@detail}" : "expand-collapse-cursor-row"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Bool, Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Bool, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : LibC::Int, lib_p0 : LibC::Int, lib_p1 : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = GICrystal.to_bool(lib_object)
          # Generator::BuiltInTypeArgPlan
          p0 = GICrystal.to_bool(lib_p0)
          # Generator::BuiltInTypeArgPlan
          p1 = GICrystal.to_bool(lib_p1)
          ::Box(Proc(Bool, Bool, Bool, Bool)).unbox(_lib_box).call(object, p0, p1)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Bool, Bool, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : LibC::Int, lib_p0 : LibC::Int, lib_p1 : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = GICrystal.to_bool(lib_object)
          # Generator::BuiltInTypeArgPlan
          p0 = GICrystal.to_bool(lib_p0)
          # Generator::BuiltInTypeArgPlan
          p1 = GICrystal.to_bool(lib_p1)
          ::Box(Proc(Gtk::TreeView, Bool, Bool, Bool, Bool)).unbox(_lib_box).call(_sender, object, p0, p1)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : Bool, p0 : Bool, p1 : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "expand-collapse-cursor-row", object, p0, p1)
      end
    end

    def expand_collapse_cursor_row_signal
      ExpandCollapseCursorRowSignal.new(self)
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
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_direction : Int32, lib__extend : LibC::Int, lib_modify : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          direction = lib_direction
          # Generator::BuiltInTypeArgPlan
          _extend = GICrystal.to_bool(lib__extend)
          # Generator::BuiltInTypeArgPlan
          modify = GICrystal.to_bool(lib_modify)
          ::Box(Proc(Gtk::MovementStep, Int32, Bool, Bool, Bool)).unbox(_lib_box).call(step, direction, _extend, modify)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Gtk::MovementStep, Int32, Bool, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_direction : Int32, lib__extend : LibC::Int, lib_modify : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          direction = lib_direction
          # Generator::BuiltInTypeArgPlan
          _extend = GICrystal.to_bool(lib__extend)
          # Generator::BuiltInTypeArgPlan
          modify = GICrystal.to_bool(lib_modify)
          ::Box(Proc(Gtk::TreeView, Gtk::MovementStep, Int32, Bool, Bool, Bool)).unbox(_lib_box).call(_sender, step, direction, _extend, modify)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(step : Gtk::MovementStep, direction : Int32, extend _extend : Bool, modify : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-cursor", step, direction, _extend, modify)
      end
    end

    def move_cursor_signal
      MoveCursorSignal.new(self)
    end

    struct RowActivatedSignal < GObject::Signal
      def name : String
        @detail ? "row-activated::#{@detail}" : "row-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreePath, Gtk::TreeViewColumn?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreePath, Gtk::TreeViewColumn?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_column : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          column = (lib_column.null? ? nil : Gtk::TreeViewColumn.new(lib_column, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          column = Gtk::TreeViewColumn.new(lib_column, GICrystal::Transfer::None) unless lib_column.null?
          ::Box(Proc(Gtk::TreePath, Gtk::TreeViewColumn?, Nil)).unbox(_lib_box).call(path, column)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Gtk::TreePath, Gtk::TreeViewColumn?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_column : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          column = (lib_column.null? ? nil : Gtk::TreeViewColumn.new(lib_column, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          column = Gtk::TreeViewColumn.new(lib_column, GICrystal::Transfer::None) unless lib_column.null?
          ::Box(Proc(Gtk::TreeView, Gtk::TreePath, Gtk::TreeViewColumn?, Nil)).unbox(_lib_box).call(_sender, path, column)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(path : Gtk::TreePath, column : Gtk::TreeViewColumn?) : Nil
        # Generator::NullableArrayPlan
        column = if column.nil?
                   Void.null
                 else
                   column.to_unsafe
                 end

        LibGObject.g_signal_emit_by_name(@source, "row-activated", path, column)
      end
    end

    def row_activated_signal
      RowActivatedSignal.new(self)
    end

    struct RowCollapsedSignal < GObject::Signal
      def name : String
        @detail ? "row-collapsed::#{@detail}" : "row-collapsed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreeIter, Gtk::TreePath, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreeIter, Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeIter, Gtk::TreePath, Nil)).unbox(_lib_box).call(iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Nil)).unbox(_lib_box).call(_sender, iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(iter : Gtk::TreeIter, path : Gtk::TreePath) : Nil
        LibGObject.g_signal_emit_by_name(@source, "row-collapsed", iter, path)
      end
    end

    def row_collapsed_signal
      RowCollapsedSignal.new(self)
    end

    struct RowExpandedSignal < GObject::Signal
      def name : String
        @detail ? "row-expanded::#{@detail}" : "row-expanded"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreeIter, Gtk::TreePath, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreeIter, Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeIter, Gtk::TreePath, Nil)).unbox(_lib_box).call(iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Nil)).unbox(_lib_box).call(_sender, iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(iter : Gtk::TreeIter, path : Gtk::TreePath) : Nil
        LibGObject.g_signal_emit_by_name(@source, "row-expanded", iter, path)
      end
    end

    def row_expanded_signal
      RowExpandedSignal.new(self)
    end

    struct SelectAllSignal < GObject::Signal
      def name : String
        @detail ? "select-all::#{@detail}" : "select-all"
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

      def connect(handler : Proc(Gtk::TreeView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Bool)).unbox(_lib_box).call(_sender)
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

    struct SelectCursorParentSignal < GObject::Signal
      def name : String
        @detail ? "select-cursor-parent::#{@detail}" : "select-cursor-parent"
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

      def connect(handler : Proc(Gtk::TreeView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "select-cursor-parent")
      end
    end

    def select_cursor_parent_signal
      SelectCursorParentSignal.new(self)
    end

    struct SelectCursorRowSignal < GObject::Signal
      def name : String
        @detail ? "select-cursor-row::#{@detail}" : "select-cursor-row"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object = GICrystal.to_bool(lib_object)
          ::Box(Proc(Bool, Bool)).unbox(_lib_box).call(object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object = GICrystal.to_bool(lib_object)
          ::Box(Proc(Gtk::TreeView, Bool, Bool)).unbox(_lib_box).call(_sender, object)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "select-cursor-row", object)
      end
    end

    def select_cursor_row_signal
      SelectCursorRowSignal.new(self)
    end

    struct StartInteractiveSearchSignal < GObject::Signal
      def name : String
        @detail ? "start-interactive-search::#{@detail}" : "start-interactive-search"
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

      def connect(handler : Proc(Gtk::TreeView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "start-interactive-search")
      end
    end

    def start_interactive_search_signal
      StartInteractiveSearchSignal.new(self)
    end

    struct TestCollapseRowSignal < GObject::Signal
      def name : String
        @detail ? "test-collapse-row::#{@detail}" : "test-collapse-row"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreeIter, Gtk::TreePath, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreeIter, Gtk::TreePath, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeIter, Gtk::TreePath, Bool)).unbox(_lib_box).call(iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Bool)).unbox(_lib_box).call(_sender, iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(iter : Gtk::TreeIter, path : Gtk::TreePath) : Nil
        LibGObject.g_signal_emit_by_name(@source, "test-collapse-row", iter, path)
      end
    end

    def test_collapse_row_signal
      TestCollapseRowSignal.new(self)
    end

    struct TestExpandRowSignal < GObject::Signal
      def name : String
        @detail ? "test-expand-row::#{@detail}" : "test-expand-row"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreeIter, Gtk::TreePath, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreeIter, Gtk::TreePath, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeIter, Gtk::TreePath, Bool)).unbox(_lib_box).call(iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_iter : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Gtk::TreeIter, Gtk::TreePath, Bool)).unbox(_lib_box).call(_sender, iter, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(iter : Gtk::TreeIter, path : Gtk::TreePath) : Nil
        LibGObject.g_signal_emit_by_name(@source, "test-expand-row", iter, path)
      end
    end

    def test_expand_row_signal
      TestExpandRowSignal.new(self)
    end

    struct ToggleCursorRowSignal < GObject::Signal
      def name : String
        @detail ? "toggle-cursor-row::#{@detail}" : "toggle-cursor-row"
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

      def connect(handler : Proc(Gtk::TreeView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "toggle-cursor-row")
      end
    end

    def toggle_cursor_row_signal
      ToggleCursorRowSignal.new(self)
    end

    struct UnselectAllSignal < GObject::Signal
      def name : String
        @detail ? "unselect-all::#{@detail}" : "unselect-all"
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

      def connect(handler : Proc(Gtk::TreeView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeView, Bool)).unbox(_lib_box).call(_sender)
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

    # columns_changed: (None)
    # Returns: (transfer none)
    private macro _register_columns_changed_vfunc(impl_method_name)
      private def self._vfunc_columns_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_columns_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # columns_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_columns_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_columns_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_columns_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_columns_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_columns_changed : Proc(Pointer(Void), Void)? = nil
    end

    # cursor_changed: (None)
    # Returns: (transfer none)
    private macro _register_cursor_changed_vfunc(impl_method_name)
      private def self._vfunc_cursor_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 456).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_cursor_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # cursor_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_cursor_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_cursor_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 456).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_cursor_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_cursor_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_cursor_changed : Proc(Pointer(Void), Void)? = nil
    end

    # expand_collapse_cursor_row: (None)
    # @logical:
    # @expand:
    # @open_all:
    # Returns: (transfer none)
    private macro _register_expand_collapse_cursor_row_vfunc(impl_method_name)
      private def self._vfunc_expand_collapse_cursor_row(%this : Pointer(Void), lib_logical :  LibC::Int, lib_expand :  LibC::Int, lib_open_all :  LibC::Int, ) : LibC::Int
        # @logical: 
# @expand: 
# @open_all: 

# Generator::BuiltInTypeArgPlan
logical=GICrystal.to_bool(lib_logical)
# Generator::BuiltInTypeArgPlan
expand=GICrystal.to_bool(lib_expand)
# Generator::BuiltInTypeArgPlan
open_all=GICrystal.to_bool(lib_open_all)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(logical, expand, open_all)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_expand_collapse_cursor_row(Pointer(Void), LibC::Int, LibC::Int, LibC::Int)).pointer
        previous_def
      end
    end

    # expand_collapse_cursor_row: (None)
    # @logical:
    # @expand:
    # @open_all:
    # Returns: (transfer none)
    private macro _register_unsafe_expand_collapse_cursor_row_vfunc(impl_method_name)
      private def self._vfunc_unsafe_expand_collapse_cursor_row(%this : Pointer(Void), lib_logical :  LibC::Int, lib_expand :  LibC::Int, lib_open_all :  LibC::Int, ) : LibC::Int
# @logical: 
# @expand: 
# @open_all: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_logical, lib_expand, lib_open_all)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_expand_collapse_cursor_row = Proc(Pointer(Void), LibC::Int, LibC::Int, LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_expand_collapse_cursor_row(Pointer(Void), LibC::Int, LibC::Int, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_expand_collapse_cursor_row : Proc(Pointer(Void), LibC::Int, LibC::Int, LibC::Int, LibC::Int)? = nil
    end

    # move_cursor: (None)
    # @step:
    # @count:
    # @extend:
    # @modify:
    # Returns: (transfer none)
    private macro _register_move_cursor_vfunc(impl_method_name)
      private def self._vfunc_move_cursor(%this : Pointer(Void), lib_step :  UInt32, lib_count :  Int32, lib__extend :  LibC::Int, lib_modify :  LibC::Int, ) : LibC::Int
        # @step: 
# @count: 
# @extend: 
# @modify: 

# Generator::BuiltInTypeArgPlan
step=Gtk::MovementStep.new(lib_step)
count=lib_count
# Generator::BuiltInTypeArgPlan
_extend=GICrystal.to_bool(lib__extend)
# Generator::BuiltInTypeArgPlan
modify=GICrystal.to_bool(lib_modify)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(step, count, _extend, modify)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_move_cursor(Pointer(Void), UInt32, Int32, LibC::Int, LibC::Int)).pointer
        previous_def
      end
    end

    # move_cursor: (None)
    # @step:
    # @count:
    # @extend:
    # @modify:
    # Returns: (transfer none)
    private macro _register_unsafe_move_cursor_vfunc(impl_method_name)
      private def self._vfunc_unsafe_move_cursor(%this : Pointer(Void), lib_step :  UInt32, lib_count :  Int32, lib__extend :  LibC::Int, lib_modify :  LibC::Int, ) : LibC::Int
# @step: 
# @count: 
# @extend: 
# @modify: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_step, lib_count, lib__extend, lib_modify)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_move_cursor = Proc(Pointer(Void), UInt32, Int32, LibC::Int, LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_move_cursor(Pointer(Void), UInt32, Int32, LibC::Int, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_move_cursor : Proc(Pointer(Void), UInt32, Int32, LibC::Int, LibC::Int, LibC::Int)? = nil
    end

    # row_activated: (None)
    # @path:
    # @column: (nullable)
    # Returns: (transfer none)
    private macro _register_row_activated_vfunc(impl_method_name)
      private def self._vfunc_row_activated(%this : Pointer(Void), lib_path :  Pointer(Void), lib_column :  Pointer(Void), ) : Void
        # @path: 
# @column: (nullable) 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
column=(lib_column.null? ? nil : Gtk::TreeViewColumn.new(lib_column, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
column=Gtk::TreeViewColumn.new(lib_column, GICrystal::Transfer::None) unless lib_column.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path, column)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_activated(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_activated: (None)
    # @path:
    # @column: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_row_activated_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_activated(%this : Pointer(Void), lib_path :  Pointer(Void), lib_column :  Pointer(Void), ) : Void
# @path: 
# @column: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path, lib_column)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_activated = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_activated(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_activated : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # row_collapsed: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_row_collapsed_vfunc(impl_method_name)
      private def self._vfunc_row_collapsed(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : Void
        # @iter: 
# @path: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, path)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_collapsed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_collapsed: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_row_collapsed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_collapsed(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : Void
# @iter: 
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_collapsed = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_collapsed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_collapsed : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # row_expanded: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_row_expanded_vfunc(impl_method_name)
      private def self._vfunc_row_expanded(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : Void
        # @iter: 
# @path: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, path)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_expanded(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_expanded: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_row_expanded_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_expanded(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : Void
# @iter: 
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_expanded = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_expanded(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_expanded : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # select_all: (None)
    # Returns: (transfer none)
    private macro _register_select_all_vfunc(impl_method_name)
      private def self._vfunc_select_all(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_select_all(Pointer(Void))).pointer
        previous_def
      end
    end

    # select_all: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_select_all_vfunc(impl_method_name)
      private def self._vfunc_unsafe_select_all(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_select_all = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_select_all(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_select_all : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # select_cursor_parent: (None)
    # Returns: (transfer none)
    private macro _register_select_cursor_parent_vfunc(impl_method_name)
      private def self._vfunc_select_cursor_parent(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_select_cursor_parent(Pointer(Void))).pointer
        previous_def
      end
    end

    # select_cursor_parent: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_select_cursor_parent_vfunc(impl_method_name)
      private def self._vfunc_unsafe_select_cursor_parent(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_select_cursor_parent = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_select_cursor_parent(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_select_cursor_parent : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # select_cursor_row: (None)
    # @start_editing:
    # Returns: (transfer none)
    private macro _register_select_cursor_row_vfunc(impl_method_name)
      private def self._vfunc_select_cursor_row(%this : Pointer(Void), lib_start_editing :  LibC::Int, ) : LibC::Int
        # @start_editing: 

# Generator::BuiltInTypeArgPlan
start_editing=GICrystal.to_bool(lib_start_editing)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start_editing)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_select_cursor_row(Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # select_cursor_row: (None)
    # @start_editing:
    # Returns: (transfer none)
    private macro _register_unsafe_select_cursor_row_vfunc(impl_method_name)
      private def self._vfunc_unsafe_select_cursor_row(%this : Pointer(Void), lib_start_editing :  LibC::Int, ) : LibC::Int
# @start_editing: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start_editing)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_select_cursor_row = Proc(Pointer(Void), LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_select_cursor_row(Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_select_cursor_row : Proc(Pointer(Void), LibC::Int, LibC::Int)? = nil
    end

    # start_interactive_search: (None)
    # Returns: (transfer none)
    private macro _register_start_interactive_search_vfunc(impl_method_name)
      private def self._vfunc_start_interactive_search(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 520).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_start_interactive_search(Pointer(Void))).pointer
        previous_def
      end
    end

    # start_interactive_search: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_start_interactive_search_vfunc(impl_method_name)
      private def self._vfunc_unsafe_start_interactive_search(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 520).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_start_interactive_search = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_start_interactive_search(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_start_interactive_search : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # test_collapse_row: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_test_collapse_row_vfunc(impl_method_name)
      private def self._vfunc_test_collapse_row(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
        # @iter: 
# @path: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, path)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_test_collapse_row(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # test_collapse_row: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_test_collapse_row_vfunc(impl_method_name)
      private def self._vfunc_unsafe_test_collapse_row(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
# @iter: 
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_test_collapse_row = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_test_collapse_row(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_test_collapse_row : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # test_expand_row: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_test_expand_row_vfunc(impl_method_name)
      private def self._vfunc_test_expand_row(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
        # @iter: 
# @path: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, path)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_test_expand_row(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # test_expand_row: (None)
    # @iter:
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_test_expand_row_vfunc(impl_method_name)
      private def self._vfunc_unsafe_test_expand_row(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
# @iter: 
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_test_expand_row = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_test_expand_row(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_test_expand_row : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # toggle_cursor_row: (None)
    # Returns: (transfer none)
    private macro _register_toggle_cursor_row_vfunc(impl_method_name)
      private def self._vfunc_toggle_cursor_row(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_toggle_cursor_row(Pointer(Void))).pointer
        previous_def
      end
    end

    # toggle_cursor_row: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_toggle_cursor_row_vfunc(impl_method_name)
      private def self._vfunc_unsafe_toggle_cursor_row(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_toggle_cursor_row = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_toggle_cursor_row(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_toggle_cursor_row : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # unselect_all: (None)
    # Returns: (transfer none)
    private macro _register_unselect_all_vfunc(impl_method_name)
      private def self._vfunc_unselect_all(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 480).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unselect_all(Pointer(Void))).pointer
        previous_def
      end
    end

    # unselect_all: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_unselect_all_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unselect_all(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 480).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unselect_all = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unselect_all(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unselect_all : Proc(Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
