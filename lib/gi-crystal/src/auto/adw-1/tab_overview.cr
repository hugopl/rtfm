require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class TabOverview < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TabOverview, g_object_get_qdata)

    # Initialize a new `TabOverview`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, enable_new_tab : Bool? = nil, enable_search : Bool? = nil, extra_drag_preferred_action : Gdk::DragAction? = nil, extra_drag_preload : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, inverted : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, open : Bool? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, search_active : Bool? = nil, secondary_menu : Gio::MenuModel? = nil, sensitive : Bool? = nil, show_end_title_buttons : Bool? = nil, show_start_title_buttons : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, view : Adw::TabView? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[48]
      _values = StaticArray(LibGObject::Value, 48).new(LibGObject::Value.new)
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
      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
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
      if !enable_new_tab.nil?
        (_names.to_unsafe + _n).value = "enable-new-tab".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_new_tab)
        _n += 1
      end
      if !enable_search.nil?
        (_names.to_unsafe + _n).value = "enable-search".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_search)
        _n += 1
      end
      if !extra_drag_preferred_action.nil?
        (_names.to_unsafe + _n).value = "extra-drag-preferred-action".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extra_drag_preferred_action)
        _n += 1
      end
      if !extra_drag_preload.nil?
        (_names.to_unsafe + _n).value = "extra-drag-preload".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extra_drag_preload)
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
      if !inverted.nil?
        (_names.to_unsafe + _n).value = "inverted".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, inverted)
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
      if !search_active.nil?
        (_names.to_unsafe + _n).value = "search-active".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, search_active)
        _n += 1
      end
      if !secondary_menu.nil?
        (_names.to_unsafe + _n).value = "secondary-menu".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_menu)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !show_end_title_buttons.nil?
        (_names.to_unsafe + _n).value = "show-end-title-buttons".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_end_title_buttons)
        _n += 1
      end
      if !show_start_title_buttons.nil?
        (_names.to_unsafe + _n).value = "show-start-title-buttons".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_start_title_buttons)
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
      if !view.nil?
        (_names.to_unsafe + _n).value = "view".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, view)
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
      @@g_type ||= LibAdw.adw_tab_overview_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::TabOverview.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def child=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "child", unsafe_value, Pointer(Void).null)
      value
    end

    def child : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "child", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def enable_new_tab=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-new-tab", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_new_tab? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-new-tab", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def extra_drag_preferred_action : Gdk::DragAction
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "extra-drag-preferred-action", pointerof(value), Pointer(Void).null)
      Gdk::DragAction.new(value)
    end

    def extra_drag_preload=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "extra-drag-preload", unsafe_value, Pointer(Void).null)
      value
    end

    def extra_drag_preload? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "extra-drag-preload", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def inverted=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "inverted", unsafe_value, Pointer(Void).null)
      value
    end

    def inverted? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "inverted", pointerof(value), Pointer(Void).null)
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

    def search_active? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "search-active", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def secondary_menu=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "secondary-menu", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_menu : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "secondary-menu", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def show_end_title_buttons=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-end-title-buttons", unsafe_value, Pointer(Void).null)
      value
    end

    def show_end_title_buttons? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-end-title-buttons", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_start_title_buttons=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-start-title-buttons", unsafe_value, Pointer(Void).null)
      value
    end

    def show_start_title_buttons? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-start-title-buttons", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def view=(value : Adw::TabView?) : Adw::TabView?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "view", unsafe_value, Pointer(Void).null)
      value
    end

    def view : Adw::TabView?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "view", pointerof(value), Pointer(Void).null)
      Adw::TabView.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # adw_tab_overview_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_new

      # Return value handling
      Adw::TabOverview.new(_retval, GICrystal::Transfer::Full)
    end

    def child : Gtk::Widget?
      # adw_tab_overview_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_overview_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def enable_new_tab : Bool
      # adw_tab_overview_get_enable_new_tab: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_enable_new_tab(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_search : Bool
      # adw_tab_overview_get_enable_search: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_enable_search(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def extra_drag_preferred_action : Gdk::DragAction
      # adw_tab_overview_get_extra_drag_preferred_action: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_extra_drag_preferred_action(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def extra_drag_preload : Bool
      # adw_tab_overview_get_extra_drag_preload: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_extra_drag_preload(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def inverted : Bool
      # adw_tab_overview_get_inverted: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_inverted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def open : Bool
      # adw_tab_overview_get_open: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_open(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def search_active : Bool
      # adw_tab_overview_get_search_active: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_search_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def secondary_menu : Gio::MenuModel?
      # adw_tab_overview_get_secondary_menu: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_overview_get_secondary_menu(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def show_end_title_buttons : Bool
      # adw_tab_overview_get_show_end_title_buttons: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_show_end_title_buttons(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_start_title_buttons : Bool
      # adw_tab_overview_get_show_start_title_buttons: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_overview_get_show_start_title_buttons(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def view : Adw::TabView?
      # adw_tab_overview_get_view: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_overview_get_view(to_unsafe)

      # Return value handling
      Adw::TabView.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def child=(child : Gtk::Widget?) : Nil
      # adw_tab_overview_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibAdw.adw_tab_overview_set_child(to_unsafe, child)

      # Return value handling
    end

    def enable_new_tab=(enable_new_tab : Bool) : Nil
      # adw_tab_overview_set_enable_new_tab: (Method | Setter)
      # @enable_new_tab:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_overview_set_enable_new_tab(to_unsafe, enable_new_tab)

      # Return value handling
    end

    def enable_search=(enable_search : Bool) : Nil
      # adw_tab_overview_set_enable_search: (Method | Setter)
      # @enable_search:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_overview_set_enable_search(to_unsafe, enable_search)

      # Return value handling
    end

    def extra_drag_preload=(preload : Bool) : Nil
      # adw_tab_overview_set_extra_drag_preload: (Method | Setter)
      # @preload:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_overview_set_extra_drag_preload(to_unsafe, preload)

      # Return value handling
    end

    def inverted=(inverted : Bool) : Nil
      # adw_tab_overview_set_inverted: (Method | Setter)
      # @inverted:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_overview_set_inverted(to_unsafe, inverted)

      # Return value handling
    end

    def open=(open : Bool) : Nil
      # adw_tab_overview_set_open: (Method | Setter)
      # @open:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_overview_set_open(to_unsafe, open)

      # Return value handling
    end

    def secondary_menu=(secondary_menu : Gio::MenuModel?) : Nil
      # adw_tab_overview_set_secondary_menu: (Method | Setter)
      # @secondary_menu: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      secondary_menu = if secondary_menu.nil?
                         Pointer(Void).null
                       else
                         secondary_menu.to_unsafe
                       end

      # C call
      LibAdw.adw_tab_overview_set_secondary_menu(to_unsafe, secondary_menu)

      # Return value handling
    end

    def show_end_title_buttons=(show_end_title_buttons : Bool) : Nil
      # adw_tab_overview_set_show_end_title_buttons: (Method | Setter)
      # @show_end_title_buttons:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_overview_set_show_end_title_buttons(to_unsafe, show_end_title_buttons)

      # Return value handling
    end

    def show_start_title_buttons=(show_start_title_buttons : Bool) : Nil
      # adw_tab_overview_set_show_start_title_buttons: (Method | Setter)
      # @show_start_title_buttons:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_overview_set_show_start_title_buttons(to_unsafe, show_start_title_buttons)

      # Return value handling
    end

    def view=(view : Adw::TabView?) : Nil
      # adw_tab_overview_set_view: (Method | Setter)
      # @view: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      view = if view.nil?
               Pointer(Void).null
             else
               view.to_unsafe
             end

      # C call
      LibAdw.adw_tab_overview_set_view(to_unsafe, view)

      # Return value handling
    end

    def setup_extra_drop_target(actions : Gdk::DragAction, types : Enumerable(UInt64)?) : Nil
      # adw_tab_overview_setup_extra_drop_target: (Method)
      # @actions:
      # @types: (nullable) (array length=n_types element-type Gtype)
      # @n_types:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_types = types.try(&.size) || 0
      # Generator::NullableArrayPlan
      types = if types.nil?
                Pointer(UInt64).null
              else
                types.to_a.to_unsafe.as(Pointer(UInt64))
              end

      # C call
      LibAdw.adw_tab_overview_setup_extra_drop_target(to_unsafe, actions, types, n_types)

      # Return value handling
    end

    struct CreateTabSignal < GObject::Signal
      def name : String
        @detail ? "create-tab::#{@detail}" : "create-tab"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Adw::TabPage)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabOverview, Adw::TabPage), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabOverview.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::TabOverview, Adw::TabPage)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "create-tab")
      end
    end

    def create_tab_signal
      CreateTabSignal.new(self)
    end

    struct ExtraDragDropSignal < GObject::Signal
      def name : String
        @detail ? "extra-drag-drop::#{@detail}" : "extra-drag-drop"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage, GObject::Value, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage, GObject::Value, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          ::Box(Proc(Adw::TabPage, GObject::Value, Bool)).unbox(_lib_box).call(page, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabOverview, Adw::TabPage, GObject::Value, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabOverview.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          ::Box(Proc(Adw::TabOverview, Adw::TabPage, GObject::Value, Bool)).unbox(_lib_box).call(_sender, page, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage, value : _) : Nil
        # Generator::HandmadeArgPlan
        value = if !value.is_a?(GObject::Value)
                  GObject::Value.new(value).to_unsafe
                else
                  value.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "extra-drag-drop", page, value)
      end
    end

    def extra_drag_drop_signal
      ExtraDragDropSignal.new(self)
    end

    struct ExtraDragValueSignal < GObject::Signal
      def name : String
        @detail ? "extra-drag-value::#{@detail}" : "extra-drag-value"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage, GObject::Value, Gdk::DragAction)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage, GObject::Value, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          ::Box(Proc(Adw::TabPage, GObject::Value, Gdk::DragAction)).unbox(_lib_box).call(page, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabOverview, Adw::TabPage, GObject::Value, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabOverview.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          ::Box(Proc(Adw::TabOverview, Adw::TabPage, GObject::Value, Gdk::DragAction)).unbox(_lib_box).call(_sender, page, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage, value : _) : Nil
        # Generator::HandmadeArgPlan
        value = if !value.is_a?(GObject::Value)
                  GObject::Value.new(value).to_unsafe
                else
                  value.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "extra-drag-value", page, value)
      end
    end

    def extra_drag_value_signal
      ExtraDragValueSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
