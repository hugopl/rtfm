require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/orientable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class ToggleGroup < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::Orientable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ToggleGroup, g_object_get_qdata)

    # Initialize a new `ToggleGroup`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, active : UInt32? = nil, active_name : ::String? = nil, can_focus : Bool? = nil, can_shrink : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, homogeneous : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, n_toggles : UInt32? = nil, name : ::String? = nil, opacity : Float64? = nil, orientation : Gtk::Orientation? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, toggles : Gtk::SelectionModel? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !active.nil?
        (_names.to_unsafe + _n).value = "active".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, active)
        _n += 1
      end
      if !active_name.nil?
        (_names.to_unsafe + _n).value = "active-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, active_name)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_shrink.nil?
        (_names.to_unsafe + _n).value = "can-shrink".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_shrink)
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
      if !homogeneous.nil?
        (_names.to_unsafe + _n).value = "homogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, homogeneous)
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
      if !n_toggles.nil?
        (_names.to_unsafe + _n).value = "n-toggles".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_toggles)
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
      if !toggles.nil?
        (_names.to_unsafe + _n).value = "toggles".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, toggles)
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
      @@g_type ||= LibAdw.adw_toggle_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::ToggleGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def active=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "active", unsafe_value, Pointer(Void).null)
      value
    end

    def active : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "active", pointerof(value), Pointer(Void).null)
      value
    end

    def active_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "active-name", unsafe_value, Pointer(Void).null)
      value
    end

    def active_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "active-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#active_name` property to nil.
    def active_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "active-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#active_name`, but can return nil.
    def active_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "active-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def can_shrink=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "can-shrink", unsafe_value, Pointer(Void).null)
      value
    end

    def can_shrink? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "can-shrink", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def homogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "homogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def homogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "homogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def n_toggles : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-toggles", pointerof(value), Pointer(Void).null)
      value
    end

    def toggles : Gtk::SelectionModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "toggles", pointerof(value), Pointer(Void).null)
      Gtk::AbstractSelectionModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # adw_toggle_group_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_group_new

      # Return value handling
      Adw::ToggleGroup.new(_retval, GICrystal::Transfer::Full)
    end

    def add(toggle : Adw::Toggle) : Nil
      # adw_toggle_group_add: (Method)
      # @toggle: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(toggle)

      # C call
      LibAdw.adw_toggle_group_add(to_unsafe, toggle)

      # Return value handling
    end

    def active : UInt32
      # adw_toggle_group_get_active: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_group_get_active(to_unsafe)

      # Return value handling
      _retval
    end

    def active_name : ::String?
      # adw_toggle_group_get_active_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toggle_group_get_active_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def can_shrink : Bool
      # adw_toggle_group_get_can_shrink: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_group_get_can_shrink(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def homogeneous : Bool
      # adw_toggle_group_get_homogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_group_get_homogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def n_toggles : UInt32
      # adw_toggle_group_get_n_toggles: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_toggle_group_get_n_toggles(to_unsafe)

      # Return value handling
      _retval
    end

    def toggle(index : UInt32) : Adw::Toggle?
      # adw_toggle_group_get_toggle: (Method)
      # @index:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toggle_group_get_toggle(to_unsafe, index)

      # Return value handling
      Adw::Toggle.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def toggle_by_name(name : ::String) : Adw::Toggle?
      # adw_toggle_group_get_toggle_by_name: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_toggle_group_get_toggle_by_name(to_unsafe, name)

      # Return value handling
      Adw::Toggle.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def toggles : Gtk::SelectionModel
      # adw_toggle_group_get_toggles: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_toggle_group_get_toggles(to_unsafe)

      # Return value handling
      Gtk::AbstractSelectionModel.new(_retval, GICrystal::Transfer::Full)
    end

    def remove(toggle : Adw::Toggle) : Nil
      # adw_toggle_group_remove: (Method)
      # @toggle:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_group_remove(to_unsafe, toggle)

      # Return value handling
    end

    def remove_all : Nil
      # adw_toggle_group_remove_all: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_group_remove_all(to_unsafe)

      # Return value handling
    end

    def active=(active : UInt32) : Nil
      # adw_toggle_group_set_active: (Method | Setter)
      # @active:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_group_set_active(to_unsafe, active)

      # Return value handling
    end

    def active_name=(name : ::String?) : Nil
      # adw_toggle_group_set_active_name: (Method | Setter)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibAdw.adw_toggle_group_set_active_name(to_unsafe, name)

      # Return value handling
    end

    def can_shrink=(can_shrink : Bool) : Nil
      # adw_toggle_group_set_can_shrink: (Method | Setter)
      # @can_shrink:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_group_set_can_shrink(to_unsafe, can_shrink)

      # Return value handling
    end

    def homogeneous=(homogeneous : Bool) : Nil
      # adw_toggle_group_set_homogeneous: (Method | Setter)
      # @homogeneous:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_toggle_group_set_homogeneous(to_unsafe, homogeneous)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
