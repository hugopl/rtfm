require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

require "./native"

require "./shortcut_manager"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Popover < Widget
    include Accessible
    include Buildable
    include ConstraintTarget
    include Native
    include ShortcutManager

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::PopoverClass), class_init,
        sizeof(LibGtk::Popover), instance_init, 0)
    end

    GICrystal.declare_new_method(Popover, g_object_get_qdata)

    # Initialize a new `Popover`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, autohide : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, cascade_popdown : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, default_widget : Gtk::Widget? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_arrow : Bool? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, mnemonics_visible : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, pointing_to : Gdk::Rectangle? = nil, position : Gtk::PositionType? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[44]
      _values = StaticArray(LibGObject::Value, 44).new(LibGObject::Value.new)
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
      if !cascade_popdown.nil?
        (_names.to_unsafe + _n).value = "cascade-popdown".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cascade_popdown)
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
      if !has_arrow.nil?
        (_names.to_unsafe + _n).value = "has-arrow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_arrow)
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
      if !mnemonics_visible.nil?
        (_names.to_unsafe + _n).value = "mnemonics-visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mnemonics_visible)
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
      if !pointing_to.nil?
        (_names.to_unsafe + _n).value = "pointing-to".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pointing_to)
        _n += 1
      end
      if !position.nil?
        (_names.to_unsafe + _n).value = "position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, position)
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
      @@g_type ||= LibGtk.gtk_popover_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Popover.new(Void*, GICrystal::Transfer)
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

    def cascade_popdown=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "cascade-popdown", unsafe_value, Pointer(Void).null)
      value
    end

    def cascade_popdown? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "cascade-popdown", pointerof(value), Pointer(Void).null)
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

    def has_arrow=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-arrow", unsafe_value, Pointer(Void).null)
      value
    end

    def has_arrow? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-arrow", pointerof(value), Pointer(Void).null)
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

    def pointing_to=(value : Gdk::Rectangle?) : Gdk::Rectangle?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "pointing-to", unsafe_value, Pointer(Void).null)
      value
    end

    def pointing_to : Gdk::Rectangle?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pointing-to", pointerof(value), Pointer(Void).null)
      Gdk::Rectangle.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def position=(value : Gtk::PositionType) : Gtk::PositionType
      unsafe_value = value

      LibGObject.g_object_set(self, "position", unsafe_value, Pointer(Void).null)
      value
    end

    def position : Gtk::PositionType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "position", pointerof(value), Pointer(Void).null)
      Gtk::PositionType.new(value)
    end

    def self.new : self
      # gtk_popover_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_popover_new

      # Return value handling
      Gtk::Popover.new(_retval, GICrystal::Transfer::Full)
    end

    def autohide : Bool
      # gtk_popover_get_autohide: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_popover_get_autohide(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def cascade_popdown : Bool
      # gtk_popover_get_cascade_popdown: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_popover_get_cascade_popdown(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child : Gtk::Widget?
      # gtk_popover_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_popover_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def has_arrow : Bool
      # gtk_popover_get_has_arrow: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_popover_get_has_arrow(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def mnemonics_visible : Bool
      # gtk_popover_get_mnemonics_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_popover_get_mnemonics_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def offset : Nil
      # gtk_popover_get_offset: (Method)
      # @x_offset: (out) (transfer full) (optional)
      # @y_offset: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x_offset = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      y_offset = Pointer(Int32).null
      # C call
      LibGtk.gtk_popover_get_offset(to_unsafe, x_offset, y_offset)

      # Return value handling
    end

    def pointing_to : Gdk::Rectangle
      # gtk_popover_get_pointing_to: (Method | Getter)
      # @rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      rect = Gdk::Rectangle.new
      # C call
      _retval = LibGtk.gtk_popover_get_pointing_to(to_unsafe, rect)

      # Return value handling
      rect
    end

    def position : Gtk::PositionType
      # gtk_popover_get_position: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_popover_get_position(to_unsafe)

      # Return value handling
      Gtk::PositionType.new(_retval)
    end

    def popdown : Nil
      # gtk_popover_popdown: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_popdown(to_unsafe)

      # Return value handling
    end

    def popup : Nil
      # gtk_popover_popup: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_popup(to_unsafe)

      # Return value handling
    end

    def present : Nil
      # gtk_popover_present: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_present(to_unsafe)

      # Return value handling
    end

    def autohide=(autohide : Bool) : Nil
      # gtk_popover_set_autohide: (Method | Setter)
      # @autohide:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_set_autohide(to_unsafe, autohide)

      # Return value handling
    end

    def cascade_popdown=(cascade_popdown : Bool) : Nil
      # gtk_popover_set_cascade_popdown: (Method | Setter)
      # @cascade_popdown:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_set_cascade_popdown(to_unsafe, cascade_popdown)

      # Return value handling
    end

    def child=(child : Gtk::Widget?) : Nil
      # gtk_popover_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibGtk.gtk_popover_set_child(to_unsafe, child)

      # Return value handling
    end

    def default_widget=(widget : Gtk::Widget?) : Nil
      # gtk_popover_set_default_widget: (Method | Setter)
      # @widget: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      LibGtk.gtk_popover_set_default_widget(to_unsafe, widget)

      # Return value handling
    end

    def has_arrow=(has_arrow : Bool) : Nil
      # gtk_popover_set_has_arrow: (Method | Setter)
      # @has_arrow:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_set_has_arrow(to_unsafe, has_arrow)

      # Return value handling
    end

    def mnemonics_visible=(mnemonics_visible : Bool) : Nil
      # gtk_popover_set_mnemonics_visible: (Method | Setter)
      # @mnemonics_visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_set_mnemonics_visible(to_unsafe, mnemonics_visible)

      # Return value handling
    end

    def set_offset(x_offset : Int32, y_offset : Int32) : Nil
      # gtk_popover_set_offset: (Method)
      # @x_offset:
      # @y_offset:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_set_offset(to_unsafe, x_offset, y_offset)

      # Return value handling
    end

    def pointing_to=(rect : Gdk::Rectangle?) : Nil
      # gtk_popover_set_pointing_to: (Method | Setter)
      # @rect: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      rect = if rect.nil?
               Pointer(Void).null
             else
               rect.to_unsafe
             end

      # C call
      LibGtk.gtk_popover_set_pointing_to(to_unsafe, rect)

      # Return value handling
    end

    def position=(position : Gtk::PositionType) : Nil
      # gtk_popover_set_position: (Method | Setter)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_popover_set_position(to_unsafe, position)

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

      def connect(handler : Proc(Gtk::Popover, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Popover.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Popover, Nil)).unbox(_lib_box).call(_sender)
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

      def connect(handler : Proc(Gtk::Popover, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Popover.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Popover, Nil)).unbox(_lib_box).call(_sender)
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_closed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_closed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_closed : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
