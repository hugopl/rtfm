require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Notebook < Widget
    include Accessible
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Notebook, g_object_get_qdata)

    # Initialize a new `Notebook`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, enable_popup : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, group_name : ::String? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, page : Int32? = nil, pages : Gio::ListModel? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, scrollable : Bool? = nil, sensitive : Bool? = nil, show_border : Bool? = nil, show_tabs : Bool? = nil, tab_pos : Gtk::PositionType? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[44]
      _values = StaticArray(LibGObject::Value, 44).new(LibGObject::Value.new)
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
      if !enable_popup.nil?
        (_names.to_unsafe + _n).value = "enable-popup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_popup)
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
      if !group_name.nil?
        (_names.to_unsafe + _n).value = "group-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, group_name)
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
      if !page.nil?
        (_names.to_unsafe + _n).value = "page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page)
        _n += 1
      end
      if !pages.nil?
        (_names.to_unsafe + _n).value = "pages".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pages)
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
      if !scrollable.nil?
        (_names.to_unsafe + _n).value = "scrollable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scrollable)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !show_border.nil?
        (_names.to_unsafe + _n).value = "show-border".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_border)
        _n += 1
      end
      if !show_tabs.nil?
        (_names.to_unsafe + _n).value = "show-tabs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_tabs)
        _n += 1
      end
      if !tab_pos.nil?
        (_names.to_unsafe + _n).value = "tab-pos".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tab_pos)
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
      @@g_type ||= LibGtk.gtk_notebook_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Notebook.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def enable_popup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-popup", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_popup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-popup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def group_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "group-name", unsafe_value, Pointer(Void).null)
      value
    end

    def group_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "group-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#group_name` property to nil.
    def group_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "group-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#group_name`, but can return nil.
    def group_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "group-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def page=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "page", unsafe_value, Pointer(Void).null)
      value
    end

    def page : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "page", pointerof(value), Pointer(Void).null)
      value
    end

    def pages : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pages", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def scrollable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "scrollable", unsafe_value, Pointer(Void).null)
      value
    end

    def scrollable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "scrollable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_border=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-border", unsafe_value, Pointer(Void).null)
      value
    end

    def show_border? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-border", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_tabs=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-tabs", unsafe_value, Pointer(Void).null)
      value
    end

    def show_tabs? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-tabs", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tab_pos=(value : Gtk::PositionType) : Gtk::PositionType
      unsafe_value = value

      LibGObject.g_object_set(self, "tab-pos", unsafe_value, Pointer(Void).null)
      value
    end

    def tab_pos : Gtk::PositionType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "tab-pos", pointerof(value), Pointer(Void).null)
      Gtk::PositionType.new(value)
    end

    def self.new : self
      # gtk_notebook_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_new

      # Return value handling
      Gtk::Notebook.new(_retval, GICrystal::Transfer::Full)
    end

    def append_page(child : Gtk::Widget, tab_label : Gtk::Widget?) : Int32
      # gtk_notebook_append_page: (Method)
      # @child:
      # @tab_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tab_label = if tab_label.nil?
                    Pointer(Void).null
                  else
                    tab_label.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_notebook_append_page(to_unsafe, child, tab_label)

      # Return value handling
      _retval
    end

    def append_page_menu(child : Gtk::Widget, tab_label : Gtk::Widget?, menu_label : Gtk::Widget?) : Int32
      # gtk_notebook_append_page_menu: (Method)
      # @child:
      # @tab_label: (nullable)
      # @menu_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tab_label = if tab_label.nil?
                    Pointer(Void).null
                  else
                    tab_label.to_unsafe
                  end
      # Generator::NullableArrayPlan
      menu_label = if menu_label.nil?
                     Pointer(Void).null
                   else
                     menu_label.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_notebook_append_page_menu(to_unsafe, child, tab_label, menu_label)

      # Return value handling
      _retval
    end

    def detach_tab(child : Gtk::Widget) : Nil
      # gtk_notebook_detach_tab: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_detach_tab(to_unsafe, child)

      # Return value handling
    end

    def action_widget(pack_type : Gtk::PackType) : Gtk::Widget?
      # gtk_notebook_get_action_widget: (Method)
      # @pack_type:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_notebook_get_action_widget(to_unsafe, pack_type)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def current_page : Int32
      # gtk_notebook_get_current_page: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_current_page(to_unsafe)

      # Return value handling
      _retval
    end

    def group_name : ::String?
      # gtk_notebook_get_group_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_notebook_get_group_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def menu_label(child : Gtk::Widget) : Gtk::Widget?
      # gtk_notebook_get_menu_label: (Method)
      # @child:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_notebook_get_menu_label(to_unsafe, child)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def menu_label_text(child : Gtk::Widget) : ::String?
      # gtk_notebook_get_menu_label_text: (Method)
      # @child:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_notebook_get_menu_label_text(to_unsafe, child)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def n_pages : Int32
      # gtk_notebook_get_n_pages: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_n_pages(to_unsafe)

      # Return value handling
      _retval
    end

    def nth_page(page_num : Int32) : Gtk::Widget?
      # gtk_notebook_get_nth_page: (Method)
      # @page_num:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_notebook_get_nth_page(to_unsafe, page_num)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def page(child : Gtk::Widget) : Gtk::NotebookPage
      # gtk_notebook_get_page: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_page(to_unsafe, child)

      # Return value handling
      Gtk::NotebookPage.new(_retval, GICrystal::Transfer::None)
    end

    def pages : Gio::ListModel
      # gtk_notebook_get_pages: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_notebook_get_pages(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    def scrollable : Bool
      # gtk_notebook_get_scrollable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_scrollable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_border : Bool
      # gtk_notebook_get_show_border: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_show_border(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_tabs : Bool
      # gtk_notebook_get_show_tabs: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_show_tabs(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def tab_detachable(child : Gtk::Widget) : Bool
      # gtk_notebook_get_tab_detachable: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_tab_detachable(to_unsafe, child)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def tab_label(child : Gtk::Widget) : Gtk::Widget?
      # gtk_notebook_get_tab_label: (Method)
      # @child:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_notebook_get_tab_label(to_unsafe, child)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tab_label_text(child : Gtk::Widget) : ::String?
      # gtk_notebook_get_tab_label_text: (Method)
      # @child:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_notebook_get_tab_label_text(to_unsafe, child)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def tab_pos : Gtk::PositionType
      # gtk_notebook_get_tab_pos: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_tab_pos(to_unsafe)

      # Return value handling
      Gtk::PositionType.new(_retval)
    end

    def tab_reorderable(child : Gtk::Widget) : Bool
      # gtk_notebook_get_tab_reorderable: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_get_tab_reorderable(to_unsafe, child)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def insert_page(child : Gtk::Widget, tab_label : Gtk::Widget?, position : Int32) : Int32
      # gtk_notebook_insert_page: (Method)
      # @child:
      # @tab_label: (nullable)
      # @position:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tab_label = if tab_label.nil?
                    Pointer(Void).null
                  else
                    tab_label.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_notebook_insert_page(to_unsafe, child, tab_label, position)

      # Return value handling
      _retval
    end

    def insert_page_menu(child : Gtk::Widget, tab_label : Gtk::Widget?, menu_label : Gtk::Widget?, position : Int32) : Int32
      # gtk_notebook_insert_page_menu: (Method)
      # @child:
      # @tab_label: (nullable)
      # @menu_label: (nullable)
      # @position:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tab_label = if tab_label.nil?
                    Pointer(Void).null
                  else
                    tab_label.to_unsafe
                  end
      # Generator::NullableArrayPlan
      menu_label = if menu_label.nil?
                     Pointer(Void).null
                   else
                     menu_label.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_notebook_insert_page_menu(to_unsafe, child, tab_label, menu_label, position)

      # Return value handling
      _retval
    end

    def next_page : Nil
      # gtk_notebook_next_page: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_next_page(to_unsafe)

      # Return value handling
    end

    def page_num(child : Gtk::Widget) : Int32
      # gtk_notebook_page_num: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_notebook_page_num(to_unsafe, child)

      # Return value handling
      _retval
    end

    def popup_disable : Nil
      # gtk_notebook_popup_disable: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_popup_disable(to_unsafe)

      # Return value handling
    end

    def popup_enable : Nil
      # gtk_notebook_popup_enable: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_popup_enable(to_unsafe)

      # Return value handling
    end

    def prepend_page(child : Gtk::Widget, tab_label : Gtk::Widget?) : Int32
      # gtk_notebook_prepend_page: (Method)
      # @child:
      # @tab_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tab_label = if tab_label.nil?
                    Pointer(Void).null
                  else
                    tab_label.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_notebook_prepend_page(to_unsafe, child, tab_label)

      # Return value handling
      _retval
    end

    def prepend_page_menu(child : Gtk::Widget, tab_label : Gtk::Widget?, menu_label : Gtk::Widget?) : Int32
      # gtk_notebook_prepend_page_menu: (Method)
      # @child:
      # @tab_label: (nullable)
      # @menu_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tab_label = if tab_label.nil?
                    Pointer(Void).null
                  else
                    tab_label.to_unsafe
                  end
      # Generator::NullableArrayPlan
      menu_label = if menu_label.nil?
                     Pointer(Void).null
                   else
                     menu_label.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_notebook_prepend_page_menu(to_unsafe, child, tab_label, menu_label)

      # Return value handling
      _retval
    end

    def prev_page : Nil
      # gtk_notebook_prev_page: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_prev_page(to_unsafe)

      # Return value handling
    end

    def remove_page(page_num : Int32) : Nil
      # gtk_notebook_remove_page: (Method)
      # @page_num:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_remove_page(to_unsafe, page_num)

      # Return value handling
    end

    def reorder_child(child : Gtk::Widget, position : Int32) : Nil
      # gtk_notebook_reorder_child: (Method)
      # @child:
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_reorder_child(to_unsafe, child, position)

      # Return value handling
    end

    def set_action_widget(widget : Gtk::Widget, pack_type : Gtk::PackType) : Nil
      # gtk_notebook_set_action_widget: (Method)
      # @widget:
      # @pack_type:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_action_widget(to_unsafe, widget, pack_type)

      # Return value handling
    end

    def current_page=(page_num : Int32) : Nil
      # gtk_notebook_set_current_page: (Method | Setter)
      # @page_num:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_current_page(to_unsafe, page_num)

      # Return value handling
    end

    def group_name=(group_name : ::String?) : Nil
      # gtk_notebook_set_group_name: (Method | Setter)
      # @group_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      group_name = if group_name.nil?
                     Pointer(LibC::Char).null
                   else
                     group_name.to_unsafe
                   end

      # C call
      LibGtk.gtk_notebook_set_group_name(to_unsafe, group_name)

      # Return value handling
    end

    def set_menu_label(child : Gtk::Widget, menu_label : Gtk::Widget?) : Nil
      # gtk_notebook_set_menu_label: (Method)
      # @child:
      # @menu_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      menu_label = if menu_label.nil?
                     Pointer(Void).null
                   else
                     menu_label.to_unsafe
                   end

      # C call
      LibGtk.gtk_notebook_set_menu_label(to_unsafe, child, menu_label)

      # Return value handling
    end

    def set_menu_label_text(child : Gtk::Widget, menu_text : ::String) : Nil
      # gtk_notebook_set_menu_label_text: (Method)
      # @child:
      # @menu_text:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_menu_label_text(to_unsafe, child, menu_text)

      # Return value handling
    end

    def scrollable=(scrollable : Bool) : Nil
      # gtk_notebook_set_scrollable: (Method | Setter)
      # @scrollable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_scrollable(to_unsafe, scrollable)

      # Return value handling
    end

    def show_border=(show_border : Bool) : Nil
      # gtk_notebook_set_show_border: (Method | Setter)
      # @show_border:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_show_border(to_unsafe, show_border)

      # Return value handling
    end

    def show_tabs=(show_tabs : Bool) : Nil
      # gtk_notebook_set_show_tabs: (Method | Setter)
      # @show_tabs:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_show_tabs(to_unsafe, show_tabs)

      # Return value handling
    end

    def set_tab_detachable(child : Gtk::Widget, detachable : Bool) : Nil
      # gtk_notebook_set_tab_detachable: (Method)
      # @child:
      # @detachable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_tab_detachable(to_unsafe, child, detachable)

      # Return value handling
    end

    def set_tab_label(child : Gtk::Widget, tab_label : Gtk::Widget?) : Nil
      # gtk_notebook_set_tab_label: (Method)
      # @child:
      # @tab_label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tab_label = if tab_label.nil?
                    Pointer(Void).null
                  else
                    tab_label.to_unsafe
                  end

      # C call
      LibGtk.gtk_notebook_set_tab_label(to_unsafe, child, tab_label)

      # Return value handling
    end

    def set_tab_label_text(child : Gtk::Widget, tab_text : ::String) : Nil
      # gtk_notebook_set_tab_label_text: (Method)
      # @child:
      # @tab_text:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_tab_label_text(to_unsafe, child, tab_text)

      # Return value handling
    end

    def tab_pos=(pos : Gtk::PositionType) : Nil
      # gtk_notebook_set_tab_pos: (Method | Setter)
      # @pos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_tab_pos(to_unsafe, pos)

      # Return value handling
    end

    def set_tab_reorderable(child : Gtk::Widget, reorderable : Bool) : Nil
      # gtk_notebook_set_tab_reorderable: (Method)
      # @child:
      # @reorderable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_notebook_set_tab_reorderable(to_unsafe, child, reorderable)

      # Return value handling
    end

    struct ChangeCurrentPageSignal < GObject::Signal
      def name : String
        @detail ? "change-current-page::#{@detail}" : "change-current-page"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          page = lib_page
          ::Box(Proc(Int32, Bool)).unbox(_lib_box).call(page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Int32, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          page = lib_page
          ::Box(Proc(Gtk::Notebook, Int32, Bool)).unbox(_lib_box).call(_sender, page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "change-current-page", page)
      end
    end

    def change_current_page_signal
      ChangeCurrentPageSignal.new(self)
    end

    struct CreateWindowSignal < GObject::Signal
      def name : String
        @detail ? "create-window::#{@detail}" : "create-window"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, Gtk::Notebook)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, Gtk::Notebook), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Gtk::Widget.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Gtk::Notebook)).unbox(_lib_box).call(page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::Widget, Gtk::Notebook), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Gtk::Widget.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Notebook, Gtk::Widget, Gtk::Notebook)).unbox(_lib_box).call(_sender, page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Gtk::Widget) : Nil
        LibGObject.g_signal_emit_by_name(@source, "create-window", page)
      end
    end

    def create_window_signal
      CreateWindowSignal.new(self)
    end

    struct FocusTabSignal < GObject::Signal
      def name : String
        @detail ? "focus-tab::#{@detail}" : "focus-tab"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::NotebookTab, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::NotebookTab, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tab : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tab = Gtk::NotebookTab.new(lib_tab)
          ::Box(Proc(Gtk::NotebookTab, Bool)).unbox(_lib_box).call(tab)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::NotebookTab, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tab : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tab = Gtk::NotebookTab.new(lib_tab)
          ::Box(Proc(Gtk::Notebook, Gtk::NotebookTab, Bool)).unbox(_lib_box).call(_sender, tab)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tab : Gtk::NotebookTab) : Nil
        LibGObject.g_signal_emit_by_name(@source, "focus-tab", tab)
      end
    end

    def focus_tab_signal
      FocusTabSignal.new(self)
    end

    struct MoveFocusOutSignal < GObject::Signal
      def name : String
        @detail ? "move-focus-out::#{@detail}" : "move-focus-out"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::DirectionType, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::DirectionType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          ::Box(Proc(Gtk::DirectionType, Nil)).unbox(_lib_box).call(direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::DirectionType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          ::Box(Proc(Gtk::Notebook, Gtk::DirectionType, Nil)).unbox(_lib_box).call(_sender, direction)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(direction : Gtk::DirectionType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-focus-out", direction)
      end
    end

    def move_focus_out_signal
      MoveFocusOutSignal.new(self)
    end

    struct PageAddedSignal < GObject::Signal
      def name : String
        @detail ? "page-added::#{@detail}" : "page-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          child = Gtk::Widget.new(lib_child, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(child, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          child = Gtk::Widget.new(lib_child, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(_sender, child, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(child : Gtk::Widget, page_num : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "page-added", child, page_num)
      end
    end

    def page_added_signal
      PageAddedSignal.new(self)
    end

    struct PageRemovedSignal < GObject::Signal
      def name : String
        @detail ? "page-removed::#{@detail}" : "page-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          child = Gtk::Widget.new(lib_child, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(child, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          child = Gtk::Widget.new(lib_child, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(_sender, child, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(child : Gtk::Widget, page_num : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "page-removed", child, page_num)
      end
    end

    def page_removed_signal
      PageRemovedSignal.new(self)
    end

    struct PageReorderedSignal < GObject::Signal
      def name : String
        @detail ? "page-reordered::#{@detail}" : "page-reordered"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          child = Gtk::Widget.new(lib_child, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(child, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_child : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          child = Gtk::Widget.new(lib_child, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(_sender, child, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(child : Gtk::Widget, page_num : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "page-reordered", child, page_num)
      end
    end

    def page_reordered_signal
      PageReorderedSignal.new(self)
    end

    struct ReorderTabSignal < GObject::Signal
      def name : String
        @detail ? "reorder-tab::#{@detail}" : "reorder-tab"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::DirectionType, Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::DirectionType, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, lib_move_to_last : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          # Generator::BuiltInTypeArgPlan
          move_to_last = GICrystal.to_bool(lib_move_to_last)
          ::Box(Proc(Gtk::DirectionType, Bool, Bool)).unbox(_lib_box).call(direction, move_to_last)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::DirectionType, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_direction : UInt32, lib_move_to_last : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          direction = Gtk::DirectionType.new(lib_direction)
          # Generator::BuiltInTypeArgPlan
          move_to_last = GICrystal.to_bool(lib_move_to_last)
          ::Box(Proc(Gtk::Notebook, Gtk::DirectionType, Bool, Bool)).unbox(_lib_box).call(_sender, direction, move_to_last)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(direction : Gtk::DirectionType, move_to_last : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "reorder-tab", direction, move_to_last)
      end
    end

    def reorder_tab_signal
      ReorderTabSignal.new(self)
    end

    struct SelectPageSignal < GObject::Signal
      def name : String
        @detail ? "select-page::#{@detail}" : "select-page"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_move_focus : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          move_focus = GICrystal.to_bool(lib_move_focus)
          ::Box(Proc(Bool, Bool)).unbox(_lib_box).call(move_focus)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_move_focus : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          move_focus = GICrystal.to_bool(lib_move_focus)
          ::Box(Proc(Gtk::Notebook, Bool, Bool)).unbox(_lib_box).call(_sender, move_focus)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(move_focus : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "select-page", move_focus)
      end
    end

    def select_page_signal
      SelectPageSignal.new(self)
    end

    struct SwitchPageSignal < GObject::Signal
      def name : String
        @detail ? "switch-page::#{@detail}" : "switch-page"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Gtk::Widget.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(page, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_page_num : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Notebook.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Gtk::Widget.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          page_num = lib_page_num
          ::Box(Proc(Gtk::Notebook, Gtk::Widget, UInt32, Nil)).unbox(_lib_box).call(_sender, page, page_num)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Gtk::Widget, page_num : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "switch-page", page, page_num)
      end
    end

    def switch_page_signal
      SwitchPageSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
