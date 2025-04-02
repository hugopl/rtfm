require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Grid < Widget
    include Accessible
    include Buildable
    include ConstraintTarget
    include Orientable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GridClass), class_init,
        sizeof(LibGtk::Grid), instance_init, 0)
    end

    GICrystal.declare_new_method(Grid, g_object_get_qdata)

    # Initialize a new `Grid`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, baseline_row : Int32? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, column_homogeneous : Bool? = nil, column_spacing : Int32? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, row_homogeneous : Bool? = nil, row_spacing : Int32? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[42]
      _values = StaticArray(LibGObject::Value, 42).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !baseline_row.nil?
        (_names.to_unsafe + _n).value = "baseline-row".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, baseline_row)
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
      if !column_homogeneous.nil?
        (_names.to_unsafe + _n).value = "column-homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column_homogeneous)
        _n += 1
      end
      if !column_spacing.nil?
        (_names.to_unsafe + _n).value = "column-spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, column_spacing)
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
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
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
      if !row_homogeneous.nil?
        (_names.to_unsafe + _n).value = "row-homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, row_homogeneous)
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
      @@g_type ||= LibGtk.gtk_grid_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Grid.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def baseline_row=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "baseline-row", unsafe_value, Pointer(Void).null)
      value
    end

    def baseline_row : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "baseline-row", pointerof(value), Pointer(Void).null)
      value
    end

    def column_homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "column-homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def column_homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "column-homogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def row_homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "row-homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def row_homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "row-homogeneous", pointerof(value), Pointer(Void).null)
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

    def self.new : self
      # gtk_grid_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_new

      # Return value handling
      Gtk::Grid.new(_retval, GICrystal::Transfer::Full)
    end

    def attach(child : Gtk::Widget, column : Int32, row : Int32, width : Int32, height : Int32) : Nil
      # gtk_grid_attach: (Method)
      # @child:
      # @column:
      # @row:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_attach(to_unsafe, child, column, row, width, height)

      # Return value handling
    end

    def attach_next_to(child : Gtk::Widget, sibling : Gtk::Widget?, side : Gtk::PositionType, width : Int32, height : Int32) : Nil
      # gtk_grid_attach_next_to: (Method)
      # @child:
      # @sibling: (nullable)
      # @side:
      # @width:
      # @height:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sibling = if sibling.nil?
                  Pointer(Void).null
                else
                  sibling.to_unsafe
                end

      # C call
      LibGtk.gtk_grid_attach_next_to(to_unsafe, child, sibling, side, width, height)

      # Return value handling
    end

    def baseline_row : Int32
      # gtk_grid_get_baseline_row: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_get_baseline_row(to_unsafe)

      # Return value handling
      _retval
    end

    def child_at(column : Int32, row : Int32) : Gtk::Widget?
      # gtk_grid_get_child_at: (Method)
      # @column:
      # @row:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_grid_get_child_at(to_unsafe, column, row)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def column_homogeneous : Bool
      # gtk_grid_get_column_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_get_column_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def column_spacing : UInt32
      # gtk_grid_get_column_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_get_column_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def row_baseline_position(row : Int32) : Gtk::BaselinePosition
      # gtk_grid_get_row_baseline_position: (Method)
      # @row:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_get_row_baseline_position(to_unsafe, row)

      # Return value handling
      Gtk::BaselinePosition.new(_retval)
    end

    def row_homogeneous : Bool
      # gtk_grid_get_row_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_get_row_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def row_spacing : UInt32
      # gtk_grid_get_row_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_grid_get_row_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def insert_column(position : Int32) : Nil
      # gtk_grid_insert_column: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_insert_column(to_unsafe, position)

      # Return value handling
    end

    def insert_next_to(sibling : Gtk::Widget, side : Gtk::PositionType) : Nil
      # gtk_grid_insert_next_to: (Method)
      # @sibling:
      # @side:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_insert_next_to(to_unsafe, sibling, side)

      # Return value handling
    end

    def insert_row(position : Int32) : Nil
      # gtk_grid_insert_row: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_insert_row(to_unsafe, position)

      # Return value handling
    end

    def query_child(child : Gtk::Widget) : Nil
      # gtk_grid_query_child: (Method)
      # @child:
      # @column: (out) (transfer full) (optional)
      # @row: (out) (transfer full) (optional)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      column = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      row = Pointer(Int32).null    # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null  # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_grid_query_child(to_unsafe, child, column, row, width, height)

      # Return value handling
    end

    def remove(child : Gtk::Widget) : Nil
      # gtk_grid_remove: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_remove(to_unsafe, child)

      # Return value handling
    end

    def remove_column(position : Int32) : Nil
      # gtk_grid_remove_column: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_remove_column(to_unsafe, position)

      # Return value handling
    end

    def remove_row(position : Int32) : Nil
      # gtk_grid_remove_row: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_remove_row(to_unsafe, position)

      # Return value handling
    end

    def baseline_row=(row : Int32) : Nil
      # gtk_grid_set_baseline_row: (Method | Setter)
      # @row:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_set_baseline_row(to_unsafe, row)

      # Return value handling
    end

    def column_homogeneous=(homogeneous : Bool) : Nil
      # gtk_grid_set_column_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_set_column_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def column_spacing=(spacing : UInt32) : Nil
      # gtk_grid_set_column_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_set_column_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def set_row_baseline_position(row : Int32, pos : Gtk::BaselinePosition) : Nil
      # gtk_grid_set_row_baseline_position: (Method)
      # @row:
      # @pos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_set_row_baseline_position(to_unsafe, row, pos)

      # Return value handling
    end

    def row_homogeneous=(homogeneous : Bool) : Nil
      # gtk_grid_set_row_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_set_row_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def row_spacing=(spacing : UInt32) : Nil
      # gtk_grid_set_row_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_grid_set_row_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
