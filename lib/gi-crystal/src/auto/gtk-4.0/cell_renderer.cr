require "../g_object-2.0/initially_unowned"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CellRenderer < GObject::InitiallyUnowned
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CellRendererClass), class_init,
        sizeof(LibGtk::CellRenderer), instance_init, 0)
    end

    GICrystal.declare_new_method(CellRenderer, g_object_get_qdata)

    # Initialize a new `CellRenderer`.
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

    def initialize(*, cell_background : ::String? = nil, cell_background_rgba : Gdk::RGBA? = nil, cell_background_set : Bool? = nil, editing : Bool? = nil, height : Int32? = nil, is_expanded : Bool? = nil, is_expander : Bool? = nil, mode : Gtk::CellRendererMode? = nil, sensitive : Bool? = nil, visible : Bool? = nil, width : Int32? = nil, xalign : Float32? = nil, xpad : UInt32? = nil, yalign : Float32? = nil, ypad : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[15]
      _values = StaticArray(LibGObject::Value, 15).new(LibGObject::Value.new)
      _n = 0

      if !cell_background.nil?
        (_names.to_unsafe + _n).value = "cell-background".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cell_background)
        _n += 1
      end
      if !cell_background_rgba.nil?
        (_names.to_unsafe + _n).value = "cell-background-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cell_background_rgba)
        _n += 1
      end
      if !cell_background_set.nil?
        (_names.to_unsafe + _n).value = "cell-background-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cell_background_set)
        _n += 1
      end
      if !editing.nil?
        (_names.to_unsafe + _n).value = "editing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editing)
        _n += 1
      end
      if !height.nil?
        (_names.to_unsafe + _n).value = "height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height)
        _n += 1
      end
      if !is_expanded.nil?
        (_names.to_unsafe + _n).value = "is-expanded".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_expanded)
        _n += 1
      end
      if !is_expander.nil?
        (_names.to_unsafe + _n).value = "is-expander".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_expander)
        _n += 1
      end
      if !mode.nil?
        (_names.to_unsafe + _n).value = "mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mode)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !width.nil?
        (_names.to_unsafe + _n).value = "width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width)
        _n += 1
      end
      if !xalign.nil?
        (_names.to_unsafe + _n).value = "xalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, xalign)
        _n += 1
      end
      if !xpad.nil?
        (_names.to_unsafe + _n).value = "xpad".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, xpad)
        _n += 1
      end
      if !yalign.nil?
        (_names.to_unsafe + _n).value = "yalign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, yalign)
        _n += 1
      end
      if !ypad.nil?
        (_names.to_unsafe + _n).value = "ypad".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ypad)
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
      @@g_type ||= LibGtk.gtk_cell_renderer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CellRenderer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def cell_background=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "cell-background", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#cell_background` property to nil.
    def cell_background=(value : Nil) : Nil
      LibGObject.g_object_set(self, "cell-background", Pointer(Void).null, Pointer(Void).null)
    end

    def cell_background_rgba=(value : Gdk::RGBA?) : Gdk::RGBA?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "cell-background-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def cell_background_rgba : Gdk::RGBA?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "cell-background-rgba", pointerof(value), Pointer(Void).null)
      Gdk::RGBA.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def cell_background_set=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "cell-background-set", unsafe_value, Pointer(Void).null)
      value
    end

    def cell_background_set? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "cell-background-set", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def editing? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "editing", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def height=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "height", unsafe_value, Pointer(Void).null)
      value
    end

    def height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "height", pointerof(value), Pointer(Void).null)
      value
    end

    def is_expanded=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-expanded", unsafe_value, Pointer(Void).null)
      value
    end

    def is_expanded? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-expanded", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_expander=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-expander", unsafe_value, Pointer(Void).null)
      value
    end

    def is_expander? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-expander", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def mode=(value : Gtk::CellRendererMode) : Gtk::CellRendererMode
      unsafe_value = value

      LibGObject.g_object_set(self, "mode", unsafe_value, Pointer(Void).null)
      value
    end

    def mode : Gtk::CellRendererMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "mode", pointerof(value), Pointer(Void).null)
      Gtk::CellRendererMode.new(value)
    end

    def sensitive=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "sensitive", unsafe_value, Pointer(Void).null)
      value
    end

    def sensitive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "sensitive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def visible=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "visible", unsafe_value, Pointer(Void).null)
      value
    end

    def visible? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "visible", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def width=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "width", unsafe_value, Pointer(Void).null)
      value
    end

    def width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width", pointerof(value), Pointer(Void).null)
      value
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

    def xpad=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "xpad", unsafe_value, Pointer(Void).null)
      value
    end

    def xpad : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "xpad", pointerof(value), Pointer(Void).null)
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

    def ypad=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "ypad", unsafe_value, Pointer(Void).null)
      value
    end

    def ypad : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "ypad", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def activate(event : Gdk::Event, widget : Gtk::Widget, path : ::String, background_area : Gdk::Rectangle, cell_area : Gdk::Rectangle, flags : Gtk::CellRendererState) : Bool
      # gtk_cell_renderer_activate: (Method)
      # @event:
      # @widget:
      # @path:
      # @background_area:
      # @cell_area:
      # @flags:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_renderer_activate(to_unsafe, event, widget, path, background_area, cell_area, flags)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def aligned_area(widget : Gtk::Widget, flags : Gtk::CellRendererState, cell_area : Gdk::Rectangle) : Gdk::Rectangle
      # gtk_cell_renderer_get_aligned_area: (Method)
      # @widget:
      # @flags:
      # @cell_area:
      # @aligned_area: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      aligned_area = Gdk::Rectangle.new
      # C call
      LibGtk.gtk_cell_renderer_get_aligned_area(to_unsafe, widget, flags, cell_area, aligned_area)

      # Return value handling
      aligned_area
    end

    @[Deprecated]
    def alignment : Nil
      # gtk_cell_renderer_get_alignment: (Method)
      # @xalign: (out) (transfer full) (optional)
      # @yalign: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      xalign = Pointer(Float32).null # Generator::OutArgUsedInReturnPlan
      yalign = Pointer(Float32).null
      # C call
      LibGtk.gtk_cell_renderer_get_alignment(to_unsafe, xalign, yalign)

      # Return value handling
    end

    @[Deprecated]
    def fixed_size : Nil
      # gtk_cell_renderer_get_fixed_size: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_renderer_get_fixed_size(to_unsafe, width, height)

      # Return value handling
    end

    @[Deprecated]
    def is_expanded : Bool
      # gtk_cell_renderer_get_is_expanded: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_renderer_get_is_expanded(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def is_expander : Bool
      # gtk_cell_renderer_get_is_expander: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_renderer_get_is_expander(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def padding : Nil
      # gtk_cell_renderer_get_padding: (Method)
      # @xpad: (out) (transfer full) (optional)
      # @ypad: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      xpad = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      ypad = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_renderer_get_padding(to_unsafe, xpad, ypad)

      # Return value handling
    end

    @[Deprecated]
    def preferred_height(widget : Gtk::Widget) : Nil
      # gtk_cell_renderer_get_preferred_height: (Method)
      # @widget:
      # @minimum_size: (out) (transfer full) (optional)
      # @natural_size: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_size = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_size = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_renderer_get_preferred_height(to_unsafe, widget, minimum_size, natural_size)

      # Return value handling
    end

    @[Deprecated]
    def preferred_height_for_width(widget : Gtk::Widget, width : Int32) : Nil
      # gtk_cell_renderer_get_preferred_height_for_width: (Method)
      # @widget:
      # @width:
      # @minimum_height: (out) (transfer full) (optional)
      # @natural_height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_height = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_height = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_renderer_get_preferred_height_for_width(to_unsafe, widget, width, minimum_height, natural_height)

      # Return value handling
    end

    @[Deprecated]
    def preferred_size(widget : Gtk::Widget) : Gtk::Requisition
      # gtk_cell_renderer_get_preferred_size: (Method)
      # @widget:
      # @minimum_size: (out) (caller-allocates) (optional)
      # @natural_size: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_size = Pointer(Void).null   # Generator::CallerAllocatesPlan
      minimum_size = Gtk::Requisition.new # Generator::OutArgUsedInReturnPlan
      natural_size = Pointer(Void).null   # Generator::CallerAllocatesPlan
      natural_size = Gtk::Requisition.new
      # C call
      LibGtk.gtk_cell_renderer_get_preferred_size(to_unsafe, widget, minimum_size, natural_size)

      # Return value handling
      minimum_size
    end

    @[Deprecated]
    def preferred_width(widget : Gtk::Widget) : Nil
      # gtk_cell_renderer_get_preferred_width: (Method)
      # @widget:
      # @minimum_size: (out) (transfer full) (optional)
      # @natural_size: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_size = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_size = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_renderer_get_preferred_width(to_unsafe, widget, minimum_size, natural_size)

      # Return value handling
    end

    @[Deprecated]
    def preferred_width_for_height(widget : Gtk::Widget, height : Int32) : Nil
      # gtk_cell_renderer_get_preferred_width_for_height: (Method)
      # @widget:
      # @height:
      # @minimum_width: (out) (transfer full) (optional)
      # @natural_width: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_width = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_renderer_get_preferred_width_for_height(to_unsafe, widget, height, minimum_width, natural_width)

      # Return value handling
    end

    @[Deprecated]
    def request_mode : Gtk::SizeRequestMode
      # gtk_cell_renderer_get_request_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_renderer_get_request_mode(to_unsafe)

      # Return value handling
      Gtk::SizeRequestMode.new(_retval)
    end

    @[Deprecated]
    def sensitive : Bool
      # gtk_cell_renderer_get_sensitive: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_renderer_get_sensitive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def state(widget : Gtk::Widget?, cell_state : Gtk::CellRendererState) : Gtk::StateFlags
      # gtk_cell_renderer_get_state: (Method)
      # @widget: (nullable)
      # @cell_state:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      widget = if widget.nil?
                 Pointer(Void).null
               else
                 widget.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_cell_renderer_get_state(to_unsafe, widget, cell_state)

      # Return value handling
      Gtk::StateFlags.new(_retval)
    end

    @[Deprecated]
    def visible : Bool
      # gtk_cell_renderer_get_visible: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_renderer_get_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def is_activatable : Bool
      # gtk_cell_renderer_is_activatable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_renderer_is_activatable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def set_alignment(xalign : Float32, yalign : Float32) : Nil
      # gtk_cell_renderer_set_alignment: (Method)
      # @xalign:
      # @yalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_set_alignment(to_unsafe, xalign, yalign)

      # Return value handling
    end

    @[Deprecated]
    def set_fixed_size(width : Int32, height : Int32) : Nil
      # gtk_cell_renderer_set_fixed_size: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_set_fixed_size(to_unsafe, width, height)

      # Return value handling
    end

    @[Deprecated]
    def is_expanded=(is_expanded : Bool) : Nil
      # gtk_cell_renderer_set_is_expanded: (Method | Setter)
      # @is_expanded:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_set_is_expanded(to_unsafe, is_expanded)

      # Return value handling
    end

    @[Deprecated]
    def is_expander=(is_expander : Bool) : Nil
      # gtk_cell_renderer_set_is_expander: (Method | Setter)
      # @is_expander:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_set_is_expander(to_unsafe, is_expander)

      # Return value handling
    end

    @[Deprecated]
    def set_padding(xpad : Int32, ypad : Int32) : Nil
      # gtk_cell_renderer_set_padding: (Method)
      # @xpad:
      # @ypad:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_set_padding(to_unsafe, xpad, ypad)

      # Return value handling
    end

    @[Deprecated]
    def sensitive=(sensitive : Bool) : Nil
      # gtk_cell_renderer_set_sensitive: (Method | Setter)
      # @sensitive:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_set_sensitive(to_unsafe, sensitive)

      # Return value handling
    end

    @[Deprecated]
    def visible=(visible : Bool) : Nil
      # gtk_cell_renderer_set_visible: (Method | Setter)
      # @visible:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_set_visible(to_unsafe, visible)

      # Return value handling
    end

    @[Deprecated]
    def snapshot(snapshot : Gtk::Snapshot, widget : Gtk::Widget, background_area : Gdk::Rectangle, cell_area : Gdk::Rectangle, flags : Gtk::CellRendererState) : Nil
      # gtk_cell_renderer_snapshot: (Method)
      # @snapshot:
      # @widget:
      # @background_area:
      # @cell_area:
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_snapshot(to_unsafe, snapshot, widget, background_area, cell_area, flags)

      # Return value handling
    end

    @[Deprecated]
    def start_editing(event : Gdk::Event?, widget : Gtk::Widget, path : ::String, background_area : Gdk::Rectangle, cell_area : Gdk::Rectangle, flags : Gtk::CellRendererState) : Gtk::CellEditable?
      # gtk_cell_renderer_start_editing: (Method)
      # @event: (nullable)
      # @widget:
      # @path:
      # @background_area:
      # @cell_area:
      # @flags:
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      event = if event.nil?
                Pointer(Void).null
              else
                event.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_cell_renderer_start_editing(to_unsafe, event, widget, path, background_area, cell_area, flags)

      # Return value handling
      Gtk::AbstractCellEditable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def stop_editing(canceled : Bool) : Nil
      # gtk_cell_renderer_stop_editing: (Method)
      # @canceled:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_renderer_stop_editing(to_unsafe, canceled)

      # Return value handling
    end

    struct EditingCanceledSignal < GObject::Signal
      def name : String
        @detail ? "editing-canceled::#{@detail}" : "editing-canceled"
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

      def connect(handler : Proc(Gtk::CellRenderer, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::CellRenderer.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::CellRenderer, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "editing-canceled")
      end
    end

    def editing_canceled_signal
      EditingCanceledSignal.new(self)
    end

    struct EditingStartedSignal < GObject::Signal
      def name : String
        @detail ? "editing-started::#{@detail}" : "editing-started"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::CellEditable, ::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::CellEditable, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_editable : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          editable = Gtk::AbstractCellEditable.new(lib_editable, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(Gtk::CellEditable, ::String, Nil)).unbox(_lib_box).call(editable, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::CellRenderer, Gtk::CellEditable, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_editable : Pointer(Void), lib_path : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gtk::CellRenderer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          editable = Gtk::AbstractCellEditable.new(lib_editable, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = ::String.new(lib_path)
          ::Box(Proc(Gtk::CellRenderer, Gtk::CellEditable, ::String, Nil)).unbox(_lib_box).call(_sender, editable, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(editable : Gtk::CellEditable, path : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "editing-started", editable, path)
      end
    end

    def editing_started_signal
      EditingStartedSignal.new(self)
    end

    # activate: (None)
    # @event:
    # @widget:
    # @path:
    # @background_area:
    # @cell_area:
    # @flags:
    # Returns: (transfer none)
    private macro _register_activate_vfunc(impl_method_name)
      private def self._vfunc_activate(%this : Pointer(Void), lib_event :  Pointer(Void), lib_widget :  Pointer(Void), lib_path :  Pointer(LibC::Char), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : LibC::Int
        # @event: 
# @widget: 
# @path: 
# @background_area: 
# @cell_area: 
# @flags: 

# Generator::BuiltInTypeArgPlan
event=Gdk::Event.new(lib_event, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
path=::String.new(lib_path)
# Generator::BuiltInTypeArgPlan
background_area=Gdk::Rectangle.new(lib_background_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gtk::CellRendererState.new(lib_flags)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(event, widget, path, background_area, cell_area, flags)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # activate: (None)
    # @event:
    # @widget:
    # @path:
    # @background_area:
    # @cell_area:
    # @flags:
    # Returns: (transfer none)
    private macro _register_unsafe_activate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate(%this : Pointer(Void), lib_event :  Pointer(Void), lib_widget :  Pointer(Void), lib_path :  Pointer(LibC::Char), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : LibC::Int
# @event: 
# @widget: 
# @path: 
# @background_area: 
# @cell_area: 
# @flags: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_event, lib_widget, lib_path, lib_background_area, lib_cell_area, lib_flags)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # editing_canceled: (None)
    # Returns: (transfer none)
    private macro _register_editing_canceled_vfunc(impl_method_name)
      private def self._vfunc_editing_canceled(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_editing_canceled(Pointer(Void))).pointer
        previous_def
      end
    end

    # editing_canceled: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_editing_canceled_vfunc(impl_method_name)
      private def self._vfunc_unsafe_editing_canceled(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_editing_canceled = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_editing_canceled(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_editing_canceled : Proc(Pointer(Void), Void)? = nil
    end

    # editing_started: (None)
    # @editable:
    # @path:
    # Returns: (transfer none)
    private macro _register_editing_started_vfunc(impl_method_name)
      private def self._vfunc_editing_started(%this : Pointer(Void), lib_editable :  Pointer(Void), lib_path :  Pointer(LibC::Char), ) : Void
        # @editable: 
# @path: 

# Generator::BuiltInTypeArgPlan
editable=Gtk::AbstractCellEditable.new(lib_editable, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
path=::String.new(lib_path)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(editable, path)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_editing_started(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # editing_started: (None)
    # @editable:
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_editing_started_vfunc(impl_method_name)
      private def self._vfunc_unsafe_editing_started(%this : Pointer(Void), lib_editable :  Pointer(Void), lib_path :  Pointer(LibC::Char), ) : Void
# @editable: 
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_editable, lib_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_editing_started = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_editing_started(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_editing_started : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # get_aligned_area: (None)
    # @widget:
    # @flags:
    # @cell_area:
    # @aligned_area: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_get_aligned_area_vfunc(impl_method_name)
      private def self._vfunc_get_aligned_area(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_flags :  UInt32, lib_cell_area :  Pointer(Void), lib_aligned_area :  Void, ) : Void
        # @widget: 
# @flags: 
# @cell_area: 
# @aligned_area: (out) (caller-allocates) 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gtk::CellRendererState.new(lib_flags)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, flags, cell_area, aligned_area)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_aligned_area(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void)).pointer
        previous_def
      end
    end

    # get_aligned_area: (None)
    # @widget:
    # @flags:
    # @cell_area:
    # @aligned_area: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_unsafe_get_aligned_area_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_aligned_area(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_flags :  UInt32, lib_cell_area :  Pointer(Void), lib_aligned_area :  Void, ) : Void
# @widget: 
# @flags: 
# @cell_area: 
# @aligned_area: (out) (caller-allocates) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_flags, lib_cell_area, lib_aligned_area)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_aligned_area = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_aligned_area(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_aligned_area : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void, Void)? = nil
    end

    # get_preferred_height: (None)
    # @widget:
    # @minimum_size: (out) (transfer full) (optional)
    # @natural_size: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_height_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_height(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_size :  Int32, lib_natural_size :  Int32, ) : Void
        # @widget: 
# @minimum_size: (out) (transfer full) (optional) 
# @natural_size: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, minimum_size, natural_size)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_height(Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_height: (None)
    # @widget:
    # @minimum_size: (out) (transfer full) (optional)
    # @natural_size: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_height_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_height(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_size :  Int32, lib_natural_size :  Int32, ) : Void
# @widget: 
# @minimum_size: (out) (transfer full) (optional) 
# @natural_size: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_minimum_size, lib_natural_size)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_height = Proc(Pointer(Void), Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_height(Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_height : Proc(Pointer(Void), Pointer(Void), Int32, Int32, Void)? = nil
    end

    # get_preferred_height_for_width: (None)
    # @widget:
    # @width:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_height_for_width_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_height_for_width(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_width :  Int32, lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
        # @widget: 
# @width: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
width=lib_width
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, width, minimum_height, natural_height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_height_for_width(Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_height_for_width: (None)
    # @widget:
    # @width:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_height_for_width_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_height_for_width(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_width :  Int32, lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
# @widget: 
# @width: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_width, lib_minimum_height, lib_natural_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_height_for_width = Proc(Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_height_for_width(Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_height_for_width : Proc(Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # get_preferred_width: (None)
    # @widget:
    # @minimum_size: (out) (transfer full) (optional)
    # @natural_size: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_width_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_width(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_size :  Int32, lib_natural_size :  Int32, ) : Void
        # @widget: 
# @minimum_size: (out) (transfer full) (optional) 
# @natural_size: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, minimum_size, natural_size)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_width(Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_width: (None)
    # @widget:
    # @minimum_size: (out) (transfer full) (optional)
    # @natural_size: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_width_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_width(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_minimum_size :  Int32, lib_natural_size :  Int32, ) : Void
# @widget: 
# @minimum_size: (out) (transfer full) (optional) 
# @natural_size: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_minimum_size, lib_natural_size)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_width = Proc(Pointer(Void), Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_width(Pointer(Void), Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_width : Proc(Pointer(Void), Pointer(Void), Int32, Int32, Void)? = nil
    end

    # get_preferred_width_for_height: (None)
    # @widget:
    # @height:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_width_for_height_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_width_for_height(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_height :  Int32, lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
        # @widget: 
# @height: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
height=lib_height
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, height, minimum_width, natural_width)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_width_for_height(Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_width_for_height: (None)
    # @widget:
    # @height:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_width_for_height_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_width_for_height(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_height :  Int32, lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
# @widget: 
# @height: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_height, lib_minimum_width, lib_natural_width)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_width_for_height = Proc(Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_width_for_height(Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_width_for_height : Proc(Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # get_request_mode: (None)
    # Returns: (transfer none)
    private macro _register_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_get_request_mode(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_request_mode(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_request_mode: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_request_mode(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_request_mode = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_request_mode(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_request_mode : Proc(Pointer(Void), UInt32)? = nil
    end

    # snapshot: (None)
    # @snapshot:
    # @widget:
    # @background_area:
    # @cell_area:
    # @flags:
    # Returns: (transfer none)
    private macro _register_snapshot_vfunc(impl_method_name)
      private def self._vfunc_snapshot(%this : Pointer(Void), lib_snapshot :  Pointer(Void), lib_widget :  Pointer(Void), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : Void
        # @snapshot: 
# @widget: 
# @background_area: 
# @cell_area: 
# @flags: 

# Generator::BuiltInTypeArgPlan
snapshot=Gtk::Snapshot.new(lib_snapshot, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
background_area=Gdk::Rectangle.new(lib_background_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gtk::CellRendererState.new(lib_flags)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(snapshot, widget, background_area, cell_area, flags)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_snapshot(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # snapshot: (None)
    # @snapshot:
    # @widget:
    # @background_area:
    # @cell_area:
    # @flags:
    # Returns: (transfer none)
    private macro _register_unsafe_snapshot_vfunc(impl_method_name)
      private def self._vfunc_unsafe_snapshot(%this : Pointer(Void), lib_snapshot :  Pointer(Void), lib_widget :  Pointer(Void), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : Void
# @snapshot: 
# @widget: 
# @background_area: 
# @cell_area: 
# @flags: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_snapshot, lib_widget, lib_background_area, lib_cell_area, lib_flags)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_snapshot = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_snapshot(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_snapshot : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Void)? = nil
    end

    # start_editing: (None)
    # @event: (nullable)
    # @widget:
    # @path:
    # @background_area:
    # @cell_area:
    # @flags:
    # Returns: (transfer none) (nullable)
    private macro _register_start_editing_vfunc(impl_method_name)
      private def self._vfunc_start_editing(%this : Pointer(Void), lib_event :  Pointer(Void), lib_widget :  Pointer(Void), lib_path :  Pointer(LibC::Char), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : Pointer(Void)
        # @event: (nullable) 
# @widget: 
# @path: 
# @background_area: 
# @cell_area: 
# @flags: 

# Generator::NullableArrayPlan
event=(lib_event.null? ? nil : Gdk::Event.new(lib_event, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
event=Gdk::Event.new(lib_event, GICrystal::Transfer::None) unless lib_event.null?
# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
path=::String.new(lib_path)
# Generator::BuiltInTypeArgPlan
background_area=Gdk::Rectangle.new(lib_background_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
cell_area=Gdk::Rectangle.new(lib_cell_area, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gtk::CellRendererState.new(lib_flags)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(event, widget, path, background_area, cell_area, flags)
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_start_editing(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # start_editing: (None)
    # @event: (nullable)
    # @widget:
    # @path:
    # @background_area:
    # @cell_area:
    # @flags:
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_start_editing_vfunc(impl_method_name)
      private def self._vfunc_unsafe_start_editing(%this : Pointer(Void), lib_event :  Pointer(Void), lib_widget :  Pointer(Void), lib_path :  Pointer(LibC::Char), lib_background_area :  Pointer(Void), lib_cell_area :  Pointer(Void), lib_flags :  UInt32, ) : Pointer(Void)
# @event: (nullable) 
# @widget: 
# @path: 
# @background_area: 
# @cell_area: 
# @flags: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_event, lib_widget, lib_path, lib_background_area, lib_cell_area, lib_flags)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_start_editing = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_start_editing(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_start_editing : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
