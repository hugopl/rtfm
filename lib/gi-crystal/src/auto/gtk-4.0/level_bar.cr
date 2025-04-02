require "./widget"
require "./accessible"

require "./accessible_range"

require "./buildable"

require "./constraint_target"

require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class LevelBar < Widget
    include Accessible
    include AccessibleRange
    include Buildable
    include ConstraintTarget
    include Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(LevelBar, g_object_get_qdata)

    # Initialize a new `LevelBar`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, inverted : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, max_value : Float64? = nil, min_value : Float64? = nil, mode : Gtk::LevelBarMode? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, value : Float64? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[42]
      _values = StaticArray(LibGObject::Value, 42).new(LibGObject::Value.new)
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
      if !max_value.nil?
        (_names.to_unsafe + _n).value = "max-value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_value)
        _n += 1
      end
      if !min_value.nil?
        (_names.to_unsafe + _n).value = "min-value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_value)
        _n += 1
      end
      if !mode.nil?
        (_names.to_unsafe + _n).value = "mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mode)
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
      @@g_type ||= LibGtk.gtk_level_bar_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::LevelBar.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def max_value=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "max-value", unsafe_value, Pointer(Void).null)
      value
    end

    def max_value : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "max-value", pointerof(value), Pointer(Void).null)
      value
    end

    def min_value=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "min-value", unsafe_value, Pointer(Void).null)
      value
    end

    def min_value : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "min-value", pointerof(value), Pointer(Void).null)
      value
    end

    def mode=(value : Gtk::LevelBarMode) : Gtk::LevelBarMode
      unsafe_value = value

      LibGObject.g_object_set(self, "mode", unsafe_value, Pointer(Void).null)
      value
    end

    def mode : Gtk::LevelBarMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "mode", pointerof(value), Pointer(Void).null)
      Gtk::LevelBarMode.new(value)
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

    def self.new : self
      # gtk_level_bar_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_level_bar_new

      # Return value handling
      Gtk::LevelBar.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_interval(min_value : Float64, max_value : Float64) : self
      # gtk_level_bar_new_for_interval: (Constructor)
      # @min_value:
      # @max_value:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_level_bar_new_for_interval(min_value, max_value)

      # Return value handling
      Gtk::LevelBar.new(_retval, GICrystal::Transfer::Full)
    end

    def add_offset_value(name : ::String, value : Float64) : Nil
      # gtk_level_bar_add_offset_value: (Method)
      # @name:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_level_bar_add_offset_value(to_unsafe, name, value)

      # Return value handling
    end

    def inverted : Bool
      # gtk_level_bar_get_inverted: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_level_bar_get_inverted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def max_value : Float64
      # gtk_level_bar_get_max_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_level_bar_get_max_value(to_unsafe)

      # Return value handling
      _retval
    end

    def min_value : Float64
      # gtk_level_bar_get_min_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_level_bar_get_min_value(to_unsafe)

      # Return value handling
      _retval
    end

    def mode : Gtk::LevelBarMode
      # gtk_level_bar_get_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_level_bar_get_mode(to_unsafe)

      # Return value handling
      Gtk::LevelBarMode.new(_retval)
    end

    def offset_value(name : ::String?, value : Float64) : Bool
      # gtk_level_bar_get_offset_value: (Method)
      # @name: (nullable)
      # @value: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_level_bar_get_offset_value(to_unsafe, name, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def value : Float64
      # gtk_level_bar_get_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_level_bar_get_value(to_unsafe)

      # Return value handling
      _retval
    end

    def remove_offset_value(name : ::String?) : Nil
      # gtk_level_bar_remove_offset_value: (Method)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGtk.gtk_level_bar_remove_offset_value(to_unsafe, name)

      # Return value handling
    end

    def inverted=(inverted : Bool) : Nil
      # gtk_level_bar_set_inverted: (Method | Setter)
      # @inverted:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_level_bar_set_inverted(to_unsafe, inverted)

      # Return value handling
    end

    def max_value=(value : Float64) : Nil
      # gtk_level_bar_set_max_value: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_level_bar_set_max_value(to_unsafe, value)

      # Return value handling
    end

    def min_value=(value : Float64) : Nil
      # gtk_level_bar_set_min_value: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_level_bar_set_min_value(to_unsafe, value)

      # Return value handling
    end

    def mode=(mode : Gtk::LevelBarMode) : Nil
      # gtk_level_bar_set_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_level_bar_set_mode(to_unsafe, mode)

      # Return value handling
    end

    def value=(value : Float64) : Nil
      # gtk_level_bar_set_value: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_level_bar_set_value(to_unsafe, value)

      # Return value handling
    end

    struct OffsetChangedSignal < GObject::Signal
      def name : String
        @detail ? "offset-changed::#{@detail}" : "offset-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          name = ::String.new(lib_name)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::LevelBar, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::LevelBar.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          name = ::String.new(lib_name)
          ::Box(Proc(Gtk::LevelBar, ::String, Nil)).unbox(_lib_box).call(_sender, name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(name : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "offset-changed", name)
      end
    end

    def offset_changed_signal
      OffsetChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
