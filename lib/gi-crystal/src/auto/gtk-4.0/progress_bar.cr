require "./widget"
require "./accessible"

require "./accessible_range"

require "./buildable"

require "./constraint_target"

require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ProgressBar < Widget
    include Accessible
    include AccessibleRange
    include Buildable
    include ConstraintTarget
    include Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ProgressBar, g_object_get_qdata)

    # Initialize a new `ProgressBar`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, ellipsize : Pango::EllipsizeMode? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, fraction : Float64? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, inverted : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, pulse_step : Float64? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_text : Bool? = nil, text : ::String? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
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
      if !ellipsize.nil?
        (_names.to_unsafe + _n).value = "ellipsize".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ellipsize)
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
      if !fraction.nil?
        (_names.to_unsafe + _n).value = "fraction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fraction)
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
      if !pulse_step.nil?
        (_names.to_unsafe + _n).value = "pulse-step".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pulse_step)
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
      if !show_text.nil?
        (_names.to_unsafe + _n).value = "show-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_text)
        _n += 1
      end
      if !text.nil?
        (_names.to_unsafe + _n).value = "text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text)
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
      @@g_type ||= LibGtk.gtk_progress_bar_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ProgressBar.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def ellipsize=(value : Pango::EllipsizeMode) : Pango::EllipsizeMode
      unsafe_value = value

      LibGObject.g_object_set(self, "ellipsize", unsafe_value, Pointer(Void).null)
      value
    end

    def ellipsize : Pango::EllipsizeMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "ellipsize", pointerof(value), Pointer(Void).null)
      Pango::EllipsizeMode.new(value)
    end

    def fraction=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "fraction", unsafe_value, Pointer(Void).null)
      value
    end

    def fraction : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "fraction", pointerof(value), Pointer(Void).null)
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

    def pulse_step=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "pulse-step", unsafe_value, Pointer(Void).null)
      value
    end

    def pulse_step : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "pulse-step", pointerof(value), Pointer(Void).null)
      value
    end

    def show_text=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-text", unsafe_value, Pointer(Void).null)
      value
    end

    def show_text? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-text", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "text", unsafe_value, Pointer(Void).null)
      value
    end

    def text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#text` property to nil.
    def text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#text`, but can return nil.
    def text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # gtk_progress_bar_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_progress_bar_new

      # Return value handling
      Gtk::ProgressBar.new(_retval, GICrystal::Transfer::Full)
    end

    def ellipsize : Pango::EllipsizeMode
      # gtk_progress_bar_get_ellipsize: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_progress_bar_get_ellipsize(to_unsafe)

      # Return value handling
      Pango::EllipsizeMode.new(_retval)
    end

    def fraction : Float64
      # gtk_progress_bar_get_fraction: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_progress_bar_get_fraction(to_unsafe)

      # Return value handling
      _retval
    end

    def inverted : Bool
      # gtk_progress_bar_get_inverted: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_progress_bar_get_inverted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pulse_step : Float64
      # gtk_progress_bar_get_pulse_step: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_progress_bar_get_pulse_step(to_unsafe)

      # Return value handling
      _retval
    end

    def show_text : Bool
      # gtk_progress_bar_get_show_text: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_progress_bar_get_show_text(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def text : ::String?
      # gtk_progress_bar_get_text: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_progress_bar_get_text(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def pulse : Nil
      # gtk_progress_bar_pulse: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_progress_bar_pulse(to_unsafe)

      # Return value handling
    end

    def ellipsize=(mode : Pango::EllipsizeMode) : Nil
      # gtk_progress_bar_set_ellipsize: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_progress_bar_set_ellipsize(to_unsafe, mode)

      # Return value handling
    end

    def fraction=(fraction : Float64) : Nil
      # gtk_progress_bar_set_fraction: (Method | Setter)
      # @fraction:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_progress_bar_set_fraction(to_unsafe, fraction)

      # Return value handling
    end

    def inverted=(inverted : Bool) : Nil
      # gtk_progress_bar_set_inverted: (Method | Setter)
      # @inverted:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_progress_bar_set_inverted(to_unsafe, inverted)

      # Return value handling
    end

    def pulse_step=(fraction : Float64) : Nil
      # gtk_progress_bar_set_pulse_step: (Method | Setter)
      # @fraction:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_progress_bar_set_pulse_step(to_unsafe, fraction)

      # Return value handling
    end

    def show_text=(show_text : Bool) : Nil
      # gtk_progress_bar_set_show_text: (Method | Setter)
      # @show_text:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_progress_bar_set_show_text(to_unsafe, show_text)

      # Return value handling
    end

    def text=(text : ::String?) : Nil
      # gtk_progress_bar_set_text: (Method | Setter)
      # @text: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      LibGtk.gtk_progress_bar_set_text(to_unsafe, text)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
