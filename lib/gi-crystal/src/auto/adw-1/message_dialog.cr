require "../gtk-4.0/window"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/native"

require "../gtk-4.0/root"

require "../gtk-4.0/shortcut_manager"

module Adw
  @[GICrystal::GeneratedWrapper]
  class MessageDialog < Gtk::Window
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::Native
    include Gtk::Root
    include Gtk::ShortcutManager

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::MessageDialogClass), class_init,
        sizeof(LibAdw::MessageDialog), instance_init, 0)
    end

    GICrystal.declare_new_method(MessageDialog, g_object_get_qdata)

    # Initialize a new `MessageDialog`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, application : Gtk::Application? = nil, body : ::String? = nil, body_use_markup : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, close_response : ::String? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, decorated : Bool? = nil, default_height : Int32? = nil, default_response : ::String? = nil, default_widget : Gtk::Widget? = nil, default_width : Int32? = nil, deletable : Bool? = nil, destroy_with_parent : Bool? = nil, display : Gdk::Display? = nil, extra_child : Gtk::Widget? = nil, focus_on_click : Bool? = nil, focus_visible : Bool? = nil, focus_widget : Gtk::Widget? = nil, focusable : Bool? = nil, fullscreened : Bool? = nil, halign : Gtk::Align? = nil, handle_menubar_accel : Bool? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, heading : ::String? = nil, heading_use_markup : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hide_on_close : Bool? = nil, icon_name : ::String? = nil, is_active : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, maximized : Bool? = nil, mnemonics_visible : Bool? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, resizable : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, startup_id : ::String? = nil, suspended : Bool? = nil, title : ::String? = nil, titlebar : Gtk::Widget? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, transient_for : Gtk::Window? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[68]
      _values = StaticArray(LibGObject::Value, 68).new(LibGObject::Value.new)
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
      if !body.nil?
        (_names.to_unsafe + _n).value = "body".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, body)
        _n += 1
      end
      if !body_use_markup.nil?
        (_names.to_unsafe + _n).value = "body-use-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, body_use_markup)
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
      if !close_response.nil?
        (_names.to_unsafe + _n).value = "close-response".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, close_response)
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
      if !default_response.nil?
        (_names.to_unsafe + _n).value = "default-response".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_response)
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
      if !extra_child.nil?
        (_names.to_unsafe + _n).value = "extra-child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extra_child)
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
      if !heading.nil?
        (_names.to_unsafe + _n).value = "heading".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, heading)
        _n += 1
      end
      if !heading_use_markup.nil?
        (_names.to_unsafe + _n).value = "heading-use-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, heading_use_markup)
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
      @@g_type ||= LibAdw.adw_message_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::MessageDialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def body=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "body", unsafe_value, Pointer(Void).null)
      value
    end

    def body : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "body", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#body` property to nil.
    def body=(value : Nil) : Nil
      LibGObject.g_object_set(self, "body", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#body`, but can return nil.
    def body? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "body", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def body_use_markup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "body-use-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def body_use_markup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "body-use-markup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def close_response=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "close-response", unsafe_value, Pointer(Void).null)
      value
    end

    def close_response : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "close-response", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#close_response` property to nil.
    def close_response=(value : Nil) : Nil
      LibGObject.g_object_set(self, "close-response", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#close_response`, but can return nil.
    def close_response? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "close-response", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def default_response=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "default-response", unsafe_value, Pointer(Void).null)
      value
    end

    def default_response : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-response", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#default_response` property to nil.
    def default_response=(value : Nil) : Nil
      LibGObject.g_object_set(self, "default-response", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#default_response`, but can return nil.
    def default_response? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-response", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def extra_child=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "extra-child", unsafe_value, Pointer(Void).null)
      value
    end

    def extra_child : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "extra-child", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def heading=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "heading", unsafe_value, Pointer(Void).null)
      value
    end

    def heading : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "heading", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#heading` property to nil.
    def heading=(value : Nil) : Nil
      LibGObject.g_object_set(self, "heading", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#heading`, but can return nil.
    def heading? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "heading", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def heading_use_markup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "heading-use-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def heading_use_markup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "heading-use-markup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    @[Deprecated]
    def self.new(parent : Gtk::Window?, heading : ::String?, body : ::String?) : self
      # adw_message_dialog_new: (Constructor)
      # @parent: (nullable)
      # @heading: (nullable)
      # @body: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      heading = if heading.nil?
                  Pointer(LibC::Char).null
                else
                  heading.to_unsafe
                end
      # Generator::NullableArrayPlan
      body = if body.nil?
               Pointer(LibC::Char).null
             else
               body.to_unsafe
             end

      # C call
      _retval = LibAdw.adw_message_dialog_new(parent, heading, body)

      # Return value handling
      Adw::MessageDialog.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def add_response(id : ::String, label : ::String) : Nil
      # adw_message_dialog_add_response: (Method)
      # @id:
      # @label:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_add_response(to_unsafe, id, label)

      # Return value handling
    end

    @[Deprecated]
    def choose(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # adw_message_dialog_choose: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibAdw.adw_message_dialog_choose(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    @[Deprecated]
    def choose_finish(result : Gio::AsyncResult) : ::String
      # adw_message_dialog_choose_finish: (Method)
      # @result:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_choose_finish(to_unsafe, result)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def body : ::String
      # adw_message_dialog_get_body: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_get_body(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def body_use_markup : Bool
      # adw_message_dialog_get_body_use_markup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_get_body_use_markup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def close_response : ::String
      # adw_message_dialog_get_close_response: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_get_close_response(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def default_response : ::String?
      # adw_message_dialog_get_default_response: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_message_dialog_get_default_response(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def extra_child : Gtk::Widget?
      # adw_message_dialog_get_extra_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_message_dialog_get_extra_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def heading : ::String?
      # adw_message_dialog_get_heading: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_message_dialog_get_heading(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def heading_use_markup : Bool
      # adw_message_dialog_get_heading_use_markup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_get_heading_use_markup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def response_appearance(response : ::String) : Adw::ResponseAppearance
      # adw_message_dialog_get_response_appearance: (Method)
      # @response:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_get_response_appearance(to_unsafe, response)

      # Return value handling
      Adw::ResponseAppearance.new(_retval)
    end

    @[Deprecated]
    def response_enabled(response : ::String) : Bool
      # adw_message_dialog_get_response_enabled: (Method)
      # @response:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_get_response_enabled(to_unsafe, response)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def response_label(response : ::String) : ::String
      # adw_message_dialog_get_response_label: (Method)
      # @response:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_get_response_label(to_unsafe, response)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def has_response(response : ::String) : Bool
      # adw_message_dialog_has_response: (Method)
      # @response:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_message_dialog_has_response(to_unsafe, response)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def remove_response(id : ::String) : Nil
      # adw_message_dialog_remove_response: (Method)
      # @id:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_remove_response(to_unsafe, id)

      # Return value handling
    end

    @[Deprecated]
    def response(response : ::String) : Nil
      # adw_message_dialog_response: (Method)
      # @response:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_response(to_unsafe, response)

      # Return value handling
    end

    @[Deprecated]
    def body=(body : ::String) : Nil
      # adw_message_dialog_set_body: (Method | Setter)
      # @body:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_set_body(to_unsafe, body)

      # Return value handling
    end

    @[Deprecated]
    def body_use_markup=(use_markup : Bool) : Nil
      # adw_message_dialog_set_body_use_markup: (Method | Setter)
      # @use_markup:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_set_body_use_markup(to_unsafe, use_markup)

      # Return value handling
    end

    @[Deprecated]
    def close_response=(response : ::String) : Nil
      # adw_message_dialog_set_close_response: (Method | Setter)
      # @response:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_set_close_response(to_unsafe, response)

      # Return value handling
    end

    @[Deprecated]
    def default_response=(response : ::String?) : Nil
      # adw_message_dialog_set_default_response: (Method | Setter)
      # @response: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      response = if response.nil?
                   Pointer(LibC::Char).null
                 else
                   response.to_unsafe
                 end

      # C call
      LibAdw.adw_message_dialog_set_default_response(to_unsafe, response)

      # Return value handling
    end

    @[Deprecated]
    def extra_child=(child : Gtk::Widget?) : Nil
      # adw_message_dialog_set_extra_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibAdw.adw_message_dialog_set_extra_child(to_unsafe, child)

      # Return value handling
    end

    @[Deprecated]
    def heading=(heading : ::String?) : Nil
      # adw_message_dialog_set_heading: (Method | Setter)
      # @heading: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      heading = if heading.nil?
                  Pointer(LibC::Char).null
                else
                  heading.to_unsafe
                end

      # C call
      LibAdw.adw_message_dialog_set_heading(to_unsafe, heading)

      # Return value handling
    end

    @[Deprecated]
    def heading_use_markup=(use_markup : Bool) : Nil
      # adw_message_dialog_set_heading_use_markup: (Method | Setter)
      # @use_markup:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_set_heading_use_markup(to_unsafe, use_markup)

      # Return value handling
    end

    @[Deprecated]
    def set_response_appearance(response : ::String, appearance : Adw::ResponseAppearance) : Nil
      # adw_message_dialog_set_response_appearance: (Method)
      # @response:
      # @appearance:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_set_response_appearance(to_unsafe, response, appearance)

      # Return value handling
    end

    @[Deprecated]
    def set_response_enabled(response : ::String, enabled : Bool) : Nil
      # adw_message_dialog_set_response_enabled: (Method)
      # @response:
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_set_response_enabled(to_unsafe, response, enabled)

      # Return value handling
    end

    @[Deprecated]
    def set_response_label(response : ::String, label : ::String) : Nil
      # adw_message_dialog_set_response_label: (Method)
      # @response:
      # @label:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_message_dialog_set_response_label(to_unsafe, response, label)

      # Return value handling
    end

    struct ResponseSignal < GObject::Signal
      def name : String
        @detail ? "response::#{@detail}" : "response"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_response : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          response = ::String.new(lib_response)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(response)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::MessageDialog, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_response : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Adw::MessageDialog.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          response = ::String.new(lib_response)
          ::Box(Proc(Adw::MessageDialog, ::String, Nil)).unbox(_lib_box).call(_sender, response)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(response : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "response", response)
      end
    end

    def response_signal
      ResponseSignal.new(self)
    end

    # response: (None)
    # @response:
    # Returns: (transfer none)
    private macro _register_response_vfunc(impl_method_name)
      private def self._vfunc_response(%this : Pointer(Void), lib_response :  Pointer(LibC::Char), ) : Void
        # @response: 

# Generator::BuiltInTypeArgPlan
response=::String.new(lib_response)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(response)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_response(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # response: (None)
    # @response:
    # Returns: (transfer none)
    private macro _register_unsafe_response_vfunc(impl_method_name)
      private def self._vfunc_unsafe_response(%this : Pointer(Void), lib_response :  Pointer(LibC::Char), ) : Void
# @response: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_response)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_response = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_response(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_response : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
