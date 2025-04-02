require "./window"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/native"

require "../gtk-4.0/root"

require "../gtk-4.0/shortcut_manager"

module Adw
  @[GICrystal::GeneratedWrapper]
  class AboutWindow < Window
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::Native
    include Gtk::Root
    include Gtk::ShortcutManager

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AboutWindow, g_object_get_qdata)

    # Initialize a new `AboutWindow`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, adaptive_preview : Bool? = nil, application : Gtk::Application? = nil, application_icon : ::String? = nil, application_name : ::String? = nil, artists : Enumerable(::String)? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, comments : ::String? = nil, content : Gtk::Widget? = nil, copyright : ::String? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, current_breakpoint : Adw::Breakpoint? = nil, cursor : Gdk::Cursor? = nil, debug_info : ::String? = nil, debug_info_filename : ::String? = nil, decorated : Bool? = nil, default_height : Int32? = nil, default_widget : Gtk::Widget? = nil, default_width : Int32? = nil, deletable : Bool? = nil, designers : Enumerable(::String)? = nil, destroy_with_parent : Bool? = nil, developer_name : ::String? = nil, developers : Enumerable(::String)? = nil, dialogs : Gio::ListModel? = nil, display : Gdk::Display? = nil, documenters : Enumerable(::String)? = nil, focus_on_click : Bool? = nil, focus_visible : Bool? = nil, focus_widget : Gtk::Widget? = nil, focusable : Bool? = nil, fullscreened : Bool? = nil, halign : Gtk::Align? = nil, handle_menubar_accel : Bool? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hide_on_close : Bool? = nil, icon_name : ::String? = nil, is_active : Bool? = nil, issue_url : ::String? = nil, layout_manager : Gtk::LayoutManager? = nil, license : ::String? = nil, license_type : Gtk::License? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, maximized : Bool? = nil, mnemonics_visible : Bool? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, release_notes : ::String? = nil, release_notes_version : ::String? = nil, resizable : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, startup_id : ::String? = nil, support_url : ::String? = nil, suspended : Bool? = nil, title : ::String? = nil, titlebar : Gtk::Widget? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, transient_for : Gtk::Window? = nil, translator_credits : ::String? = nil, valign : Gtk::Align? = nil, version : ::String? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, visible_dialog : Adw::Dialog? = nil, website : ::String? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[86]
      _values = StaticArray(LibGObject::Value, 86).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !adaptive_preview.nil?
        (_names.to_unsafe + _n).value = "adaptive-preview".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, adaptive_preview)
        _n += 1
      end
      if !application.nil?
        (_names.to_unsafe + _n).value = "application".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, application)
        _n += 1
      end
      if !application_icon.nil?
        (_names.to_unsafe + _n).value = "application-icon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, application_icon)
        _n += 1
      end
      if !application_name.nil?
        (_names.to_unsafe + _n).value = "application-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, application_name)
        _n += 1
      end
      if !artists.nil?
        (_names.to_unsafe + _n).value = "artists".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, artists)
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
      if !comments.nil?
        (_names.to_unsafe + _n).value = "comments".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, comments)
        _n += 1
      end
      if !content.nil?
        (_names.to_unsafe + _n).value = "content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content)
        _n += 1
      end
      if !copyright.nil?
        (_names.to_unsafe + _n).value = "copyright".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, copyright)
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
      if !debug_info.nil?
        (_names.to_unsafe + _n).value = "debug-info".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, debug_info)
        _n += 1
      end
      if !debug_info_filename.nil?
        (_names.to_unsafe + _n).value = "debug-info-filename".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, debug_info_filename)
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
      if !designers.nil?
        (_names.to_unsafe + _n).value = "designers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, designers)
        _n += 1
      end
      if !destroy_with_parent.nil?
        (_names.to_unsafe + _n).value = "destroy-with-parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, destroy_with_parent)
        _n += 1
      end
      if !developer_name.nil?
        (_names.to_unsafe + _n).value = "developer-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, developer_name)
        _n += 1
      end
      if !developers.nil?
        (_names.to_unsafe + _n).value = "developers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, developers)
        _n += 1
      end
      if !dialogs.nil?
        (_names.to_unsafe + _n).value = "dialogs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, dialogs)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !documenters.nil?
        (_names.to_unsafe + _n).value = "documenters".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, documenters)
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
      if !issue_url.nil?
        (_names.to_unsafe + _n).value = "issue-url".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, issue_url)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !license.nil?
        (_names.to_unsafe + _n).value = "license".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, license)
        _n += 1
      end
      if !license_type.nil?
        (_names.to_unsafe + _n).value = "license-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, license_type)
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
      if !release_notes.nil?
        (_names.to_unsafe + _n).value = "release-notes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, release_notes)
        _n += 1
      end
      if !release_notes_version.nil?
        (_names.to_unsafe + _n).value = "release-notes-version".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, release_notes_version)
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
      if !support_url.nil?
        (_names.to_unsafe + _n).value = "support-url".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, support_url)
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
      if !translator_credits.nil?
        (_names.to_unsafe + _n).value = "translator-credits".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, translator_credits)
        _n += 1
      end
      if !valign.nil?
        (_names.to_unsafe + _n).value = "valign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valign)
        _n += 1
      end
      if !version.nil?
        (_names.to_unsafe + _n).value = "version".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, version)
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
      if !visible_dialog.nil?
        (_names.to_unsafe + _n).value = "visible-dialog".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible_dialog)
        _n += 1
      end
      if !website.nil?
        (_names.to_unsafe + _n).value = "website".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, website)
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
      @@g_type ||= LibAdw.adw_about_window_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::AboutWindow.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def application_icon=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "application-icon", unsafe_value, Pointer(Void).null)
      value
    end

    def application_icon : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "application-icon", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#application_icon` property to nil.
    def application_icon=(value : Nil) : Nil
      LibGObject.g_object_set(self, "application-icon", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#application_icon`, but can return nil.
    def application_icon? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "application-icon", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def application_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "application-name", unsafe_value, Pointer(Void).null)
      value
    end

    def application_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "application-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#application_name` property to nil.
    def application_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "application-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#application_name`, but can return nil.
    def application_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "application-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def artists=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "artists", unsafe_value, Pointer(Void).null)
      value
    end

    def artists : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "artists", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def comments=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "comments", unsafe_value, Pointer(Void).null)
      value
    end

    def comments : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "comments", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#comments` property to nil.
    def comments=(value : Nil) : Nil
      LibGObject.g_object_set(self, "comments", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#comments`, but can return nil.
    def comments? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "comments", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def copyright=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "copyright", unsafe_value, Pointer(Void).null)
      value
    end

    def copyright : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "copyright", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#copyright` property to nil.
    def copyright=(value : Nil) : Nil
      LibGObject.g_object_set(self, "copyright", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#copyright`, but can return nil.
    def copyright? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "copyright", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def debug_info=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "debug-info", unsafe_value, Pointer(Void).null)
      value
    end

    def debug_info : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "debug-info", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#debug_info` property to nil.
    def debug_info=(value : Nil) : Nil
      LibGObject.g_object_set(self, "debug-info", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#debug_info`, but can return nil.
    def debug_info? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "debug-info", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def debug_info_filename=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "debug-info-filename", unsafe_value, Pointer(Void).null)
      value
    end

    def debug_info_filename : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "debug-info-filename", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#debug_info_filename` property to nil.
    def debug_info_filename=(value : Nil) : Nil
      LibGObject.g_object_set(self, "debug-info-filename", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#debug_info_filename`, but can return nil.
    def debug_info_filename? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "debug-info-filename", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def designers=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "designers", unsafe_value, Pointer(Void).null)
      value
    end

    def designers : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "designers", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def developer_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "developer-name", unsafe_value, Pointer(Void).null)
      value
    end

    def developer_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "developer-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#developer_name` property to nil.
    def developer_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "developer-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#developer_name`, but can return nil.
    def developer_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "developer-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def developers=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "developers", unsafe_value, Pointer(Void).null)
      value
    end

    def developers : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "developers", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def documenters=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "documenters", unsafe_value, Pointer(Void).null)
      value
    end

    def documenters : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "documenters", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def issue_url=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "issue-url", unsafe_value, Pointer(Void).null)
      value
    end

    def issue_url : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "issue-url", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#issue_url` property to nil.
    def issue_url=(value : Nil) : Nil
      LibGObject.g_object_set(self, "issue-url", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#issue_url`, but can return nil.
    def issue_url? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "issue-url", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def license=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "license", unsafe_value, Pointer(Void).null)
      value
    end

    def license : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "license", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#license` property to nil.
    def license=(value : Nil) : Nil
      LibGObject.g_object_set(self, "license", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#license`, but can return nil.
    def license? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "license", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def license_type=(value : Gtk::License) : Gtk::License
      unsafe_value = value

      LibGObject.g_object_set(self, "license-type", unsafe_value, Pointer(Void).null)
      value
    end

    def license_type : Gtk::License
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "license-type", pointerof(value), Pointer(Void).null)
      Gtk::License.new(value)
    end

    def release_notes=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "release-notes", unsafe_value, Pointer(Void).null)
      value
    end

    def release_notes : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "release-notes", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#release_notes` property to nil.
    def release_notes=(value : Nil) : Nil
      LibGObject.g_object_set(self, "release-notes", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#release_notes`, but can return nil.
    def release_notes? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "release-notes", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def release_notes_version=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "release-notes-version", unsafe_value, Pointer(Void).null)
      value
    end

    def release_notes_version : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "release-notes-version", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#release_notes_version` property to nil.
    def release_notes_version=(value : Nil) : Nil
      LibGObject.g_object_set(self, "release-notes-version", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#release_notes_version`, but can return nil.
    def release_notes_version? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "release-notes-version", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def support_url=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "support-url", unsafe_value, Pointer(Void).null)
      value
    end

    def support_url : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "support-url", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#support_url` property to nil.
    def support_url=(value : Nil) : Nil
      LibGObject.g_object_set(self, "support-url", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#support_url`, but can return nil.
    def support_url? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "support-url", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def translator_credits=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "translator-credits", unsafe_value, Pointer(Void).null)
      value
    end

    def translator_credits : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "translator-credits", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#translator_credits` property to nil.
    def translator_credits=(value : Nil) : Nil
      LibGObject.g_object_set(self, "translator-credits", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#translator_credits`, but can return nil.
    def translator_credits? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "translator-credits", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def version=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "version", unsafe_value, Pointer(Void).null)
      value
    end

    def version : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "version", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#version` property to nil.
    def version=(value : Nil) : Nil
      LibGObject.g_object_set(self, "version", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#version`, but can return nil.
    def version? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "version", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def website=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "website", unsafe_value, Pointer(Void).null)
      value
    end

    def website : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "website", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#website` property to nil.
    def website=(value : Nil) : Nil
      LibGObject.g_object_set(self, "website", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#website`, but can return nil.
    def website? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "website", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    @[Deprecated]
    def self.new : self
      # adw_about_window_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_new

      # Return value handling
      Adw::AboutWindow.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_from_appdata(resource_path : ::String, release_notes_version : ::String?) : self
      # adw_about_window_new_from_appdata: (Constructor)
      # @resource_path:
      # @release_notes_version: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      release_notes_version = if release_notes_version.nil?
                                Pointer(LibC::Char).null
                              else
                                release_notes_version.to_unsafe
                              end

      # C call
      _retval = LibAdw.adw_about_window_new_from_appdata(resource_path, release_notes_version)

      # Return value handling
      Adw::AboutWindow.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def add_acknowledgement_section(name : ::String?, people : Enumerable(::String)) : Nil
      # adw_about_window_add_acknowledgement_section: (Method)
      # @name: (nullable)
      # @people: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::ArrayArgPlan
      people = people.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibAdw.adw_about_window_add_acknowledgement_section(to_unsafe, name, people)

      # Return value handling
    end

    @[Deprecated]
    def add_credit_section(name : ::String?, people : Enumerable(::String)) : Nil
      # adw_about_window_add_credit_section: (Method)
      # @name: (nullable)
      # @people: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::ArrayArgPlan
      people = people.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibAdw.adw_about_window_add_credit_section(to_unsafe, name, people)

      # Return value handling
    end

    @[Deprecated]
    def add_legal_section(title : ::String, copyright : ::String?, license_type : Gtk::License, license : ::String?) : Nil
      # adw_about_window_add_legal_section: (Method)
      # @title:
      # @copyright: (nullable)
      # @license_type:
      # @license: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      copyright = if copyright.nil?
                    Pointer(LibC::Char).null
                  else
                    copyright.to_unsafe
                  end
      # Generator::NullableArrayPlan
      license = if license.nil?
                  Pointer(LibC::Char).null
                else
                  license.to_unsafe
                end

      # C call
      LibAdw.adw_about_window_add_legal_section(to_unsafe, title, copyright, license_type, license)

      # Return value handling
    end

    @[Deprecated]
    def add_link(title : ::String, url : ::String) : Nil
      # adw_about_window_add_link: (Method)
      # @title:
      # @url:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_add_link(to_unsafe, title, url)

      # Return value handling
    end

    @[Deprecated]
    def application_icon : ::String
      # adw_about_window_get_application_icon: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_application_icon(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def application_name : ::String
      # adw_about_window_get_application_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_application_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def artists : Enumerable(::String)?
      # adw_about_window_get_artists: (Method | Getter)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibAdw.adw_about_window_get_artists(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def comments : ::String
      # adw_about_window_get_comments: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_comments(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def copyright : ::String
      # adw_about_window_get_copyright: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_copyright(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def debug_info : ::String
      # adw_about_window_get_debug_info: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_debug_info(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def debug_info_filename : ::String
      # adw_about_window_get_debug_info_filename: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_debug_info_filename(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def designers : Enumerable(::String)?
      # adw_about_window_get_designers: (Method | Getter)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibAdw.adw_about_window_get_designers(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def developer_name : ::String
      # adw_about_window_get_developer_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_developer_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def developers : Enumerable(::String)?
      # adw_about_window_get_developers: (Method | Getter)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibAdw.adw_about_window_get_developers(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def documenters : Enumerable(::String)?
      # adw_about_window_get_documenters: (Method | Getter)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibAdw.adw_about_window_get_documenters(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def issue_url : ::String
      # adw_about_window_get_issue_url: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_issue_url(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def license : ::String
      # adw_about_window_get_license: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_license(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def license_type : Gtk::License
      # adw_about_window_get_license_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_license_type(to_unsafe)

      # Return value handling
      Gtk::License.new(_retval)
    end

    @[Deprecated]
    def release_notes : ::String
      # adw_about_window_get_release_notes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_release_notes(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def release_notes_version : ::String
      # adw_about_window_get_release_notes_version: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_release_notes_version(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def support_url : ::String
      # adw_about_window_get_support_url: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_support_url(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def translator_credits : ::String
      # adw_about_window_get_translator_credits: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_translator_credits(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def version : ::String
      # adw_about_window_get_version: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_version(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def website : ::String
      # adw_about_window_get_website: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_about_window_get_website(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def application_icon=(application_icon : ::String) : Nil
      # adw_about_window_set_application_icon: (Method | Setter)
      # @application_icon:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_application_icon(to_unsafe, application_icon)

      # Return value handling
    end

    @[Deprecated]
    def application_name=(application_name : ::String) : Nil
      # adw_about_window_set_application_name: (Method | Setter)
      # @application_name:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_application_name(to_unsafe, application_name)

      # Return value handling
    end

    @[Deprecated]
    def artists=(artists : Enumerable(::String)?) : Nil
      # adw_about_window_set_artists: (Method | Setter)
      # @artists: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      artists = if artists.nil?
                  Pointer(Pointer(LibC::Char)).null
                else
                  artists.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                end

      # C call
      LibAdw.adw_about_window_set_artists(to_unsafe, artists)

      # Return value handling
    end

    @[Deprecated]
    def comments=(comments : ::String) : Nil
      # adw_about_window_set_comments: (Method | Setter)
      # @comments:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_comments(to_unsafe, comments)

      # Return value handling
    end

    @[Deprecated]
    def copyright=(copyright : ::String) : Nil
      # adw_about_window_set_copyright: (Method | Setter)
      # @copyright:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_copyright(to_unsafe, copyright)

      # Return value handling
    end

    @[Deprecated]
    def debug_info=(debug_info : ::String) : Nil
      # adw_about_window_set_debug_info: (Method | Setter)
      # @debug_info:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_debug_info(to_unsafe, debug_info)

      # Return value handling
    end

    @[Deprecated]
    def debug_info_filename=(filename : ::String) : Nil
      # adw_about_window_set_debug_info_filename: (Method | Setter)
      # @filename:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_debug_info_filename(to_unsafe, filename)

      # Return value handling
    end

    @[Deprecated]
    def designers=(designers : Enumerable(::String)?) : Nil
      # adw_about_window_set_designers: (Method | Setter)
      # @designers: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      designers = if designers.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    designers.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end

      # C call
      LibAdw.adw_about_window_set_designers(to_unsafe, designers)

      # Return value handling
    end

    @[Deprecated]
    def developer_name=(developer_name : ::String) : Nil
      # adw_about_window_set_developer_name: (Method | Setter)
      # @developer_name:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_developer_name(to_unsafe, developer_name)

      # Return value handling
    end

    @[Deprecated]
    def developers=(developers : Enumerable(::String)?) : Nil
      # adw_about_window_set_developers: (Method | Setter)
      # @developers: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      developers = if developers.nil?
                     Pointer(Pointer(LibC::Char)).null
                   else
                     developers.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                   end

      # C call
      LibAdw.adw_about_window_set_developers(to_unsafe, developers)

      # Return value handling
    end

    @[Deprecated]
    def documenters=(documenters : Enumerable(::String)?) : Nil
      # adw_about_window_set_documenters: (Method | Setter)
      # @documenters: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      documenters = if documenters.nil?
                      Pointer(Pointer(LibC::Char)).null
                    else
                      documenters.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                    end

      # C call
      LibAdw.adw_about_window_set_documenters(to_unsafe, documenters)

      # Return value handling
    end

    @[Deprecated]
    def issue_url=(issue_url : ::String) : Nil
      # adw_about_window_set_issue_url: (Method | Setter)
      # @issue_url:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_issue_url(to_unsafe, issue_url)

      # Return value handling
    end

    @[Deprecated]
    def license=(license : ::String) : Nil
      # adw_about_window_set_license: (Method | Setter)
      # @license:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_license(to_unsafe, license)

      # Return value handling
    end

    @[Deprecated]
    def license_type=(license_type : Gtk::License) : Nil
      # adw_about_window_set_license_type: (Method | Setter)
      # @license_type:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_license_type(to_unsafe, license_type)

      # Return value handling
    end

    @[Deprecated]
    def release_notes=(release_notes : ::String) : Nil
      # adw_about_window_set_release_notes: (Method | Setter)
      # @release_notes:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_release_notes(to_unsafe, release_notes)

      # Return value handling
    end

    @[Deprecated]
    def release_notes_version=(version : ::String) : Nil
      # adw_about_window_set_release_notes_version: (Method | Setter)
      # @version:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_release_notes_version(to_unsafe, version)

      # Return value handling
    end

    @[Deprecated]
    def support_url=(support_url : ::String) : Nil
      # adw_about_window_set_support_url: (Method | Setter)
      # @support_url:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_support_url(to_unsafe, support_url)

      # Return value handling
    end

    @[Deprecated]
    def translator_credits=(translator_credits : ::String) : Nil
      # adw_about_window_set_translator_credits: (Method | Setter)
      # @translator_credits:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_translator_credits(to_unsafe, translator_credits)

      # Return value handling
    end

    @[Deprecated]
    def version=(version : ::String) : Nil
      # adw_about_window_set_version: (Method | Setter)
      # @version:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_version(to_unsafe, version)

      # Return value handling
    end

    @[Deprecated]
    def website=(website : ::String) : Nil
      # adw_about_window_set_website: (Method | Setter)
      # @website:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_about_window_set_website(to_unsafe, website)

      # Return value handling
    end

    struct ActivateLinkSignal < GObject::Signal
      def name : String
        @detail ? "activate-link::#{@detail}" : "activate-link"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_uri : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          uri = ::String.new(lib_uri)
          ::Box(Proc(::String, Bool)).unbox(_lib_box).call(uri)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::AboutWindow, ::String, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_uri : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Adw::AboutWindow.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          uri = ::String.new(lib_uri)
          ::Box(Proc(Adw::AboutWindow, ::String, Bool)).unbox(_lib_box).call(_sender, uri)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(uri : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate-link", uri)
      end
    end

    def activate_link_signal
      ActivateLinkSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
