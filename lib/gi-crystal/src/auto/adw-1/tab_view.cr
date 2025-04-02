require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class TabView < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TabView, g_object_get_qdata)

    # Initialize a new `TabView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, default_icon : Gio::Icon? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, is_transferring_page : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, menu_model : Gio::MenuModel? = nil, n_pages : Int32? = nil, n_pinned_pages : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, pages : Gtk::SelectionModel? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, selected_page : Adw::TabPage? = nil, sensitive : Bool? = nil, shortcuts : Adw::TabViewShortcuts? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
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
      if !default_icon.nil?
        (_names.to_unsafe + _n).value = "default-icon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_icon)
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
      if !is_transferring_page.nil?
        (_names.to_unsafe + _n).value = "is-transferring-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_transferring_page)
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
      if !menu_model.nil?
        (_names.to_unsafe + _n).value = "menu-model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menu_model)
        _n += 1
      end
      if !n_pages.nil?
        (_names.to_unsafe + _n).value = "n-pages".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_pages)
        _n += 1
      end
      if !n_pinned_pages.nil?
        (_names.to_unsafe + _n).value = "n-pinned-pages".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_pinned_pages)
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
      if !selected_page.nil?
        (_names.to_unsafe + _n).value = "selected-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected_page)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !shortcuts.nil?
        (_names.to_unsafe + _n).value = "shortcuts".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, shortcuts)
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
      @@g_type ||= LibAdw.adw_tab_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::TabView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def default_icon=(value : Gio::Icon?) : Gio::Icon?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "default-icon", unsafe_value, Pointer(Void).null)
      value
    end

    def default_icon : Gio::Icon?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "default-icon", pointerof(value), Pointer(Void).null)
      Gio::AbstractIcon.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def is_transferring_page? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-transferring-page", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def menu_model=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "menu-model", unsafe_value, Pointer(Void).null)
      value
    end

    def menu_model : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "menu-model", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def n_pages : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "n-pages", pointerof(value), Pointer(Void).null)
      value
    end

    def n_pinned_pages : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "n-pinned-pages", pointerof(value), Pointer(Void).null)
      value
    end

    def pages : Gtk::SelectionModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pages", pointerof(value), Pointer(Void).null)
      Gtk::AbstractSelectionModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def selected_page=(value : Adw::TabPage?) : Adw::TabPage?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "selected-page", unsafe_value, Pointer(Void).null)
      value
    end

    def selected_page : Adw::TabPage?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "selected-page", pointerof(value), Pointer(Void).null)
      Adw::TabPage.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def shortcuts=(value : Adw::TabViewShortcuts) : Adw::TabViewShortcuts
      unsafe_value = value

      LibGObject.g_object_set(self, "shortcuts", unsafe_value, Pointer(Void).null)
      value
    end

    def shortcuts : Adw::TabViewShortcuts
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "shortcuts", pointerof(value), Pointer(Void).null)
      Adw::TabViewShortcuts.new(value)
    end

    def self.new : self
      # adw_tab_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_new

      # Return value handling
      Adw::TabView.new(_retval, GICrystal::Transfer::Full)
    end

    def add_page(child : Gtk::Widget, parent : Adw::TabPage?) : Adw::TabPage
      # adw_tab_view_add_page: (Method)
      # @child:
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibAdw.adw_tab_view_add_page(to_unsafe, child, parent)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def add_shortcuts(shortcuts : Adw::TabViewShortcuts) : Nil
      # adw_tab_view_add_shortcuts: (Method)
      # @shortcuts:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_add_shortcuts(to_unsafe, shortcuts)

      # Return value handling
    end

    def append(child : Gtk::Widget) : Adw::TabPage
      # adw_tab_view_append: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_append(to_unsafe, child)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def append_pinned(child : Gtk::Widget) : Adw::TabPage
      # adw_tab_view_append_pinned: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_append_pinned(to_unsafe, child)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def close_other_pages(page : Adw::TabPage) : Nil
      # adw_tab_view_close_other_pages: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_close_other_pages(to_unsafe, page)

      # Return value handling
    end

    def close_page(page : Adw::TabPage) : Nil
      # adw_tab_view_close_page: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_close_page(to_unsafe, page)

      # Return value handling
    end

    def close_page_finish(page : Adw::TabPage, confirm : Bool) : Nil
      # adw_tab_view_close_page_finish: (Method)
      # @page:
      # @confirm:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_close_page_finish(to_unsafe, page, confirm)

      # Return value handling
    end

    def close_pages_after(page : Adw::TabPage) : Nil
      # adw_tab_view_close_pages_after: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_close_pages_after(to_unsafe, page)

      # Return value handling
    end

    def close_pages_before(page : Adw::TabPage) : Nil
      # adw_tab_view_close_pages_before: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_close_pages_before(to_unsafe, page)

      # Return value handling
    end

    def default_icon : Gio::Icon
      # adw_tab_view_get_default_icon: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_default_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None)
    end

    def is_transferring_page : Bool
      # adw_tab_view_get_is_transferring_page: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_is_transferring_page(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def menu_model : Gio::MenuModel?
      # adw_tab_view_get_menu_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_view_get_menu_model(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def n_pages : Int32
      # adw_tab_view_get_n_pages: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_n_pages(to_unsafe)

      # Return value handling
      _retval
    end

    def n_pinned_pages : Int32
      # adw_tab_view_get_n_pinned_pages: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_n_pinned_pages(to_unsafe)

      # Return value handling
      _retval
    end

    def nth_page(position : Int32) : Adw::TabPage
      # adw_tab_view_get_nth_page: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_nth_page(to_unsafe, position)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def page(child : Gtk::Widget) : Adw::TabPage
      # adw_tab_view_get_page: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_page(to_unsafe, child)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def page_position(page : Adw::TabPage) : Int32
      # adw_tab_view_get_page_position: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_page_position(to_unsafe, page)

      # Return value handling
      _retval
    end

    def pages : Gtk::SelectionModel
      # adw_tab_view_get_pages: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_tab_view_get_pages(to_unsafe)

      # Return value handling
      Gtk::AbstractSelectionModel.new(_retval, GICrystal::Transfer::Full)
    end

    def selected_page : Adw::TabPage?
      # adw_tab_view_get_selected_page: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_view_get_selected_page(to_unsafe)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def shortcuts : Adw::TabViewShortcuts
      # adw_tab_view_get_shortcuts: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_get_shortcuts(to_unsafe)

      # Return value handling
      Adw::TabViewShortcuts.new(_retval)
    end

    def insert(child : Gtk::Widget, position : Int32) : Adw::TabPage
      # adw_tab_view_insert: (Method)
      # @child:
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_insert(to_unsafe, child, position)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def insert_pinned(child : Gtk::Widget, position : Int32) : Adw::TabPage
      # adw_tab_view_insert_pinned: (Method)
      # @child:
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_insert_pinned(to_unsafe, child, position)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def invalidate_thumbnails : Nil
      # adw_tab_view_invalidate_thumbnails: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_invalidate_thumbnails(to_unsafe)

      # Return value handling
    end

    def prepend(child : Gtk::Widget) : Adw::TabPage
      # adw_tab_view_prepend: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_prepend(to_unsafe, child)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def prepend_pinned(child : Gtk::Widget) : Adw::TabPage
      # adw_tab_view_prepend_pinned: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_prepend_pinned(to_unsafe, child)

      # Return value handling
      Adw::TabPage.new(_retval, GICrystal::Transfer::None)
    end

    def remove_shortcuts(shortcuts : Adw::TabViewShortcuts) : Nil
      # adw_tab_view_remove_shortcuts: (Method)
      # @shortcuts:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_remove_shortcuts(to_unsafe, shortcuts)

      # Return value handling
    end

    def reorder_backward(page : Adw::TabPage) : Bool
      # adw_tab_view_reorder_backward: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_reorder_backward(to_unsafe, page)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reorder_first(page : Adw::TabPage) : Bool
      # adw_tab_view_reorder_first: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_reorder_first(to_unsafe, page)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reorder_forward(page : Adw::TabPage) : Bool
      # adw_tab_view_reorder_forward: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_reorder_forward(to_unsafe, page)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reorder_last(page : Adw::TabPage) : Bool
      # adw_tab_view_reorder_last: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_reorder_last(to_unsafe, page)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reorder_page(page : Adw::TabPage, position : Int32) : Bool
      # adw_tab_view_reorder_page: (Method)
      # @page:
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_reorder_page(to_unsafe, page, position)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def select_next_page : Bool
      # adw_tab_view_select_next_page: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_select_next_page(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def select_previous_page : Bool
      # adw_tab_view_select_previous_page: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_view_select_previous_page(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def default_icon=(default_icon : Gio::Icon) : Nil
      # adw_tab_view_set_default_icon: (Method | Setter)
      # @default_icon:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_set_default_icon(to_unsafe, default_icon)

      # Return value handling
    end

    def menu_model=(menu_model : Gio::MenuModel?) : Nil
      # adw_tab_view_set_menu_model: (Method | Setter)
      # @menu_model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      menu_model = if menu_model.nil?
                     Pointer(Void).null
                   else
                     menu_model.to_unsafe
                   end

      # C call
      LibAdw.adw_tab_view_set_menu_model(to_unsafe, menu_model)

      # Return value handling
    end

    def set_page_pinned(page : Adw::TabPage, pinned : Bool) : Nil
      # adw_tab_view_set_page_pinned: (Method)
      # @page:
      # @pinned:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_set_page_pinned(to_unsafe, page, pinned)

      # Return value handling
    end

    def selected_page=(selected_page : Adw::TabPage) : Nil
      # adw_tab_view_set_selected_page: (Method | Setter)
      # @selected_page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_set_selected_page(to_unsafe, selected_page)

      # Return value handling
    end

    def shortcuts=(shortcuts : Adw::TabViewShortcuts) : Nil
      # adw_tab_view_set_shortcuts: (Method | Setter)
      # @shortcuts:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_set_shortcuts(to_unsafe, shortcuts)

      # Return value handling
    end

    def transfer_page(page : Adw::TabPage, other_view : Adw::TabView, position : Int32) : Nil
      # adw_tab_view_transfer_page: (Method)
      # @page:
      # @other_view:
      # @position:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_view_transfer_page(to_unsafe, page, other_view, position)

      # Return value handling
    end

    struct ClosePageSignal < GObject::Signal
      def name : String
        @detail ? "close-page::#{@detail}" : "close-page"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Adw::TabPage, Bool)).unbox(_lib_box).call(page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabView, Adw::TabPage, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Adw::TabView, Adw::TabPage, Bool)).unbox(_lib_box).call(_sender, page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "close-page", page)
      end
    end

    def close_page_signal
      ClosePageSignal.new(self)
    end

    struct CreateWindowSignal < GObject::Signal
      def name : String
        @detail ? "create-window::#{@detail}" : "create-window"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabView)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabView), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Adw::TabView)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabView, Adw::TabView), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::TabView, Adw::TabView)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "create-window")
      end
    end

    def create_window_signal
      CreateWindowSignal.new(self)
    end

    struct IndicatorActivatedSignal < GObject::Signal
      def name : String
        @detail ? "indicator-activated::#{@detail}" : "indicator-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Adw::TabPage, Nil)).unbox(_lib_box).call(page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabView, Adw::TabPage, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Adw::TabView, Adw::TabPage, Nil)).unbox(_lib_box).call(_sender, page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "indicator-activated", page)
      end
    end

    def indicator_activated_signal
      IndicatorActivatedSignal.new(self)
    end

    struct PageAttachedSignal < GObject::Signal
      def name : String
        @detail ? "page-attached::#{@detail}" : "page-attached"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_position : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          ::Box(Proc(Adw::TabPage, Int32, Nil)).unbox(_lib_box).call(page, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabView, Adw::TabPage, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_position : Int32, _lib_box : Pointer(Void)) {
          _sender = Adw::TabView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          ::Box(Proc(Adw::TabView, Adw::TabPage, Int32, Nil)).unbox(_lib_box).call(_sender, page, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage, position : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "page-attached", page, position)
      end
    end

    def page_attached_signal
      PageAttachedSignal.new(self)
    end

    struct PageDetachedSignal < GObject::Signal
      def name : String
        @detail ? "page-detached::#{@detail}" : "page-detached"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_position : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          ::Box(Proc(Adw::TabPage, Int32, Nil)).unbox(_lib_box).call(page, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabView, Adw::TabPage, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_position : Int32, _lib_box : Pointer(Void)) {
          _sender = Adw::TabView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          ::Box(Proc(Adw::TabView, Adw::TabPage, Int32, Nil)).unbox(_lib_box).call(_sender, page, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage, position : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "page-detached", page, position)
      end
    end

    def page_detached_signal
      PageDetachedSignal.new(self)
    end

    struct PageReorderedSignal < GObject::Signal
      def name : String
        @detail ? "page-reordered::#{@detail}" : "page-reordered"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_position : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          ::Box(Proc(Adw::TabPage, Int32, Nil)).unbox(_lib_box).call(page, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabView, Adw::TabPage, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_position : Int32, _lib_box : Pointer(Void)) {
          _sender = Adw::TabView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          ::Box(Proc(Adw::TabView, Adw::TabPage, Int32, Nil)).unbox(_lib_box).call(_sender, page, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage, position : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "page-reordered", page, position)
      end
    end

    def page_reordered_signal
      PageReorderedSignal.new(self)
    end

    struct SetupMenuSignal < GObject::Signal
      def name : String
        @detail ? "setup-menu::#{@detail}" : "setup-menu"
      end

      def connect(*, after : Bool = false, &block : Proc(Adw::TabPage?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Adw::TabPage?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          page = (lib_page.null? ? nil : Adw::TabPage.new(lib_page, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None) unless lib_page.null?
          ::Box(Proc(Adw::TabPage?, Nil)).unbox(_lib_box).call(page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::TabView, Adw::TabPage?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          page = (lib_page.null? ? nil : Adw::TabPage.new(lib_page, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None) unless lib_page.null?
          ::Box(Proc(Adw::TabView, Adw::TabPage?, Nil)).unbox(_lib_box).call(_sender, page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Adw::TabPage?) : Nil
        # Generator::NullableArrayPlan
        page = if page.nil?
                 Void.null
               else
                 page.to_unsafe
               end

        LibGObject.g_signal_emit_by_name(@source, "setup-menu", page)
      end
    end

    def setup_menu_signal
      SetupMenuSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
