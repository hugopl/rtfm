require "./widget"
require "./accessible"

require "./accessible_range"

require "./buildable"

require "./constraint_target"

require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Range < Widget
    include Accessible
    include AccessibleRange
    include Buildable
    include ConstraintTarget
    include Orientable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::RangeClass), class_init,
        sizeof(LibGtk::Range), instance_init, 0)
    end

    GICrystal.declare_new_method(Range, g_object_get_qdata)

    # Initialize a new `Range`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, adjustment : Gtk::Adjustment? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, fill_level : Float64? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, inverted : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, restrict_to_fill_level : Bool? = nil, root : Gtk::Root? = nil, round_digits : Int32? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_fill_level : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !adjustment.nil?
        (_names.to_unsafe + _n).value = "adjustment".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, adjustment)
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
      if !fill_level.nil?
        (_names.to_unsafe + _n).value = "fill-level".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fill_level)
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
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !restrict_to_fill_level.nil?
        (_names.to_unsafe + _n).value = "restrict-to-fill-level".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, restrict_to_fill_level)
        _n += 1
      end
      if !root.nil?
        (_names.to_unsafe + _n).value = "root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, root)
        _n += 1
      end
      if !round_digits.nil?
        (_names.to_unsafe + _n).value = "round-digits".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, round_digits)
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
      if !show_fill_level.nil?
        (_names.to_unsafe + _n).value = "show-fill-level".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_fill_level)
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
      @@g_type ||= LibGtk.gtk_range_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Range.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def adjustment=(value : Gtk::Adjustment?) : Gtk::Adjustment?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "adjustment", unsafe_value, Pointer(Void).null)
      value
    end

    def adjustment : Gtk::Adjustment?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "adjustment", pointerof(value), Pointer(Void).null)
      Gtk::Adjustment.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def fill_level=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "fill-level", unsafe_value, Pointer(Void).null)
      value
    end

    def fill_level : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "fill-level", pointerof(value), Pointer(Void).null)
      value
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

    def restrict_to_fill_level=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "restrict-to-fill-level", unsafe_value, Pointer(Void).null)
      value
    end

    def restrict_to_fill_level? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "restrict-to-fill-level", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def round_digits=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "round-digits", unsafe_value, Pointer(Void).null)
      value
    end

    def round_digits : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "round-digits", pointerof(value), Pointer(Void).null)
      value
    end

    def show_fill_level=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-fill-level", unsafe_value, Pointer(Void).null)
      value
    end

    def show_fill_level? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-fill-level", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def adjustment : Gtk::Adjustment
      # gtk_range_get_adjustment: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_adjustment(to_unsafe)

      # Return value handling
      Gtk::Adjustment.new(_retval, GICrystal::Transfer::None)
    end

    def fill_level : Float64
      # gtk_range_get_fill_level: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_fill_level(to_unsafe)

      # Return value handling
      _retval
    end

    def flippable : Bool
      # gtk_range_get_flippable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_flippable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def inverted : Bool
      # gtk_range_get_inverted: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_inverted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def range_rect : Gdk::Rectangle
      # gtk_range_get_range_rect: (Method)
      # @range_rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      range_rect = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_range_get_range_rect(to_unsafe, range_rect)

      # Return value handling
      range_rect
    end

    def restrict_to_fill_level : Bool
      # gtk_range_get_restrict_to_fill_level: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_restrict_to_fill_level(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def round_digits : Int32
      # gtk_range_get_round_digits: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_round_digits(to_unsafe)

      # Return value handling
      _retval
    end

    def show_fill_level : Bool
      # gtk_range_get_show_fill_level: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_show_fill_level(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def slider_range : Nil
      # gtk_range_get_slider_range: (Method)
      # @slider_start: (out) (transfer full) (optional)
      # @slider_end: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      slider_start = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      slider_end = Pointer(Int32).null
      # C call
      LibGtk.gtk_range_get_slider_range(to_unsafe, slider_start, slider_end)

      # Return value handling
    end

    def slider_size_fixed : Bool
      # gtk_range_get_slider_size_fixed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_slider_size_fixed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def value : Float64
      # gtk_range_get_value: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_range_get_value(to_unsafe)

      # Return value handling
      _retval
    end

    def adjustment=(adjustment : Gtk::Adjustment) : Nil
      # gtk_range_set_adjustment: (Method | Setter)
      # @adjustment:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_adjustment(to_unsafe, adjustment)

      # Return value handling
    end

    def fill_level=(fill_level : Float64) : Nil
      # gtk_range_set_fill_level: (Method | Setter)
      # @fill_level:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_fill_level(to_unsafe, fill_level)

      # Return value handling
    end

    def flippable=(flippable : Bool) : Nil
      # gtk_range_set_flippable: (Method)
      # @flippable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_flippable(to_unsafe, flippable)

      # Return value handling
    end

    def set_increments(step : Float64, page : Float64) : Nil
      # gtk_range_set_increments: (Method)
      # @step:
      # @page:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_increments(to_unsafe, step, page)

      # Return value handling
    end

    def inverted=(setting : Bool) : Nil
      # gtk_range_set_inverted: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_inverted(to_unsafe, setting)

      # Return value handling
    end

    def set_range(min : Float64, max : Float64) : Nil
      # gtk_range_set_range: (Method)
      # @min:
      # @max:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_range(to_unsafe, min, max)

      # Return value handling
    end

    def restrict_to_fill_level=(restrict_to_fill_level : Bool) : Nil
      # gtk_range_set_restrict_to_fill_level: (Method | Setter)
      # @restrict_to_fill_level:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_restrict_to_fill_level(to_unsafe, restrict_to_fill_level)

      # Return value handling
    end

    def round_digits=(round_digits : Int32) : Nil
      # gtk_range_set_round_digits: (Method | Setter)
      # @round_digits:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_round_digits(to_unsafe, round_digits)

      # Return value handling
    end

    def show_fill_level=(show_fill_level : Bool) : Nil
      # gtk_range_set_show_fill_level: (Method | Setter)
      # @show_fill_level:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_show_fill_level(to_unsafe, show_fill_level)

      # Return value handling
    end

    def slider_size_fixed=(size_fixed : Bool) : Nil
      # gtk_range_set_slider_size_fixed: (Method)
      # @size_fixed:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_slider_size_fixed(to_unsafe, size_fixed)

      # Return value handling
    end

    def value=(value : Float64) : Nil
      # gtk_range_set_value: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_range_set_value(to_unsafe, value)

      # Return value handling
    end

    struct AdjustBoundsSignal < GObject::Signal
      def name : String
        @detail ? "adjust-bounds::#{@detail}" : "adjust-bounds"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          value = lib_value
          ::Box(Proc(Float64, Nil)).unbox(_lib_box).call(value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Range, Float64, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_value : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::Range.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          value = lib_value
          ::Box(Proc(Gtk::Range, Float64, Nil)).unbox(_lib_box).call(_sender, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(value : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "adjust-bounds", value)
      end
    end

    def adjust_bounds_signal
      AdjustBoundsSignal.new(self)
    end

    struct ChangeValueSignal < GObject::Signal
      def name : String
        @detail ? "change-value::#{@detail}" : "change-value"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::ScrollType, Float64, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::ScrollType, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_scroll : UInt32, lib_value : Float64, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          scroll = Gtk::ScrollType.new(lib_scroll)
          # NoStrategy
          value = lib_value
          ::Box(Proc(Gtk::ScrollType, Float64, Bool)).unbox(_lib_box).call(scroll, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Range, Gtk::ScrollType, Float64, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_scroll : UInt32, lib_value : Float64, _lib_box : Pointer(Void)) {
          _sender = Gtk::Range.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          scroll = Gtk::ScrollType.new(lib_scroll)
          # NoStrategy
          value = lib_value
          ::Box(Proc(Gtk::Range, Gtk::ScrollType, Float64, Bool)).unbox(_lib_box).call(_sender, scroll, value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(scroll : Gtk::ScrollType, value : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "change-value", scroll, value)
      end
    end

    def change_value_signal
      ChangeValueSignal.new(self)
    end

    struct MoveSliderSignal < GObject::Signal
      def name : String
        @detail ? "move-slider::#{@detail}" : "move-slider"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::ScrollType, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::ScrollType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          step = Gtk::ScrollType.new(lib_step)
          ::Box(Proc(Gtk::ScrollType, Nil)).unbox(_lib_box).call(step)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Range, Gtk::ScrollType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_step : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Range.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          step = Gtk::ScrollType.new(lib_step)
          ::Box(Proc(Gtk::Range, Gtk::ScrollType, Nil)).unbox(_lib_box).call(_sender, step)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(step : Gtk::ScrollType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-slider", step)
      end
    end

    def move_slider_signal
      MoveSliderSignal.new(self)
    end

    struct ValueChangedSignal < GObject::Signal
      def name : String
        @detail ? "value-changed::#{@detail}" : "value-changed"
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

      def connect(handler : Proc(Gtk::Range, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Range.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Range, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "value-changed")
      end
    end

    def value_changed_signal
      ValueChangedSignal.new(self)
    end

    # adjust_bounds: (None)
    # @new_value:
    # Returns: (transfer none)
    private macro _register_adjust_bounds_vfunc(impl_method_name)
      private def self._vfunc_adjust_bounds(%this : Pointer(Void), lib_new_value :  Float64, ) : Void
        # @new_value: 

new_value=lib_new_value


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(new_value)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_adjust_bounds(Pointer(Void), Float64)).pointer
        previous_def
      end
    end

    # adjust_bounds: (None)
    # @new_value:
    # Returns: (transfer none)
    private macro _register_unsafe_adjust_bounds_vfunc(impl_method_name)
      private def self._vfunc_unsafe_adjust_bounds(%this : Pointer(Void), lib_new_value :  Float64, ) : Void
# @new_value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_new_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_adjust_bounds = Proc(Pointer(Void), Float64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_adjust_bounds(Pointer(Void), Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_adjust_bounds : Proc(Pointer(Void), Float64, Void)? = nil
    end

    # change_value: (None)
    # @scroll:
    # @new_value:
    # Returns: (transfer none)
    private macro _register_change_value_vfunc(impl_method_name)
      private def self._vfunc_change_value(%this : Pointer(Void), lib_scroll :  UInt32, lib_new_value :  Float64, ) : LibC::Int
        # @scroll: 
# @new_value: 

# Generator::BuiltInTypeArgPlan
scroll=Gtk::ScrollType.new(lib_scroll)
new_value=lib_new_value


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(scroll, new_value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_change_value(Pointer(Void), UInt32, Float64)).pointer
        previous_def
      end
    end

    # change_value: (None)
    # @scroll:
    # @new_value:
    # Returns: (transfer none)
    private macro _register_unsafe_change_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_change_value(%this : Pointer(Void), lib_scroll :  UInt32, lib_new_value :  Float64, ) : LibC::Int
# @scroll: 
# @new_value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_scroll, lib_new_value)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_change_value = Proc(Pointer(Void), UInt32, Float64, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_change_value(Pointer(Void), UInt32, Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_change_value : Proc(Pointer(Void), UInt32, Float64, LibC::Int)? = nil
    end

    # get_range_border: (None)
    # @border_:
    # Returns: (transfer none)
    private macro _register_get_range_border_vfunc(impl_method_name)
      private def self._vfunc_get_range_border(%this : Pointer(Void), lib_border_ :  Pointer(Void), ) : Void
        # @border_: 

# Generator::BuiltInTypeArgPlan
border_=Gtk::Border.new(lib_border_, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(border_)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_range_border(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_range_border: (None)
    # @border_:
    # Returns: (transfer none)
    private macro _register_unsafe_get_range_border_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_range_border(%this : Pointer(Void), lib_border_ :  Pointer(Void), ) : Void
# @border_: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_border_)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 432).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_range_border = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_range_border(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_range_border : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # move_slider: (None)
    # @scroll:
    # Returns: (transfer none)
    private macro _register_move_slider_vfunc(impl_method_name)
      private def self._vfunc_move_slider(%this : Pointer(Void), lib_scroll :  UInt32, ) : Void
        # @scroll: 

# Generator::BuiltInTypeArgPlan
scroll=Gtk::ScrollType.new(lib_scroll)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(scroll)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_move_slider(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # move_slider: (None)
    # @scroll:
    # Returns: (transfer none)
    private macro _register_unsafe_move_slider_vfunc(impl_method_name)
      private def self._vfunc_unsafe_move_slider(%this : Pointer(Void), lib_scroll :  UInt32, ) : Void
# @scroll: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_scroll)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_move_slider = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_move_slider(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_move_slider : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # value_changed: (None)
    # Returns: (transfer none)
    private macro _register_value_changed_vfunc(impl_method_name)
      private def self._vfunc_value_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_value_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # value_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_value_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_value_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_value_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_value_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_value_changed : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
