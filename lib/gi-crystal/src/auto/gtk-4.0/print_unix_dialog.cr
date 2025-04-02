require "./dialog"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./native"

require "./root"

require "./shortcut_manager"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PrintUnixDialog < Dialog
    include Accessible
    include Buildable
    include ConstraintTarget
    include Native
    include Root
    include ShortcutManager

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(PrintUnixDialog, g_object_get_qdata)

    # Initialize a new `PrintUnixDialog`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, application : Gtk::Application? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, current_page : Int32? = nil, cursor : Gdk::Cursor? = nil, decorated : Bool? = nil, default_height : Int32? = nil, default_widget : Gtk::Widget? = nil, default_width : Int32? = nil, deletable : Bool? = nil, destroy_with_parent : Bool? = nil, display : Gdk::Display? = nil, embed_page_setup : Bool? = nil, focus_on_click : Bool? = nil, focus_visible : Bool? = nil, focus_widget : Gtk::Widget? = nil, focusable : Bool? = nil, fullscreened : Bool? = nil, halign : Gtk::Align? = nil, handle_menubar_accel : Bool? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_selection : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hide_on_close : Bool? = nil, icon_name : ::String? = nil, is_active : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, manual_capabilities : Gtk::PrintCapabilities? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, maximized : Bool? = nil, mnemonics_visible : Bool? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, page_setup : Gtk::PageSetup? = nil, parent : Gtk::Widget? = nil, print_settings : Gtk::PrintSettings? = nil, receives_default : Bool? = nil, resizable : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, selected_printer : Gtk::Printer? = nil, sensitive : Bool? = nil, startup_id : ::String? = nil, support_selection : Bool? = nil, suspended : Bool? = nil, title : ::String? = nil, titlebar : Gtk::Widget? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, transient_for : Gtk::Window? = nil, use_header_bar : Int32? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[70]
      _values = StaticArray(LibGObject::Value, 70).new(LibGObject::Value.new)
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
      if !current_page.nil?
        (_names.to_unsafe + _n).value = "current-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, current_page)
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
      if !embed_page_setup.nil?
        (_names.to_unsafe + _n).value = "embed-page-setup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, embed_page_setup)
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
      if !has_selection.nil?
        (_names.to_unsafe + _n).value = "has-selection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_selection)
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
      if !manual_capabilities.nil?
        (_names.to_unsafe + _n).value = "manual-capabilities".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, manual_capabilities)
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
      if !page_setup.nil?
        (_names.to_unsafe + _n).value = "page-setup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page_setup)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !print_settings.nil?
        (_names.to_unsafe + _n).value = "print-settings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, print_settings)
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
      if !selected_printer.nil?
        (_names.to_unsafe + _n).value = "selected-printer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selected_printer)
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
      if !support_selection.nil?
        (_names.to_unsafe + _n).value = "support-selection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, support_selection)
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
      if !use_header_bar.nil?
        (_names.to_unsafe + _n).value = "use-header-bar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_header_bar)
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
      @@g_type ||= LibGtk.gtk_print_unix_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PrintUnixDialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def current_page=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "current-page", unsafe_value, Pointer(Void).null)
      value
    end

    def current_page : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "current-page", pointerof(value), Pointer(Void).null)
      value
    end

    def embed_page_setup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "embed-page-setup", unsafe_value, Pointer(Void).null)
      value
    end

    def embed_page_setup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "embed-page-setup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_selection=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-selection", unsafe_value, Pointer(Void).null)
      value
    end

    def has_selection? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-selection", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def manual_capabilities=(value : Gtk::PrintCapabilities) : Gtk::PrintCapabilities
      unsafe_value = value

      LibGObject.g_object_set(self, "manual-capabilities", unsafe_value, Pointer(Void).null)
      value
    end

    def manual_capabilities : Gtk::PrintCapabilities
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "manual-capabilities", pointerof(value), Pointer(Void).null)
      Gtk::PrintCapabilities.new(value)
    end

    def page_setup=(value : Gtk::PageSetup?) : Gtk::PageSetup?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "page-setup", unsafe_value, Pointer(Void).null)
      value
    end

    def page_setup : Gtk::PageSetup?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "page-setup", pointerof(value), Pointer(Void).null)
      Gtk::PageSetup.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def print_settings=(value : Gtk::PrintSettings?) : Gtk::PrintSettings?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "print-settings", unsafe_value, Pointer(Void).null)
      value
    end

    def print_settings : Gtk::PrintSettings?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "print-settings", pointerof(value), Pointer(Void).null)
      Gtk::PrintSettings.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def selected_printer : Gtk::Printer?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "selected-printer", pointerof(value), Pointer(Void).null)
      Gtk::Printer.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def support_selection=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "support-selection", unsafe_value, Pointer(Void).null)
      value
    end

    def support_selection? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "support-selection", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(title : ::String?, parent : Gtk::Window?) : self
      # gtk_print_unix_dialog_new: (Constructor)
      # @title: (nullable)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      title = if title.nil?
                Pointer(LibC::Char).null
              else
                title.to_unsafe
              end
      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_new(title, parent)

      # Return value handling
      Gtk::PrintUnixDialog.new(_retval, GICrystal::Transfer::Full)
    end

    def add_custom_tab(child : Gtk::Widget, tab_label : Gtk::Widget) : Nil
      # gtk_print_unix_dialog_add_custom_tab: (Method)
      # @child:
      # @tab_label:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_unix_dialog_add_custom_tab(to_unsafe, child, tab_label)

      # Return value handling
    end

    def current_page : Int32
      # gtk_print_unix_dialog_get_current_page: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_current_page(to_unsafe)

      # Return value handling
      _retval
    end

    def embed_page_setup : Bool
      # gtk_print_unix_dialog_get_embed_page_setup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_embed_page_setup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_selection : Bool
      # gtk_print_unix_dialog_get_has_selection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_has_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def manual_capabilities : Gtk::PrintCapabilities
      # gtk_print_unix_dialog_get_manual_capabilities: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_manual_capabilities(to_unsafe)

      # Return value handling
      Gtk::PrintCapabilities.new(_retval)
    end

    def page_setup : Gtk::PageSetup
      # gtk_print_unix_dialog_get_page_setup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_page_setup(to_unsafe)

      # Return value handling
      Gtk::PageSetup.new(_retval, GICrystal::Transfer::None)
    end

    def page_setup_set : Bool
      # gtk_print_unix_dialog_get_page_setup_set: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_page_setup_set(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def selected_printer : Gtk::Printer?
      # gtk_print_unix_dialog_get_selected_printer: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_selected_printer(to_unsafe)

      # Return value handling
      Gtk::Printer.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def settings : Gtk::PrintSettings
      # gtk_print_unix_dialog_get_settings: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_settings(to_unsafe)

      # Return value handling
      Gtk::PrintSettings.new(_retval, GICrystal::Transfer::Full)
    end

    def support_selection : Bool
      # gtk_print_unix_dialog_get_support_selection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_print_unix_dialog_get_support_selection(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def current_page=(current_page : Int32) : Nil
      # gtk_print_unix_dialog_set_current_page: (Method | Setter)
      # @current_page:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_unix_dialog_set_current_page(to_unsafe, current_page)

      # Return value handling
    end

    def embed_page_setup=(embed : Bool) : Nil
      # gtk_print_unix_dialog_set_embed_page_setup: (Method | Setter)
      # @embed:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_unix_dialog_set_embed_page_setup(to_unsafe, embed)

      # Return value handling
    end

    def has_selection=(has_selection : Bool) : Nil
      # gtk_print_unix_dialog_set_has_selection: (Method | Setter)
      # @has_selection:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_unix_dialog_set_has_selection(to_unsafe, has_selection)

      # Return value handling
    end

    def manual_capabilities=(capabilities : Gtk::PrintCapabilities) : Nil
      # gtk_print_unix_dialog_set_manual_capabilities: (Method | Setter)
      # @capabilities:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_unix_dialog_set_manual_capabilities(to_unsafe, capabilities)

      # Return value handling
    end

    def page_setup=(page_setup : Gtk::PageSetup) : Nil
      # gtk_print_unix_dialog_set_page_setup: (Method | Setter)
      # @page_setup:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_unix_dialog_set_page_setup(to_unsafe, page_setup)

      # Return value handling
    end

    def settings=(settings : Gtk::PrintSettings?) : Nil
      # gtk_print_unix_dialog_set_settings: (Method | Setter)
      # @settings: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      settings = if settings.nil?
                   Pointer(Void).null
                 else
                   settings.to_unsafe
                 end

      # C call
      LibGtk.gtk_print_unix_dialog_set_settings(to_unsafe, settings)

      # Return value handling
    end

    def support_selection=(support_selection : Bool) : Nil
      # gtk_print_unix_dialog_set_support_selection: (Method | Setter)
      # @support_selection:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_print_unix_dialog_set_support_selection(to_unsafe, support_selection)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
