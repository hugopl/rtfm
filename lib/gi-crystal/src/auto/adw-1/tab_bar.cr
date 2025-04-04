require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class TabBar < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(TabBar, g_object_get_qdata)

    # Initialize a new `TabBar`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, autohide : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, end_action_widget : Gtk::Widget? = nil, expand_tabs : Bool? = nil, extra_drag_preferred_action : Gdk::DragAction? = nil, extra_drag_preload : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, inverted : Bool? = nil, is_overflowing : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, start_action_widget : Gtk::Widget? = nil, tabs_revealed : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, view : Adw::TabView? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[46]
      _values = StaticArray(LibGObject::Value, 46).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !autohide.nil?
        (_names.to_unsafe + _n).value = "autohide".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, autohide)
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
      if !end_action_widget.nil?
        (_names.to_unsafe + _n).value = "end-action-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, end_action_widget)
        _n += 1
      end
      if !expand_tabs.nil?
        (_names.to_unsafe + _n).value = "expand-tabs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, expand_tabs)
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
      if !is_overflowing.nil?
        (_names.to_unsafe + _n).value = "is-overflowing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_overflowing)
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
      if !start_action_widget.nil?
        (_names.to_unsafe + _n).value = "start-action-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, start_action_widget)
        _n += 1
      end
      if !tabs_revealed.nil?
        (_names.to_unsafe + _n).value = "tabs-revealed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tabs_revealed)
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
      @@g_type ||= LibAdw.adw_tab_bar_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::TabBar.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def autohide=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "autohide", unsafe_value, Pointer(Void).null)
      value
    end

    def autohide? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "autohide", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def end_action_widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "end-action-widget", unsafe_value, Pointer(Void).null)
      value
    end

    def end_action_widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "end-action-widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def expand_tabs=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "expand-tabs", unsafe_value, Pointer(Void).null)
      value
    end

    def expand_tabs? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "expand-tabs", pointerof(value), Pointer(Void).null)
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

    def is_overflowing? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-overflowing", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def start_action_widget=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "start-action-widget", unsafe_value, Pointer(Void).null)
      value
    end

    def start_action_widget : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "start-action-widget", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def tabs_revealed? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "tabs-revealed", pointerof(value), Pointer(Void).null)
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
      # adw_tab_bar_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_new

      # Return value handling
      Adw::TabBar.new(_retval, GICrystal::Transfer::Full)
    end

    def autohide : Bool
      # adw_tab_bar_get_autohide: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_get_autohide(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def end_action_widget : Gtk::Widget?
      # adw_tab_bar_get_end_action_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_bar_get_end_action_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def expand_tabs : Bool
      # adw_tab_bar_get_expand_tabs: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_get_expand_tabs(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def extra_drag_preferred_action : Gdk::DragAction
      # adw_tab_bar_get_extra_drag_preferred_action: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_get_extra_drag_preferred_action(to_unsafe)

      # Return value handling
      Gdk::DragAction.new(_retval)
    end

    def extra_drag_preload : Bool
      # adw_tab_bar_get_extra_drag_preload: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_get_extra_drag_preload(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def inverted : Bool
      # adw_tab_bar_get_inverted: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_get_inverted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_overflowing : Bool
      # adw_tab_bar_get_is_overflowing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_get_is_overflowing(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def start_action_widget : Gtk::Widget?
      # adw_tab_bar_get_start_action_widget: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_bar_get_start_action_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tabs_revealed : Bool
      # adw_tab_bar_get_tabs_revealed: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_tab_bar_get_tabs_revealed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def view : Adw::TabView?
      # adw_tab_bar_get_view: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_tab_bar_get_view(to_unsafe)

      # Return value handling
      Adw::TabView.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def autohide=(autohide : Bool) : Nil
      # adw_tab_bar_set_autohide: (Method | Setter)
      # @autohide:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_bar_set_autohide(to_unsafe, autohide)

      # Return value handling
    end

    def end_action_widget=(widget : Gtk::Widget?) : Nil
      # adw_tab_bar_set_end_action_widget: (Method | Setter)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibAdw.adw_tab_bar_set_end_action_widget(to_unsafe, widget)

      # Return value handling
    end

    def expand_tabs=(expand_tabs : Bool) : Nil
      # adw_tab_bar_set_expand_tabs: (Method | Setter)
      # @expand_tabs:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_bar_set_expand_tabs(to_unsafe, expand_tabs)

      # Return value handling
    end

    def extra_drag_preload=(preload : Bool) : Nil
      # adw_tab_bar_set_extra_drag_preload: (Method | Setter)
      # @preload:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_bar_set_extra_drag_preload(to_unsafe, preload)

      # Return value handling
    end

    def inverted=(inverted : Bool) : Nil
      # adw_tab_bar_set_inverted: (Method | Setter)
      # @inverted:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_tab_bar_set_inverted(to_unsafe, inverted)

      # Return value handling
    end

    def start_action_widget=(widget : Gtk::Widget?) : Nil
      # adw_tab_bar_set_start_action_widget: (Method | Setter)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibAdw.adw_tab_bar_set_start_action_widget(to_unsafe, widget)

      # Return value handling
    end

    def view=(view : Adw::TabView?) : Nil
      # adw_tab_bar_set_view: (Method | Setter)
      # @view: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      view = if view.nil?
               Pointer(Void).null
             else
               view.to_unsafe
             end

      # C call
      LibAdw.adw_tab_bar_set_view(to_unsafe, view)

      # Return value handling
    end

    def setup_extra_drop_target(actions : Gdk::DragAction, types : Enumerable(UInt64)?) : Nil
      # adw_tab_bar_setup_extra_drop_target: (Method)
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
      LibAdw.adw_tab_bar_setup_extra_drop_target(to_unsafe, actions, types, n_types)

      # Return value handling
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

      def connect(handler : Proc(Adw::TabBar, Adw::TabPage, GObject::Value, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabBar.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          ::Box(Proc(Adw::TabBar, Adw::TabPage, GObject::Value, Bool)).unbox(_lib_box).call(_sender, page, value)
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

      def connect(handler : Proc(Adw::TabBar, Adw::TabPage, GObject::Value, Gdk::DragAction), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_page : Pointer(Void), lib_value : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::TabBar.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          page = Adw::TabPage.new(lib_page, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          value = GObject::Value.new(lib_value, :none)
          ::Box(Proc(Adw::TabBar, Adw::TabPage, GObject::Value, Gdk::DragAction)).unbox(_lib_box).call(_sender, page, value)
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
