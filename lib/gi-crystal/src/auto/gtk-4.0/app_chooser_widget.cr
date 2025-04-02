require "./widget"
require "./accessible"

require "./app_chooser"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class AppChooserWidget < Widget
    include Accessible
    include AppChooser
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AppChooserWidget, g_object_get_qdata)

    # Initialize a new `AppChooserWidget`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, content_type : ::String? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, default_text : ::String? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_all : Bool? = nil, show_default : Bool? = nil, show_fallback : Bool? = nil, show_other : Bool? = nil, show_recommended : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
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
      if !default_text.nil?
        (_names.to_unsafe + _n).value = "default-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_text)
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
      if !show_all.nil?
        (_names.to_unsafe + _n).value = "show-all".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_all)
        _n += 1
      end
      if !show_default.nil?
        (_names.to_unsafe + _n).value = "show-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_default)
        _n += 1
      end
      if !show_fallback.nil?
        (_names.to_unsafe + _n).value = "show-fallback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_fallback)
        _n += 1
      end
      if !show_other.nil?
        (_names.to_unsafe + _n).value = "show-other".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_other)
        _n += 1
      end
      if !show_recommended.nil?
        (_names.to_unsafe + _n).value = "show-recommended".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_recommended)
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
      @@g_type ||= LibGtk.gtk_app_chooser_widget_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AppChooserWidget.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def default_text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "default-text", unsafe_value, Pointer(Void).null)
      value
    end

    def default_text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#default_text` property to nil.
    def default_text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "default-text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#default_text`, but can return nil.
    def default_text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def show_all=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-all", unsafe_value, Pointer(Void).null)
      value
    end

    def show_all? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-all", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_default=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-default", unsafe_value, Pointer(Void).null)
      value
    end

    def show_default? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-default", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_fallback=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-fallback", unsafe_value, Pointer(Void).null)
      value
    end

    def show_fallback? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-fallback", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_other=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-other", unsafe_value, Pointer(Void).null)
      value
    end

    def show_other? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-other", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_recommended=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-recommended", unsafe_value, Pointer(Void).null)
      value
    end

    def show_recommended? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-recommended", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    @[Deprecated]
    def self.new(content_type : ::String) : self
      # gtk_app_chooser_widget_new: (Constructor)
      # @content_type:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_widget_new(content_type)

      # Return value handling
      Gtk::AppChooserWidget.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def default_text : ::String?
      # gtk_app_chooser_widget_get_default_text: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_app_chooser_widget_get_default_text(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    @[Deprecated]
    def show_all : Bool
      # gtk_app_chooser_widget_get_show_all: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_widget_get_show_all(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def show_default : Bool
      # gtk_app_chooser_widget_get_show_default: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_widget_get_show_default(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def show_fallback : Bool
      # gtk_app_chooser_widget_get_show_fallback: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_widget_get_show_fallback(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def show_other : Bool
      # gtk_app_chooser_widget_get_show_other: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_widget_get_show_other(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def show_recommended : Bool
      # gtk_app_chooser_widget_get_show_recommended: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_app_chooser_widget_get_show_recommended(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def default_text=(text : ::String) : Nil
      # gtk_app_chooser_widget_set_default_text: (Method | Setter)
      # @text:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_widget_set_default_text(to_unsafe, text)

      # Return value handling
    end

    @[Deprecated]
    def show_all=(setting : Bool) : Nil
      # gtk_app_chooser_widget_set_show_all: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_widget_set_show_all(to_unsafe, setting)

      # Return value handling
    end

    @[Deprecated]
    def show_default=(setting : Bool) : Nil
      # gtk_app_chooser_widget_set_show_default: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_widget_set_show_default(to_unsafe, setting)

      # Return value handling
    end

    @[Deprecated]
    def show_fallback=(setting : Bool) : Nil
      # gtk_app_chooser_widget_set_show_fallback: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_widget_set_show_fallback(to_unsafe, setting)

      # Return value handling
    end

    @[Deprecated]
    def show_other=(setting : Bool) : Nil
      # gtk_app_chooser_widget_set_show_other: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_widget_set_show_other(to_unsafe, setting)

      # Return value handling
    end

    @[Deprecated]
    def show_recommended=(setting : Bool) : Nil
      # gtk_app_chooser_widget_set_show_recommended: (Method | Setter)
      # @setting:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_app_chooser_widget_set_show_recommended(to_unsafe, setting)

      # Return value handling
    end

    struct ApplicationActivatedSignal < GObject::Signal
      def name : String
        @detail ? "application-activated::#{@detail}" : "application-activated"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::AppInfo, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::AppInfo, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_application : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          application = Gio::AbstractAppInfo.new(lib_application, GICrystal::Transfer::None)
          ::Box(Proc(Gio::AppInfo, Nil)).unbox(_lib_box).call(application)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::AppChooserWidget, Gio::AppInfo, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_application : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AppChooserWidget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          application = Gio::AbstractAppInfo.new(lib_application, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::AppChooserWidget, Gio::AppInfo, Nil)).unbox(_lib_box).call(_sender, application)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(application : Gio::AppInfo) : Nil
        LibGObject.g_signal_emit_by_name(@source, "application-activated", application)
      end
    end

    def application_activated_signal
      ApplicationActivatedSignal.new(self)
    end

    struct ApplicationSelectedSignal < GObject::Signal
      def name : String
        @detail ? "application-selected::#{@detail}" : "application-selected"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::AppInfo, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::AppInfo, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_application : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          application = Gio::AbstractAppInfo.new(lib_application, GICrystal::Transfer::None)
          ::Box(Proc(Gio::AppInfo, Nil)).unbox(_lib_box).call(application)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::AppChooserWidget, Gio::AppInfo, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_application : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AppChooserWidget.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          application = Gio::AbstractAppInfo.new(lib_application, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::AppChooserWidget, Gio::AppInfo, Nil)).unbox(_lib_box).call(_sender, application)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(application : Gio::AppInfo) : Nil
        LibGObject.g_signal_emit_by_name(@source, "application-selected", application)
      end
    end

    def application_selected_signal
      ApplicationSelectedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
