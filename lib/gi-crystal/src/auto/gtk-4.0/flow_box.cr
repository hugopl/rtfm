require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FlowBox < Widget
    include Accessible
    include Buildable
    include ConstraintTarget
    include Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(FlowBox, g_object_get_qdata)

    # Initialize a new `FlowBox`.
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

    def initialize(*, accept_unpaired_release : Bool? = nil, accessible_role : Gtk::AccessibleRole? = nil, activate_on_single_click : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, column_spacing : UInt32? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, homogeneous : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, max_children_per_line : UInt32? = nil, min_children_per_line : UInt32? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, row_spacing : UInt32? = nil, scale_factor : Int32? = nil, selection_mode : Gtk::SelectionMode? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[45]
      _values = StaticArray(LibGObject::Value, 45).new(LibGObject::Value.new)
      _n = 0

      if !accept_unpaired_release.nil?
        (_names.to_unsafe + _n).value = "accept-unpaired-release".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_unpaired_release)
        _n += 1
      end
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
      if !homogeneous.nil?
        (_names.to_unsafe + _n).value = "homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, homogeneous)
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
      if !max_children_per_line.nil?
        (_names.to_unsafe + _n).value = "max-children-per-line".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_children_per_line)
        _n += 1
      end
      if !min_children_per_line.nil?
        (_names.to_unsafe + _n).value = "min-children-per-line".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_children_per_line)
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
      @@g_type ||= LibGtk.gtk_flow_box_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FlowBox.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accept_unpaired_release=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "accept-unpaired-release", unsafe_value, Pointer(Void).null)
      value
    end

    def accept_unpaired_release? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "accept-unpaired-release", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def column_spacing=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "column-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def column_spacing : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "column-spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "homogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def max_children_per_line=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-children-per-line", unsafe_value, Pointer(Void).null)
      value
    end

    def max_children_per_line : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "max-children-per-line", pointerof(value), Pointer(Void).null)
      value
    end

    def min_children_per_line=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "min-children-per-line", unsafe_value, Pointer(Void).null)
      value
    end

    def min_children_per_line : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "min-children-per-line", pointerof(value), Pointer(Void).null)
      value
    end

    def row_spacing=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "row-spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def row_spacing : UInt32
      # Returns: None

      value = uninitialized UInt32
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

    def self.new : self
      # gtk_flow_box_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_new

      # Return value handling
      Gtk::FlowBox.new(_retval, GICrystal::Transfer::Full)
    end

    def append(child : Gtk::Widget) : Nil
      # gtk_flow_box_append: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_append(to_unsafe, child)

      # Return value handling
    end

    def bind_model(model : Gio::ListModel?, create_widget_func : Gtk::FlowBoxCreateWidgetFunc) : Nil
      # gtk_flow_box_bind_model: (Method)
      # @model: (nullable)
      # @create_widget_func:
      # @user_data: (nullable)
      # @user_data_free_func:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end
      # Generator::CallbackArgPlan
      if create_widget_func
        _box = ::Box.box(create_widget_func)
        create_widget_func = ->(lib_item : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          item = GObject::Object.new(lib_item, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Gtk::Widget)).unbox(lib_user_data).call(item)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_data_free_func = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        create_widget_func = user_data = user_data_free_func = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_flow_box_bind_model(to_unsafe, model, create_widget_func, user_data, user_data_free_func)

      # Return value handling
    end

    def activate_on_single_click : Bool
      # gtk_flow_box_get_activate_on_single_click: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_get_activate_on_single_click(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child_at_index(idx : Int32) : Gtk::FlowBoxChild?
      # gtk_flow_box_get_child_at_index: (Method)
      # @idx:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_flow_box_get_child_at_index(to_unsafe, idx)

      # Return value handling
      Gtk::FlowBoxChild.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def child_at_pos(x : Int32, y : Int32) : Gtk::FlowBoxChild?
      # gtk_flow_box_get_child_at_pos: (Method)
      # @x:
      # @y:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_flow_box_get_child_at_pos(to_unsafe, x, y)

      # Return value handling
      Gtk::FlowBoxChild.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def column_spacing : UInt32
      # gtk_flow_box_get_column_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_get_column_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def homogeneous : Bool
      # gtk_flow_box_get_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_get_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def max_children_per_line : UInt32
      # gtk_flow_box_get_max_children_per_line: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_get_max_children_per_line(to_unsafe)

      # Return value handling
      _retval
    end

    def min_children_per_line : UInt32
      # gtk_flow_box_get_min_children_per_line: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_get_min_children_per_line(to_unsafe)

      # Return value handling
      _retval
    end

    def row_spacing : UInt32
      # gtk_flow_box_get_row_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_get_row_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def selected_children : GLib::List
      # gtk_flow_box_get_selected_children: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_flow_box_get_selected_children(to_unsafe)

      # Return value handling
      GLib::List(Gtk::FlowBoxChild).new(_retval, GICrystal::Transfer::Container)
    end

    def selection_mode : Gtk::SelectionMode
      # gtk_flow_box_get_selection_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_flow_box_get_selection_mode(to_unsafe)

      # Return value handling
      Gtk::SelectionMode.new(_retval)
    end

    def insert(widget : Gtk::Widget, position : Int32) : Nil
      # gtk_flow_box_insert: (Method)
      # @widget:
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_insert(to_unsafe, widget, position)

      # Return value handling
    end

    def invalidate_filter : Nil
      # gtk_flow_box_invalidate_filter: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_invalidate_filter(to_unsafe)

      # Return value handling
    end

    def invalidate_sort : Nil
      # gtk_flow_box_invalidate_sort: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_invalidate_sort(to_unsafe)

      # Return value handling
    end

    def prepend(child : Gtk::Widget) : Nil
      # gtk_flow_box_prepend: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_prepend(to_unsafe, child)

      # Return value handling
    end

    def remove(widget : Gtk::Widget) : Nil
      # gtk_flow_box_remove: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_remove(to_unsafe, widget)

      # Return value handling
    end

    def remove_all : Nil
      # gtk_flow_box_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_remove_all(to_unsafe)

      # Return value handling
    end

    def select_all : Nil
      # gtk_flow_box_select_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_select_all(to_unsafe)

      # Return value handling
    end

    def select_child(child : Gtk::FlowBoxChild) : Nil
      # gtk_flow_box_select_child: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_select_child(to_unsafe, child)

      # Return value handling
    end

    def selected_foreach(func : Gtk::FlowBoxForeachFunc, data : Pointer(Void)?) : Nil
      # gtk_flow_box_selected_foreach: (Method)
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
      LibGtk.gtk_flow_box_selected_foreach(to_unsafe, func, data)

      # Return value handling
    end

    def activate_on_single_click=(single : Bool) : Nil
      # gtk_flow_box_set_activate_on_single_click: (Method | Setter)
      # @single:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_activate_on_single_click(to_unsafe, single)

      # Return value handling
    end

    def column_spacing=(spacing : UInt32) : Nil
      # gtk_flow_box_set_column_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_column_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def filter_func=(filter_func : Gtk::FlowBoxFilterFunc?) : Nil
      # gtk_flow_box_set_filter_func: (Method)
      # @filter_func: (nullable)
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter_func
        _box = ::Box.box(filter_func)
        filter_func = ->(lib_child : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          child = Gtk::FlowBoxChild.new(lib_child, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBoxChild, Bool)).unbox(lib_user_data).call(child)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter_func = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_flow_box_set_filter_func(to_unsafe, filter_func, user_data, destroy)

      # Return value handling
    end

    def hadjustment=(adjustment : Gtk::Adjustment) : Nil
      # gtk_flow_box_set_hadjustment: (Method)
      # @adjustment:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_hadjustment(to_unsafe, adjustment)

      # Return value handling
    end

    def homogeneous=(homogeneous : Bool) : Nil
      # gtk_flow_box_set_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def max_children_per_line=(n_children : UInt32) : Nil
      # gtk_flow_box_set_max_children_per_line: (Method | Setter)
      # @n_children:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_max_children_per_line(to_unsafe, n_children)

      # Return value handling
    end

    def min_children_per_line=(n_children : UInt32) : Nil
      # gtk_flow_box_set_min_children_per_line: (Method | Setter)
      # @n_children:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_min_children_per_line(to_unsafe, n_children)

      # Return value handling
    end

    def row_spacing=(spacing : UInt32) : Nil
      # gtk_flow_box_set_row_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_row_spacing(to_unsafe, spacing)

      # Return value handling
    end

    def selection_mode=(mode : Gtk::SelectionMode) : Nil
      # gtk_flow_box_set_selection_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_selection_mode(to_unsafe, mode)

      # Return value handling
    end

    def sort_func=(sort_func : Gtk::FlowBoxSortFunc?) : Nil
      # gtk_flow_box_set_sort_func: (Method)
      # @sort_func: (nullable)
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if sort_func
        _box = ::Box.box(sort_func)
        sort_func = ->(lib_child1 : Pointer(Void), lib_child2 : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          child1 = Gtk::FlowBoxChild.new(lib_child1, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          child2 = Gtk::FlowBoxChild.new(lib_child2, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBoxChild, Gtk::FlowBoxChild, Int32)).unbox(lib_user_data).call(child1, child2)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        sort_func = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_flow_box_set_sort_func(to_unsafe, sort_func, user_data, destroy)

      # Return value handling
    end

    def vadjustment=(adjustment : Gtk::Adjustment) : Nil
      # gtk_flow_box_set_vadjustment: (Method)
      # @adjustment:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_set_vadjustment(to_unsafe, adjustment)

      # Return value handling
    end

    def unselect_all : Nil
      # gtk_flow_box_unselect_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_unselect_all(to_unsafe)

      # Return value handling
    end

    def unselect_child(child : Gtk::FlowBoxChild) : Nil
      # gtk_flow_box_unselect_child: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_flow_box_unselect_child(to_unsafe, child)

      # Return value handling
    end

    struct ActivateCursorChildSignal < GObject::Signal
      def name : String
        @detail ? "activate-cursor-child::#{@detail}" : "activate-cursor-child"
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

      def connect(handler : Proc(Gtk::FlowBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::FlowBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-cursor-child")
      end
    end

    def activate_cursor_child_signal
      ActivateCursorChildSignal.new(self)
    end

    struct ChildActivatedSignal < GObject::Signal
      def name : String
        @detail ? "child-activated::#{@detail}" : "child-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::FlowBoxChild, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::FlowBoxChild, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          child = Gtk::FlowBoxChild.new(lib_child, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBoxChild, Nil)).unbox(_lib_box).call(child)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::FlowBox, Gtk::FlowBoxChild, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::FlowBox.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          child = Gtk::FlowBoxChild.new(lib_child, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBox, Gtk::FlowBoxChild, Nil)).unbox(_lib_box).call(_sender, child)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(child : Gtk::FlowBoxChild) : Nil
        LibGObject.g_signal_emit_by_name(@source, "child-activated", child)
      end
    end

    def child_activated_signal
      ChildActivatedSignal.new(self)
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

      def connect(handler : Proc(Gtk::FlowBox, Gtk::MovementStep, Int32, Bool, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, lib__extend : LibC::Int, lib_modify : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::FlowBox.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          count = lib_count
          # Generator::BuiltInTypeArgPlan
          _extend = GICrystal.to_bool(lib__extend)
          # Generator::BuiltInTypeArgPlan
          modify = GICrystal.to_bool(lib_modify)
          ::Box(Proc(Gtk::FlowBox, Gtk::MovementStep, Int32, Bool, Bool, Bool)).unbox(_lib_box).call(_sender, step, count, _extend, modify)
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

      def connect(handler : Proc(Gtk::FlowBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::FlowBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBox, Nil)).unbox(_lib_box).call(_sender)
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

    struct SelectedChildrenChangedSignal < GObject::Signal
      def name : String
        @detail ? "selected-children-changed::#{@detail}" : "selected-children-changed"
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

      def connect(handler : Proc(Gtk::FlowBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::FlowBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "selected-children-changed")
      end
    end

    def selected_children_changed_signal
      SelectedChildrenChangedSignal.new(self)
    end

    struct ToggleCursorChildSignal < GObject::Signal
      def name : String
        @detail ? "toggle-cursor-child::#{@detail}" : "toggle-cursor-child"
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

      def connect(handler : Proc(Gtk::FlowBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::FlowBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "toggle-cursor-child")
      end
    end

    def toggle_cursor_child_signal
      ToggleCursorChildSignal.new(self)
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

      def connect(handler : Proc(Gtk::FlowBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::FlowBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FlowBox, Nil)).unbox(_lib_box).call(_sender)
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
