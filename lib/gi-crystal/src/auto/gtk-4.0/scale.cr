require "./range"
require "./accessible"

require "./accessible_range"

require "./buildable"

require "./constraint_target"

require "./orientable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Scale < Range
    include Accessible
    include AccessibleRange
    include Buildable
    include ConstraintTarget
    include Orientable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ScaleClass), class_init,
        sizeof(LibGtk::Scale), instance_init, 0)
    end

    GICrystal.declare_new_method(Scale, g_object_get_qdata)

    # Initialize a new `Scale`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, adjustment : Gtk::Adjustment? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, digits : Int32? = nil, draw_value : Bool? = nil, fill_level : Float64? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_origin : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, inverted : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, restrict_to_fill_level : Bool? = nil, root : Gtk::Root? = nil, round_digits : Int32? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_fill_level : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, value_pos : Gtk::PositionType? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[47]
      _values = StaticArray(LibGObject::Value, 47).new(LibGObject::Value.new)
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
      if !digits.nil?
        (_names.to_unsafe + _n).value = "digits".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, digits)
        _n += 1
      end
      if !draw_value.nil?
        (_names.to_unsafe + _n).value = "draw-value".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, draw_value)
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
      if !has_origin.nil?
        (_names.to_unsafe + _n).value = "has-origin".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_origin)
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
      if !value_pos.nil?
        (_names.to_unsafe + _n).value = "value-pos".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, value_pos)
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
      @@g_type ||= LibGtk.gtk_scale_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Scale.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def digits=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "digits", unsafe_value, Pointer(Void).null)
      value
    end

    def digits : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "digits", pointerof(value), Pointer(Void).null)
      value
    end

    def draw_value=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "draw-value", unsafe_value, Pointer(Void).null)
      value
    end

    def draw_value? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "draw-value", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_origin=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-origin", unsafe_value, Pointer(Void).null)
      value
    end

    def has_origin? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-origin", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def value_pos=(value : Gtk::PositionType) : Gtk::PositionType
      unsafe_value = value

      LibGObject.g_object_set(self, "value-pos", unsafe_value, Pointer(Void).null)
      value
    end

    def value_pos : Gtk::PositionType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "value-pos", pointerof(value), Pointer(Void).null)
      Gtk::PositionType.new(value)
    end

    def self.new(orientation : Gtk::Orientation, adjustment : Gtk::Adjustment?) : self
      # gtk_scale_new: (Constructor)
      # @orientation:
      # @adjustment: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      adjustment = if adjustment.nil?
                     Pointer(Void).null
                   else
                     adjustment.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_scale_new(orientation, adjustment)

      # Return value handling
      Gtk::Scale.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_range(orientation : Gtk::Orientation, min : Float64, max : Float64, step : Float64) : self
      # gtk_scale_new_with_range: (Constructor)
      # @orientation:
      # @min:
      # @max:
      # @step:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_scale_new_with_range(orientation, min, max, step)

      # Return value handling
      Gtk::Scale.new(_retval, GICrystal::Transfer::Full)
    end

    def add_mark(value : Float64, position : Gtk::PositionType, markup : ::String?) : Nil
      # gtk_scale_add_mark: (Method)
      # @value:
      # @position:
      # @markup: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      markup = if markup.nil?
                 Pointer(LibC::Char).null
               else
                 markup.to_unsafe
               end

      # C call
      LibGtk.gtk_scale_add_mark(to_unsafe, value, position, markup)

      # Return value handling
    end

    def clear_marks : Nil
      # gtk_scale_clear_marks: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_scale_clear_marks(to_unsafe)

      # Return value handling
    end

    def digits : Int32
      # gtk_scale_get_digits: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_scale_get_digits(to_unsafe)

      # Return value handling
      _retval
    end

    def draw_value : Bool
      # gtk_scale_get_draw_value: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_scale_get_draw_value(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_origin : Bool
      # gtk_scale_get_has_origin: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_scale_get_has_origin(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def layout : Pango::Layout?
      # gtk_scale_get_layout: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_scale_get_layout(to_unsafe)

      # Return value handling
      Pango::Layout.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout_offsets : Nil
      # gtk_scale_get_layout_offsets: (Method)
      # @x: (out) (transfer full) (optional)
      # @y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      y = Pointer(Int32).null
      # C call
      LibGtk.gtk_scale_get_layout_offsets(to_unsafe, x, y)

      # Return value handling
    end

    def value_pos : Gtk::PositionType
      # gtk_scale_get_value_pos: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_scale_get_value_pos(to_unsafe)

      # Return value handling
      Gtk::PositionType.new(_retval)
    end

    def digits=(digits : Int32) : Nil
      # gtk_scale_set_digits: (Method | Setter)
      # @digits:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_scale_set_digits(to_unsafe, digits)

      # Return value handling
    end

    def draw_value=(draw_value : Bool) : Nil
      # gtk_scale_set_draw_value: (Method | Setter)
      # @draw_value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_scale_set_draw_value(to_unsafe, draw_value)

      # Return value handling
    end

    def format_value_func=(func : Gtk::ScaleFormatValueFunc?) : Nil
      # gtk_scale_set_format_value_func: (Method)
      # @func: (nullable)
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_scale : Pointer(Void), lib_value : Float64, lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          scale = Gtk::Scale.new(lib_scale, GICrystal::Transfer::None)
          # NoStrategy
          value = lib_value
          ::Box(Proc(Gtk::Scale, Float64, ::String)).unbox(lib_user_data).call(scale, value)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy_notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = user_data = destroy_notify = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_scale_set_format_value_func(to_unsafe, func, user_data, destroy_notify)

      # Return value handling
    end

    def has_origin=(has_origin : Bool) : Nil
      # gtk_scale_set_has_origin: (Method | Setter)
      # @has_origin:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_scale_set_has_origin(to_unsafe, has_origin)

      # Return value handling
    end

    def value_pos=(pos : Gtk::PositionType) : Nil
      # gtk_scale_set_value_pos: (Method | Setter)
      # @pos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_scale_set_value_pos(to_unsafe, pos)

      # Return value handling
    end

    # get_layout_offsets: (None)
    # @x: (out) (transfer full) (optional)
    # @y: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_layout_offsets_vfunc(impl_method_name)
      private def self._vfunc_get_layout_offsets(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
        # @x: (out) (transfer full) (optional) 
# @y: (out) (transfer full) (optional) 

# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(x, y)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_layout_offsets(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # get_layout_offsets: (None)
    # @x: (out) (transfer full) (optional)
    # @y: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_layout_offsets_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_layout_offsets(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, ) : Void
# @x: (out) (transfer full) (optional) 
# @y: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_x, lib_y)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_layout_offsets = Proc(Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_layout_offsets(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_layout_offsets : Proc(Pointer(Void), Int32, Int32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
