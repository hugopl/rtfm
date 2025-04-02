require "../g_object-2.0/initially_unowned"
require "./buildable"

require "./cell_layout"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeViewColumn < GObject::InitiallyUnowned
    include Buildable
    include CellLayout

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TreeViewColumn, g_object_get_qdata)

    # Initialize a new `TreeViewColumn`.
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

    def initialize(*, alignment : Float32? = nil, cell_area : Gtk::CellArea? = nil, clickable : Bool? = nil, expand : Bool? = nil, fixed_width : Int32? = nil, max_width : Int32? = nil, min_width : Int32? = nil, reorderable : Bool? = nil, resizable : Bool? = nil, sizing : Gtk::TreeViewColumnSizing? = nil, sort_column_id : Int32? = nil, sort_indicator : Bool? = nil, sort_order : Gtk::SortType? = nil, spacing : Int32? = nil, title : ::String? = nil, visible : Bool? = nil, widget : Gtk::Widget? = nil, width : Int32? = nil, x_offset : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[19]
      _values = StaticArray(LibGObject::Value, 19).new(LibGObject::Value.new)
      _n = 0

      if !alignment.nil?
        (_names.to_unsafe + _n).value = "alignment".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, alignment)
        _n += 1
      end
      if !cell_area.nil?
        (_names.to_unsafe + _n).value = "cell-area".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cell_area)
        _n += 1
      end
      if !clickable.nil?
        (_names.to_unsafe + _n).value = "clickable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, clickable)
        _n += 1
      end
      if !expand.nil?
        (_names.to_unsafe + _n).value = "expand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, expand)
        _n += 1
      end
      if !fixed_width.nil?
        (_names.to_unsafe + _n).value = "fixed-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fixed_width)
        _n += 1
      end
      if !max_width.nil?
        (_names.to_unsafe + _n).value = "max-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_width)
        _n += 1
      end
      if !min_width.nil?
        (_names.to_unsafe + _n).value = "min-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_width)
        _n += 1
      end
      if !reorderable.nil?
        (_names.to_unsafe + _n).value = "reorderable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reorderable)
        _n += 1
      end
      if !resizable.nil?
        (_names.to_unsafe + _n).value = "resizable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resizable)
        _n += 1
      end
      if !sizing.nil?
        (_names.to_unsafe + _n).value = "sizing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sizing)
        _n += 1
      end
      if !sort_column_id.nil?
        (_names.to_unsafe + _n).value = "sort-column-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sort_column_id)
        _n += 1
      end
      if !sort_indicator.nil?
        (_names.to_unsafe + _n).value = "sort-indicator".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sort_indicator)
        _n += 1
      end
      if !sort_order.nil?
        (_names.to_unsafe + _n).value = "sort-order".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sort_order)
        _n += 1
      end
      if !spacing.nil?
        (_names.to_unsafe + _n).value = "spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, spacing)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !widget.nil?
        (_names.to_unsafe + _n).value = "widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, widget)
        _n += 1
      end
      if !width.nil?
        (_names.to_unsafe + _n).value = "width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width)
        _n += 1
      end
      if !x_offset.nil?
        (_names.to_unsafe + _n).value = "x-offset".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, x_offset)
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
      @@g_type ||= LibGtk.gtk_tree_view_column_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeViewColumn.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def alignment=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "alignment", unsafe_value, Pointer(Void).null)
      value
    end

    def alignment : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "alignment", pointerof(value), Pointer(Void).null)
      value
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

    def clickable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "clickable", unsafe_value, Pointer(Void).null)
      value
    end

    def clickable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "clickable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def expand=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "expand", unsafe_value, Pointer(Void).null)
      value
    end

    def expand? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "expand", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def fixed_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "fixed-width", unsafe_value, Pointer(Void).null)
      value
    end

    def fixed_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "fixed-width", pointerof(value), Pointer(Void).null)
      value
    end

    def max_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-width", unsafe_value, Pointer(Void).null)
      value
    end

    def max_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-width", pointerof(value), Pointer(Void).null)
      value
    end

    def min_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "min-width", unsafe_value, Pointer(Void).null)
      value
    end

    def min_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "min-width", pointerof(value), Pointer(Void).null)
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

    def resizable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "resizable", unsafe_value, Pointer(Void).null)
      value
    end

    def resizable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "resizable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sizing=(value : Gtk::TreeViewColumnSizing) : Gtk::TreeViewColumnSizing
      unsafe_value = value

      LibGObject.g_object_set(self, "sizing", unsafe_value, Pointer(Void).null)
      value
    end

    def sizing : Gtk::TreeViewColumnSizing
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "sizing", pointerof(value), Pointer(Void).null)
      Gtk::TreeViewColumnSizing.new(value)
    end

    def sort_column_id=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "sort-column-id", unsafe_value, Pointer(Void).null)
      value
    end

    def sort_column_id : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "sort-column-id", pointerof(value), Pointer(Void).null)
      value
    end

    def sort_indicator=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "sort-indicator", unsafe_value, Pointer(Void).null)
      value
    end

    def sort_indicator? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "sort-indicator", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sort_order=(value : Gtk::SortType) : Gtk::SortType
      unsafe_value = value

      LibGObject.g_object_set(self, "sort-order", unsafe_value, Pointer(Void).null)
      value
    end

    def sort_order : Gtk::SortType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "sort-order", pointerof(value), Pointer(Void).null)
      Gtk::SortType.new(value)
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

    def widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "widget", unsafe_value, Pointer(Void).null)
      value
    end

    def widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width", pointerof(value), Pointer(Void).null)
      value
    end

    def x_offset : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "x-offset", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def self.new : self
      # gtk_tree_view_column_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_new

      # Return value handling
      Gtk::TreeViewColumn.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_area(area : Gtk::CellArea) : self
      # gtk_tree_view_column_new_with_area: (Constructor)
      # @area:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_new_with_area(area)

      # Return value handling
      Gtk::TreeViewColumn.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def add_attribute(cell_renderer : Gtk::CellRenderer, attribute : ::String, column : Int32) : Nil
      # gtk_tree_view_column_add_attribute: (Method)
      # @cell_renderer:
      # @attribute:
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_add_attribute(to_unsafe, cell_renderer, attribute, column)

      # Return value handling
    end

    @[Deprecated]
    def cell_get_position(cell_renderer : Gtk::CellRenderer) : Bool
      # gtk_tree_view_column_cell_get_position: (Method)
      # @cell_renderer:
      # @x_offset: (out) (transfer full) (optional)
      # @width: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x_offset = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null
      # C call
      _retval = LibGtk.gtk_tree_view_column_cell_get_position(to_unsafe, cell_renderer, x_offset, width)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def cell_get_size : Nil
      # gtk_tree_view_column_cell_get_size: (Method)
      # @x_offset: (out) (transfer full) (optional)
      # @y_offset: (out) (transfer full) (optional)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x_offset = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      y_offset = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null    # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_tree_view_column_cell_get_size(to_unsafe, x_offset, y_offset, width, height)

      # Return value handling
    end

    @[Deprecated]
    def cell_is_visible : Bool
      # gtk_tree_view_column_cell_is_visible: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_cell_is_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def cell_set_cell_data(tree_model : Gtk::TreeModel, iter : Gtk::TreeIter, is_expander : Bool, is_expanded : Bool) : Nil
      # gtk_tree_view_column_cell_set_cell_data: (Method)
      # @tree_model:
      # @iter:
      # @is_expander:
      # @is_expanded:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_cell_set_cell_data(to_unsafe, tree_model, iter, is_expander, is_expanded)

      # Return value handling
    end

    @[Deprecated]
    def clear : Nil
      # gtk_tree_view_column_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_clear(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def clear_attributes(cell_renderer : Gtk::CellRenderer) : Nil
      # gtk_tree_view_column_clear_attributes: (Method)
      # @cell_renderer:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_clear_attributes(to_unsafe, cell_renderer)

      # Return value handling
    end

    @[Deprecated]
    def clicked : Nil
      # gtk_tree_view_column_clicked: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_clicked(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def focus_cell(cell : Gtk::CellRenderer) : Nil
      # gtk_tree_view_column_focus_cell: (Method)
      # @cell:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_focus_cell(to_unsafe, cell)

      # Return value handling
    end

    @[Deprecated]
    def alignment : Float32
      # gtk_tree_view_column_get_alignment: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_alignment(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def button : Gtk::Widget
      # gtk_tree_view_column_get_button: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_button(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def clickable : Bool
      # gtk_tree_view_column_get_clickable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_clickable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def expand : Bool
      # gtk_tree_view_column_get_expand: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_expand(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def fixed_width : Int32
      # gtk_tree_view_column_get_fixed_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_fixed_width(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def max_width : Int32
      # gtk_tree_view_column_get_max_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_max_width(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def min_width : Int32
      # gtk_tree_view_column_get_min_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_min_width(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def reorderable : Bool
      # gtk_tree_view_column_get_reorderable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_reorderable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def resizable : Bool
      # gtk_tree_view_column_get_resizable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_resizable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def sizing : Gtk::TreeViewColumnSizing
      # gtk_tree_view_column_get_sizing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_sizing(to_unsafe)

      # Return value handling
      Gtk::TreeViewColumnSizing.new(_retval)
    end

    @[Deprecated]
    def sort_column_id : Int32
      # gtk_tree_view_column_get_sort_column_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_sort_column_id(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def sort_indicator : Bool
      # gtk_tree_view_column_get_sort_indicator: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_sort_indicator(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def sort_order : Gtk::SortType
      # gtk_tree_view_column_get_sort_order: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_sort_order(to_unsafe)

      # Return value handling
      Gtk::SortType.new(_retval)
    end

    @[Deprecated]
    def spacing : Int32
      # gtk_tree_view_column_get_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def title : ::String
      # gtk_tree_view_column_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def tree_view : Gtk::Widget?
      # gtk_tree_view_column_get_tree_view: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_tree_view(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def visible : Bool
      # gtk_tree_view_column_get_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def widget : Gtk::Widget?
      # gtk_tree_view_column_get_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def width : Int32
      # gtk_tree_view_column_get_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def x_offset : Int32
      # gtk_tree_view_column_get_x_offset: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_view_column_get_x_offset(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def pack_end(cell : Gtk::CellRenderer, expand : Bool) : Nil
      # gtk_tree_view_column_pack_end: (Method)
      # @cell:
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_pack_end(to_unsafe, cell, expand)

      # Return value handling
    end

    @[Deprecated]
    def pack_start(cell : Gtk::CellRenderer, expand : Bool) : Nil
      # gtk_tree_view_column_pack_start: (Method)
      # @cell:
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_pack_start(to_unsafe, cell, expand)

      # Return value handling
    end

    @[Deprecated]
    def queue_resize : Nil
      # gtk_tree_view_column_queue_resize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_queue_resize(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def alignment=(xalign : Float32) : Nil
      # gtk_tree_view_column_set_alignment: (Method | Setter)
      # @xalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_alignment(to_unsafe, xalign)

      # Return value handling
    end

    @[Deprecated]
    def set_cell_data_func(cell_renderer : Gtk::CellRenderer, func : Gtk::TreeCellDataFunc?) : Nil
      # gtk_tree_view_column_set_cell_data_func: (Method)
      # @cell_renderer:
      # @func: (nullable)
      # @func_data: (nullable)
      # @destroy:
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
        func_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = func_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_view_column_set_cell_data_func(to_unsafe, cell_renderer, func, func_data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def clickable=(clickable : Bool) : Nil
      # gtk_tree_view_column_set_clickable: (Method | Setter)
      # @clickable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_clickable(to_unsafe, clickable)

      # Return value handling
    end

    @[Deprecated]
    def expand=(expand : Bool) : Nil
      # gtk_tree_view_column_set_expand: (Method | Setter)
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_expand(to_unsafe, expand)

      # Return value handling
    end

    @[Deprecated]
    def fixed_width=(fixed_width : Int32) : Nil
      # gtk_tree_view_column_set_fixed_width: (Method | Setter)
      # @fixed_width:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_fixed_width(to_unsafe, fixed_width)

      # Return value handling
    end

    @[Deprecated]
    def max_width=(max_width : Int32) : Nil
      # gtk_tree_view_column_set_max_width: (Method | Setter)
      # @max_width:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_max_width(to_unsafe, max_width)

      # Return value handling
    end

    @[Deprecated]
    def min_width=(min_width : Int32) : Nil
      # gtk_tree_view_column_set_min_width: (Method | Setter)
      # @min_width:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_min_width(to_unsafe, min_width)

      # Return value handling
    end

    @[Deprecated]
    def reorderable=(reorderable : Bool) : Nil
      # gtk_tree_view_column_set_reorderable: (Method | Setter)
      # @reorderable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_reorderable(to_unsafe, reorderable)

      # Return value handling
    end

    @[Deprecated]
    def resizable=(resizable : Bool) : Nil
      # gtk_tree_view_column_set_resizable: (Method | Setter)
      # @resizable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_resizable(to_unsafe, resizable)

      # Return value handling
    end

    @[Deprecated]
    def sizing=(type : Gtk::TreeViewColumnSizing) : Nil
      # gtk_tree_view_column_set_sizing: (Method | Setter)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_sizing(to_unsafe, type)

      # Return value handling
    end

    @[Deprecated]
    def sort_column_id=(sort_column_id : Int32) : Nil
      # gtk_tree_view_column_set_sort_column_id: (Method | Setter)
      # @sort_column_id:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_sort_column_id(to_unsafe, sort_column_id)

      # Return value handling
    end

    @[Deprecated]
    def sort_indicator=(setting : Bool) : Nil
      # gtk_tree_view_column_set_sort_indicator: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_sort_indicator(to_unsafe, setting)

      # Return value handling
    end

    @[Deprecated]
    def sort_order=(order : Gtk::SortType) : Nil
      # gtk_tree_view_column_set_sort_order: (Method | Setter)
      # @order:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_sort_order(to_unsafe, order)

      # Return value handling
    end

    @[Deprecated]
    def spacing=(spacing : Int32) : Nil
      # gtk_tree_view_column_set_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_spacing(to_unsafe, spacing)

      # Return value handling
    end

    @[Deprecated]
    def title=(title : ::String) : Nil
      # gtk_tree_view_column_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_title(to_unsafe, title)

      # Return value handling
    end

    @[Deprecated]
    def visible=(visible : Bool) : Nil
      # gtk_tree_view_column_set_visible: (Method | Setter)
      # @visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_view_column_set_visible(to_unsafe, visible)

      # Return value handling
    end

    @[Deprecated]
    def widget=(widget : Gtk::Widget?) : Nil
      # gtk_tree_view_column_set_widget: (Method | Setter)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_tree_view_column_set_widget(to_unsafe, widget)

      # Return value handling
    end

    struct ClickedSignal < GObject::Signal
      def name : String
        @detail ? "clicked::#{@detail}" : "clicked"
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

      def connect(handler : Proc(Gtk::TreeViewColumn, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::TreeViewColumn.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeViewColumn, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "clicked")
      end
    end

    def clicked_signal
      ClickedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
