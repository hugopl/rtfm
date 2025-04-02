require "./preferences_row"
require "../gtk-4.0/accessible"

require "../gtk-4.0/actionable"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

require "../gtk-4.0/editable"

module Adw
  @[GICrystal::GeneratedWrapper]
  class EntryRow < PreferencesRow
    include Gtk::Accessible
    include Gtk::Actionable
    include Gtk::Buildable
    include Gtk::ConstraintTarget
    include Gtk::Editable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::EntryRowClass), class_init,
        sizeof(LibAdw::EntryRow), instance_init, 0)
    end

    GICrystal.declare_new_method(EntryRow, g_object_get_qdata)

    # Initialize a new `EntryRow`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, action_name : ::String? = nil, action_target : GLib::Variant? = nil, activatable : Bool? = nil, activates_default : Bool? = nil, attributes : Pango::AttrList? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, child : Gtk::Widget? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, cursor_position : Int32? = nil, editable : Bool? = nil, enable_emoji_completion : Bool? = nil, enable_undo : Bool? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, input_hints : Gtk::InputHints? = nil, input_purpose : Gtk::InputPurpose? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, max_length : Int32? = nil, max_width_chars : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, selectable : Bool? = nil, selection_bound : Int32? = nil, sensitive : Bool? = nil, show_apply_button : Bool? = nil, text : ::String? = nil, text_length : UInt32? = nil, title : ::String? = nil, title_selectable : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, use_markup : Bool? = nil, use_underline : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_chars : Int32? = nil, width_request : Int32? = nil, xalign : Float32? = nil)
      _names = uninitialized Pointer(LibC::Char)[61]
      _values = StaticArray(LibGObject::Value, 61).new(LibGObject::Value.new)
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
      if !activates_default.nil?
        (_names.to_unsafe + _n).value = "activates-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, activates_default)
        _n += 1
      end
      if !attributes.nil?
        (_names.to_unsafe + _n).value = "attributes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, attributes)
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
      if !cursor_position.nil?
        (_names.to_unsafe + _n).value = "cursor-position".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor_position)
        _n += 1
      end
      if !editable.nil?
        (_names.to_unsafe + _n).value = "editable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editable)
        _n += 1
      end
      if !enable_emoji_completion.nil?
        (_names.to_unsafe + _n).value = "enable-emoji-completion".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_emoji_completion)
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
      if !input_hints.nil?
        (_names.to_unsafe + _n).value = "input-hints".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_hints)
        _n += 1
      end
      if !input_purpose.nil?
        (_names.to_unsafe + _n).value = "input-purpose".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_purpose)
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
      if !max_length.nil?
        (_names.to_unsafe + _n).value = "max-length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_length)
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
      if !show_apply_button.nil?
        (_names.to_unsafe + _n).value = "show-apply-button".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_apply_button)
        _n += 1
      end
      if !text.nil?
        (_names.to_unsafe + _n).value = "text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text)
        _n += 1
      end
      if !text_length.nil?
        (_names.to_unsafe + _n).value = "text-length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_length)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
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
      @@g_type ||= LibAdw.adw_entry_row_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::EntryRow.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def activates_default=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "activates-default", unsafe_value, Pointer(Void).null)
      value
    end

    def activates_default? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "activates-default", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def attributes=(value : Pango::AttrList?) : Pango::AttrList?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "attributes", unsafe_value, Pointer(Void).null)
      value
    end

    def attributes : Pango::AttrList?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "attributes", pointerof(value), Pointer(Void).null)
      Pango::AttrList.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def enable_emoji_completion=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-emoji-completion", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_emoji_completion? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-emoji-completion", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def input_hints=(value : Gtk::InputHints) : Gtk::InputHints
      unsafe_value = value

      LibGObject.g_object_set(self, "input-hints", unsafe_value, Pointer(Void).null)
      value
    end

    def input_hints : Gtk::InputHints
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-hints", pointerof(value), Pointer(Void).null)
      Gtk::InputHints.new(value)
    end

    def input_purpose=(value : Gtk::InputPurpose) : Gtk::InputPurpose
      unsafe_value = value

      LibGObject.g_object_set(self, "input-purpose", unsafe_value, Pointer(Void).null)
      value
    end

    def input_purpose : Gtk::InputPurpose
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "input-purpose", pointerof(value), Pointer(Void).null)
      Gtk::InputPurpose.new(value)
    end

    def max_length=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-length", unsafe_value, Pointer(Void).null)
      value
    end

    def max_length : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-length", pointerof(value), Pointer(Void).null)
      value
    end

    def show_apply_button=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-apply-button", unsafe_value, Pointer(Void).null)
      value
    end

    def show_apply_button? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-apply-button", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def text_length : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "text-length", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # adw_entry_row_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_new

      # Return value handling
      Adw::EntryRow.new(_retval, GICrystal::Transfer::Full)
    end

    def add_prefix(widget : Gtk::Widget) : Nil
      # adw_entry_row_add_prefix: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_add_prefix(to_unsafe, widget)

      # Return value handling
    end

    def add_suffix(widget : Gtk::Widget) : Nil
      # adw_entry_row_add_suffix: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_add_suffix(to_unsafe, widget)

      # Return value handling
    end

    def activates_default : Bool
      # adw_entry_row_get_activates_default: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_get_activates_default(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def attributes : Pango::AttrList?
      # adw_entry_row_get_attributes: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibAdw.adw_entry_row_get_attributes(to_unsafe)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def enable_emoji_completion : Bool
      # adw_entry_row_get_enable_emoji_completion: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_get_enable_emoji_completion(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def input_hints : Gtk::InputHints
      # adw_entry_row_get_input_hints: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_get_input_hints(to_unsafe)

      # Return value handling
      Gtk::InputHints.new(_retval)
    end

    def input_purpose : Gtk::InputPurpose
      # adw_entry_row_get_input_purpose: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_get_input_purpose(to_unsafe)

      # Return value handling
      Gtk::InputPurpose.new(_retval)
    end

    def max_length : Int32
      # adw_entry_row_get_max_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_get_max_length(to_unsafe)

      # Return value handling
      _retval
    end

    def show_apply_button : Bool
      # adw_entry_row_get_show_apply_button: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_get_show_apply_button(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def text_length : UInt32
      # adw_entry_row_get_text_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_get_text_length(to_unsafe)

      # Return value handling
      _retval
    end

    def grab_focus_without_selecting : Bool
      # adw_entry_row_grab_focus_without_selecting: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_entry_row_grab_focus_without_selecting(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove(widget : Gtk::Widget) : Nil
      # adw_entry_row_remove: (Method)
      # @widget:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_remove(to_unsafe, widget)

      # Return value handling
    end

    def activates_default=(activates : Bool) : Nil
      # adw_entry_row_set_activates_default: (Method | Setter)
      # @activates:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_set_activates_default(to_unsafe, activates)

      # Return value handling
    end

    def attributes=(attributes : Pango::AttrList?) : Nil
      # adw_entry_row_set_attributes: (Method | Setter)
      # @attributes: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      attributes = if attributes.nil?
                     Pointer(Void).null
                   else
                     attributes.to_unsafe
                   end

      # C call
      LibAdw.adw_entry_row_set_attributes(to_unsafe, attributes)

      # Return value handling
    end

    def enable_emoji_completion=(enable_emoji_completion : Bool) : Nil
      # adw_entry_row_set_enable_emoji_completion: (Method | Setter)
      # @enable_emoji_completion:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_set_enable_emoji_completion(to_unsafe, enable_emoji_completion)

      # Return value handling
    end

    def input_hints=(hints : Gtk::InputHints) : Nil
      # adw_entry_row_set_input_hints: (Method | Setter)
      # @hints:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_set_input_hints(to_unsafe, hints)

      # Return value handling
    end

    def input_purpose=(purpose : Gtk::InputPurpose) : Nil
      # adw_entry_row_set_input_purpose: (Method | Setter)
      # @purpose:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_set_input_purpose(to_unsafe, purpose)

      # Return value handling
    end

    def max_length=(max_length : Int32) : Nil
      # adw_entry_row_set_max_length: (Method | Setter)
      # @max_length:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_set_max_length(to_unsafe, max_length)

      # Return value handling
    end

    def show_apply_button=(show_apply_button : Bool) : Nil
      # adw_entry_row_set_show_apply_button: (Method | Setter)
      # @show_apply_button:
      # Returns: (transfer none)

      # C call
      LibAdw.adw_entry_row_set_show_apply_button(to_unsafe, show_apply_button)

      # Return value handling
    end

    struct ApplySignal < GObject::Signal
      def name : String
        @detail ? "apply::#{@detail}" : "apply"
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

      def connect(handler : Proc(Adw::EntryRow, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::EntryRow.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::EntryRow, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "apply")
      end
    end

    def apply_signal
      ApplySignal.new(self)
    end

    struct EntryActivatedSignal < GObject::Signal
      def name : String
        @detail ? "entry-activated::#{@detail}" : "entry-activated"
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

      def connect(handler : Proc(Adw::EntryRow, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Adw::EntryRow.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Adw::EntryRow, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "entry-activated")
      end
    end

    def entry_activated_signal
      EntryActivatedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
