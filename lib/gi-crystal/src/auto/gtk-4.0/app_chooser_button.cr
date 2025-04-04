require "./widget"
require "./accessible"

require "./app_chooser"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class AppChooserButton < Widget
    include Accessible
    include AppChooser
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AppChooserButton, g_object_get_qdata)

    # Initialize a new `AppChooserButton`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, content_type : ::String? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, heading : ::String? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, modal : Bool? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_default_item : Bool? = nil, show_dialog_item : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[41]
      _values = StaticArray(LibGObject::Value, 41).new(LibGObject::Value.new)
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
      if !content_type.nil?
        (_names.to_unsafe + _n).value = "content-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content_type)
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
      if !heading.nil?
        (_names.to_unsafe + _n).value = "heading".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, heading)
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
      if !modal.nil?
        (_names.to_unsafe + _n).value = "modal".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modal)
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
      if !show_default_item.nil?
        (_names.to_unsafe + _n).value = "show-default-item".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_default_item)
        _n += 1
      end
      if !show_dialog_item.nil?
        (_names.to_unsafe + _n).value = "show-dialog-item".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_dialog_item)
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
      @@g_type ||= LibGtk.gtk_app_chooser_button_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AppChooserButton.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def heading=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "heading", unsafe_value, Pointer(Void).null)
      value
    end

    def heading : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "heading", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#heading` property to nil.
    def heading=(value : Nil) : Nil
      LibGObject.g_object_set(self, "heading", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#heading`, but can return nil.
    def heading? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "heading", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def modal=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "modal", unsafe_value, Pointer(Void).null)
      value
    end

    def modal? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "modal", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_default_item=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-default-item", unsafe_value, Pointer(Void).null)
      value
    end

    def show_default_item? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-default-item", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_dialog_item=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-dialog-item", unsafe_value, Pointer(Void).null)
      value
    end

    def show_dialog_item? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-dialog-item", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    @[Deprecated]
    def self.new(content_type : ::String) : self
      # gtk_app_chooser_button_new: (Constructor)
      # @content_type:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_button_new(content_type)

      # Return value handling
      Gtk::AppChooserButton.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def append_custom_item(name : ::String, label : ::String, icon : Gio::Icon) : Nil
      # gtk_app_chooser_button_append_custom_item: (Method)
      # @name:
      # @label:
      # @icon:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_button_append_custom_item(to_unsafe, name, label, icon)

      # Return value handling
    end

    @[Deprecated]
    def append_separator : Nil
      # gtk_app_chooser_button_append_separator: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_button_append_separator(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def heading : ::String?
      # gtk_app_chooser_button_get_heading: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_app_chooser_button_get_heading(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def modal : Bool
      # gtk_app_chooser_button_get_modal: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_button_get_modal(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def show_default_item : Bool
      # gtk_app_chooser_button_get_show_default_item: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_button_get_show_default_item(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def show_dialog_item : Bool
      # gtk_app_chooser_button_get_show_dialog_item: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_button_get_show_dialog_item(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def active_custom_item=(name : ::String) : Nil
      # gtk_app_chooser_button_set_active_custom_item: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_button_set_active_custom_item(to_unsafe, name)

      # Return value handling
    end

    @[Deprecated]
    def heading=(heading : ::String) : Nil
      # gtk_app_chooser_button_set_heading: (Method | Setter)
      # @heading:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_button_set_heading(to_unsafe, heading)

      # Return value handling
    end

    @[Deprecated]
    def modal=(modal : Bool) : Nil
      # gtk_app_chooser_button_set_modal: (Method | Setter)
      # @modal:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_button_set_modal(to_unsafe, modal)

      # Return value handling
    end

    @[Deprecated]
    def show_default_item=(setting : Bool) : Nil
      # gtk_app_chooser_button_set_show_default_item: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_button_set_show_default_item(to_unsafe, setting)

      # Return value handling
    end

    @[Deprecated]
    def show_dialog_item=(setting : Bool) : Nil
      # gtk_app_chooser_button_set_show_dialog_item: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_button_set_show_dialog_item(to_unsafe, setting)

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

      def connect(handler : Proc(Gtk::AppChooserButton, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AppChooserButton.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::AppChooserButton, Nil)).unbox(_lib_box).call(_sender)
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

      def connect(handler : Proc(Gtk::AppChooserButton, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AppChooserButton.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::AppChooserButton, Nil)).unbox(_lib_box).call(_sender)
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

    struct CustomItemActivatedSignal < GObject::Signal
      def name : String
        @detail ? "custom-item-activated::#{@detail}" : "custom-item-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_item_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          item_name = ::String.new(lib_item_name)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(item_name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::AppChooserButton, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_item_name : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::AppChooserButton.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          item_name = ::String.new(lib_item_name)
          ::Box(Proc(Gtk::AppChooserButton, ::String, Nil)).unbox(_lib_box).call(_sender, item_name)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(item_name : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "custom-item-activated", item_name)
      end
    end

    def custom_item_activated_signal
      CustomItemActivatedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
