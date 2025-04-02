require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class FontDialogButton < Widget
    include Accessible
    include Buildable
    include ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::FontDialogButtonClass), class_init,
        sizeof(LibGtk::FontDialogButton), instance_init, 0)
    end

    GICrystal.declare_new_method(FontDialogButton, g_object_get_qdata)

    # Initialize a new `FontDialogButton`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, dialog : Gtk::FontDialog? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, font_desc : Pango::FontDescription? = nil, font_features : ::String? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, language : Pango::Language? = nil, layout_manager : Gtk::LayoutManager? = nil, level : Gtk::FontLevel? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, use_font : Bool? = nil, use_size : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
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
      if !dialog.nil?
        (_names.to_unsafe + _n).value = "dialog".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, dialog)
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
      if !font_desc.nil?
        (_names.to_unsafe + _n).value = "font-desc".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, font_desc)
        _n += 1
      end
      if !font_features.nil?
        (_names.to_unsafe + _n).value = "font-features".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, font_features)
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
      if !language.nil?
        (_names.to_unsafe + _n).value = "language".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, language)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !level.nil?
        (_names.to_unsafe + _n).value = "level".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, level)
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
      if !use_font.nil?
        (_names.to_unsafe + _n).value = "use-font".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_font)
        _n += 1
      end
      if !use_size.nil?
        (_names.to_unsafe + _n).value = "use-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_size)
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
      @@g_type ||= LibGtk.gtk_font_dialog_button_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::FontDialogButton.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def dialog=(value : Gtk::FontDialog?) : Gtk::FontDialog?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "dialog", unsafe_value, Pointer(Void).null)
      value
    end

    def dialog : Gtk::FontDialog?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "dialog", pointerof(value), Pointer(Void).null)
      Gtk::FontDialog.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def font_desc=(value : Pango::FontDescription?) : Pango::FontDescription?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "font-desc", unsafe_value, Pointer(Void).null)
      value
    end

    def font_desc : Pango::FontDescription?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "font-desc", pointerof(value), Pointer(Void).null)
      Pango::FontDescription.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def font_features=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "font-features", unsafe_value, Pointer(Void).null)
      value
    end

    def font_features : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font-features", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#font_features` property to nil.
    def font_features=(value : Nil) : Nil
      LibGObject.g_object_set(self, "font-features", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#font_features`, but can return nil.
    def font_features? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "font-features", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def language=(value : Pango::Language?) : Pango::Language?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "language", unsafe_value, Pointer(Void).null)
      value
    end

    def language : Pango::Language?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "language", pointerof(value), Pointer(Void).null)
      Pango::Language.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def level=(value : Gtk::FontLevel) : Gtk::FontLevel
      unsafe_value = value

      LibGObject.g_object_set(self, "level", unsafe_value, Pointer(Void).null)
      value
    end

    def level : Gtk::FontLevel
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "level", pointerof(value), Pointer(Void).null)
      Gtk::FontLevel.new(value)
    end

    def use_font=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-font", unsafe_value, Pointer(Void).null)
      value
    end

    def use_font? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-font", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def use_size=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-size", unsafe_value, Pointer(Void).null)
      value
    end

    def use_size? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-size", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(dialog : Gtk::FontDialog?) : self
      # gtk_font_dialog_button_new: (Constructor)
      # @dialog: (transfer full) (nullable)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(dialog)
      # Generator::NullableArrayPlan
      dialog = if dialog.nil?
                 Pointer(Void).null
               else
                 dialog.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_font_dialog_button_new(dialog)

      # Return value handling
      Gtk::FontDialogButton.new(_retval, GICrystal::Transfer::Full)
    end

    def dialog : Gtk::FontDialog?
      # gtk_font_dialog_button_get_dialog: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_font_dialog_button_get_dialog(to_unsafe)

      # Return value handling
      Gtk::FontDialog.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def font_desc : Pango::FontDescription?
      # gtk_font_dialog_button_get_font_desc: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_font_dialog_button_get_font_desc(to_unsafe)

      # Return value handling
      Pango::FontDescription.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def font_features : ::String?
      # gtk_font_dialog_button_get_font_features: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_font_dialog_button_get_font_features(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def language : Pango::Language?
      # gtk_font_dialog_button_get_language: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_font_dialog_button_get_language(to_unsafe)

      # Return value handling
      Pango::Language.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def level : Gtk::FontLevel
      # gtk_font_dialog_button_get_level: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_dialog_button_get_level(to_unsafe)

      # Return value handling
      Gtk::FontLevel.new(_retval)
    end

    def use_font : Bool
      # gtk_font_dialog_button_get_use_font: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_dialog_button_get_use_font(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def use_size : Bool
      # gtk_font_dialog_button_get_use_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_font_dialog_button_get_use_size(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def dialog=(dialog : Gtk::FontDialog) : Nil
      # gtk_font_dialog_button_set_dialog: (Method | Setter)
      # @dialog:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_button_set_dialog(to_unsafe, dialog)

      # Return value handling
    end

    def font_desc=(font_desc : Pango::FontDescription) : Nil
      # gtk_font_dialog_button_set_font_desc: (Method | Setter)
      # @font_desc:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_button_set_font_desc(to_unsafe, font_desc)

      # Return value handling
    end

    def font_features=(font_features : ::String?) : Nil
      # gtk_font_dialog_button_set_font_features: (Method | Setter)
      # @font_features: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      font_features = if font_features.nil?
                        Pointer(LibC::Char).null
                      else
                        font_features.to_unsafe
                      end

      # C call
      LibGtk.gtk_font_dialog_button_set_font_features(to_unsafe, font_features)

      # Return value handling
    end

    def language=(language : Pango::Language?) : Nil
      # gtk_font_dialog_button_set_language: (Method | Setter)
      # @language: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      language = if language.nil?
                   Pointer(Void).null
                 else
                   language.to_unsafe
                 end

      # C call
      LibGtk.gtk_font_dialog_button_set_language(to_unsafe, language)

      # Return value handling
    end

    def level=(level : Gtk::FontLevel) : Nil
      # gtk_font_dialog_button_set_level: (Method | Setter)
      # @level:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_button_set_level(to_unsafe, level)

      # Return value handling
    end

    def use_font=(use_font : Bool) : Nil
      # gtk_font_dialog_button_set_use_font: (Method | Setter)
      # @use_font:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_button_set_use_font(to_unsafe, use_font)

      # Return value handling
    end

    def use_size=(use_size : Bool) : Nil
      # gtk_font_dialog_button_set_use_size: (Method | Setter)
      # @use_size:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_font_dialog_button_set_use_size(to_unsafe, use_size)

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

      def connect(handler : Proc(Gtk::FontDialogButton, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::FontDialogButton.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::FontDialogButton, Nil)).unbox(_lib_box).call(_sender)
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

    def_equals_and_hash @pointer
  end
end
