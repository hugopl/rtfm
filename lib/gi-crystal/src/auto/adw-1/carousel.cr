require "../gtk-4.0/widget"
require "./swipeable"

require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/orientable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Carousel < Gtk::Widget
    include Swipeable
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Carousel, g_object_get_qdata)

    # Initialize a new `Carousel`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, allow_long_swipes : Bool? = nil, allow_mouse_drag : Bool? = nil, allow_scroll_wheel : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, interactive : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, n_pages : UInt32? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, position : Float64? = nil, receives_default : Bool? = nil, reveal_duration : UInt32? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, scroll_params : Adw::SpringParams? = nil, sensitive : Bool? = nil, spacing : UInt32? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[46]
      _values = StaticArray(LibGObject::Value, 46).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !allow_long_swipes.nil?
        (_names.to_unsafe + _n).value = "allow-long-swipes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_long_swipes)
        _n += 1
      end
      if !allow_mouse_drag.nil?
        (_names.to_unsafe + _n).value = "allow-mouse-drag".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_mouse_drag)
        _n += 1
      end
      if !allow_scroll_wheel.nil?
        (_names.to_unsafe + _n).value = "allow-scroll-wheel".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_scroll_wheel)
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
      if !interactive.nil?
        (_names.to_unsafe + _n).value = "interactive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, interactive)
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
      if !n_pages.nil?
        (_names.to_unsafe + _n).value = "n-pages".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_pages)
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
      if !orientation.nil?
        (_names.to_unsafe + _n).value = "orientation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, orientation)
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
      if !reveal_duration.nil?
        (_names.to_unsafe + _n).value = "reveal-duration".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, reveal_duration)
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
      if !scroll_params.nil?
        (_names.to_unsafe + _n).value = "scroll-params".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scroll_params)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !spacing.nil?
        (_names.to_unsafe + _n).value = "spacing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, spacing)
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
      @@g_type ||= LibAdw.adw_carousel_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Carousel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allow_long_swipes=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-long-swipes", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_long_swipes? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-long-swipes", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_mouse_drag=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-mouse-drag", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_mouse_drag? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-mouse-drag", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_scroll_wheel=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-scroll-wheel", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_scroll_wheel? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-scroll-wheel", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def interactive=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "interactive", unsafe_value, Pointer(Void).null)
      value
    end

    def interactive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "interactive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def n_pages : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-pages", pointerof(value), Pointer(Void).null)
      value
    end

    def position : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "position", pointerof(value), Pointer(Void).null)
      value
    end

    def reveal_duration=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "reveal-duration", unsafe_value, Pointer(Void).null)
      value
    end

    def reveal_duration : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "reveal-duration", pointerof(value), Pointer(Void).null)
      value
    end

    def scroll_params=(value : Adw::SpringParams?) : Adw::SpringParams?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "scroll-params", unsafe_value, Pointer(Void).null)
      value
    end

    def scroll_params : Adw::SpringParams?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "scroll-params", pointerof(value), Pointer(Void).null)
      Adw::SpringParams.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def spacing=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "spacing", unsafe_value, Pointer(Void).null)
      value
    end

    def spacing : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "spacing", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # adw_carousel_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_new

      # Return value handling
      Adw::Carousel.new(_retval, GICrystal::Transfer::Full)
    end

    def append(child : Gtk::Widget) : Nil
      # adw_carousel_append: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_append(to_unsafe, child)

      # Return value handling
    end

    def allow_long_swipes : Bool
      # adw_carousel_get_allow_long_swipes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_allow_long_swipes(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_mouse_drag : Bool
      # adw_carousel_get_allow_mouse_drag: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_allow_mouse_drag(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_scroll_wheel : Bool
      # adw_carousel_get_allow_scroll_wheel: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_allow_scroll_wheel(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def interactive : Bool
      # adw_carousel_get_interactive: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_interactive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def n_pages : UInt32
      # adw_carousel_get_n_pages: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_n_pages(to_unsafe)

      # Return value handling
      _retval
    end

    def nth_page(n : UInt32) : Gtk::Widget
      # adw_carousel_get_nth_page: (Method)
      # @n:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_nth_page(to_unsafe, n)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None)
    end

    def position : Float64
      # adw_carousel_get_position: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_position(to_unsafe)

      # Return value handling
      _retval
    end

    def reveal_duration : UInt32
      # adw_carousel_get_reveal_duration: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_reveal_duration(to_unsafe)

      # Return value handling
      _retval
    end

    def scroll_params : Adw::SpringParams
      # adw_carousel_get_scroll_params: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_carousel_get_scroll_params(to_unsafe)

      # Return value handling
      Adw::SpringParams.new(_retval, GICrystal::Transfer::Full)
    end

    def spacing : UInt32
      # adw_carousel_get_spacing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_carousel_get_spacing(to_unsafe)

      # Return value handling
      _retval
    end

    def insert(child : Gtk::Widget, position : Int32) : Nil
      # adw_carousel_insert: (Method)
      # @child:
      # @position:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_insert(to_unsafe, child, position)

      # Return value handling
    end

    def prepend(child : Gtk::Widget) : Nil
      # adw_carousel_prepend: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_prepend(to_unsafe, child)

      # Return value handling
    end

    def remove(child : Gtk::Widget) : Nil
      # adw_carousel_remove: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_remove(to_unsafe, child)

      # Return value handling
    end

    def reorder(child : Gtk::Widget, position : Int32) : Nil
      # adw_carousel_reorder: (Method)
      # @child:
      # @position:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_reorder(to_unsafe, child, position)

      # Return value handling
    end

    def scroll_to(widget : Gtk::Widget, animate : Bool) : Nil
      # adw_carousel_scroll_to: (Method)
      # @widget:
      # @animate:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_scroll_to(to_unsafe, widget, animate)

      # Return value handling
    end

    def allow_long_swipes=(allow_long_swipes : Bool) : Nil
      # adw_carousel_set_allow_long_swipes: (Method | Setter)
      # @allow_long_swipes:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_set_allow_long_swipes(to_unsafe, allow_long_swipes)

      # Return value handling
    end

    def allow_mouse_drag=(allow_mouse_drag : Bool) : Nil
      # adw_carousel_set_allow_mouse_drag: (Method | Setter)
      # @allow_mouse_drag:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_set_allow_mouse_drag(to_unsafe, allow_mouse_drag)

      # Return value handling
    end

    def allow_scroll_wheel=(allow_scroll_wheel : Bool) : Nil
      # adw_carousel_set_allow_scroll_wheel: (Method | Setter)
      # @allow_scroll_wheel:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_set_allow_scroll_wheel(to_unsafe, allow_scroll_wheel)

      # Return value handling
    end

    def interactive=(interactive : Bool) : Nil
      # adw_carousel_set_interactive: (Method | Setter)
      # @interactive:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_set_interactive(to_unsafe, interactive)

      # Return value handling
    end

    def reveal_duration=(reveal_duration : UInt32) : Nil
      # adw_carousel_set_reveal_duration: (Method | Setter)
      # @reveal_duration:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_set_reveal_duration(to_unsafe, reveal_duration)

      # Return value handling
    end

    def scroll_params=(params : Adw::SpringParams) : Nil
      # adw_carousel_set_scroll_params: (Method | Setter)
      # @params:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_set_scroll_params(to_unsafe, params)

      # Return value handling
    end

    def spacing=(spacing : UInt32) : Nil
      # adw_carousel_set_spacing: (Method | Setter)
      # @spacing:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_carousel_set_spacing(to_unsafe, spacing)

      # Return value handling
    end

    struct PageChangedSignal < GObject::Signal
      def name : String
        @detail ? "page-changed::#{@detail}" : "page-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          index = lib_index
          ::Box(Proc(UInt32, Nil)).unbox(_lib_box).call(index)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::Carousel, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_index : UInt32, _lib_box : Pointer(Void)) {
          _sender = Adw::Carousel.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          index = lib_index
          ::Box(Proc(Adw::Carousel, UInt32, Nil)).unbox(_lib_box).call(_sender, index)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(index : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "page-changed", index)
      end
    end

    def page_changed_signal
      PageChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
