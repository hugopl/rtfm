require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/actionable"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Banner < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Actionable
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Banner, g_object_get_qdata)

    # Initialize a new `Banner`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, action_name : ::String? = nil, action_target : GLib::Variant? = nil, button_label : ::String? = nil, button_style : Adw::BannerButtonStyle? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, revealed : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, title : ::String? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, use_markup : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !action_name.nil?
        (_names.to_unsafe + _n).value = "action-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_name)
        _n += 1
      end
      if !action_target.nil?
        (_names.to_unsafe + _n).value = "action-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_target)
        _n += 1
      end
      if !button_label.nil?
        (_names.to_unsafe + _n).value = "button-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, button_label)
        _n += 1
      end
      if !button_style.nil?
        (_names.to_unsafe + _n).value = "button-style".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, button_style)
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
      if !revealed.nil?
        (_names.to_unsafe + _n).value = "revealed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, revealed)
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
      if !use_markup.nil?
        (_names.to_unsafe + _n).value = "use-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_markup)
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
      @@g_type ||= LibAdw.adw_banner_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Banner.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def button_label=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "button-label", unsafe_value, Pointer(Void).null)
      value
    end

    def button_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "button-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#button_label` property to nil.
    def button_label=(value : Nil) : Nil
      LibGObject.g_object_set(self, "button-label", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#button_label`, but can return nil.
    def button_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "button-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def button_style=(value : Adw::BannerButtonStyle) : Adw::BannerButtonStyle
      unsafe_value = value

      LibGObject.g_object_set(self, "button-style", unsafe_value, Pointer(Void).null)
      value
    end

    def button_style : Adw::BannerButtonStyle
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "button-style", pointerof(value), Pointer(Void).null)
      Adw::BannerButtonStyle.new(value)
    end

    def revealed=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "revealed", unsafe_value, Pointer(Void).null)
      value
    end

    def revealed? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "revealed", pointerof(value), Pointer(Void).null)
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

    def use_markup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def use_markup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-markup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(title : ::String) : self
      # adw_banner_new: (Constructor)
      # @title:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_banner_new(title)

      # Return value handling
      Adw::Banner.new(_retval, GICrystal::Transfer::Full)
    end

    def button_label : ::String?
      # adw_banner_get_button_label: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_banner_get_button_label(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def button_style : Adw::BannerButtonStyle
      # adw_banner_get_button_style: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_banner_get_button_style(to_unsafe)

      # Return value handling
      Adw::BannerButtonStyle.new(_retval)
    end

    def revealed : Bool
      # adw_banner_get_revealed: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_banner_get_revealed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def title : ::String
      # adw_banner_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_banner_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def use_markup : Bool
      # adw_banner_get_use_markup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_banner_get_use_markup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def button_label=(label : ::String?) : Nil
      # adw_banner_set_button_label: (Method | Setter)
      # @label: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      label = if label.nil?
                Pointer(LibC::Char).null
              else
                label.to_unsafe
              end

      # C call
      LibAdw.adw_banner_set_button_label(to_unsafe, label)

      # Return value handling
    end

    def button_style=(style : Adw::BannerButtonStyle) : Nil
      # adw_banner_set_button_style: (Method | Setter)
      # @style:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_banner_set_button_style(to_unsafe, style)

      # Return value handling
    end

    def revealed=(revealed : Bool) : Nil
      # adw_banner_set_revealed: (Method | Setter)
      # @revealed:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_banner_set_revealed(to_unsafe, revealed)

      # Return value handling
    end

    def title=(title : ::String) : Nil
      # adw_banner_set_title: (Method | Setter)
      # @title:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_banner_set_title(to_unsafe, title)

      # Return value handling
    end

    def use_markup=(use_markup : Bool) : Nil
      # adw_banner_set_use_markup: (Method | Setter)
      # @use_markup:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_banner_set_use_markup(to_unsafe, use_markup)

      # Return value handling
    end

    struct ButtonClickedSignal < GObject::Signal
      def name : String
        @detail ? "button-clicked::#{@detail}" : "button-clicked"
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

      def connect(handler : Proc(Adw::Banner, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::Banner.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::Banner, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "button-clicked")
      end
    end

    def button_clicked_signal
      ButtonClickedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
