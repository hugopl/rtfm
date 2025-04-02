require "./window"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./native"

require "./root"

require "./shortcut_manager"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Assistant < Window
    include Accessible
    include Buildable
    include ConstraintTarget
    include Native
    include Root
    include ShortcutManager

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Assistant, g_object_get_qdata)

    # Initialize a new `Assistant`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, application : Gtk::Application? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, decorated : Bool? = nil, default_height : Int32? = nil, default_widget : Gtk::Widget? = nil, default_width : Int32? = nil, deletable : Bool? = nil, destroy_with_parent : Bool? = nil, display : Gdk::Display? = nil, focus_on_click : Bool? = nil, focus_visible : Bool? = nil, focus_widget : Gtk::Widget? = nil, focusable : Bool? = nil, fullscreened : Bool? = nil, halign : Gtk::Align? = nil, handle_menubar_accel : Bool? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hide_on_close : Bool? = nil, icon_name : ::String? = nil, is_active : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, maximized : Bool? = nil, mnemonics_visible : Bool? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, pages : Gio::ListModel? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, resizable : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, startup_id : ::String? = nil, suspended : Bool? = nil, title : ::String? = nil, titlebar : Gtk::Widget? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, transient_for : Gtk::Window? = nil, use_header_bar : Int32? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[63]
      _values = StaticArray(LibGObject::Value, 63).new(LibGObject::Value.new)
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
      @@g_type ||= LibGtk.gtk_assistant_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Assistant.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def pages : Gio::ListModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pages", pointerof(value), Pointer(Void).null)
      Gio::AbstractListModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def use_header_bar=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "use-header-bar", unsafe_value, Pointer(Void).null)
      value
    end

    def use_header_bar : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "use-header-bar", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def self.new : self
      # gtk_assistant_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_new

      # Return value handling
      Gtk::Assistant.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def add_action_widget(child : Gtk::Widget) : Nil
      # gtk_assistant_add_action_widget: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_add_action_widget(to_unsafe, child)

      # Return value handling
    end

    @[Deprecated]
    def append_page(page : Gtk::Widget) : Int32
      # gtk_assistant_append_page: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_append_page(to_unsafe, page)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def commit : Nil
      # gtk_assistant_commit: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_commit(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def current_page : Int32
      # gtk_assistant_get_current_page: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_get_current_page(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def n_pages : Int32
      # gtk_assistant_get_n_pages: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_get_n_pages(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def nth_page(page_num : Int32) : Gtk::Widget?
      # gtk_assistant_get_nth_page: (Method)
      # @page_num:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_assistant_get_nth_page(to_unsafe, page_num)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def page(child : Gtk::Widget) : Gtk::AssistantPage
      # gtk_assistant_get_page: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_get_page(to_unsafe, child)

      # Return value handling
      Gtk::AssistantPage.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def page_complete(page : Gtk::Widget) : Bool
      # gtk_assistant_get_page_complete: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_get_page_complete(to_unsafe, page)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def page_title(page : Gtk::Widget) : ::String
      # gtk_assistant_get_page_title: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_get_page_title(to_unsafe, page)

      # Return value handling
      ::String.new(_retval)
    end

    @[Deprecated]
    def page_type(page : Gtk::Widget) : Gtk::AssistantPageType
      # gtk_assistant_get_page_type: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_get_page_type(to_unsafe, page)

      # Return value handling
      Gtk::AssistantPageType.new(_retval)
    end

    @[Deprecated]
    def pages : Gio::ListModel
      # gtk_assistant_get_pages: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_assistant_get_pages(to_unsafe)

      # Return value handling
      Gio::AbstractListModel.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def insert_page(page : Gtk::Widget, position : Int32) : Int32
      # gtk_assistant_insert_page: (Method)
      # @page:
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_insert_page(to_unsafe, page, position)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def next_page : Nil
      # gtk_assistant_next_page: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_next_page(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def prepend_page(page : Gtk::Widget) : Int32
      # gtk_assistant_prepend_page: (Method)
      # @page:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_assistant_prepend_page(to_unsafe, page)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def previous_page : Nil
      # gtk_assistant_previous_page: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_previous_page(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def remove_action_widget(child : Gtk::Widget) : Nil
      # gtk_assistant_remove_action_widget: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_remove_action_widget(to_unsafe, child)

      # Return value handling
    end

    @[Deprecated]
    def remove_page(page_num : Int32) : Nil
      # gtk_assistant_remove_page: (Method)
      # @page_num:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_remove_page(to_unsafe, page_num)

      # Return value handling
    end

    @[Deprecated]
    def current_page=(page_num : Int32) : Nil
      # gtk_assistant_set_current_page: (Method)
      # @page_num:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_set_current_page(to_unsafe, page_num)

      # Return value handling
    end

    @[Deprecated]
    def forward_page_func=(page_func : Gtk::AssistantPageFunc?) : Nil
      # gtk_assistant_set_forward_page_func: (Method)
      # @page_func: (nullable)
      # @data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if page_func
        _box = ::Box.box(page_func)
        page_func = ->(lib_current_page : Int32, lib_data : Pointer(Void)) {
          # NoStrategy
          current_page = lib_current_page
          ::Box(Proc(Int32, Int32)).unbox(lib_data).call(current_page)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        page_func = data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_assistant_set_forward_page_func(to_unsafe, page_func, data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def set_page_complete(page : Gtk::Widget, complete : Bool) : Nil
      # gtk_assistant_set_page_complete: (Method)
      # @page:
      # @complete:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_set_page_complete(to_unsafe, page, complete)

      # Return value handling
    end

    @[Deprecated]
    def set_page_title(page : Gtk::Widget, title : ::String) : Nil
      # gtk_assistant_set_page_title: (Method)
      # @page:
      # @title:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_set_page_title(to_unsafe, page, title)

      # Return value handling
    end

    @[Deprecated]
    def set_page_type(page : Gtk::Widget, type : Gtk::AssistantPageType) : Nil
      # gtk_assistant_set_page_type: (Method)
      # @page:
      # @type:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_set_page_type(to_unsafe, page, type)

      # Return value handling
    end

    @[Deprecated]
    def update_buttons_state : Nil
      # gtk_assistant_update_buttons_state: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_assistant_update_buttons_state(to_unsafe)

      # Return value handling
    end

    struct ApplySignal < GObject::Signal
      def name : String
        @detail ? "apply::#{@detail}" : "apply"
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

      def connect(handler : Proc(Gtk::Assistant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Assistant.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Assistant, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "apply")
      end
    end

    def apply_signal
      ApplySignal.new(self)
    end

    struct CancelSignal < GObject::Signal
      def name : String
        @detail ? "cancel::#{@detail}" : "cancel"
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

      def connect(handler : Proc(Gtk::Assistant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Assistant.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Assistant, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "cancel")
      end
    end

    def cancel_signal
      CancelSignal.new(self)
    end

    struct CloseSignal < GObject::Signal
      def name : String
        @detail ? "close::#{@detail}" : "close"
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

      def connect(handler : Proc(Gtk::Assistant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Assistant.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Assistant, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "close")
      end
    end

    def close_signal
      CloseSignal.new(self)
    end

    struct EscapeSignal < GObject::Signal
      def name : String
        @detail ? "escape::#{@detail}" : "escape"
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

      def connect(handler : Proc(Gtk::Assistant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Assistant.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Assistant, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "escape")
      end
    end

    def escape_signal
      EscapeSignal.new(self)
    end

    struct PrepareSignal < GObject::Signal
      def name : String
        @detail ? "prepare::#{@detail}" : "prepare"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Widget, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          page = Gtk::Widget.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Widget, Nil)).unbox(_lib_box).call(page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Assistant, Gtk::Widget, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Assistant.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Gtk::Widget.new(lib_page, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Assistant, Gtk::Widget, Nil)).unbox(_lib_box).call(_sender, page)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(page : Gtk::Widget) : Nil
        LibGObject.g_signal_emit_by_name(@source, "prepare", page)
      end
    end

    def prepare_signal
      PrepareSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
