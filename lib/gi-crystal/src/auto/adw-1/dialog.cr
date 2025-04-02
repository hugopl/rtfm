require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/shortcut_manager"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Dialog < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::ShortcutManager

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::DialogClass), class_init,
        sizeof(LibAdw::Dialog), instance_init, 0)
    end

    GICrystal.declare_new_method(Dialog, g_object_get_qdata)

    # Initialize a new `Dialog`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_close : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, content_height : Int32? = nil, content_width : Int32? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, current_breakpoint : Adw::Breakpoint? = nil, cursor : Gdk::Cursor? = nil, default_widget : Gtk::Widget? = nil, focus_on_click : Bool? = nil, focus_widget : Gtk::Widget? = nil, focusable : Bool? = nil, follows_content_size : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, presentation_mode : Adw::DialogPresentationMode? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, title : ::String? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[46]
      _values = StaticArray(LibGObject::Value, 46).new(LibGObject::Value.new)
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
      @@g_type ||= LibAdw.adw_dialog_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Dialog.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def can_close=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-close", unsafe_value, Pointer(Void).null)
      value
    end

    def can_close? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-close", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def content_height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "content-height", unsafe_value, Pointer(Void).null)
      value
    end

    def content_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "content-height", pointerof(value), Pointer(Void).null)
      value
    end

    def content_width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "content-width", unsafe_value, Pointer(Void).null)
      value
    end

    def content_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "content-width", pointerof(value), Pointer(Void).null)
      value
    end

    def current_breakpoint : Adw::Breakpoint?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "current-breakpoint", pointerof(value), Pointer(Void).null)
      Adw::Breakpoint.new(value, GICrystal::Transfer::None) unless value.null?
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

    def follows_content_size=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "follows-content-size", unsafe_value, Pointer(Void).null)
      value
    end

    def follows_content_size? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "follows-content-size", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def presentation_mode=(value : Adw::DialogPresentationMode) : Adw::DialogPresentationMode
      unsafe_value = value

      LibGObject.g_object_set(self, "presentation-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def presentation_mode : Adw::DialogPresentationMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "presentation-mode", pointerof(value), Pointer(Void).null)
      Adw::DialogPresentationMode.new(value)
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

    def self.new : self
      # adw_dialog_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_new

      # Return value handling
      Adw::Dialog.new(_retval, GICrystal::Transfer::Full)
    end

    def add_breakpoint(breakpoint : Adw::Breakpoint) : Nil
      # adw_dialog_add_breakpoint: (Method)
      # @breakpoint: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(breakpoint)

      # C call
      LibAdw.adw_dialog_add_breakpoint(to_unsafe, breakpoint)

      # Return value handling
    end

    def close : Bool
      # adw_dialog_close: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_close(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def force_close : Nil
      # adw_dialog_force_close: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_dialog_force_close(to_unsafe)

      # Return value handling
    end

    def can_close : Bool
      # adw_dialog_get_can_close: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_get_can_close(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child : Gtk::Widget?
      # adw_dialog_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_dialog_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def content_height : Int32
      # adw_dialog_get_content_height: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_get_content_height(to_unsafe)

      # Return value handling
      _retval
    end

    def content_width : Int32
      # adw_dialog_get_content_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_get_content_width(to_unsafe)

      # Return value handling
      _retval
    end

    def current_breakpoint : Adw::Breakpoint?
      # adw_dialog_get_current_breakpoint: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_dialog_get_current_breakpoint(to_unsafe)

      # Return value handling
      Adw::Breakpoint.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def default_widget : Gtk::Widget?
      # adw_dialog_get_default_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_dialog_get_default_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def focus : Gtk::Widget?
      # adw_dialog_get_focus: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_dialog_get_focus(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def follows_content_size : Bool
      # adw_dialog_get_follows_content_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_get_follows_content_size(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def presentation_mode : Adw::DialogPresentationMode
      # adw_dialog_get_presentation_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_get_presentation_mode(to_unsafe)

      # Return value handling
      Adw::DialogPresentationMode.new(_retval)
    end

    def title : ::String
      # adw_dialog_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_dialog_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def present(parent : Gtk::Widget?) : Nil
      # adw_dialog_present: (Method)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      LibAdw.adw_dialog_present(to_unsafe, parent)

      # Return value handling
    end

    def can_close=(can_close : Bool) : Nil
      # adw_dialog_set_can_close: (Method | Setter)
      # @can_close:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_dialog_set_can_close(to_unsafe, can_close)

      # Return value handling
    end

    def child=(child : Gtk::Widget?) : Nil
      # adw_dialog_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibAdw.adw_dialog_set_child(to_unsafe, child)

      # Return value handling
    end

    def content_height=(content_height : Int32) : Nil
      # adw_dialog_set_content_height: (Method | Setter)
      # @content_height:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_dialog_set_content_height(to_unsafe, content_height)

      # Return value handling
    end

    def content_width=(content_width : Int32) : Nil
      # adw_dialog_set_content_width: (Method | Setter)
      # @content_width:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_dialog_set_content_width(to_unsafe, content_width)

      # Return value handling
    end

    def default_widget=(default_widget : Gtk::Widget?) : Nil
      # adw_dialog_set_default_widget: (Method | Setter)
      # @default_widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      default_widget = if default_widget.nil?
                         Pointer(Void).null
                       else
                         default_widget.to_unsafe
                       end

      # C call
      LibAdw.adw_dialog_set_default_widget(to_unsafe, default_widget)

      # Return value handling
    end

    def focus=(focus : Gtk::Widget?) : Nil
      # adw_dialog_set_focus: (Method | Setter)
      # @focus: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      focus = if focus.nil?
                Pointer(Void).null
              else
                focus.to_unsafe
              end

      # C call
      LibAdw.adw_dialog_set_focus(to_unsafe, focus)

      # Return value handling
    end

    def follows_content_size=(follows_content_size : Bool) : Nil
      # adw_dialog_set_follows_content_size: (Method | Setter)
      # @follows_content_size:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_dialog_set_follows_content_size(to_unsafe, follows_content_size)

      # Return value handling
    end

    def presentation_mode=(presentation_mode : Adw::DialogPresentationMode) : Nil
      # adw_dialog_set_presentation_mode: (Method | Setter)
      # @presentation_mode:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_dialog_set_presentation_mode(to_unsafe, presentation_mode)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # adw_dialog_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_dialog_set_title(to_unsafe, title)

      # Return value handling
    end

    struct CloseAttemptSignal < GObject::Signal
      def name : String
        @detail ? "close-attempt::#{@detail}" : "close-attempt"
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

      def connect(handler : Proc(Adw::Dialog, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Dialog.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Dialog, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "close-attempt")
      end
    end

    def close_attempt_signal
      CloseAttemptSignal.new(self)
    end

    struct ClosedSignal < GObject::Signal
      def name : String
        @detail ? "closed::#{@detail}" : "closed"
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

      def connect(handler : Proc(Adw::Dialog, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Dialog.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Dialog, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "closed")
      end
    end

    def closed_signal
      ClosedSignal.new(self)
    end

    # close_attempt: (None)
    # Returns: (transfer none)
    private macro _register_close_attempt_vfunc(impl_method_name)
      private def self._vfunc_close_attempt(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_close_attempt(Pointer(Void))).pointer
        previous_def
      end
    end

    # close_attempt: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_close_attempt_vfunc(impl_method_name)
      private def self._vfunc_unsafe_close_attempt(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close_attempt = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close_attempt(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close_attempt : Proc(Pointer(Void), Void)? = nil
    end

    # closed: (None)
    # Returns: (transfer none)
    private macro _register_closed_vfunc(impl_method_name)
      private def self._vfunc_closed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_closed(Pointer(Void))).pointer
        previous_def
      end
    end

    # closed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_closed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_closed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_closed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_closed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_closed : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
