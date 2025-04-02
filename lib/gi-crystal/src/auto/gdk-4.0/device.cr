require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Device < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Device, g_object_get_qdata)

    # Initialize a new `Device`.
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

    def initialize(*, active_layout_index : Int32? = nil, caps_lock_state : Bool? = nil, direction : Pango::Direction? = nil, display : Gdk::Display? = nil, has_bidi_layouts : Bool? = nil, has_cursor : Bool? = nil, layout_names : Enumerable(::String)? = nil, modifier_state : Gdk::ModifierType? = nil, n_axes : UInt32? = nil, name : ::String? = nil, num_lock_state : Bool? = nil, num_touches : UInt32? = nil, product_id : ::String? = nil, scroll_lock_state : Bool? = nil, seat : Gdk::Seat? = nil, source : Gdk::InputSource? = nil, tool : Gdk::DeviceTool? = nil, vendor_id : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[18]
      _values = StaticArray(LibGObject::Value, 18).new(LibGObject::Value.new)
      _n = 0

      if !active_layout_index.nil?
        (_names.to_unsafe + _n).value = "active-layout-index".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, active_layout_index)
        _n += 1
      end
      if !caps_lock_state.nil?
        (_names.to_unsafe + _n).value = "caps-lock-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, caps_lock_state)
        _n += 1
      end
      if !direction.nil?
        (_names.to_unsafe + _n).value = "direction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, direction)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !has_bidi_layouts.nil?
        (_names.to_unsafe + _n).value = "has-bidi-layouts".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_bidi_layouts)
        _n += 1
      end
      if !has_cursor.nil?
        (_names.to_unsafe + _n).value = "has-cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_cursor)
        _n += 1
      end
      if !layout_names.nil?
        (_names.to_unsafe + _n).value = "layout-names".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_names)
        _n += 1
      end
      if !modifier_state.nil?
        (_names.to_unsafe + _n).value = "modifier-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, modifier_state)
        _n += 1
      end
      if !n_axes.nil?
        (_names.to_unsafe + _n).value = "n-axes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, n_axes)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !num_lock_state.nil?
        (_names.to_unsafe + _n).value = "num-lock-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, num_lock_state)
        _n += 1
      end
      if !num_touches.nil?
        (_names.to_unsafe + _n).value = "num-touches".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, num_touches)
        _n += 1
      end
      if !product_id.nil?
        (_names.to_unsafe + _n).value = "product-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, product_id)
        _n += 1
      end
      if !scroll_lock_state.nil?
        (_names.to_unsafe + _n).value = "scroll-lock-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scroll_lock_state)
        _n += 1
      end
      if !seat.nil?
        (_names.to_unsafe + _n).value = "seat".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, seat)
        _n += 1
      end
      if !source.nil?
        (_names.to_unsafe + _n).value = "source".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, source)
        _n += 1
      end
      if !tool.nil?
        (_names.to_unsafe + _n).value = "tool".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tool)
        _n += 1
      end
      if !vendor_id.nil?
        (_names.to_unsafe + _n).value = "vendor-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vendor_id)
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
      @@g_type ||= LibGdk.gdk_device_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Device.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def active_layout_index : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "active-layout-index", pointerof(value), Pointer(Void).null)
      value
    end

    def caps_lock_state? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "caps-lock-state", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def direction : Pango::Direction
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "direction", pointerof(value), Pointer(Void).null)
      Pango::Direction.new(value)
    end

    def display=(value : Gdk::Display?) : Gdk::Display?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "display", unsafe_value, Pointer(Void).null)
      value
    end

    def display : Gdk::Display?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "display", pointerof(value), Pointer(Void).null)
      Gdk::Display.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def has_bidi_layouts? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-bidi-layouts", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_cursor=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "has-cursor", unsafe_value, Pointer(Void).null)
      value
    end

    def has_cursor? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-cursor", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def layout_names : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "layout-names", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def modifier_state : Gdk::ModifierType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "modifier-state", pointerof(value), Pointer(Void).null)
      Gdk::ModifierType.new(value)
    end

    def n_axes : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "n-axes", pointerof(value), Pointer(Void).null)
      value
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def num_lock_state? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "num-lock-state", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def num_touches=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "num-touches", unsafe_value, Pointer(Void).null)
      value
    end

    def num_touches : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "num-touches", pointerof(value), Pointer(Void).null)
      value
    end

    def product_id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "product-id", unsafe_value, Pointer(Void).null)
      value
    end

    def product_id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "product-id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#product_id` property to nil.
    def product_id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "product-id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#product_id`, but can return nil.
    def product_id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "product-id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def scroll_lock_state? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "scroll-lock-state", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def seat=(value : Gdk::Seat?) : Gdk::Seat?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "seat", unsafe_value, Pointer(Void).null)
      value
    end

    def seat : Gdk::Seat?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "seat", pointerof(value), Pointer(Void).null)
      Gdk::Seat.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def source=(value : Gdk::InputSource) : Gdk::InputSource
      unsafe_value = value

      LibGObject.g_object_set(self, "source", unsafe_value, Pointer(Void).null)
      value
    end

    def source : Gdk::InputSource
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "source", pointerof(value), Pointer(Void).null)
      Gdk::InputSource.new(value)
    end

    def tool : Gdk::DeviceTool?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tool", pointerof(value), Pointer(Void).null)
      Gdk::DeviceTool.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def vendor_id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "vendor-id", unsafe_value, Pointer(Void).null)
      value
    end

    def vendor_id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "vendor-id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#vendor_id` property to nil.
    def vendor_id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "vendor-id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#vendor_id`, but can return nil.
    def vendor_id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "vendor-id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def active_layout_index : Int32
      # gdk_device_get_active_layout_index: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_active_layout_index(to_unsafe)

      # Return value handling
      _retval
    end

    def caps_lock_state : Bool
      # gdk_device_get_caps_lock_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_caps_lock_state(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def device_tool : Gdk::DeviceTool?
      # gdk_device_get_device_tool: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_device_get_device_tool(to_unsafe)

      # Return value handling
      Gdk::DeviceTool.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def direction : Pango::Direction
      # gdk_device_get_direction: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_direction(to_unsafe)

      # Return value handling
      Pango::Direction.new(_retval)
    end

    def display : Gdk::Display
      # gdk_device_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def has_cursor : Bool
      # gdk_device_get_has_cursor: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_has_cursor(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def layout_names : Enumerable(::String)?
      # gdk_device_get_layout_names: (Method | Getter)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGdk.gdk_device_get_layout_names(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def modifier_state : Gdk::ModifierType
      # gdk_device_get_modifier_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_modifier_state(to_unsafe)

      # Return value handling
      Gdk::ModifierType.new(_retval)
    end

    def name : ::String
      # gdk_device_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def num_lock_state : Bool
      # gdk_device_get_num_lock_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_num_lock_state(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def num_touches : UInt32
      # gdk_device_get_num_touches: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_num_touches(to_unsafe)

      # Return value handling
      _retval
    end

    def product_id : ::String?
      # gdk_device_get_product_id: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_device_get_product_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def scroll_lock_state : Bool
      # gdk_device_get_scroll_lock_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_scroll_lock_state(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def seat : Gdk::Seat
      # gdk_device_get_seat: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_seat(to_unsafe)

      # Return value handling
      Gdk::Seat.new(_retval, GICrystal::Transfer::None)
    end

    def source : Gdk::InputSource
      # gdk_device_get_source: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_source(to_unsafe)

      # Return value handling
      Gdk::InputSource.new(_retval)
    end

    def surface_at_position : Gdk::Surface?
      # gdk_device_get_surface_at_position: (Method)
      # @win_x: (out) (transfer full) (optional)
      # @win_y: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable)

      # Generator::OutArgUsedInReturnPlan
      win_x = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      win_y = Pointer(Float64).null
      # C call
      _retval = LibGdk.gdk_device_get_surface_at_position(to_unsafe, win_x, win_y)

      # Return value handling
      Gdk::Surface.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def timestamp : UInt32
      # gdk_device_get_timestamp: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_get_timestamp(to_unsafe)

      # Return value handling
      _retval
    end

    def vendor_id : ::String?
      # gdk_device_get_vendor_id: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_device_get_vendor_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def has_bidi_layouts : Bool
      # gdk_device_has_bidi_layouts: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_has_bidi_layouts(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
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

      def connect(handler : Proc(Gdk::Device, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Device.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Device, Nil)).unbox(_lib_box).call(_sender)
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

    struct ToolChangedSignal < GObject::Signal
      def name : String
        @detail ? "tool-changed::#{@detail}" : "tool-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::DeviceTool, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::DeviceTool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tool : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          tool = Gdk::DeviceTool.new(lib_tool, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::DeviceTool, Nil)).unbox(_lib_box).call(tool)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::Device, Gdk::DeviceTool, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_tool : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Device.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tool = Gdk::DeviceTool.new(lib_tool, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Device, Gdk::DeviceTool, Nil)).unbox(_lib_box).call(_sender, tool)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(tool : Gdk::DeviceTool) : Nil
        LibGObject.g_signal_emit_by_name(@source, "tool-changed", tool)
      end
    end

    def tool_changed_signal
      ToolChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
