require "../gtk-4.0/widget"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module Adw
  @[GICrystal::GeneratedWrapper]
  class MultiLayoutView < Gtk::Widget
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(MultiLayoutView, g_object_get_qdata)

    # Initialize a new `MultiLayoutView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout : Adw::Layout? = nil, layout_manager : Gtk::LayoutManager? = nil, layout_name : ::String? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[38]
      _values = StaticArray(LibGObject::Value, 38).new(LibGObject::Value.new)
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
      if !layout.nil?
        (_names.to_unsafe + _n).value = "layout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !layout_name.nil?
        (_names.to_unsafe + _n).value = "layout-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_name)
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
      @@g_type ||= LibAdw.adw_multi_layout_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::MultiLayoutView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def layout=(value : Adw::Layout?) : Adw::Layout?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "layout", unsafe_value, Pointer(Void).null)
      value
    end

    def layout : Adw::Layout?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "layout", pointerof(value), Pointer(Void).null)
      Adw::Layout.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def layout_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "layout-name", unsafe_value, Pointer(Void).null)
      value
    end

    def layout_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "layout-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#layout_name` property to nil.
    def layout_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "layout-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#layout_name`, but can return nil.
    def layout_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "layout-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # adw_multi_layout_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_multi_layout_view_new

      # Return value handling
      Adw::MultiLayoutView.new(_retval, GICrystal::Transfer::Full)
    end

    def add_layout(layout : Adw::Layout) : Nil
      # adw_multi_layout_view_add_layout: (Method)
      # @layout: (transfer full)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(layout)

      # C call
      LibAdw.adw_multi_layout_view_add_layout(to_unsafe, layout)

      # Return value handling
    end

    def child(id : ::String) : Gtk::Widget?
      # adw_multi_layout_view_get_child: (Method)
      # @id:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_multi_layout_view_get_child(to_unsafe, id)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout : Adw::Layout?
      # adw_multi_layout_view_get_layout: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_multi_layout_view_get_layout(to_unsafe)

      # Return value handling
      Adw::Layout.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout_by_name(name : ::String) : Adw::Layout?
      # adw_multi_layout_view_get_layout_by_name: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_multi_layout_view_get_layout_by_name(to_unsafe, name)

      # Return value handling
      Adw::Layout.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout_name : ::String?
      # adw_multi_layout_view_get_layout_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibAdw.adw_multi_layout_view_get_layout_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def remove_layout(layout : Adw::Layout) : Nil
      # adw_multi_layout_view_remove_layout: (Method)
      # @layout:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_multi_layout_view_remove_layout(to_unsafe, layout)

      # Return value handling
    end

    def set_child(id : ::String, child : Gtk::Widget) : Nil
      # adw_multi_layout_view_set_child: (Method)
      # @id:
      # @child:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_multi_layout_view_set_child(to_unsafe, id, child)

      # Return value handling
    end

    def layout=(layout : Adw::Layout) : Nil
      # adw_multi_layout_view_set_layout: (Method | Setter)
      # @layout:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_multi_layout_view_set_layout(to_unsafe, layout)

      # Return value handling
    end

    def layout_name=(name : ::String) : Nil
      # adw_multi_layout_view_set_layout_name: (Method | Setter)
      # @name:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_multi_layout_view_set_layout_name(to_unsafe, name)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
