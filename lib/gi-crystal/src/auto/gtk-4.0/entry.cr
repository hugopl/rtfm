require "./widget"
require "./accessible"

require "./buildable"

require "./cell_editable"

require "./constraint_target"

require "./editable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Entry < Widget
    include Accessible
    include Buildable
    include CellEditable
    include ConstraintTarget
    include Editable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::EntryClass), class_init,
        sizeof(LibGtk::Entry), instance_init, 0)
    end

    GICrystal.declare_new_method(Entry, g_object_get_qdata)

    # Initialize a new `Entry`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, activates_default : Bool? = nil, attributes : Pango::AttrList? = nil, buffer : Gtk::EntryBuffer? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, completion : Gtk::EntryCompletion? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, cursor_position : Int32? = nil, editable : Bool? = nil, editing_canceled : Bool? = nil, enable_emoji_completion : Bool? = nil, enable_undo : Bool? = nil, extra_menu : Gio::MenuModel? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_frame : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, im_module : ::String? = nil, input_hints : Gtk::InputHints? = nil, input_purpose : Gtk::InputPurpose? = nil, invisible_char : UInt32? = nil, invisible_char_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, max_length : Int32? = nil, max_width_chars : Int32? = nil, menu_entry_icon_primary_text : ::String? = nil, menu_entry_icon_secondary_text : ::String? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, overwrite_mode : Bool? = nil, parent : Gtk::Widget? = nil, placeholder_text : ::String? = nil, primary_icon_activatable : Bool? = nil, primary_icon_gicon : Gio::Icon? = nil, primary_icon_name : ::String? = nil, primary_icon_paintable : Gdk::Paintable? = nil, primary_icon_sensitive : Bool? = nil, primary_icon_storage_type : Gtk::ImageType? = nil, primary_icon_tooltip_markup : ::String? = nil, primary_icon_tooltip_text : ::String? = nil, progress_fraction : Float64? = nil, progress_pulse_step : Float64? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, scroll_offset : Int32? = nil, secondary_icon_activatable : Bool? = nil, secondary_icon_gicon : Gio::Icon? = nil, secondary_icon_name : ::String? = nil, secondary_icon_paintable : Gdk::Paintable? = nil, secondary_icon_sensitive : Bool? = nil, secondary_icon_storage_type : Gtk::ImageType? = nil, secondary_icon_tooltip_markup : ::String? = nil, secondary_icon_tooltip_text : ::String? = nil, selection_bound : Int32? = nil, sensitive : Bool? = nil, show_emoji_icon : Bool? = nil, tabs : Pango::TabArray? = nil, text : ::String? = nil, text_length : UInt32? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, truncate_multiline : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visibility : Bool? = nil, visible : Bool? = nil, width_chars : Int32? = nil, width_request : Int32? = nil, xalign : Float32? = nil)
      _names = uninitialized Pointer(LibC::Char)[86]
      _values = StaticArray(LibGObject::Value, 86).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
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
      if !buffer.nil?
        (_names.to_unsafe + _n).value = "buffer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, buffer)
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
      if !completion.nil?
        (_names.to_unsafe + _n).value = "completion".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, completion)
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
      if !editing_canceled.nil?
        (_names.to_unsafe + _n).value = "editing-canceled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editing_canceled)
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
      if !extra_menu.nil?
        (_names.to_unsafe + _n).value = "extra-menu".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, extra_menu)
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
      if !im_module.nil?
        (_names.to_unsafe + _n).value = "im-module".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, im_module)
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
      if !invisible_char.nil?
        (_names.to_unsafe + _n).value = "invisible-char".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, invisible_char)
        _n += 1
      end
      if !invisible_char_set.nil?
        (_names.to_unsafe + _n).value = "invisible-char-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, invisible_char_set)
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
      if !menu_entry_icon_primary_text.nil?
        (_names.to_unsafe + _n).value = "menu-entry-icon-primary-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menu_entry_icon_primary_text)
        _n += 1
      end
      if !menu_entry_icon_secondary_text.nil?
        (_names.to_unsafe + _n).value = "menu-entry-icon-secondary-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menu_entry_icon_secondary_text)
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
      if !overwrite_mode.nil?
        (_names.to_unsafe + _n).value = "overwrite-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overwrite_mode)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !placeholder_text.nil?
        (_names.to_unsafe + _n).value = "placeholder-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, placeholder_text)
        _n += 1
      end
      if !primary_icon_activatable.nil?
        (_names.to_unsafe + _n).value = "primary-icon-activatable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_activatable)
        _n += 1
      end
      if !primary_icon_gicon.nil?
        (_names.to_unsafe + _n).value = "primary-icon-gicon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_gicon)
        _n += 1
      end
      if !primary_icon_name.nil?
        (_names.to_unsafe + _n).value = "primary-icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_name)
        _n += 1
      end
      if !primary_icon_paintable.nil?
        (_names.to_unsafe + _n).value = "primary-icon-paintable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_paintable)
        _n += 1
      end
      if !primary_icon_sensitive.nil?
        (_names.to_unsafe + _n).value = "primary-icon-sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_sensitive)
        _n += 1
      end
      if !primary_icon_storage_type.nil?
        (_names.to_unsafe + _n).value = "primary-icon-storage-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_storage_type)
        _n += 1
      end
      if !primary_icon_tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "primary-icon-tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_tooltip_markup)
        _n += 1
      end
      if !primary_icon_tooltip_text.nil?
        (_names.to_unsafe + _n).value = "primary-icon-tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, primary_icon_tooltip_text)
        _n += 1
      end
      if !progress_fraction.nil?
        (_names.to_unsafe + _n).value = "progress-fraction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, progress_fraction)
        _n += 1
      end
      if !progress_pulse_step.nil?
        (_names.to_unsafe + _n).value = "progress-pulse-step".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, progress_pulse_step)
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
      if !scroll_offset.nil?
        (_names.to_unsafe + _n).value = "scroll-offset".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scroll_offset)
        _n += 1
      end
      if !secondary_icon_activatable.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-activatable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_activatable)
        _n += 1
      end
      if !secondary_icon_gicon.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-gicon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_gicon)
        _n += 1
      end
      if !secondary_icon_name.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_name)
        _n += 1
      end
      if !secondary_icon_paintable.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-paintable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_paintable)
        _n += 1
      end
      if !secondary_icon_sensitive.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_sensitive)
        _n += 1
      end
      if !secondary_icon_storage_type.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-storage-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_storage_type)
        _n += 1
      end
      if !secondary_icon_tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_tooltip_markup)
        _n += 1
      end
      if !secondary_icon_tooltip_text.nil?
        (_names.to_unsafe + _n).value = "secondary-icon-tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, secondary_icon_tooltip_text)
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
      if !show_emoji_icon.nil?
        (_names.to_unsafe + _n).value = "show-emoji-icon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_emoji_icon)
        _n += 1
      end
      if !tabs.nil?
        (_names.to_unsafe + _n).value = "tabs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tabs)
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
      if !truncate_multiline.nil?
        (_names.to_unsafe + _n).value = "truncate-multiline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, truncate_multiline)
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
      if !visibility.nil?
        (_names.to_unsafe + _n).value = "visibility".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visibility)
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
      @@g_type ||= LibGtk.gtk_entry_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Entry.new(Void*, GICrystal::Transfer)
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

    def buffer=(value : Gtk::EntryBuffer?) : Gtk::EntryBuffer?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "buffer", unsafe_value, Pointer(Void).null)
      value
    end

    def buffer : Gtk::EntryBuffer?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "buffer", pointerof(value), Pointer(Void).null)
      Gtk::EntryBuffer.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def completion=(value : Gtk::EntryCompletion?) : Gtk::EntryCompletion?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "completion", unsafe_value, Pointer(Void).null)
      value
    end

    def completion : Gtk::EntryCompletion?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "completion", pointerof(value), Pointer(Void).null)
      Gtk::EntryCompletion.new(value, GICrystal::Transfer::None) unless value.null?
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

    def extra_menu=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "extra-menu", unsafe_value, Pointer(Void).null)
      value
    end

    def extra_menu : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "extra-menu", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
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

    def im_module=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "im-module", unsafe_value, Pointer(Void).null)
      value
    end

    def im_module : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "im-module", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#im_module` property to nil.
    def im_module=(value : Nil) : Nil
      LibGObject.g_object_set(self, "im-module", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#im_module`, but can return nil.
    def im_module? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "im-module", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def invisible_char=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "invisible-char", unsafe_value, Pointer(Void).null)
      value
    end

    def invisible_char : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "invisible-char", pointerof(value), Pointer(Void).null)
      value
    end

    def invisible_char_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "invisible-char-set", unsafe_value, Pointer(Void).null)
      value
    end

    def invisible_char_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "invisible-char-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
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

    def menu_entry_icon_primary_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "menu-entry-icon-primary-text", unsafe_value, Pointer(Void).null)
      value
    end

    def menu_entry_icon_primary_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "menu-entry-icon-primary-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#menu_entry_icon_primary_text` property to nil.
    def menu_entry_icon_primary_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "menu-entry-icon-primary-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#menu_entry_icon_primary_text`, but can return nil.
    def menu_entry_icon_primary_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "menu-entry-icon-primary-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def menu_entry_icon_secondary_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "menu-entry-icon-secondary-text", unsafe_value, Pointer(Void).null)
      value
    end

    def menu_entry_icon_secondary_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "menu-entry-icon-secondary-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#menu_entry_icon_secondary_text` property to nil.
    def menu_entry_icon_secondary_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "menu-entry-icon-secondary-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#menu_entry_icon_secondary_text`, but can return nil.
    def menu_entry_icon_secondary_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "menu-entry-icon-secondary-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def overwrite_mode=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "overwrite-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def overwrite_mode? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "overwrite-mode", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def placeholder_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "placeholder-text", unsafe_value, Pointer(Void).null)
      value
    end

    def placeholder_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "placeholder-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#placeholder_text` property to nil.
    def placeholder_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "placeholder-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#placeholder_text`, but can return nil.
    def placeholder_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "placeholder-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def primary_icon_activatable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "primary-icon-activatable", unsafe_value, Pointer(Void).null)
      value
    end

    def primary_icon_activatable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "primary-icon-activatable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def primary_icon_gicon=(value : Gio::Icon?) : Gio::Icon?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "primary-icon-gicon", unsafe_value, Pointer(Void).null)
      value
    end

    def primary_icon_gicon : Gio::Icon?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "primary-icon-gicon", pointerof(value), Pointer(Void).null)
      Gio::AbstractIcon.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def primary_icon_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "primary-icon-name", unsafe_value, Pointer(Void).null)
      value
    end

    def primary_icon_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "primary-icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#primary_icon_name` property to nil.
    def primary_icon_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "primary-icon-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#primary_icon_name`, but can return nil.
    def primary_icon_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "primary-icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def primary_icon_paintable=(value : Gdk::Paintable?) : Gdk::Paintable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "primary-icon-paintable", unsafe_value, Pointer(Void).null)
      value
    end

    def primary_icon_paintable : Gdk::Paintable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "primary-icon-paintable", pointerof(value), Pointer(Void).null)
      Gdk::AbstractPaintable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def primary_icon_sensitive=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "primary-icon-sensitive", unsafe_value, Pointer(Void).null)
      value
    end

    def primary_icon_sensitive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "primary-icon-sensitive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def primary_icon_storage_type : Gtk::ImageType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "primary-icon-storage-type", pointerof(value), Pointer(Void).null)
      Gtk::ImageType.new(value)
    end

    def primary_icon_tooltip_markup=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "primary-icon-tooltip-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def primary_icon_tooltip_markup : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "primary-icon-tooltip-markup", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#primary_icon_tooltip_markup` property to nil.
    def primary_icon_tooltip_markup=(value : Nil) : Nil
      LibGObject.g_object_set(self, "primary-icon-tooltip-markup", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#primary_icon_tooltip_markup`, but can return nil.
    def primary_icon_tooltip_markup? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "primary-icon-tooltip-markup", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def primary_icon_tooltip_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "primary-icon-tooltip-text", unsafe_value, Pointer(Void).null)
      value
    end

    def primary_icon_tooltip_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "primary-icon-tooltip-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#primary_icon_tooltip_text` property to nil.
    def primary_icon_tooltip_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "primary-icon-tooltip-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#primary_icon_tooltip_text`, but can return nil.
    def primary_icon_tooltip_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "primary-icon-tooltip-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def progress_fraction=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "progress-fraction", unsafe_value, Pointer(Void).null)
      value
    end

    def progress_fraction : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "progress-fraction", pointerof(value), Pointer(Void).null)
      value
    end

    def progress_pulse_step=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "progress-pulse-step", unsafe_value, Pointer(Void).null)
      value
    end

    def progress_pulse_step : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "progress-pulse-step", pointerof(value), Pointer(Void).null)
      value
    end

    def scroll_offset : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "scroll-offset", pointerof(value), Pointer(Void).null)
      value
    end

    def secondary_icon_activatable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "secondary-icon-activatable", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_icon_activatable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "secondary-icon-activatable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def secondary_icon_gicon=(value : Gio::Icon?) : Gio::Icon?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "secondary-icon-gicon", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_icon_gicon : Gio::Icon?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "secondary-icon-gicon", pointerof(value), Pointer(Void).null)
      Gio::AbstractIcon.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def secondary_icon_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "secondary-icon-name", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_icon_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "secondary-icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#secondary_icon_name` property to nil.
    def secondary_icon_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "secondary-icon-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#secondary_icon_name`, but can return nil.
    def secondary_icon_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "secondary-icon-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def secondary_icon_paintable=(value : Gdk::Paintable?) : Gdk::Paintable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "secondary-icon-paintable", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_icon_paintable : Gdk::Paintable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "secondary-icon-paintable", pointerof(value), Pointer(Void).null)
      Gdk::AbstractPaintable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def secondary_icon_sensitive=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "secondary-icon-sensitive", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_icon_sensitive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "secondary-icon-sensitive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def secondary_icon_storage_type : Gtk::ImageType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "secondary-icon-storage-type", pointerof(value), Pointer(Void).null)
      Gtk::ImageType.new(value)
    end

    def secondary_icon_tooltip_markup=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "secondary-icon-tooltip-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_icon_tooltip_markup : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "secondary-icon-tooltip-markup", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#secondary_icon_tooltip_markup` property to nil.
    def secondary_icon_tooltip_markup=(value : Nil) : Nil
      LibGObject.g_object_set(self, "secondary-icon-tooltip-markup", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#secondary_icon_tooltip_markup`, but can return nil.
    def secondary_icon_tooltip_markup? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "secondary-icon-tooltip-markup", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def secondary_icon_tooltip_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "secondary-icon-tooltip-text", unsafe_value, Pointer(Void).null)
      value
    end

    def secondary_icon_tooltip_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "secondary-icon-tooltip-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#secondary_icon_tooltip_text` property to nil.
    def secondary_icon_tooltip_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "secondary-icon-tooltip-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#secondary_icon_tooltip_text`, but can return nil.
    def secondary_icon_tooltip_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "secondary-icon-tooltip-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def show_emoji_icon=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-emoji-icon", unsafe_value, Pointer(Void).null)
      value
    end

    def show_emoji_icon? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-emoji-icon", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def tabs=(value : Pango::TabArray?) : Pango::TabArray?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tabs", unsafe_value, Pointer(Void).null)
      value
    end

    def tabs : Pango::TabArray?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tabs", pointerof(value), Pointer(Void).null)
      Pango::TabArray.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def text_length : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "text-length", pointerof(value), Pointer(Void).null)
      value
    end

    def truncate_multiline=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "truncate-multiline", unsafe_value, Pointer(Void).null)
      value
    end

    def truncate_multiline? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "truncate-multiline", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def visibility=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "visibility", unsafe_value, Pointer(Void).null)
      value
    end

    def visibility? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "visibility", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # gtk_entry_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_new

      # Return value handling
      Gtk::Entry.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_buffer(buffer : Gtk::EntryBuffer) : self
      # gtk_entry_new_with_buffer: (Constructor)
      # @buffer:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_new_with_buffer(buffer)

      # Return value handling
      Gtk::Entry.new(_retval, GICrystal::Transfer::Full)
    end

    def activates_default : Bool
      # gtk_entry_get_activates_default: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_activates_default(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def alignment : Float32
      # gtk_entry_get_alignment: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_alignment(to_unsafe)

      # Return value handling
      _retval
    end

    def attributes : Pango::AttrList?
      # gtk_entry_get_attributes: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_attributes(to_unsafe)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def buffer : Gtk::EntryBuffer
      # gtk_entry_get_buffer: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_buffer(to_unsafe)

      # Return value handling
      Gtk::EntryBuffer.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def completion : Gtk::EntryCompletion?
      # gtk_entry_get_completion: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_completion(to_unsafe)

      # Return value handling
      Gtk::EntryCompletion.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def current_icon_drag_source : Int32
      # gtk_entry_get_current_icon_drag_source: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_current_icon_drag_source(to_unsafe)

      # Return value handling
      _retval
    end

    def extra_menu : Gio::MenuModel?
      # gtk_entry_get_extra_menu: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_extra_menu(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def has_frame : Bool
      # gtk_entry_get_has_frame: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_has_frame(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon_activatable(icon_pos : Gtk::EntryIconPosition) : Bool
      # gtk_entry_get_icon_activatable: (Method)
      # @icon_pos:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_activatable(to_unsafe, icon_pos)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon_area(icon_pos : Gtk::EntryIconPosition) : Gdk::Rectangle
      # gtk_entry_get_icon_area: (Method)
      # @icon_pos:
      # @icon_area: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      icon_area = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_entry_get_icon_area(to_unsafe, icon_pos, icon_area)

      # Return value handling
      icon_area
    end

    def icon_at_pos(x : Int32, y : Int32) : Int32
      # gtk_entry_get_icon_at_pos: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_at_pos(to_unsafe, x, y)

      # Return value handling
      _retval
    end

    def icon_gicon(icon_pos : Gtk::EntryIconPosition) : Gio::Icon?
      # gtk_entry_get_icon_gicon: (Method)
      # @icon_pos:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_gicon(to_unsafe, icon_pos)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def icon_name(icon_pos : Gtk::EntryIconPosition) : ::String?
      # gtk_entry_get_icon_name: (Method)
      # @icon_pos:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_name(to_unsafe, icon_pos)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def icon_paintable(icon_pos : Gtk::EntryIconPosition) : Gdk::Paintable?
      # gtk_entry_get_icon_paintable: (Method)
      # @icon_pos:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_paintable(to_unsafe, icon_pos)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def icon_sensitive(icon_pos : Gtk::EntryIconPosition) : Bool
      # gtk_entry_get_icon_sensitive: (Method)
      # @icon_pos:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_sensitive(to_unsafe, icon_pos)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon_storage_type(icon_pos : Gtk::EntryIconPosition) : Gtk::ImageType
      # gtk_entry_get_icon_storage_type: (Method)
      # @icon_pos:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_storage_type(to_unsafe, icon_pos)

      # Return value handling
      Gtk::ImageType.new(_retval)
    end

    def icon_tooltip_markup(icon_pos : Gtk::EntryIconPosition) : ::String?
      # gtk_entry_get_icon_tooltip_markup: (Method)
      # @icon_pos:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_tooltip_markup(to_unsafe, icon_pos)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def icon_tooltip_text(icon_pos : Gtk::EntryIconPosition) : ::String?
      # gtk_entry_get_icon_tooltip_text: (Method)
      # @icon_pos:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_icon_tooltip_text(to_unsafe, icon_pos)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def input_hints : Gtk::InputHints
      # gtk_entry_get_input_hints: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_input_hints(to_unsafe)

      # Return value handling
      Gtk::InputHints.new(_retval)
    end

    def input_purpose : Gtk::InputPurpose
      # gtk_entry_get_input_purpose: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_input_purpose(to_unsafe)

      # Return value handling
      Gtk::InputPurpose.new(_retval)
    end

    def invisible_char : Char
      # gtk_entry_get_invisible_char: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_invisible_char(to_unsafe)

      # Return value handling
      _retval.chr
    end

    def max_length : Int32
      # gtk_entry_get_max_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_max_length(to_unsafe)

      # Return value handling
      _retval
    end

    def menu_entry_icon_text(icon_pos : Gtk::EntryIconPosition) : ::String?
      # gtk_entry_get_menu_entry_icon_text: (Method)
      # @icon_pos:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_menu_entry_icon_text(to_unsafe, icon_pos)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def overwrite_mode : Bool
      # gtk_entry_get_overwrite_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_overwrite_mode(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def placeholder_text : ::String?
      # gtk_entry_get_placeholder_text: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_placeholder_text(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def progress_fraction : Float64
      # gtk_entry_get_progress_fraction: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_progress_fraction(to_unsafe)

      # Return value handling
      _retval
    end

    def progress_pulse_step : Float64
      # gtk_entry_get_progress_pulse_step: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_progress_pulse_step(to_unsafe)

      # Return value handling
      _retval
    end

    def tabs : Pango::TabArray?
      # gtk_entry_get_tabs: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_entry_get_tabs(to_unsafe)

      # Return value handling
      Pango::TabArray.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def text_length : UInt16
      # gtk_entry_get_text_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_text_length(to_unsafe)

      # Return value handling
      _retval
    end

    def visibility : Bool
      # gtk_entry_get_visibility: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_get_visibility(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def grab_focus_without_selecting : Bool
      # gtk_entry_grab_focus_without_selecting: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_entry_grab_focus_without_selecting(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def progress_pulse : Nil
      # gtk_entry_progress_pulse: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_progress_pulse(to_unsafe)

      # Return value handling
    end

    def reset_im_context : Nil
      # gtk_entry_reset_im_context: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_reset_im_context(to_unsafe)

      # Return value handling
    end

    def activates_default=(setting : Bool) : Nil
      # gtk_entry_set_activates_default: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_activates_default(to_unsafe, setting)

      # Return value handling
    end

    def alignment=(xalign : Float32) : Nil
      # gtk_entry_set_alignment: (Method)
      # @xalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_alignment(to_unsafe, xalign)

      # Return value handling
    end

    def attributes=(attrs : Pango::AttrList) : Nil
      # gtk_entry_set_attributes: (Method | Setter)
      # @attrs:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_attributes(to_unsafe, attrs)

      # Return value handling
    end

    def buffer=(buffer : Gtk::EntryBuffer) : Nil
      # gtk_entry_set_buffer: (Method | Setter)
      # @buffer:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_buffer(to_unsafe, buffer)

      # Return value handling
    end

    @[Deprecated]
    def completion=(completion : Gtk::EntryCompletion?) : Nil
      # gtk_entry_set_completion: (Method | Setter)
      # @completion: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      completion = if completion.nil?
                     Pointer(Void).null
                   else
                     completion.to_unsafe
                   end

      # C call
      LibGtk.gtk_entry_set_completion(to_unsafe, completion)

      # Return value handling
    end

    def extra_menu=(model : Gio::MenuModel?) : Nil
      # gtk_entry_set_extra_menu: (Method | Setter)
      # @model: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      model = if model.nil?
                Pointer(Void).null
              else
                model.to_unsafe
              end

      # C call
      LibGtk.gtk_entry_set_extra_menu(to_unsafe, model)

      # Return value handling
    end

    def has_frame=(setting : Bool) : Nil
      # gtk_entry_set_has_frame: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_has_frame(to_unsafe, setting)

      # Return value handling
    end

    def set_icon_activatable(icon_pos : Gtk::EntryIconPosition, activatable : Bool) : Nil
      # gtk_entry_set_icon_activatable: (Method)
      # @icon_pos:
      # @activatable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_icon_activatable(to_unsafe, icon_pos, activatable)

      # Return value handling
    end

    def set_icon_drag_source(icon_pos : Gtk::EntryIconPosition, provider : Gdk::ContentProvider, actions : Gdk::DragAction) : Nil
      # gtk_entry_set_icon_drag_source: (Method)
      # @icon_pos:
      # @provider:
      # @actions:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_icon_drag_source(to_unsafe, icon_pos, provider, actions)

      # Return value handling
    end

    def set_icon_from_gicon(icon_pos : Gtk::EntryIconPosition, icon : Gio::Icon?) : Nil
      # gtk_entry_set_icon_from_gicon: (Method)
      # @icon_pos:
      # @icon: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon = if icon.nil?
               Pointer(Void).null
             else
               icon.to_unsafe
             end

      # C call
      LibGtk.gtk_entry_set_icon_from_gicon(to_unsafe, icon_pos, icon)

      # Return value handling
    end

    def set_icon_from_icon_name(icon_pos : Gtk::EntryIconPosition, icon_name : ::String?) : Nil
      # gtk_entry_set_icon_from_icon_name: (Method)
      # @icon_pos:
      # @icon_name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      icon_name = if icon_name.nil?
                    Pointer(LibC::Char).null
                  else
                    icon_name.to_unsafe
                  end

      # C call
      LibGtk.gtk_entry_set_icon_from_icon_name(to_unsafe, icon_pos, icon_name)

      # Return value handling
    end

    def set_icon_from_paintable(icon_pos : Gtk::EntryIconPosition, paintable : Gdk::Paintable?) : Nil
      # gtk_entry_set_icon_from_paintable: (Method)
      # @icon_pos:
      # @paintable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      paintable = if paintable.nil?
                    Pointer(Void).null
                  else
                    paintable.to_unsafe
                  end

      # C call
      LibGtk.gtk_entry_set_icon_from_paintable(to_unsafe, icon_pos, paintable)

      # Return value handling
    end

    def set_icon_sensitive(icon_pos : Gtk::EntryIconPosition, sensitive : Bool) : Nil
      # gtk_entry_set_icon_sensitive: (Method)
      # @icon_pos:
      # @sensitive:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_icon_sensitive(to_unsafe, icon_pos, sensitive)

      # Return value handling
    end

    def set_icon_tooltip_markup(icon_pos : Gtk::EntryIconPosition, tooltip : ::String?) : Nil
      # gtk_entry_set_icon_tooltip_markup: (Method)
      # @icon_pos:
      # @tooltip: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tooltip = if tooltip.nil?
                  Pointer(LibC::Char).null
                else
                  tooltip.to_unsafe
                end

      # C call
      LibGtk.gtk_entry_set_icon_tooltip_markup(to_unsafe, icon_pos, tooltip)

      # Return value handling
    end

    def set_icon_tooltip_text(icon_pos : Gtk::EntryIconPosition, tooltip : ::String?) : Nil
      # gtk_entry_set_icon_tooltip_text: (Method)
      # @icon_pos:
      # @tooltip: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tooltip = if tooltip.nil?
                  Pointer(LibC::Char).null
                else
                  tooltip.to_unsafe
                end

      # C call
      LibGtk.gtk_entry_set_icon_tooltip_text(to_unsafe, icon_pos, tooltip)

      # Return value handling
    end

    def input_hints=(hints : Gtk::InputHints) : Nil
      # gtk_entry_set_input_hints: (Method | Setter)
      # @hints:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_input_hints(to_unsafe, hints)

      # Return value handling
    end

    def input_purpose=(purpose : Gtk::InputPurpose) : Nil
      # gtk_entry_set_input_purpose: (Method | Setter)
      # @purpose:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_input_purpose(to_unsafe, purpose)

      # Return value handling
    end

    def invisible_char=(ch : Char) : Nil
      # gtk_entry_set_invisible_char: (Method | Setter)
      # @ch:
      # Returns: (transfer none)

      # Generator::BuiltInTypeArgPlan
      ch = ch.ord.to_u32

      # C call
      LibGtk.gtk_entry_set_invisible_char(to_unsafe, ch)

      # Return value handling
    end

    def max_length=(max : Int32) : Nil
      # gtk_entry_set_max_length: (Method | Setter)
      # @max:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_max_length(to_unsafe, max)

      # Return value handling
    end

    def set_menu_entry_icon_text(icon_pos : Gtk::EntryIconPosition, text : ::String) : Nil
      # gtk_entry_set_menu_entry_icon_text: (Method)
      # @icon_pos:
      # @text:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_menu_entry_icon_text(to_unsafe, icon_pos, text)

      # Return value handling
    end

    def overwrite_mode=(overwrite : Bool) : Nil
      # gtk_entry_set_overwrite_mode: (Method | Setter)
      # @overwrite:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_overwrite_mode(to_unsafe, overwrite)

      # Return value handling
    end

    def placeholder_text=(text : ::String?) : Nil
      # gtk_entry_set_placeholder_text: (Method | Setter)
      # @text: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      LibGtk.gtk_entry_set_placeholder_text(to_unsafe, text)

      # Return value handling
    end

    def progress_fraction=(fraction : Float64) : Nil
      # gtk_entry_set_progress_fraction: (Method | Setter)
      # @fraction:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_progress_fraction(to_unsafe, fraction)

      # Return value handling
    end

    def progress_pulse_step=(fraction : Float64) : Nil
      # gtk_entry_set_progress_pulse_step: (Method | Setter)
      # @fraction:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_progress_pulse_step(to_unsafe, fraction)

      # Return value handling
    end

    def tabs=(tabs : Pango::TabArray?) : Nil
      # gtk_entry_set_tabs: (Method | Setter)
      # @tabs: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tabs = if tabs.nil?
               Pointer(Void).null
             else
               tabs.to_unsafe
             end

      # C call
      LibGtk.gtk_entry_set_tabs(to_unsafe, tabs)

      # Return value handling
    end

    def visibility=(visible : Bool) : Nil
      # gtk_entry_set_visibility: (Method | Setter)
      # @visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_set_visibility(to_unsafe, visible)

      # Return value handling
    end

    def unset_invisible_char : Nil
      # gtk_entry_unset_invisible_char: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_entry_unset_invisible_char(to_unsafe)

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

      def connect(handler : Proc(Gtk::Entry, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Entry.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Entry, Nil)).unbox(_lib_box).call(_sender)
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

    struct IconPressSignal < GObject::Signal
      def name : String
        @detail ? "icon-press::#{@detail}" : "icon-press"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::EntryIconPosition, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::EntryIconPosition, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_icon_pos : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          icon_pos = Gtk::EntryIconPosition.new(lib_icon_pos)
          ::Box(Proc(Gtk::EntryIconPosition, Nil)).unbox(_lib_box).call(icon_pos)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Entry, Gtk::EntryIconPosition, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_icon_pos : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Entry.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          icon_pos = Gtk::EntryIconPosition.new(lib_icon_pos)
          ::Box(Proc(Gtk::Entry, Gtk::EntryIconPosition, Nil)).unbox(_lib_box).call(_sender, icon_pos)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(icon_pos : Gtk::EntryIconPosition) : Nil
        LibGObject.g_signal_emit_by_name(@source, "icon-press", icon_pos)
      end
    end

    def icon_press_signal
      IconPressSignal.new(self)
    end

    struct IconReleaseSignal < GObject::Signal
      def name : String
        @detail ? "icon-release::#{@detail}" : "icon-release"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::EntryIconPosition, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::EntryIconPosition, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_icon_pos : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          icon_pos = Gtk::EntryIconPosition.new(lib_icon_pos)
          ::Box(Proc(Gtk::EntryIconPosition, Nil)).unbox(_lib_box).call(icon_pos)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Entry, Gtk::EntryIconPosition, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_icon_pos : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::Entry.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          icon_pos = Gtk::EntryIconPosition.new(lib_icon_pos)
          ::Box(Proc(Gtk::Entry, Gtk::EntryIconPosition, Nil)).unbox(_lib_box).call(_sender, icon_pos)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(icon_pos : Gtk::EntryIconPosition) : Nil
        LibGObject.g_signal_emit_by_name(@source, "icon-release", icon_pos)
      end
    end

    def icon_release_signal
      IconReleaseSignal.new(self)
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
