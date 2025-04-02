require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ListBox < Widget
    include Accessible
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ListBox, g_object_get_qdata)

    # Initialize a new `ListBox`.
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

    def initialize(*, accept_unpaired_release : Bool? = nil, accessible_role : Gtk::AccessibleRole? = nil, activate_on_single_click : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, selection_mode : Gtk::SelectionMode? = nil, sensitive : Bool? = nil, show_separators : Bool? = nil, tab_behavior : Gtk::ListTabBehavior? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[41]
      _values = StaticArray(LibGObject::Value, 41).new(LibGObject::Value.new)
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
      if !show_separators.nil?
        (_names.to_unsafe + _n).value = "show-separators".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_separators)
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
      @@g_type ||= LibGtk.gtk_list_box_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ListBox.new(Void*, GICrystal::Transfer)
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

    def show_separators=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-separators", unsafe_value, Pointer(Void).null)
      value
    end

    def show_separators? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-separators", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def self.new : self
      # gtk_list_box_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_box_new

      # Return value handling
      Gtk::ListBox.new(_retval, GICrystal::Transfer::Full)
    end

    def append(child : Gtk::Widget) : Nil
      # gtk_list_box_append: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_append(to_unsafe, child)

      # Return value handling
    end

    def bind_model(model : Gio::ListModel?, create_widget_func : Gtk::ListBoxCreateWidgetFunc?) : Nil
      # gtk_list_box_bind_model: (Method)
      # @model: (nullable)
      # @create_widget_func: (nullable)
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
      LibGtk.gtk_list_box_bind_model(to_unsafe, model, create_widget_func, user_data, user_data_free_func)

      # Return value handling
    end

    def drag_highlight_row(row : Gtk::ListBoxRow) : Nil
      # gtk_list_box_drag_highlight_row: (Method)
      # @row:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_drag_highlight_row(to_unsafe, row)

      # Return value handling
    end

    def drag_unhighlight_row : Nil
      # gtk_list_box_drag_unhighlight_row: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_drag_unhighlight_row(to_unsafe)

      # Return value handling
    end

    def activate_on_single_click : Bool
      # gtk_list_box_get_activate_on_single_click: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_box_get_activate_on_single_click(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def adjustment : Gtk::Adjustment?
      # gtk_list_box_get_adjustment: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_list_box_get_adjustment(to_unsafe)

      # Return value handling
      Gtk::Adjustment.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def row_at_index(index_ : Int32) : Gtk::ListBoxRow?
      # gtk_list_box_get_row_at_index: (Method)
      # @index_:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_list_box_get_row_at_index(to_unsafe, index_)

      # Return value handling
      Gtk::ListBoxRow.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def row_at_y(y : Int32) : Gtk::ListBoxRow?
      # gtk_list_box_get_row_at_y: (Method)
      # @y:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_list_box_get_row_at_y(to_unsafe, y)

      # Return value handling
      Gtk::ListBoxRow.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def selected_row : Gtk::ListBoxRow?
      # gtk_list_box_get_selected_row: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_list_box_get_selected_row(to_unsafe)

      # Return value handling
      Gtk::ListBoxRow.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def selected_rows : GLib::List
      # gtk_list_box_get_selected_rows: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_list_box_get_selected_rows(to_unsafe)

      # Return value handling
      GLib::List(Gtk::ListBoxRow).new(_retval, GICrystal::Transfer::Container)
    end

    def selection_mode : Gtk::SelectionMode
      # gtk_list_box_get_selection_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_box_get_selection_mode(to_unsafe)

      # Return value handling
      Gtk::SelectionMode.new(_retval)
    end

    def show_separators : Bool
      # gtk_list_box_get_show_separators: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_box_get_show_separators(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def tab_behavior : Gtk::ListTabBehavior
      # gtk_list_box_get_tab_behavior: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_list_box_get_tab_behavior(to_unsafe)

      # Return value handling
      Gtk::ListTabBehavior.new(_retval)
    end

    def insert(child : Gtk::Widget, position : Int32) : Nil
      # gtk_list_box_insert: (Method)
      # @child:
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_insert(to_unsafe, child, position)

      # Return value handling
    end

    def invalidate_filter : Nil
      # gtk_list_box_invalidate_filter: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_invalidate_filter(to_unsafe)

      # Return value handling
    end

    def invalidate_headers : Nil
      # gtk_list_box_invalidate_headers: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_invalidate_headers(to_unsafe)

      # Return value handling
    end

    def invalidate_sort : Nil
      # gtk_list_box_invalidate_sort: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_invalidate_sort(to_unsafe)

      # Return value handling
    end

    def prepend(child : Gtk::Widget) : Nil
      # gtk_list_box_prepend: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_prepend(to_unsafe, child)

      # Return value handling
    end

    def remove(child : Gtk::Widget) : Nil
      # gtk_list_box_remove: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_remove(to_unsafe, child)

      # Return value handling
    end

    def remove_all : Nil
      # gtk_list_box_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_remove_all(to_unsafe)

      # Return value handling
    end

    def select_all : Nil
      # gtk_list_box_select_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_select_all(to_unsafe)

      # Return value handling
    end

    def select_row(row : Gtk::ListBoxRow?) : Nil
      # gtk_list_box_select_row: (Method)
      # @row: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      row = if row.nil?
              Pointer(Void).null
            else
              row.to_unsafe
            end

      # C call
      LibGtk.gtk_list_box_select_row(to_unsafe, row)

      # Return value handling
    end

    def selected_foreach(func : Gtk::ListBoxForeachFunc, data : Pointer(Void)?) : Nil
      # gtk_list_box_selected_foreach: (Method)
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
      LibGtk.gtk_list_box_selected_foreach(to_unsafe, func, data)

      # Return value handling
    end

    def activate_on_single_click=(single : Bool) : Nil
      # gtk_list_box_set_activate_on_single_click: (Method | Setter)
      # @single:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_set_activate_on_single_click(to_unsafe, single)

      # Return value handling
    end

    def adjustment=(adjustment : Gtk::Adjustment?) : Nil
      # gtk_list_box_set_adjustment: (Method)
      # @adjustment: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      adjustment = if adjustment.nil?
                     Pointer(Void).null
                   else
                     adjustment.to_unsafe
                   end

      # C call
      LibGtk.gtk_list_box_set_adjustment(to_unsafe, adjustment)

      # Return value handling
    end

    def filter_func=(filter_func : Gtk::ListBoxFilterFunc?) : Nil
      # gtk_list_box_set_filter_func: (Method)
      # @filter_func: (nullable)
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter_func
        _box = ::Box.box(filter_func)
        filter_func = ->(lib_row : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          row = Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBoxRow, Bool)).unbox(lib_user_data).call(row)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter_func = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_list_box_set_filter_func(to_unsafe, filter_func, user_data, destroy)

      # Return value handling
    end

    def header_func=(update_header : Gtk::ListBoxUpdateHeaderFunc?) : Nil
      # gtk_list_box_set_header_func: (Method)
      # @update_header: (nullable)
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if update_header
        _box = ::Box.box(update_header)
        update_header = ->(lib_row : Pointer(Void), lib_before : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          row = Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          before = (lib_before.null? ? nil : Gtk::ListBoxRow.new(lib_before, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          before = Gtk::ListBoxRow.new(lib_before, GICrystal::Transfer::None) unless lib_before.null?
          ::Box(Proc(Gtk::ListBoxRow, Gtk::ListBoxRow?, Nil)).unbox(lib_user_data).call(row, before)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        update_header = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_list_box_set_header_func(to_unsafe, update_header, user_data, destroy)

      # Return value handling
    end

    def placeholder=(placeholder : Gtk::Widget?) : Nil
      # gtk_list_box_set_placeholder: (Method)
      # @placeholder: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      placeholder = if placeholder.nil?
                      Pointer(Void).null
                    else
                      placeholder.to_unsafe
                    end

      # C call
      LibGtk.gtk_list_box_set_placeholder(to_unsafe, placeholder)

      # Return value handling
    end

    def selection_mode=(mode : Gtk::SelectionMode) : Nil
      # gtk_list_box_set_selection_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_set_selection_mode(to_unsafe, mode)

      # Return value handling
    end

    def show_separators=(show_separators : Bool) : Nil
      # gtk_list_box_set_show_separators: (Method | Setter)
      # @show_separators:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_set_show_separators(to_unsafe, show_separators)

      # Return value handling
    end

    def sort_func=(sort_func : Gtk::ListBoxSortFunc?) : Nil
      # gtk_list_box_set_sort_func: (Method)
      # @sort_func: (nullable)
      # @user_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if sort_func
        _box = ::Box.box(sort_func)
        sort_func = ->(lib_row1 : Pointer(Void), lib_row2 : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          row1 = Gtk::ListBoxRow.new(lib_row1, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          row2 = Gtk::ListBoxRow.new(lib_row2, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBoxRow, Gtk::ListBoxRow, Int32)).unbox(lib_user_data).call(row1, row2)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        sort_func = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_list_box_set_sort_func(to_unsafe, sort_func, user_data, destroy)

      # Return value handling
    end

    def tab_behavior=(behavior : Gtk::ListTabBehavior) : Nil
      # gtk_list_box_set_tab_behavior: (Method | Setter)
      # @behavior:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_set_tab_behavior(to_unsafe, behavior)

      # Return value handling
    end

    def unselect_all : Nil
      # gtk_list_box_unselect_all: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_unselect_all(to_unsafe)

      # Return value handling
    end

    def unselect_row(row : Gtk::ListBoxRow) : Nil
      # gtk_list_box_unselect_row: (Method)
      # @row:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_list_box_unselect_row(to_unsafe, row)

      # Return value handling
    end

    struct ActivateCursorRowSignal < GObject::Signal
      def name : String
        @detail ? "activate-cursor-row::#{@detail}" : "activate-cursor-row"
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

      def connect(handler : Proc(Gtk::ListBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-cursor-row")
      end
    end

    def activate_cursor_row_signal
      ActivateCursorRowSignal.new(self)
    end

    struct MoveCursorSignal < GObject::Signal
      def name : String
        @detail ? "move-cursor::#{@detail}" : "move-cursor"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::MovementStep, Int32, Bool, Bool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::MovementStep, Int32, Bool, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
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
          ::Box(Proc(Gtk::MovementStep, Int32, Bool, Bool, Nil)).unbox(_lib_box).call(step, count, _extend, modify)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::ListBox, Gtk::MovementStep, Int32, Bool, Bool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, lib_count : Int32, lib__extend : LibC::Int, lib_modify : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::MovementStep.new(lib_step)
          # NoStrategy
          count = lib_count
          # Generator::BuiltInTypeArgPlan
          _extend = GICrystal.to_bool(lib__extend)
          # Generator::BuiltInTypeArgPlan
          modify = GICrystal.to_bool(lib_modify)
          ::Box(Proc(Gtk::ListBox, Gtk::MovementStep, Int32, Bool, Bool, Nil)).unbox(_lib_box).call(_sender, step, count, _extend, modify)
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

    struct RowActivatedSignal < GObject::Signal
      def name : String
        @detail ? "row-activated::#{@detail}" : "row-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::ListBoxRow, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::ListBoxRow, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_row : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          row = Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBoxRow, Nil)).unbox(_lib_box).call(row)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::ListBox, Gtk::ListBoxRow, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_row : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          row = Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBox, Gtk::ListBoxRow, Nil)).unbox(_lib_box).call(_sender, row)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(row : Gtk::ListBoxRow) : Nil
        LibGObject.g_signal_emit_by_name(@source, "row-activated", row)
      end
    end

    def row_activated_signal
      RowActivatedSignal.new(self)
    end

    struct RowSelectedSignal < GObject::Signal
      def name : String
        @detail ? "row-selected::#{@detail}" : "row-selected"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::ListBoxRow?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::ListBoxRow?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_row : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          row = (lib_row.null? ? nil : Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          row = Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None) unless lib_row.null?
          ::Box(Proc(Gtk::ListBoxRow?, Nil)).unbox(_lib_box).call(row)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::ListBox, Gtk::ListBoxRow?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_row : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          row = (lib_row.null? ? nil : Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          row = Gtk::ListBoxRow.new(lib_row, GICrystal::Transfer::None) unless lib_row.null?
          ::Box(Proc(Gtk::ListBox, Gtk::ListBoxRow?, Nil)).unbox(_lib_box).call(_sender, row)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(row : Gtk::ListBoxRow?) : Nil
        # Generator::NullableArrayPlan
        row = if row.nil?
                Void.null
              else
                row.to_unsafe
              end

        LibGObject.g_signal_emit_by_name(@source, "row-selected", row)
      end
    end

    def row_selected_signal
      RowSelectedSignal.new(self)
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

      def connect(handler : Proc(Gtk::ListBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBox, Nil)).unbox(_lib_box).call(_sender)
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

    struct SelectedRowsChangedSignal < GObject::Signal
      def name : String
        @detail ? "selected-rows-changed::#{@detail}" : "selected-rows-changed"
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

      def connect(handler : Proc(Gtk::ListBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "selected-rows-changed")
      end
    end

    def selected_rows_changed_signal
      SelectedRowsChangedSignal.new(self)
    end

    struct ToggleCursorRowSignal < GObject::Signal
      def name : String
        @detail ? "toggle-cursor-row::#{@detail}" : "toggle-cursor-row"
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

      def connect(handler : Proc(Gtk::ListBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBox, Nil)).unbox(_lib_box).call(_sender)
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

      def connect(handler : Proc(Gtk::ListBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ListBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ListBox, Nil)).unbox(_lib_box).call(_sender)
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
