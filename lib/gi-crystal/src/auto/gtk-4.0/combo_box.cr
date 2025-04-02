require "./widget"
require "./accessible"

require "./buildable"

require "./cell_editable"

require "./cell_layout"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ComboBox < Widget
    include Accessible
    include Buildable
    include CellEditable
    include CellLayout
    include ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ComboBoxClass), class_init,
        sizeof(LibGtk::ComboBox), instance_init, 0)
    end

    GICrystal.declare_new_method(ComboBox, g_object_get_qdata)

    # Initialize a new `ComboBox`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, active : Int32? = nil, active_id : ::String? = nil, button_sensitivity : Gtk::SensitivityType? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, editing_canceled : Bool? = nil, entry_text_column : Int32? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_entry : Bool? = nil, has_focus : Bool? = nil, has_frame : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, id_column : Int32? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, model : Gtk::TreeModel? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, popup_fixed_width : Bool? = nil, popup_shown : Bool? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[48]
      _values = StaticArray(LibGObject::Value, 48).new(LibGObject::Value.new)
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
      if !active_id.nil?
        (_names.to_unsafe + _n).value = "active-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, active_id)
        _n += 1
      end
      if !button_sensitivity.nil?
        (_names.to_unsafe + _n).value = "button-sensitivity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, button_sensitivity)
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
      if !editing_canceled.nil?
        (_names.to_unsafe + _n).value = "editing-canceled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editing_canceled)
        _n += 1
      end
      if !entry_text_column.nil?
        (_names.to_unsafe + _n).value = "entry-text-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, entry_text_column)
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
      if !has_entry.nil?
        (_names.to_unsafe + _n).value = "has-entry".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_entry)
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
      if !id_column.nil?
        (_names.to_unsafe + _n).value = "id-column".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, id_column)
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
      if !model.nil?
        (_names.to_unsafe + _n).value = "model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, model)
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
      if !popup_fixed_width.nil?
        (_names.to_unsafe + _n).value = "popup-fixed-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, popup_fixed_width)
        _n += 1
      end
      if !popup_shown.nil?
        (_names.to_unsafe + _n).value = "popup-shown".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, popup_shown)
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
      @@g_type ||= LibGtk.gtk_combo_box_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ComboBox.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def active=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "active", unsafe_value, Pointer(Void).null)
      value
    end

    def active : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "active", pointerof(value), Pointer(Void).null)
      value
    end

    def active_id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "active-id", unsafe_value, Pointer(Void).null)
      value
    end

    def active_id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "active-id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#active_id` property to nil.
    def active_id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "active-id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#active_id`, but can return nil.
    def active_id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "active-id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def button_sensitivity=(value : Gtk::SensitivityType) : Gtk::SensitivityType
      unsafe_value = value

      LibGObject.g_object_set(self, "button-sensitivity", unsafe_value, Pointer(Void).null)
      value
    end

    def button_sensitivity : Gtk::SensitivityType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "button-sensitivity", pointerof(value), Pointer(Void).null)
      Gtk::SensitivityType.new(value)
    end

    def child=(value : Gtk::Widget?) : Gtk::Widget?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "child", unsafe_value, Pointer(Void).null)
      value
    end

    def child : Gtk::Widget?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "child", pointerof(value), Pointer(Void).null)
      Gtk::Widget.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def entry_text_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "entry-text-column", unsafe_value, Pointer(Void).null)
      value
    end

    def entry_text_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "entry-text-column", pointerof(value), Pointer(Void).null)
      value
    end

    def has_entry=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-entry", unsafe_value, Pointer(Void).null)
      value
    end

    def has_entry? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-entry", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_frame=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-frame", unsafe_value, Pointer(Void).null)
      value
    end

    def has_frame? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-frame", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def id_column=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "id-column", unsafe_value, Pointer(Void).null)
      value
    end

    def id_column : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "id-column", pointerof(value), Pointer(Void).null)
      value
    end

    def model=(value : Gtk::TreeModel?) : Gtk::TreeModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "model", unsafe_value, Pointer(Void).null)
      value
    end

    def model : Gtk::TreeModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      Gtk::AbstractTreeModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def popup_fixed_width=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "popup-fixed-width", unsafe_value, Pointer(Void).null)
      value
    end

    def popup_fixed_width? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "popup-fixed-width", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def popup_shown? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "popup-shown", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    @[Deprecated]
    def self.new : self
      # gtk_combo_box_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_new

      # Return value handling
      Gtk::ComboBox.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_entry : self
      # gtk_combo_box_new_with_entry: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_new_with_entry

      # Return value handling
      Gtk::ComboBox.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_model(model : Gtk::TreeModel) : self
      # gtk_combo_box_new_with_model: (Constructor)
      # @model:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_new_with_model(model)

      # Return value handling
      Gtk::ComboBox.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_with_model_and_entry(model : Gtk::TreeModel) : self
      # gtk_combo_box_new_with_model_and_entry: (Constructor)
      # @model:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_new_with_model_and_entry(model)

      # Return value handling
      Gtk::ComboBox.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def active : Int32
      # gtk_combo_box_get_active: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_get_active(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def active_id : ::String?
      # gtk_combo_box_get_active_id: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_combo_box_get_active_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def active_iter : Gtk::TreeIter
      # gtk_combo_box_get_active_iter: (Method)
      # @iter: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_combo_box_get_active_iter(to_unsafe, iter)

      # Return value handling
      iter
    end

    @[Deprecated]
    def button_sensitivity : Gtk::SensitivityType
      # gtk_combo_box_get_button_sensitivity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_get_button_sensitivity(to_unsafe)

      # Return value handling
      Gtk::SensitivityType.new(_retval)
    end

    @[Deprecated]
    def child : Gtk::Widget?
      # gtk_combo_box_get_child: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_combo_box_get_child(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def entry_text_column : Int32
      # gtk_combo_box_get_entry_text_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_get_entry_text_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def has_entry : Bool
      # gtk_combo_box_get_has_entry: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_get_has_entry(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def id_column : Int32
      # gtk_combo_box_get_id_column: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_get_id_column(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def model : Gtk::TreeModel?
      # gtk_combo_box_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_combo_box_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def popup_fixed_width : Bool
      # gtk_combo_box_get_popup_fixed_width: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_combo_box_get_popup_fixed_width(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def popdown : Nil
      # gtk_combo_box_popdown: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_popdown(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def popup : Nil
      # gtk_combo_box_popup: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_popup(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def popup_for_device(device : Gdk::Device) : Nil
      # gtk_combo_box_popup_for_device: (Method)
      # @device:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_popup_for_device(to_unsafe, device)

      # Return value handling
    end

    @[Deprecated]
    def active=(index_ : Int32) : Nil
      # gtk_combo_box_set_active: (Method | Setter)
      # @index_:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_set_active(to_unsafe, index_)

      # Return value handling
    end

    @[Deprecated]
    def active_id=(active_id : ::String?) : Bool
      # gtk_combo_box_set_active_id: (Method | Setter)
      # @active_id: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      active_id = if active_id.nil?
                    Pointer(LibC::Char).null
                  else
                    active_id.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_combo_box_set_active_id(to_unsafe, active_id)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def active_iter=(iter : Gtk::TreeIter?) : Nil
      # gtk_combo_box_set_active_iter: (Method)
      # @iter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      iter = if iter.nil?
               Pointer(Void).null
             else
               iter.to_unsafe
             end

      # C call
      LibGtk.gtk_combo_box_set_active_iter(to_unsafe, iter)

      # Return value handling
    end

    @[Deprecated]
    def button_sensitivity=(sensitivity : Gtk::SensitivityType) : Nil
      # gtk_combo_box_set_button_sensitivity: (Method | Setter)
      # @sensitivity:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_set_button_sensitivity(to_unsafe, sensitivity)

      # Return value handling
    end

    @[Deprecated]
    def child=(child : Gtk::Widget?) : Nil
      # gtk_combo_box_set_child: (Method | Setter)
      # @child: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child = if child.nil?
                Pointer(Void).null
              else
                child.to_unsafe
              end

      # C call
      LibGtk.gtk_combo_box_set_child(to_unsafe, child)

      # Return value handling
    end

    @[Deprecated]
    def entry_text_column=(text_column : Int32) : Nil
      # gtk_combo_box_set_entry_text_column: (Method | Setter)
      # @text_column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_set_entry_text_column(to_unsafe, text_column)

      # Return value handling
    end

    @[Deprecated]
    def id_column=(id_column : Int32) : Nil
      # gtk_combo_box_set_id_column: (Method | Setter)
      # @id_column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_set_id_column(to_unsafe, id_column)

      # Return value handling
    end

    @[Deprecated]
    def model=(model : Gtk::TreeModel?) : Nil
      # gtk_combo_box_set_model: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_combo_box_set_model(to_unsafe, model)

      # Return value handling
    end

    @[Deprecated]
    def popup_fixed_width=(fixed : Bool) : Nil
      # gtk_combo_box_set_popup_fixed_width: (Method | Setter)
      # @fixed:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_combo_box_set_popup_fixed_width(to_unsafe, fixed)

      # Return value handling
    end

    @[Deprecated]
    def row_separator_func=(func : Gtk::TreeViewRowSeparatorFunc?) : Nil
      # gtk_combo_box_set_row_separator_func: (Method)
      # @func: (nullable)
      # @data: (nullable)
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_model : Pointer(Void), lib_iter : Pointer(Void), lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)).unbox(lib_data).call(model, iter)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_combo_box_set_row_separator_func(to_unsafe, func, data, destroy)

      # Return value handling
    end

    struct ActivateSignal < GObject::Signal
      def name : String
        @detail ? "activate::#{@detail}" : "activate"
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

      def connect(handler : Proc(Gtk::ComboBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ComboBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ComboBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate")
      end
    end

    def activate_signal
      ActivateSignal.new(self)
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
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

      def connect(handler : Proc(Gtk::ComboBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ComboBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ComboBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    struct FormatEntryTextSignal < GObject::Signal
      def name : String
        @detail ? "format-entry-text::#{@detail}" : "format-entry-text"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, ::String)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, ::String), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(::String, ::String)).unbox(_lib_box).call(path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::ComboBox, ::String, ::String), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::ComboBox.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(Gtk::ComboBox, ::String, ::String)).unbox(_lib_box).call(_sender, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(path : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "format-entry-text", path)
      end
    end

    def format_entry_text_signal
      FormatEntryTextSignal.new(self)
    end

    struct MoveActiveSignal < GObject::Signal
      def name : String
        @detail ? "move-active::#{@detail}" : "move-active"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::ScrollType, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::ScrollType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_scroll_type : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          scroll_type = Gtk::ScrollType.new(lib_scroll_type)
          ::Box(Proc(Gtk::ScrollType, Nil)).unbox(_lib_box).call(scroll_type)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::ComboBox, Gtk::ScrollType, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_scroll_type : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::ComboBox.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          scroll_type = Gtk::ScrollType.new(lib_scroll_type)
          ::Box(Proc(Gtk::ComboBox, Gtk::ScrollType, Nil)).unbox(_lib_box).call(_sender, scroll_type)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(scroll_type : Gtk::ScrollType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "move-active", scroll_type)
      end
    end

    def move_active_signal
      MoveActiveSignal.new(self)
    end

    struct PopdownSignal < GObject::Signal
      def name : String
        @detail ? "popdown::#{@detail}" : "popdown"
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

      def connect(handler : Proc(Gtk::ComboBox, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ComboBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ComboBox, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "popdown")
      end
    end

    def popdown_signal
      PopdownSignal.new(self)
    end

    struct PopupSignal < GObject::Signal
      def name : String
        @detail ? "popup::#{@detail}" : "popup"
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

      def connect(handler : Proc(Gtk::ComboBox, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::ComboBox.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::ComboBox, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "popup")
      end
    end

    def popup_signal
      PopupSignal.new(self)
    end

    # activate: (None)
    # Returns: (transfer none)
    private macro _register_activate_vfunc(impl_method_name)
      private def self._vfunc_activate(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate(Pointer(Void))).pointer
        previous_def
      end
    end

    # activate: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_activate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 424).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate : Proc(Pointer(Void), Void)? = nil
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    # format_entry_text: (None)
    # @path:
    # Returns: (transfer full)
    private macro _register_format_entry_text_vfunc(impl_method_name)
      private def self._vfunc_format_entry_text(%this : Pointer(Void), lib_path :  Pointer(LibC::Char), ) : Pointer(LibC::Char)
        # @path: 

# Generator::BuiltInTypeArgPlan
path=::String.new(lib_path)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_format_entry_text(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # format_entry_text: (None)
    # @path:
    # Returns: (transfer full)
    private macro _register_unsafe_format_entry_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_format_entry_text(%this : Pointer(Void), lib_path :  Pointer(LibC::Char), ) : Pointer(LibC::Char)
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_format_entry_text = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_format_entry_text(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_format_entry_text : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))? = nil
    end

    def_equals_and_hash @pointer
  end
end
