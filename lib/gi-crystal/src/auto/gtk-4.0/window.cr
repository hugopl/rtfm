require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./native"

require "./root"

require "./shortcut_manager"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Window < Widget
    include Accessible
    include Buildable
    include ConstraintTarget
    include Native
    include Root
    include ShortcutManager

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::WindowClass), class_init,
        sizeof(LibGtk::Window), instance_init, 0)
    end

    GICrystal.declare_new_method(Window, g_object_get_qdata)

    # Initialize a new `Window`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, application : Gtk::Application? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, decorated : Bool? = nil, default_height : Int32? = nil, default_widget : Gtk::Widget? = nil, default_width : Int32? = nil, deletable : Bool? = nil, destroy_with_parent : Bool? = nil, display : Gdk::Display? = nil, focus_on_click : Bool? = nil, focus_visible : Bool? = nil, focus_widget : Gtk::Widget? = nil, focusable : Bool? = nil, fullscreened : Bool? = nil, halign : Gtk::Align? = nil, handle_menubar_accel : Bool? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hide_on_close : Bool? = nil, icon_name : ::String? = nil, is_active : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, maximized : Bool? = nil, mnemonics_visible : Bool? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, resizable : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, startup_id : ::String? = nil, suspended : Bool? = nil, title : ::String? = nil, titlebar : Gtk::Widget? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, transient_for : Gtk::Window? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[61]
      _values = StaticArray(LibGObject::Value, 61).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !application.nil?
        (_names.to_unsafe + _n).value = "application".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, application)
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
      if !decorated.nil?
        (_names.to_unsafe + _n).value = "decorated".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, decorated)
        _n += 1
      end
      if !default_height.nil?
        (_names.to_unsafe + _n).value = "default-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_height)
        _n += 1
      end
      if !default_widget.nil?
        (_names.to_unsafe + _n).value = "default-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_widget)
        _n += 1
      end
      if !default_width.nil?
        (_names.to_unsafe + _n).value = "default-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_width)
        _n += 1
      end
      if !deletable.nil?
        (_names.to_unsafe + _n).value = "deletable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, deletable)
        _n += 1
      end
      if !destroy_with_parent.nil?
        (_names.to_unsafe + _n).value = "destroy-with-parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, destroy_with_parent)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !focus_on_click.nil?
        (_names.to_unsafe + _n).value = "focus-on-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_on_click)
        _n += 1
      end
      if !focus_visible.nil?
        (_names.to_unsafe + _n).value = "focus-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_visible)
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
      if !fullscreened.nil?
        (_names.to_unsafe + _n).value = "fullscreened".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fullscreened)
        _n += 1
      end
      if !halign.nil?
        (_names.to_unsafe + _n).value = "halign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, halign)
        _n += 1
      end
      if !handle_menubar_accel.nil?
        (_names.to_unsafe + _n).value = "handle-menubar-accel".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, handle_menubar_accel)
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
      if !hide_on_close.nil?
        (_names.to_unsafe + _n).value = "hide-on-close".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hide_on_close)
        _n += 1
      end
      if !icon_name.nil?
        (_names.to_unsafe + _n).value = "icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_name)
        _n += 1
      end
      if !is_active.nil?
        (_names.to_unsafe + _n).value = "is-active".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_active)
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
      if !maximized.nil?
        (_names.to_unsafe + _n).value = "maximized".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, maximized)
        _n += 1
      end
      if !mnemonics_visible.nil?
        (_names.to_unsafe + _n).value = "mnemonics-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mnemonics_visible)
        _n += 1
      end
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
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
      if !resizable.nil?
        (_names.to_unsafe + _n).value = "resizable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resizable)
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
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !startup_id.nil?
        (_names.to_unsafe + _n).value = "startup-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, startup_id)
        _n += 1
      end
      if !suspended.nil?
        (_names.to_unsafe + _n).value = "suspended".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, suspended)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !titlebar.nil?
        (_names.to_unsafe + _n).value = "titlebar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, titlebar)
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
      if !transient_for.nil?
        (_names.to_unsafe + _n).value = "transient-for".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transient_for)
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
      @@g_type ||= LibGtk.gtk_window_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Window.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def application=(value : Gtk::Application?) : Gtk::Application?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "application", unsafe_value, Pointer(Void).null)
      value
    end

    def application : Gtk::Application?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "application", pointerof(value), Pointer(Void).null)
      Gtk::Application.new(value, GICrystal::Transfer::None) unless value.null?
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

    def decorated=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "decorated", unsafe_value, Pointer(Void).null)
      value
    end

    def decorated? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "decorated", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def default_height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "default-height", unsafe_value, Pointer(Void).null)
      value
    end

    def default_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "default-height", pointerof(value), Pointer(Void).null)
      value
    end

    def default_widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "default-widget", unsafe_value, Pointer(Void).null)
      value
    end

    def default_widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "default-widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def default_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "default-width", unsafe_value, Pointer(Void).null)
      value
    end

    def default_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "default-width", pointerof(value), Pointer(Void).null)
      value
    end

    def deletable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "deletable", unsafe_value, Pointer(Void).null)
      value
    end

    def deletable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "deletable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def destroy_with_parent=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "destroy-with-parent", unsafe_value, Pointer(Void).null)
      value
    end

    def destroy_with_parent? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "destroy-with-parent", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def focus_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "focus-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def focus_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "focus-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def focus_widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "focus-widget", unsafe_value, Pointer(Void).null)
      value
    end

    def focus_widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "focus-widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def fullscreened=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "fullscreened", unsafe_value, Pointer(Void).null)
      value
    end

    def fullscreened? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "fullscreened", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def handle_menubar_accel=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "handle-menubar-accel", unsafe_value, Pointer(Void).null)
      value
    end

    def handle_menubar_accel? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "handle-menubar-accel", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def hide_on_close=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "hide-on-close", unsafe_value, Pointer(Void).null)
      value
    end

    def hide_on_close? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "hide-on-close", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def icon_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "icon-name", unsafe_value, Pointer(Void).null)
      value
    end

    def icon_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#icon_name` property to nil.
    def icon_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "icon-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#icon_name`, but can return nil.
    def icon_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def is_active? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-active", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def maximized=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "maximized", unsafe_value, Pointer(Void).null)
      value
    end

    def maximized? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "maximized", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def mnemonics_visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "mnemonics-visible", unsafe_value, Pointer(Void).null)
      value
    end

    def mnemonics_visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "mnemonics-visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def modal=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "modal", unsafe_value, Pointer(Void).null)
      value
    end

    def modal? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "modal", pointerof(value), Pointer(Void).null)
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

    def startup_id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "startup-id", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#startup_id` property to nil.
    def startup_id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "startup-id", Pointer(Void).null, Pointer(Void).null)
    end

    def suspended? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "suspended", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def titlebar=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "titlebar", unsafe_value, Pointer(Void).null)
      value
    end

    def titlebar : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "titlebar", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def transient_for=(value : Gtk::Window?) : Gtk::Window?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "transient-for", unsafe_value, Pointer(Void).null)
      value
    end

    def transient_for : Gtk::Window?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "transient-for", pointerof(value), Pointer(Void).null)
      Gtk::Window.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # gtk_window_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_new

      # Return value handling
      Gtk::Window.new(_retval, GICrystal::Transfer::Full)
    end

    def self.default_icon_name : ::String?
      # gtk_window_get_default_icon_name: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_default_icon_name

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def self.toplevels : Gio::ListModel
      # gtk_window_get_toplevels: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_toplevels

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::None)
    end

    def self.list_toplevels : GLib::List
      # gtk_window_list_toplevels: (None)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_window_list_toplevels

      # Return value handling
      GLib::List(Gtk::Widget).new(_retval, GICrystal::Transfer::Container)
    end

    def self.auto_startup_notification=(setting : Bool) : Nil
      # gtk_window_set_auto_startup_notification: (None)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_auto_startup_notification(setting)

      # Return value handling
    end

    def self.default_icon_name=(name : ::String) : Nil
      # gtk_window_set_default_icon_name: (None)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_default_icon_name(name)

      # Return value handling
    end

    def self.interactive_debugging=(enable : Bool) : Nil
      # gtk_window_set_interactive_debugging: (None)
      # @enable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_interactive_debugging(enable)

      # Return value handling
    end

    def close : Nil
      # gtk_window_close: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_close(to_unsafe)

      # Return value handling
    end

    def destroy : Nil
      # gtk_window_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_destroy(to_unsafe)

      # Return value handling
    end

    def fullscreen : Nil
      # gtk_window_fullscreen: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_fullscreen(to_unsafe)

      # Return value handling
    end

    def fullscreen_on_monitor(monitor : Gdk::Monitor) : Nil
      # gtk_window_fullscreen_on_monitor: (Method)
      # @monitor:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_fullscreen_on_monitor(to_unsafe, monitor)

      # Return value handling
    end

    def application : Gtk::Application?
      # gtk_window_get_application: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_application(to_unsafe)

      # Return value handling
      Gtk::Application.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def child : Gtk::Widget?
      # gtk_window_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def decorated : Bool
      # gtk_window_get_decorated: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_decorated(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def default_size : Nil
      # gtk_window_get_default_size: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_window_get_default_size(to_unsafe, width, height)

      # Return value handling
    end

    def default_widget : Gtk::Widget?
      # gtk_window_get_default_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_default_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def deletable : Bool
      # gtk_window_get_deletable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_deletable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def destroy_with_parent : Bool
      # gtk_window_get_destroy_with_parent: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_destroy_with_parent(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def focus : Gtk::Widget?
      # gtk_window_get_focus: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_focus(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def focus_visible : Bool
      # gtk_window_get_focus_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_focus_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def group : Gtk::WindowGroup
      # gtk_window_get_group: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_group(to_unsafe)

      # Return value handling
      Gtk::WindowGroup.new(_retval, GICrystal::Transfer::None)
    end

    def handle_menubar_accel : Bool
      # gtk_window_get_handle_menubar_accel: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_handle_menubar_accel(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hide_on_close : Bool
      # gtk_window_get_hide_on_close: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_hide_on_close(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon_name : ::String?
      # gtk_window_get_icon_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_icon_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def mnemonics_visible : Bool
      # gtk_window_get_mnemonics_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_mnemonics_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def modal : Bool
      # gtk_window_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def resizable : Bool
      # gtk_window_get_resizable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_get_resizable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def title : ::String?
      # gtk_window_get_title: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def titlebar : Gtk::Widget?
      # gtk_window_get_titlebar: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_titlebar(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def transient_for : Gtk::Window?
      # gtk_window_get_transient_for: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_window_get_transient_for(to_unsafe)

      # Return value handling
      Gtk::Window.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def has_group : Bool
      # gtk_window_has_group: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_has_group(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_active? : Bool
      # gtk_window_is_active: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_is_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_fullscreen? : Bool
      # gtk_window_is_fullscreen: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_is_fullscreen(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_maximized? : Bool
      # gtk_window_is_maximized: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_is_maximized(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_suspended? : Bool
      # gtk_window_is_suspended: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_window_is_suspended(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def maximize : Nil
      # gtk_window_maximize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_maximize(to_unsafe)

      # Return value handling
    end

    def minimize : Nil
      # gtk_window_minimize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_minimize(to_unsafe)

      # Return value handling
    end

    def present : Nil
      # gtk_window_present: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_present(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def present_with_time(timestamp : UInt32) : Nil
      # gtk_window_present_with_time: (Method)
      # @timestamp:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_present_with_time(to_unsafe, timestamp)

      # Return value handling
    end

    def application=(application : Gtk::Application?) : Nil
      # gtk_window_set_application: (Method | Setter)
      # @application: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      application = if application.nil?
                      Pointer(Void).null
                    else
                      application.to_unsafe
                    end

      # C call
      LibGtk.gtk_window_set_application(to_unsafe, application)

      # Return value handling
    end

    def child=(child : Gtk::Widget?) : Nil
      # gtk_window_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibGtk.gtk_window_set_child(to_unsafe, child)

      # Return value handling
    end

    def decorated=(setting : Bool) : Nil
      # gtk_window_set_decorated: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_decorated(to_unsafe, setting)

      # Return value handling
    end

    def set_default_size(width : Int32, height : Int32) : Nil
      # gtk_window_set_default_size: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_default_size(to_unsafe, width, height)

      # Return value handling
    end

    def default_widget=(default_widget : Gtk::Widget?) : Nil
      # gtk_window_set_default_widget: (Method | Setter)
      # @default_widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      default_widget = if default_widget.nil?
                         Pointer(Void).null
                       else
                         default_widget.to_unsafe
                       end

      # C call
      LibGtk.gtk_window_set_default_widget(to_unsafe, default_widget)

      # Return value handling
    end

    def deletable=(setting : Bool) : Nil
      # gtk_window_set_deletable: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_deletable(to_unsafe, setting)

      # Return value handling
    end

    def destroy_with_parent=(setting : Bool) : Nil
      # gtk_window_set_destroy_with_parent: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_destroy_with_parent(to_unsafe, setting)

      # Return value handling
    end

    def display=(display : Gdk::Display) : Nil
      # gtk_window_set_display: (Method | Setter)
      # @display:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_display(to_unsafe, display)

      # Return value handling
    end

    def focus=(focus : Gtk::Widget?) : Nil
      # gtk_window_set_focus: (Method | Setter)
      # @focus: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      focus = if focus.nil?
                Pointer(Void).null
              else
                focus.to_unsafe
              end

      # C call
      LibGtk.gtk_window_set_focus(to_unsafe, focus)

      # Return value handling
    end

    def focus_visible=(setting : Bool) : Nil
      # gtk_window_set_focus_visible: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_focus_visible(to_unsafe, setting)

      # Return value handling
    end

    def handle_menubar_accel=(handle_menubar_accel : Bool) : Nil
      # gtk_window_set_handle_menubar_accel: (Method | Setter)
      # @handle_menubar_accel:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_handle_menubar_accel(to_unsafe, handle_menubar_accel)

      # Return value handling
    end

    def hide_on_close=(setting : Bool) : Nil
      # gtk_window_set_hide_on_close: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_hide_on_close(to_unsafe, setting)

      # Return value handling
    end

    def icon_name=(name : ::String?) : Nil
      # gtk_window_set_icon_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_window_set_icon_name(to_unsafe, name)

      # Return value handling
    end

    def mnemonics_visible=(setting : Bool) : Nil
      # gtk_window_set_mnemonics_visible: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_mnemonics_visible(to_unsafe, setting)

      # Return value handling
    end

    def modal=(modal : Bool) : Nil
      # gtk_window_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_modal(to_unsafe, modal)

      # Return value handling
    end

    def resizable=(resizable : Bool) : Nil
      # gtk_window_set_resizable: (Method | Setter)
      # @resizable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_resizable(to_unsafe, resizable)

      # Return value handling
    end

    def startup_id=(startup_id : ::String) : Nil
      # gtk_window_set_startup_id: (Method | Setter)
      # @startup_id:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_set_startup_id(to_unsafe, startup_id)

      # Return value handling
    end

    def title=(title : ::String?) : Nil
      # gtk_window_set_title: (Method | Setter)
      # @title: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end

      # C call
      LibGtk.gtk_window_set_title(to_unsafe, title)

      # Return value handling
    end

    def titlebar=(titlebar : Gtk::Widget?) : Nil
      # gtk_window_set_titlebar: (Method | Setter)
      # @titlebar: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      titlebar = if titlebar.nil?
                   Pointer(Void).null
                 else
                   titlebar.to_unsafe
                 end

      # C call
      LibGtk.gtk_window_set_titlebar(to_unsafe, titlebar)

      # Return value handling
    end

    def transient_for=(parent : Gtk::Window?) : Nil
      # gtk_window_set_transient_for: (Method | Setter)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      LibGtk.gtk_window_set_transient_for(to_unsafe, parent)

      # Return value handling
    end

    def unfullscreen : Nil
      # gtk_window_unfullscreen: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_unfullscreen(to_unsafe)

      # Return value handling
    end

    def unmaximize : Nil
      # gtk_window_unmaximize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_unmaximize(to_unsafe)

      # Return value handling
    end

    def unminimize : Nil
      # gtk_window_unminimize: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_window_unminimize(to_unsafe)

      # Return value handling
    end

    struct ActivateDefaultSignal < GObject::Signal
      def name : String
        @detail ? "activate-default::#{@detail}" : "activate-default"
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

      def connect(handler : Proc(Gtk::Window, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Window.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Window, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-default")
      end
    end

    def activate_default_signal
      ActivateDefaultSignal.new(self)
    end

    struct ActivateFocusSignal < GObject::Signal
      def name : String
        @detail ? "activate-focus::#{@detail}" : "activate-focus"
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

      def connect(handler : Proc(Gtk::Window, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Window.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Window, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-focus")
      end
    end

    def activate_focus_signal
      ActivateFocusSignal.new(self)
    end

    struct CloseRequestSignal < GObject::Signal
      def name : String
        @detail ? "close-request::#{@detail}" : "close-request"
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

      def connect(handler : Proc(Gtk::Window, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Window.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Window, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "close-request")
      end
    end

    def close_request_signal
      CloseRequestSignal.new(self)
    end

    struct EnableDebuggingSignal < GObject::Signal
      def name : String
        @detail ? "enable-debugging::#{@detail}" : "enable-debugging"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_toggle : LibC::Int, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          toggle = GICrystal.to_bool(lib_toggle)
          ::Box(Proc(Bool, Bool)).unbox(_lib_box).call(toggle)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Window, Bool, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_toggle : LibC::Int, _lib_box : Pointer(Void)) {
          _sender = Gtk::Window.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          toggle = GICrystal.to_bool(lib_toggle)
          ::Box(Proc(Gtk::Window, Bool, Bool)).unbox(_lib_box).call(_sender, toggle)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(toggle : Bool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "enable-debugging", toggle)
      end
    end

    def enable_debugging_signal
      EnableDebuggingSignal.new(self)
    end

    struct KeysChangedSignal < GObject::Signal
      def name : String
        @detail ? "keys-changed::#{@detail}" : "keys-changed"
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

      def connect(handler : Proc(Gtk::Window, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Window.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Window, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "keys-changed")
      end
    end

    def keys_changed_signal
      KeysChangedSignal.new(self)
    end

    # activate_default: (None)
    # Returns: (transfer none)
    private macro _register_activate_default_vfunc(impl_method_name)
      private def self._vfunc_activate_default(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate_default(Pointer(Void))).pointer
        previous_def
      end
    end

    # activate_default: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_activate_default_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate_default(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate_default = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate_default(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate_default : Proc(Pointer(Void), Void)? = nil
    end

    # activate_focus: (None)
    # Returns: (transfer none)
    private macro _register_activate_focus_vfunc(impl_method_name)
      private def self._vfunc_activate_focus(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate_focus(Pointer(Void))).pointer
        previous_def
      end
    end

    # activate_focus: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_activate_focus_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate_focus(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate_focus = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate_focus(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate_focus : Proc(Pointer(Void), Void)? = nil
    end

    # close_request: (None)
    # Returns: (transfer none)
    private macro _register_close_request_vfunc(impl_method_name)
      private def self._vfunc_close_request(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_close_request(Pointer(Void))).pointer
        previous_def
      end
    end

    # close_request: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_close_request_vfunc(impl_method_name)
      private def self._vfunc_unsafe_close_request(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close_request = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close_request(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close_request : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # enable_debugging: (None)
    # @toggle:
    # Returns: (transfer none)
    private macro _register_enable_debugging_vfunc(impl_method_name)
      private def self._vfunc_enable_debugging(%this : Pointer(Void), lib_toggle :  LibC::Int, ) : LibC::Int
        # @toggle: 

# Generator::BuiltInTypeArgPlan
toggle=GICrystal.to_bool(lib_toggle)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(toggle)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_enable_debugging(Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # enable_debugging: (None)
    # @toggle:
    # Returns: (transfer none)
    private macro _register_unsafe_enable_debugging_vfunc(impl_method_name)
      private def self._vfunc_unsafe_enable_debugging(%this : Pointer(Void), lib_toggle :  LibC::Int, ) : LibC::Int
# @toggle: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_toggle)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_enable_debugging = Proc(Pointer(Void), LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_enable_debugging(Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_enable_debugging : Proc(Pointer(Void), LibC::Int, LibC::Int)? = nil
    end

    # keys_changed: (None)
    # Returns: (transfer none)
    private macro _register_keys_changed_vfunc(impl_method_name)
      private def self._vfunc_keys_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_keys_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # keys_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_keys_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_keys_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_keys_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_keys_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_keys_changed : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
