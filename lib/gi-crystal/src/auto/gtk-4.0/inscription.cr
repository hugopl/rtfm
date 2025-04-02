require "./widget"
require "./accessible"

require "./accessible_text"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Inscription < Widget
    include Accessible
    include AccessibleText
    include Buildable
    include ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::InscriptionClass), class_init,
        sizeof(LibGtk::Inscription), instance_init, 0)
    end

    GICrystal.declare_new_method(Inscription, g_object_get_qdata)

    # Initialize a new `Inscription`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, attributes : Pango::AttrList? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, markup : ::String? = nil, min_chars : UInt32? = nil, min_lines : UInt32? = nil, name : ::String? = nil, nat_chars : UInt32? = nil, nat_lines : UInt32? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, text : ::String? = nil, text_overflow : Gtk::InscriptionOverflow? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil, wrap_mode : Pango::WrapMode? = nil, xalign : Float32? = nil, yalign : Float32? = nil)
      _names = uninitialized Pointer(LibC::Char)[47]
      _values = StaticArray(LibGObject::Value, 47).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
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
      if !markup.nil?
        (_names.to_unsafe + _n).value = "markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, markup)
        _n += 1
      end
      if !min_chars.nil?
        (_names.to_unsafe + _n).value = "min-chars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_chars)
        _n += 1
      end
      if !min_lines.nil?
        (_names.to_unsafe + _n).value = "min-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, min_lines)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !nat_chars.nil?
        (_names.to_unsafe + _n).value = "nat-chars".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, nat_chars)
        _n += 1
      end
      if !nat_lines.nil?
        (_names.to_unsafe + _n).value = "nat-lines".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, nat_lines)
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
      if !text.nil?
        (_names.to_unsafe + _n).value = "text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text)
        _n += 1
      end
      if !text_overflow.nil?
        (_names.to_unsafe + _n).value = "text-overflow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, text_overflow)
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
      if !wrap_mode.nil?
        (_names.to_unsafe + _n).value = "wrap-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, wrap_mode)
        _n += 1
      end
      if !xalign.nil?
        (_names.to_unsafe + _n).value = "xalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, xalign)
        _n += 1
      end
      if !yalign.nil?
        (_names.to_unsafe + _n).value = "yalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, yalign)
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
      @@g_type ||= LibGtk.gtk_inscription_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Inscription.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
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

    def markup=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "markup", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#markup` property to nil.
    def markup=(value : Nil) : Nil
      LibGObject.g_object_set(self, "markup", Pointer(Void).null, Pointer(Void).null)
    end

    def min_chars=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "min-chars", unsafe_value, Pointer(Void).null)
      value
    end

    def min_chars : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "min-chars", pointerof(value), Pointer(Void).null)
      value
    end

    def min_lines=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "min-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def min_lines : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "min-lines", pointerof(value), Pointer(Void).null)
      value
    end

    def nat_chars=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "nat-chars", unsafe_value, Pointer(Void).null)
      value
    end

    def nat_chars : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "nat-chars", pointerof(value), Pointer(Void).null)
      value
    end

    def nat_lines=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "nat-lines", unsafe_value, Pointer(Void).null)
      value
    end

    def nat_lines : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "nat-lines", pointerof(value), Pointer(Void).null)
      value
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

    def text_overflow=(value : Gtk::InscriptionOverflow) : Gtk::InscriptionOverflow
      unsafe_value = value

      LibGObject.g_object_set(self, "text-overflow", unsafe_value, Pointer(Void).null)
      value
    end

    def text_overflow : Gtk::InscriptionOverflow
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "text-overflow", pointerof(value), Pointer(Void).null)
      Gtk::InscriptionOverflow.new(value)
    end

    def wrap_mode=(value : Pango::WrapMode) : Pango::WrapMode
      unsafe_value = value

      LibGObject.g_object_set(self, "wrap-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def wrap_mode : Pango::WrapMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "wrap-mode", pointerof(value), Pointer(Void).null)
      Pango::WrapMode.new(value)
    end

    def xalign=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "xalign", unsafe_value, Pointer(Void).null)
      value
    end

    def xalign : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "xalign", pointerof(value), Pointer(Void).null)
      value
    end

    def yalign=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "yalign", unsafe_value, Pointer(Void).null)
      value
    end

    def yalign : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "yalign", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(text : ::String?) : self
      # gtk_inscription_new: (Constructor)
      # @text: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_inscription_new(text)

      # Return value handling
      Gtk::Inscription.new(_retval, GICrystal::Transfer::Full)
    end

    def attributes : Pango::AttrList?
      # gtk_inscription_get_attributes: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_inscription_get_attributes(to_unsafe)

      # Return value handling
      Pango::AttrList.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def min_chars : UInt32
      # gtk_inscription_get_min_chars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_min_chars(to_unsafe)

      # Return value handling
      _retval
    end

    def min_lines : UInt32
      # gtk_inscription_get_min_lines: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_min_lines(to_unsafe)

      # Return value handling
      _retval
    end

    def nat_chars : UInt32
      # gtk_inscription_get_nat_chars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_nat_chars(to_unsafe)

      # Return value handling
      _retval
    end

    def nat_lines : UInt32
      # gtk_inscription_get_nat_lines: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_nat_lines(to_unsafe)

      # Return value handling
      _retval
    end

    def text : ::String?
      # gtk_inscription_get_text: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_inscription_get_text(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def text_overflow : Gtk::InscriptionOverflow
      # gtk_inscription_get_text_overflow: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_text_overflow(to_unsafe)

      # Return value handling
      Gtk::InscriptionOverflow.new(_retval)
    end

    def wrap_mode : Pango::WrapMode
      # gtk_inscription_get_wrap_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_wrap_mode(to_unsafe)

      # Return value handling
      Pango::WrapMode.new(_retval)
    end

    def xalign : Float32
      # gtk_inscription_get_xalign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_xalign(to_unsafe)

      # Return value handling
      _retval
    end

    def yalign : Float32
      # gtk_inscription_get_yalign: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_inscription_get_yalign(to_unsafe)

      # Return value handling
      _retval
    end

    def attributes=(attrs : Pango::AttrList?) : Nil
      # gtk_inscription_set_attributes: (Method | Setter)
      # @attrs: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      attrs = if attrs.nil?
                Pointer(Void).null
              else
                attrs.to_unsafe
              end

      # C call
      LibGtk.gtk_inscription_set_attributes(to_unsafe, attrs)

      # Return value handling
    end

    def markup=(markup : ::String?) : Nil
      # gtk_inscription_set_markup: (Method | Setter)
      # @markup: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      markup = if markup.nil?
                 Pointer(LibC::Char).null
               else
                 markup.to_unsafe
               end

      # C call
      LibGtk.gtk_inscription_set_markup(to_unsafe, markup)

      # Return value handling
    end

    def min_chars=(min_chars : UInt32) : Nil
      # gtk_inscription_set_min_chars: (Method | Setter)
      # @min_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_min_chars(to_unsafe, min_chars)

      # Return value handling
    end

    def min_lines=(min_lines : UInt32) : Nil
      # gtk_inscription_set_min_lines: (Method | Setter)
      # @min_lines:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_min_lines(to_unsafe, min_lines)

      # Return value handling
    end

    def nat_chars=(nat_chars : UInt32) : Nil
      # gtk_inscription_set_nat_chars: (Method | Setter)
      # @nat_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_nat_chars(to_unsafe, nat_chars)

      # Return value handling
    end

    def nat_lines=(nat_lines : UInt32) : Nil
      # gtk_inscription_set_nat_lines: (Method | Setter)
      # @nat_lines:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_nat_lines(to_unsafe, nat_lines)

      # Return value handling
    end

    def text=(text : ::String?) : Nil
      # gtk_inscription_set_text: (Method | Setter)
      # @text: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      text = if text.nil?
               Pointer(LibC::Char).null
             else
               text.to_unsafe
             end

      # C call
      LibGtk.gtk_inscription_set_text(to_unsafe, text)

      # Return value handling
    end

    def text_overflow=(overflow : Gtk::InscriptionOverflow) : Nil
      # gtk_inscription_set_text_overflow: (Method | Setter)
      # @overflow:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_text_overflow(to_unsafe, overflow)

      # Return value handling
    end

    def wrap_mode=(wrap_mode : Pango::WrapMode) : Nil
      # gtk_inscription_set_wrap_mode: (Method | Setter)
      # @wrap_mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_wrap_mode(to_unsafe, wrap_mode)

      # Return value handling
    end

    def xalign=(xalign : Float32) : Nil
      # gtk_inscription_set_xalign: (Method | Setter)
      # @xalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_xalign(to_unsafe, xalign)

      # Return value handling
    end

    def yalign=(yalign : Float32) : Nil
      # gtk_inscription_set_yalign: (Method | Setter)
      # @yalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_inscription_set_yalign(to_unsafe, yalign)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
