require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class GLArea < Widget
    include Accessible
    include Buildable
    include ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::GLAreaClass), class_init,
        sizeof(LibGtk::GLArea), instance_init, 0)
    end

    GICrystal.declare_new_method(GLArea, g_object_get_qdata)

    # Initialize a new `GLArea`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, allowed_apis : Gdk::GLAPI? = nil, api : Gdk::GLAPI? = nil, auto_render : Bool? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, context : Gdk::GLContext? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_depth_buffer : Bool? = nil, has_focus : Bool? = nil, has_stencil_buffer : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, use_es : Bool? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !allowed_apis.nil?
        (_names.to_unsafe + _n).value = "allowed-apis".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allowed_apis)
        _n += 1
      end
      if !api.nil?
        (_names.to_unsafe + _n).value = "api".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, api)
        _n += 1
      end
      if !auto_render.nil?
        (_names.to_unsafe + _n).value = "auto-render".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, auto_render)
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
      if !context.nil?
        (_names.to_unsafe + _n).value = "context".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, context)
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
      if !has_depth_buffer.nil?
        (_names.to_unsafe + _n).value = "has-depth-buffer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_depth_buffer)
        _n += 1
      end
      if !has_focus.nil?
        (_names.to_unsafe + _n).value = "has-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_focus)
        _n += 1
      end
      if !has_stencil_buffer.nil?
        (_names.to_unsafe + _n).value = "has-stencil-buffer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_stencil_buffer)
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
      if !use_es.nil?
        (_names.to_unsafe + _n).value = "use-es".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, use_es)
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
      @@g_type ||= LibGtk.gtk_gl_area_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::GLArea.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allowed_apis=(value : Gdk::GLAPI) : Gdk::GLAPI
      unsafe_value = value

      LibGObject.g_object_set(self, "allowed-apis", unsafe_value, Pointer(Void).null)
      value
    end

    def allowed_apis : Gdk::GLAPI
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "allowed-apis", pointerof(value), Pointer(Void).null)
      Gdk::GLAPI.new(value)
    end

    def api : Gdk::GLAPI
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "api", pointerof(value), Pointer(Void).null)
      Gdk::GLAPI.new(value)
    end

    def auto_render=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "auto-render", unsafe_value, Pointer(Void).null)
      value
    end

    def auto_render? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "auto-render", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def context : Gdk::GLContext?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "context", pointerof(value), Pointer(Void).null)
      Gdk::GLContext.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def has_depth_buffer=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-depth-buffer", unsafe_value, Pointer(Void).null)
      value
    end

    def has_depth_buffer? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-depth-buffer", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_stencil_buffer=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-stencil-buffer", unsafe_value, Pointer(Void).null)
      value
    end

    def has_stencil_buffer? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-stencil-buffer", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def use_es=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-es", unsafe_value, Pointer(Void).null)
      value
    end

    def use_es? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-es", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # gtk_gl_area_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gl_area_new

      # Return value handling
      Gtk::GLArea.new(_retval, GICrystal::Transfer::Full)
    end

    def attach_buffers : Nil
      # gtk_gl_area_attach_buffers: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_attach_buffers(to_unsafe)

      # Return value handling
    end

    def allowed_apis : Gdk::GLAPI
      # gtk_gl_area_get_allowed_apis: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gl_area_get_allowed_apis(to_unsafe)

      # Return value handling
      Gdk::GLAPI.new(_retval)
    end

    def api : Gdk::GLAPI
      # gtk_gl_area_get_api: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gl_area_get_api(to_unsafe)

      # Return value handling
      Gdk::GLAPI.new(_retval)
    end

    def auto_render : Bool
      # gtk_gl_area_get_auto_render: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gl_area_get_auto_render(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context : Gdk::GLContext?
      # gtk_gl_area_get_context: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_gl_area_get_context(to_unsafe)

      # Return value handling
      Gdk::GLContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def error : GLib::Error?
      # gtk_gl_area_get_error: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_gl_area_get_error(to_unsafe)

      # Return value handling
      Gtk.gerror_to_crystal(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def has_depth_buffer : Bool
      # gtk_gl_area_get_has_depth_buffer: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gl_area_get_has_depth_buffer(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_stencil_buffer : Bool
      # gtk_gl_area_get_has_stencil_buffer: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gl_area_get_has_stencil_buffer(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def required_version(major : Int32, minor : Int32) : Nil
      # gtk_gl_area_get_required_version: (Method)
      # @major: (out) (transfer full)
      # @minor: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_get_required_version(to_unsafe, major, minor)

      # Return value handling
    end

    @[Deprecated]
    def use_es : Bool
      # gtk_gl_area_get_use_es: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_gl_area_get_use_es(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_current : Nil
      # gtk_gl_area_make_current: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_make_current(to_unsafe)

      # Return value handling
    end

    def queue_render : Nil
      # gtk_gl_area_queue_render: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_queue_render(to_unsafe)

      # Return value handling
    end

    def allowed_apis=(apis : Gdk::GLAPI) : Nil
      # gtk_gl_area_set_allowed_apis: (Method | Setter)
      # @apis:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_set_allowed_apis(to_unsafe, apis)

      # Return value handling
    end

    def auto_render=(auto_render : Bool) : Nil
      # gtk_gl_area_set_auto_render: (Method | Setter)
      # @auto_render:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_set_auto_render(to_unsafe, auto_render)

      # Return value handling
    end

    def error=(error : GLib::Error?) : Nil
      # gtk_gl_area_set_error: (Method)
      # @error: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      error = if error.nil?
                Pointer(LibGLib::Error).null
              else
                error.to_unsafe
              end

      # C call
      LibGtk.gtk_gl_area_set_error(to_unsafe, error)

      # Return value handling
    end

    def has_depth_buffer=(has_depth_buffer : Bool) : Nil
      # gtk_gl_area_set_has_depth_buffer: (Method | Setter)
      # @has_depth_buffer:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_set_has_depth_buffer(to_unsafe, has_depth_buffer)

      # Return value handling
    end

    def has_stencil_buffer=(has_stencil_buffer : Bool) : Nil
      # gtk_gl_area_set_has_stencil_buffer: (Method | Setter)
      # @has_stencil_buffer:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_set_has_stencil_buffer(to_unsafe, has_stencil_buffer)

      # Return value handling
    end

    def set_required_version(major : Int32, minor : Int32) : Nil
      # gtk_gl_area_set_required_version: (Method)
      # @major:
      # @minor:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_set_required_version(to_unsafe, major, minor)

      # Return value handling
    end

    @[Deprecated]
    def use_es=(use_es : Bool) : Nil
      # gtk_gl_area_set_use_es: (Method | Setter)
      # @use_es:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_gl_area_set_use_es(to_unsafe, use_es)

      # Return value handling
    end

    struct CreateContextSignal < GObject::Signal
      def name : String
        @detail ? "create-context::#{@detail}" : "create-context"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::GLContext)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::GLContext), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Gdk::GLContext)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GLArea, Gdk::GLContext), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::GLArea.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::GLArea, Gdk::GLContext)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "create-context")
      end
    end

    def create_context_signal
      CreateContextSignal.new(self)
    end

    struct RenderSignal < GObject::Signal
      def name : String
        @detail ? "render::#{@detail}" : "render"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::GLContext, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::GLContext, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = Gdk::GLContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::GLContext, Bool)).unbox(_lib_box).call(context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GLArea, Gdk::GLContext, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::GLArea.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context = Gdk::GLContext.new(lib_context, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::GLArea, Gdk::GLContext, Bool)).unbox(_lib_box).call(_sender, context)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context : Gdk::GLContext) : Nil
        LibGObject.g_signal_emit_by_name(@source, "render", context)
      end
    end

    def render_signal
      RenderSignal.new(self)
    end

    struct ResizeSignal < GObject::Signal
      def name : String
        @detail ? "resize::#{@detail}" : "resize"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_width : Int32, lib_height : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          width = lib_width
          # NoStrategy
          height = lib_height
          ::Box(Proc(Int32, Int32, Nil)).unbox(_lib_box).call(width, height)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::GLArea, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_width : Int32, lib_height : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::GLArea.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          width = lib_width
          # NoStrategy
          height = lib_height
          ::Box(Proc(Gtk::GLArea, Int32, Int32, Nil)).unbox(_lib_box).call(_sender, width, height)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(width : Int32, height : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "resize", width, height)
      end
    end

    def resize_signal
      ResizeSignal.new(self)
    end

    # render: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_render_vfunc(impl_method_name)
      private def self._vfunc_render(%this : Pointer(Void), lib_context :  Pointer(Void), ) : LibC::Int
        # @context: 

# Generator::BuiltInTypeArgPlan
context=Gdk::GLContext.new(lib_context, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_render(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # render: (None)
    # @context:
    # Returns: (transfer none)
    private macro _register_unsafe_render_vfunc(impl_method_name)
      private def self._vfunc_unsafe_render(%this : Pointer(Void), lib_context :  Pointer(Void), ) : LibC::Int
# @context: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 408).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_render = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_render(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_render : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # resize: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_resize_vfunc(impl_method_name)
      private def self._vfunc_resize(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, ) : Void
        # @width: 
# @height: 

width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(width, height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_resize(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # resize: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_resize_vfunc(impl_method_name)
      private def self._vfunc_unsafe_resize(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, ) : Void
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 416).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_resize = Proc(Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_resize(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_resize : Proc(Pointer(Void), Int32, Int32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
