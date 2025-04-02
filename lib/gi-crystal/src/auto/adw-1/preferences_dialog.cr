require "./dialog"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/shortcut_manager"

module Adw
  @[GICrystal::GeneratedWrapper]
  class PreferencesDialog < Dialog
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::ShortcutManager

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::PreferencesDialogClass), class_init,
        sizeof(LibAdw::PreferencesDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(PreferencesDialog, g_object_get_qdata)

    # Initialize a new `PreferencesDialog`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_close : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, content_height : Int32? = nil, content_width : Int32? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, current_breakpoint : Adw::Breakpoint? = nil, cursor : Gdk::Cursor? = nil, default_widget : Gtk::Widget? = nil, focus_on_click : Bool? = nil, focus_widget : Gtk::Widget? = nil, focusable : Bool? = nil, follows_content_size : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, presentation_mode : Adw::DialogPresentationMode? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, search_enabled : Bool? = nil, sensitive : Bool? = nil, title : ::String? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, visible_page : Gtk::Widget? = nil, visible_page_name : ::String? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[49]
      _values = StaticArray(LibGObject::Value, 49).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !can_close.nil?
        (_names.to_unsafe + _n).value = "can-close".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_close)
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
      if !content_height.nil?
        (_names.to_unsafe + _n).value = "content-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content_height)
        _n += 1
      end
      if !content_width.nil?
        (_names.to_unsafe + _n).value = "content-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content_width)
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
      if !current_breakpoint.nil?
        (_names.to_unsafe + _n).value = "current-breakpoint".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, current_breakpoint)
        _n += 1
      end
      if !cursor.nil?
        (_names.to_unsafe + _n).value = "cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor)
        _n += 1
      end
      if !default_widget.nil?
        (_names.to_unsafe + _n).value = "default-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_widget)
        _n += 1
      end
      if !focus_on_click.nil?
        (_names.to_unsafe + _n).value = "focus-on-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_on_click)
        _n += 1
      end
      if !focus_widget.nil?
        (_names.to_unsafe + _n).value = "focus-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_widget)
        _n += 1
      end
      if !focusable.nil?
        (_names.to_unsafe + _n).value = "focusable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focusable)
        _n += 1
      end
      if !follows_content_size.nil?
        (_names.to_unsafe + _n).value = "follows-content-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, follows_content_size)
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
      if !presentation_mode.nil?
        (_names.to_unsafe + _n).value = "presentation-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, presentation_mode)
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
      if !search_enabled.nil?
        (_names.to_unsafe + _n).value = "search-enabled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, search_enabled)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
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
      if !visible_page.nil?
        (_names.to_unsafe + _n).value = "visible-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible_page)
        _n += 1
      end
      if !visible_page_name.nil?
        (_names.to_unsafe + _n).value = "visible-page-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible_page_name)
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
      @@g_type ||= LibAdw.adw_preferences_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::PreferencesDialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def search_enabled=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "search-enabled", unsafe_value, Pointer(Void).null)
      value
    end

    def search_enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "search-enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def visible_page=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "visible-page", unsafe_value, Pointer(Void).null)
      value
    end

    def visible_page : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "visible-page", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def visible_page_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "visible-page-name", unsafe_value, Pointer(Void).null)
      value
    end

    def visible_page_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "visible-page-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#visible_page_name` property to nil.
    def visible_page_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "visible-page-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#visible_page_name`, but can return nil.
    def visible_page_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "visible-page-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # adw_preferences_dialog_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_preferences_dialog_new

      # Return value handling
      Adw::PreferencesDialog.new(_retval, GICrystal::Transfer::Full)
    end

    def add(page : Adw::PreferencesPage) : Nil
      # adw_preferences_dialog_add: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_preferences_dialog_add(to_unsafe, page)

      # Return value handling
    end

    def add_toast(toast : Adw::Toast) : Nil
      # adw_preferences_dialog_add_toast: (Method)
      # @toast: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(toast)

      # C call
      LibAdw.adw_preferences_dialog_add_toast(to_unsafe, toast)

      # Return value handling
    end

    def search_enabled : Bool
      # adw_preferences_dialog_get_search_enabled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_preferences_dialog_get_search_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def visible_page : Adw::PreferencesPage?
      # adw_preferences_dialog_get_visible_page: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_preferences_dialog_get_visible_page(to_unsafe)

      # Return value handling
      Adw::PreferencesPage.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def visible_page_name : ::String?
      # adw_preferences_dialog_get_visible_page_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_preferences_dialog_get_visible_page_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def pop_subpage : Bool
      # adw_preferences_dialog_pop_subpage: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_preferences_dialog_pop_subpage(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def push_subpage(page : Adw::NavigationPage) : Nil
      # adw_preferences_dialog_push_subpage: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_preferences_dialog_push_subpage(to_unsafe, page)

      # Return value handling
    end

    def remove(page : Adw::PreferencesPage) : Nil
      # adw_preferences_dialog_remove: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_preferences_dialog_remove(to_unsafe, page)

      # Return value handling
    end

    def search_enabled=(search_enabled : Bool) : Nil
      # adw_preferences_dialog_set_search_enabled: (Method | Setter)
      # @search_enabled:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_preferences_dialog_set_search_enabled(to_unsafe, search_enabled)

      # Return value handling
    end

    def visible_page=(page : Adw::PreferencesPage) : Nil
      # adw_preferences_dialog_set_visible_page: (Method | Setter)
      # @page:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_preferences_dialog_set_visible_page(to_unsafe, page)

      # Return value handling
    end

    def visible_page_name=(name : ::String) : Nil
      # adw_preferences_dialog_set_visible_page_name: (Method | Setter)
      # @name:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_preferences_dialog_set_visible_page_name(to_unsafe, name)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
