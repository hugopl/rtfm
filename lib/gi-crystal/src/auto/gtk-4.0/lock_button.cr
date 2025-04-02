require "./button"
require "./accessible"

require "./actionable"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class LockButton < Button
    include Accessible
    include Actionable
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(LockButton, g_object_get_qdata)

    # Initialize a new `LockButton`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, action_name : ::String? = nil, action_target : GLib::Variant? = nil, can_focus : Bool? = nil, can_shrink : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_frame : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, icon_name : ::String? = nil, label : ::String? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, permission : Gio::Permission? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, text_lock : ::String? = nil, text_unlock : ::String? = nil, tooltip_lock : ::String? = nil, tooltip_markup : ::String? = nil, tooltip_not_authorized : ::String? = nil, tooltip_text : ::String? = nil, tooltip_unlock : ::String? = nil, use_underline : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[50]
      _values = StaticArray(LibGObject::Value, 50).new(LibGObject::Value.new)
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
      if !child.nil?
        (_names.to_unsafe + _n).value = "child".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child)
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
      if !has_frame.nil?
        (_names.to_unsafe + _n).value = "has-frame".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_frame)
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
      if !label.nil?
        (_names.to_unsafe + _n).value = "label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, label)
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
      if !permission.nil?
        (_names.to_unsafe + _n).value = "permission".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, permission)
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
      if !text_lock.nil?
        (_names.to_unsafe + _n).value = "text-lock".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_lock)
        _n += 1
      end
      if !text_unlock.nil?
        (_names.to_unsafe + _n).value = "text-unlock".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_unlock)
        _n += 1
      end
      if !tooltip_lock.nil?
        (_names.to_unsafe + _n).value = "tooltip-lock".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_lock)
        _n += 1
      end
      if !tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_markup)
        _n += 1
      end
      if !tooltip_not_authorized.nil?
        (_names.to_unsafe + _n).value = "tooltip-not-authorized".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_not_authorized)
        _n += 1
      end
      if !tooltip_text.nil?
        (_names.to_unsafe + _n).value = "tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_text)
        _n += 1
      end
      if !tooltip_unlock.nil?
        (_names.to_unsafe + _n).value = "tooltip-unlock".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_unlock)
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
      @@g_type ||= LibGtk.gtk_lock_button_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::LockButton.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def permission=(value : Gio::Permission?) : Gio::Permission?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "permission", unsafe_value, Pointer(Void).null)
      value
    end

    def permission : Gio::Permission?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "permission", pointerof(value), Pointer(Void).null)
      Gio::Permission.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def text_lock=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "text-lock", unsafe_value, Pointer(Void).null)
      value
    end

    def text_lock : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text-lock", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#text_lock` property to nil.
    def text_lock=(value : Nil) : Nil
      LibGObject.g_object_set(self, "text-lock", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#text_lock`, but can return nil.
    def text_lock? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text-lock", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def text_unlock=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "text-unlock", unsafe_value, Pointer(Void).null)
      value
    end

    def text_unlock : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text-unlock", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#text_unlock` property to nil.
    def text_unlock=(value : Nil) : Nil
      LibGObject.g_object_set(self, "text-unlock", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#text_unlock`, but can return nil.
    def text_unlock? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text-unlock", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def tooltip_lock=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip-lock", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip_lock : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-lock", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tooltip_lock` property to nil.
    def tooltip_lock=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tooltip-lock", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tooltip_lock`, but can return nil.
    def tooltip_lock? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-lock", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def tooltip_not_authorized=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip-not-authorized", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip_not_authorized : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-not-authorized", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tooltip_not_authorized` property to nil.
    def tooltip_not_authorized=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tooltip-not-authorized", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tooltip_not_authorized`, but can return nil.
    def tooltip_not_authorized? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-not-authorized", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def tooltip_unlock=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "tooltip-unlock", unsafe_value, Pointer(Void).null)
      value
    end

    def tooltip_unlock : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-unlock", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#tooltip_unlock` property to nil.
    def tooltip_unlock=(value : Nil) : Nil
      LibGObject.g_object_set(self, "tooltip-unlock", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#tooltip_unlock`, but can return nil.
    def tooltip_unlock? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "tooltip-unlock", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    @[Deprecated]
    def self.new(permission : Gio::Permission?) : self
      # gtk_lock_button_new: (Constructor)
      # @permission: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      permission = if permission.nil?
                     Pointer(Void).null
                   else
                     permission.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_lock_button_new(permission)

      # Return value handling
      Gtk::LockButton.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def permission : Gio::Permission?
      # gtk_lock_button_get_permission: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_lock_button_get_permission(to_unsafe)

      # Return value handling
      Gio::Permission.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def permission=(permission : Gio::Permission?) : Nil
      # gtk_lock_button_set_permission: (Method | Setter)
      # @permission: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      permission = if permission.nil?
                     Pointer(Void).null
                   else
                     permission.to_unsafe
                   end

      # C call
      LibGtk.gtk_lock_button_set_permission(to_unsafe, permission)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
