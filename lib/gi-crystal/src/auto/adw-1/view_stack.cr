require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class ViewStack < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ViewStack, g_object_get_qdata)

    # Initialize a new `ViewStack`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, enable_transitions : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, hhomogeneous : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, pages : Gtk::SelectionModel? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, transition_duration : UInt32? = nil, transition_running : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, vhomogeneous : Bool? = nil, visible : Bool? = nil, visible_child : Gtk::Widget? = nil, visible_child_name : ::String? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[44]
      _values = StaticArray(LibGObject::Value, 44).new(LibGObject::Value.new)
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
      if !enable_transitions.nil?
        (_names.to_unsafe + _n).value = "enable-transitions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_transitions)
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
      if !hhomogeneous.nil?
        (_names.to_unsafe + _n).value = "hhomogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hhomogeneous)
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
      if !pages.nil?
        (_names.to_unsafe + _n).value = "pages".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pages)
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
      if !transition_duration.nil?
        (_names.to_unsafe + _n).value = "transition-duration".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transition_duration)
        _n += 1
      end
      if !transition_running.nil?
        (_names.to_unsafe + _n).value = "transition-running".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, transition_running)
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
      if !vhomogeneous.nil?
        (_names.to_unsafe + _n).value = "vhomogeneous".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vhomogeneous)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !visible_child.nil?
        (_names.to_unsafe + _n).value = "visible-child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible_child)
        _n += 1
      end
      if !visible_child_name.nil?
        (_names.to_unsafe + _n).value = "visible-child-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible_child_name)
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
      @@g_type ||= LibAdw.adw_view_stack_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::ViewStack.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def enable_transitions=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-transitions", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_transitions? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-transitions", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def hhomogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "hhomogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def hhomogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "hhomogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def pages : Gtk::SelectionModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "pages", pointerof(value), Pointer(Void).null)
      Gtk::AbstractSelectionModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def transition_duration=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "transition-duration", unsafe_value, Pointer(Void).null)
      value
    end

    def transition_duration : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "transition-duration", pointerof(value), Pointer(Void).null)
      value
    end

    def transition_running? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "transition-running", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def vhomogeneous=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "vhomogeneous", unsafe_value, Pointer(Void).null)
      value
    end

    def vhomogeneous? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "vhomogeneous", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def visible_child=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "visible-child", unsafe_value, Pointer(Void).null)
      value
    end

    def visible_child : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "visible-child", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def visible_child_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "visible-child-name", unsafe_value, Pointer(Void).null)
      value
    end

    def visible_child_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "visible-child-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#visible_child_name` property to nil.
    def visible_child_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "visible-child-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#visible_child_name`, but can return nil.
    def visible_child_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "visible-child-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # adw_view_stack_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_new

      # Return value handling
      Adw::ViewStack.new(_retval, GICrystal::Transfer::Full)
    end

    def add(child : Gtk::Widget) : Adw::ViewStackPage
      # adw_view_stack_add: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_add(to_unsafe, child)

      # Return value handling
      Adw::ViewStackPage.new(_retval, GICrystal::Transfer::None)
    end

    def add_named(child : Gtk::Widget, name : ::String?) : Adw::ViewStackPage
      # adw_view_stack_add_named: (Method)
      # @child:
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibAdw.adw_view_stack_add_named(to_unsafe, child, name)

      # Return value handling
      Adw::ViewStackPage.new(_retval, GICrystal::Transfer::None)
    end

    def add_titled(child : Gtk::Widget, name : ::String?, title : ::String) : Adw::ViewStackPage
      # adw_view_stack_add_titled: (Method)
      # @child:
      # @name: (nullable)
      # @title:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibAdw.adw_view_stack_add_titled(to_unsafe, child, name, title)

      # Return value handling
      Adw::ViewStackPage.new(_retval, GICrystal::Transfer::None)
    end

    def add_titled_with_icon(child : Gtk::Widget, name : ::String?, title : ::String, icon_name : ::String) : Adw::ViewStackPage
      # adw_view_stack_add_titled_with_icon: (Method)
      # @child:
      # @name: (nullable)
      # @title:
      # @icon_name:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      _retval = LibAdw.adw_view_stack_add_titled_with_icon(to_unsafe, child, name, title, icon_name)

      # Return value handling
      Adw::ViewStackPage.new(_retval, GICrystal::Transfer::None)
    end

    def child_by_name(name : ::String) : Gtk::Widget?
      # adw_view_stack_get_child_by_name: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_view_stack_get_child_by_name(to_unsafe, name)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def enable_transitions : Bool
      # adw_view_stack_get_enable_transitions: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_get_enable_transitions(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hhomogeneous : Bool
      # adw_view_stack_get_hhomogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_get_hhomogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def page(child : Gtk::Widget) : Adw::ViewStackPage
      # adw_view_stack_get_page: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_get_page(to_unsafe, child)

      # Return value handling
      Adw::ViewStackPage.new(_retval, GICrystal::Transfer::None)
    end

    def pages : Gtk::SelectionModel
      # adw_view_stack_get_pages: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_view_stack_get_pages(to_unsafe)

      # Return value handling
      Gtk::AbstractSelectionModel.new(_retval, GICrystal::Transfer::Full)
    end

    def transition_duration : UInt32
      # adw_view_stack_get_transition_duration: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_get_transition_duration(to_unsafe)

      # Return value handling
      _retval
    end

    def transition_running : Bool
      # adw_view_stack_get_transition_running: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_get_transition_running(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def vhomogeneous : Bool
      # adw_view_stack_get_vhomogeneous: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_view_stack_get_vhomogeneous(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def visible_child : Gtk::Widget?
      # adw_view_stack_get_visible_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_view_stack_get_visible_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def visible_child_name : ::String?
      # adw_view_stack_get_visible_child_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_view_stack_get_visible_child_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def remove(child : Gtk::Widget) : Nil
      # adw_view_stack_remove: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_remove(to_unsafe, child)

      # Return value handling
    end

    def enable_transitions=(enable_transitions : Bool) : Nil
      # adw_view_stack_set_enable_transitions: (Method | Setter)
      # @enable_transitions:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_set_enable_transitions(to_unsafe, enable_transitions)

      # Return value handling
    end

    def hhomogeneous=(hhomogeneous : Bool) : Nil
      # adw_view_stack_set_hhomogeneous: (Method | Setter)
      # @hhomogeneous:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_set_hhomogeneous(to_unsafe, hhomogeneous)

      # Return value handling
    end

    def transition_duration=(duration : UInt32) : Nil
      # adw_view_stack_set_transition_duration: (Method | Setter)
      # @duration:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_set_transition_duration(to_unsafe, duration)

      # Return value handling
    end

    def vhomogeneous=(vhomogeneous : Bool) : Nil
      # adw_view_stack_set_vhomogeneous: (Method | Setter)
      # @vhomogeneous:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_set_vhomogeneous(to_unsafe, vhomogeneous)

      # Return value handling
    end

    def visible_child=(child : Gtk::Widget) : Nil
      # adw_view_stack_set_visible_child: (Method | Setter)
      # @child:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_set_visible_child(to_unsafe, child)

      # Return value handling
    end

    def visible_child_name=(name : ::String) : Nil
      # adw_view_stack_set_visible_child_name: (Method | Setter)
      # @name:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_view_stack_set_visible_child_name(to_unsafe, name)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
