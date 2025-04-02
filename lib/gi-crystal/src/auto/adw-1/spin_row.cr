require "./action_row"
require "../gtk-4.0/accessible"

require "../gtk-4.0/actionable"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/editable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class SpinRow < ActionRow
    include Gtk::Accessible
    include Gtk::Actionable
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::Editable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SpinRow, g_object_get_qdata)

    # Initialize a new `SpinRow`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, action_name : ::String? = nil, action_target : GLib::Variant? = nil, activatable : Bool? = nil, activatable_widget : Gtk::Widget? = nil, adjustment : Gtk::Adjustment? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, climb_rate : Float64? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, cursor_position : Int32? = nil, digits : UInt32? = nil, editable : Bool? = nil, enable_undo : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, icon_name : ::String? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, max_width_chars : Int32? = nil, name : ::String? = nil, numeric : Bool? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, selectable : Bool? = nil, selection_bound : Int32? = nil, sensitive : Bool? = nil, snap_to_ticks : Bool? = nil, subtitle : ::String? = nil, subtitle_lines : Int32? = nil, subtitle_selectable : Bool? = nil, text : ::String? = nil, title : ::String? = nil, title_lines : Int32? = nil, title_selectable : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, update_policy : Gtk::SpinButtonUpdatePolicy? = nil, use_markup : Bool? = nil, use_underline : Bool? = nil, valign : Gtk::Align? = nil, value : Float64? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_chars : Int32? = nil, width_request : Int32? = nil, wrap : Bool? = nil, xalign : Float32? = nil)
      _names = uninitialized Pointer(LibC::Char)[67]
      _values = StaticArray(LibGObject::Value, 67).new(LibGObject::Value.new)
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
      if !activatable.nil?
        (_names.to_unsafe + _n).value = "activatable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, activatable)
        _n += 1
      end
      if !activatable_widget.nil?
        (_names.to_unsafe + _n).value = "activatable-widget".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, activatable_widget)
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
      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
        _n += 1
      end
      if !climb_rate.nil?
        (_names.to_unsafe + _n).value = "climb-rate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, climb_rate)
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
      if !cursor_position.nil?
        (_names.to_unsafe + _n).value = "cursor-position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor_position)
        _n += 1
      end
      if !digits.nil?
        (_names.to_unsafe + _n).value = "digits".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, digits)
        _n += 1
      end
      if !editable.nil?
        (_names.to_unsafe + _n).value = "editable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editable)
        _n += 1
      end
      if !enable_undo.nil?
        (_names.to_unsafe + _n).value = "enable-undo".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_undo)
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
      if !icon_name.nil?
        (_names.to_unsafe + _n).value = "icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, icon_name)
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
      if !max_width_chars.nil?
        (_names.to_unsafe + _n).value = "max-width-chars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_width_chars)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !numeric.nil?
        (_names.to_unsafe + _n).value = "numeric".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, numeric)
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
      if !selectable.nil?
        (_names.to_unsafe + _n).value = "selectable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selectable)
        _n += 1
      end
      if !selection_bound.nil?
        (_names.to_unsafe + _n).value = "selection-bound".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, selection_bound)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !snap_to_ticks.nil?
        (_names.to_unsafe + _n).value = "snap-to-ticks".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, snap_to_ticks)
        _n += 1
      end
      if !subtitle.nil?
        (_names.to_unsafe + _n).value = "subtitle".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, subtitle)
        _n += 1
      end
      if !subtitle_lines.nil?
        (_names.to_unsafe + _n).value = "subtitle-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, subtitle_lines)
        _n += 1
      end
      if !subtitle_selectable.nil?
        (_names.to_unsafe + _n).value = "subtitle-selectable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, subtitle_selectable)
        _n += 1
      end
      if !text.nil?
        (_names.to_unsafe + _n).value = "text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !title_lines.nil?
        (_names.to_unsafe + _n).value = "title-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title_lines)
        _n += 1
      end
      if !title_selectable.nil?
        (_names.to_unsafe + _n).value = "title-selectable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title_selectable)
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
      if !update_policy.nil?
        (_names.to_unsafe + _n).value = "update-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, update_policy)
        _n += 1
      end
      if !use_markup.nil?
        (_names.to_unsafe + _n).value = "use-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_markup)
        _n += 1
      end
      if !use_underline.nil?
        (_names.to_unsafe + _n).value = "use-underline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_underline)
        _n += 1
      end
      if !valign.nil?
        (_names.to_unsafe + _n).value = "valign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valign)
        _n += 1
      end
      if !value.nil?
        (_names.to_unsafe + _n).value = "value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value)
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
      if !width_chars.nil?
        (_names.to_unsafe + _n).value = "width-chars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_chars)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
        _n += 1
      end
      if !wrap.nil?
        (_names.to_unsafe + _n).value = "wrap".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap)
        _n += 1
      end
      if !xalign.nil?
        (_names.to_unsafe + _n).value = "xalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, xalign)
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
      @@g_type ||= LibAdw.adw_spin_row_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::SpinRow.new(Void*, GICrystal::Transfer)
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

    def climb_rate=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "climb-rate", unsafe_value, Pointer(Void).null)
      value
    end

    def climb_rate : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "climb-rate", pointerof(value), Pointer(Void).null)
      value
    end

    def digits=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "digits", unsafe_value, Pointer(Void).null)
      value
    end

    def digits : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "digits", pointerof(value), Pointer(Void).null)
      value
    end

    def numeric=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "numeric", unsafe_value, Pointer(Void).null)
      value
    end

    def numeric? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "numeric", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def snap_to_ticks=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "snap-to-ticks", unsafe_value, Pointer(Void).null)
      value
    end

    def snap_to_ticks? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "snap-to-ticks", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def update_policy=(value : Gtk::SpinButtonUpdatePolicy) : Gtk::SpinButtonUpdatePolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "update-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def update_policy : Gtk::SpinButtonUpdatePolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "update-policy", pointerof(value), Pointer(Void).null)
      Gtk::SpinButtonUpdatePolicy.new(value)
    end

    def value=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "value", unsafe_value, Pointer(Void).null)
      value
    end

    def value : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "value", pointerof(value), Pointer(Void).null)
      value
    end

    def wrap=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "wrap", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(adjustment : Gtk::Adjustment?, climb_rate : Float64, digits : UInt32) : self
      # adw_spin_row_new: (Constructor)
      # @adjustment: (nullable)
      # @climb_rate:
      # @digits:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      adjustment = if adjustment.nil?
                     Pointer(Void).null
                   else
                     adjustment.to_unsafe
                   end

      # C call
      _retval = LibAdw.adw_spin_row_new(adjustment, climb_rate, digits)

      # Return value handling
      Adw::SpinRow.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_range(min : Float64, max : Float64, step : Float64) : self
      # adw_spin_row_new_with_range: (Constructor)
      # @min:
      # @max:
      # @step:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_new_with_range(min, max, step)

      # Return value handling
      Adw::SpinRow.new(_retval, GICrystal::Transfer::Full)
    end

    def configure(adjustment : Gtk::Adjustment?, climb_rate : Float64, digits : UInt32) : Nil
      # adw_spin_row_configure: (Method)
      # @adjustment: (nullable)
      # @climb_rate:
      # @digits:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      adjustment = if adjustment.nil?
                     Pointer(Void).null
                   else
                     adjustment.to_unsafe
                   end

      # C call
      LibAdw.adw_spin_row_configure(to_unsafe, adjustment, climb_rate, digits)

      # Return value handling
    end

    def adjustment : Gtk::Adjustment
      # adw_spin_row_get_adjustment: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_adjustment(to_unsafe)

      # Return value handling
      Gtk::Adjustment.new(_retval, GICrystal::Transfer::None)
    end

    def climb_rate : Float64
      # adw_spin_row_get_climb_rate: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_climb_rate(to_unsafe)

      # Return value handling
      _retval
    end

    def digits : UInt32
      # adw_spin_row_get_digits: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_digits(to_unsafe)

      # Return value handling
      _retval
    end

    def numeric : Bool
      # adw_spin_row_get_numeric: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_numeric(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def snap_to_ticks : Bool
      # adw_spin_row_get_snap_to_ticks: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_snap_to_ticks(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def update_policy : Gtk::SpinButtonUpdatePolicy
      # adw_spin_row_get_update_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_update_policy(to_unsafe)

      # Return value handling
      Gtk::SpinButtonUpdatePolicy.new(_retval)
    end

    def value : Float64
      # adw_spin_row_get_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_value(to_unsafe)

      # Return value handling
      _retval
    end

    def wrap : Bool
      # adw_spin_row_get_wrap: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spin_row_get_wrap(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def adjustment=(adjustment : Gtk::Adjustment?) : Nil
      # adw_spin_row_set_adjustment: (Method | Setter)
      # @adjustment: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      adjustment = if adjustment.nil?
                     Pointer(Void).null
                   else
                     adjustment.to_unsafe
                   end

      # C call
      LibAdw.adw_spin_row_set_adjustment(to_unsafe, adjustment)

      # Return value handling
    end

    def climb_rate=(climb_rate : Float64) : Nil
      # adw_spin_row_set_climb_rate: (Method | Setter)
      # @climb_rate:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_climb_rate(to_unsafe, climb_rate)

      # Return value handling
    end

    def digits=(digits : UInt32) : Nil
      # adw_spin_row_set_digits: (Method | Setter)
      # @digits:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_digits(to_unsafe, digits)

      # Return value handling
    end

    def numeric=(numeric : Bool) : Nil
      # adw_spin_row_set_numeric: (Method | Setter)
      # @numeric:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_numeric(to_unsafe, numeric)

      # Return value handling
    end

    def set_range(min : Float64, max : Float64) : Nil
      # adw_spin_row_set_range: (Method)
      # @min:
      # @max:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_range(to_unsafe, min, max)

      # Return value handling
    end

    def snap_to_ticks=(snap_to_ticks : Bool) : Nil
      # adw_spin_row_set_snap_to_ticks: (Method | Setter)
      # @snap_to_ticks:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_snap_to_ticks(to_unsafe, snap_to_ticks)

      # Return value handling
    end

    def update_policy=(policy : Gtk::SpinButtonUpdatePolicy) : Nil
      # adw_spin_row_set_update_policy: (Method | Setter)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_update_policy(to_unsafe, policy)

      # Return value handling
    end

    def value=(value : Float64) : Nil
      # adw_spin_row_set_value: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_value(to_unsafe, value)

      # Return value handling
    end

    def wrap=(wrap : Bool) : Nil
      # adw_spin_row_set_wrap: (Method | Setter)
      # @wrap:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_set_wrap(to_unsafe, wrap)

      # Return value handling
    end

    def update : Nil
      # adw_spin_row_update: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spin_row_update(to_unsafe)

      # Return value handling
    end

    struct InputSignal < GObject::Signal
      def name : String
        @detail ? "input::#{@detail}" : "input"
      end

      def connect(*, after : Bool = false, &block : Proc(Float64, Int32)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Float64, Int32), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_new_value : Float64, _lib_box : Pointer(Void)) {
          # NoStrategy
          new_value = lib_new_value
          ::Box(Proc(Float64, Int32)).unbox(_lib_box).call(new_value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::SpinRow, Float64, Int32), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_new_value : Float64, _lib_box : Pointer(Void)) {
          _sender = Adw::SpinRow.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          new_value = lib_new_value
          ::Box(Proc(Adw::SpinRow, Float64, Int32)).unbox(_lib_box).call(_sender, new_value)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(new_value : Float64) : Nil
        LibGObject.g_signal_emit_by_name(@source, "input", new_value)
      end
    end

    def input_signal
      InputSignal.new(self)
    end

    struct OutputSignal < GObject::Signal
      def name : String
        @detail ? "output::#{@detail}" : "output"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Adw::SpinRow, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::SpinRow.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::SpinRow, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "output")
      end
    end

    def output_signal
      OutputSignal.new(self)
    end

    struct WrappedSignal < GObject::Signal
      def name : String
        @detail ? "wrapped::#{@detail}" : "wrapped"
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

      def connect(handler : Proc(Adw::SpinRow, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::SpinRow.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::SpinRow, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "wrapped")
      end
    end

    def wrapped_signal
      WrappedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
