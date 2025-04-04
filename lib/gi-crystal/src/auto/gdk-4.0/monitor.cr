require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class Monitor < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGdk::MonitorClass), class_init,
        sizeof(LibGdk::Monitor), instance_init, 0)
    end

    GICrystal.declare_new_method(Monitor, g_object_get_qdata)

    # Initialize a new `Monitor`.
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

    def initialize(*, connector : ::String? = nil, description : ::String? = nil, display : Gdk::Display? = nil, geometry : Gdk::Rectangle? = nil, height_mm : Int32? = nil, manufacturer : ::String? = nil, model : ::String? = nil, refresh_rate : Int32? = nil, scale : Float64? = nil, scale_factor : Int32? = nil, subpixel_layout : Gdk::SubpixelLayout? = nil, valid : Bool? = nil, width_mm : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[13]
      _values = StaticArray(LibGObject::Value, 13).new(LibGObject::Value.new)
      _n = 0

      if !connector.nil?
        (_names.to_unsafe + _n).value = "connector".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, connector)
        _n += 1
      end
      if !description.nil?
        (_names.to_unsafe + _n).value = "description".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, description)
        _n += 1
      end
      if !display.nil?
        (_names.to_unsafe + _n).value = "display".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display)
        _n += 1
      end
      if !geometry.nil?
        (_names.to_unsafe + _n).value = "geometry".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, geometry)
        _n += 1
      end
      if !height_mm.nil?
        (_names.to_unsafe + _n).value = "height-mm".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height_mm)
        _n += 1
      end
      if !manufacturer.nil?
        (_names.to_unsafe + _n).value = "manufacturer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, manufacturer)
        _n += 1
      end
      if !model.nil?
        (_names.to_unsafe + _n).value = "model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, model)
        _n += 1
      end
      if !refresh_rate.nil?
        (_names.to_unsafe + _n).value = "refresh-rate".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, refresh_rate)
        _n += 1
      end
      if !scale.nil?
        (_names.to_unsafe + _n).value = "scale".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !subpixel_layout.nil?
        (_names.to_unsafe + _n).value = "subpixel-layout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, subpixel_layout)
        _n += 1
      end
      if !valid.nil?
        (_names.to_unsafe + _n).value = "valid".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valid)
        _n += 1
      end
      if !width_mm.nil?
        (_names.to_unsafe + _n).value = "width-mm".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_mm)
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
      @@g_type ||= LibGdk.gdk_monitor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::Monitor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def connector : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "connector", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#connector`, but can return nil.
    def connector? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "connector", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def description : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "description", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#description`, but can return nil.
    def description? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "description", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def geometry : Gdk::Rectangle?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "geometry", pointerof(value), Pointer(Void).null)
      Gdk::Rectangle.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def height_mm : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "height-mm", pointerof(value), Pointer(Void).null)
      value
    end

    def manufacturer : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "manufacturer", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#manufacturer`, but can return nil.
    def manufacturer? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "manufacturer", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def model : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#model`, but can return nil.
    def model? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def refresh_rate : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "refresh-rate", pointerof(value), Pointer(Void).null)
      value
    end

    def scale : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "scale", pointerof(value), Pointer(Void).null)
      value
    end

    def scale_factor : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "scale-factor", pointerof(value), Pointer(Void).null)
      value
    end

    def subpixel_layout : Gdk::SubpixelLayout
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "subpixel-layout", pointerof(value), Pointer(Void).null)
      Gdk::SubpixelLayout.new(value)
    end

    def valid? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "valid", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def width_mm : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width-mm", pointerof(value), Pointer(Void).null)
      value
    end

    def connector : ::String?
      # gdk_monitor_get_connector: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_monitor_get_connector(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def description : ::String?
      # gdk_monitor_get_description: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_monitor_get_description(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display : Gdk::Display
      # gdk_monitor_get_display: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_get_display(to_unsafe)

      # Return value handling
      Gdk::Display.new(_retval, GICrystal::Transfer::None)
    end

    def geometry : Gdk::Rectangle
      # gdk_monitor_get_geometry: (Method | Getter)
      # @geometry: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      geometry = Gdk::Rectangle.new
      # C call
      LibGdk.gdk_monitor_get_geometry(to_unsafe, geometry)

      # Return value handling
      geometry
    end

    def height_mm : Int32
      # gdk_monitor_get_height_mm: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_get_height_mm(to_unsafe)

      # Return value handling
      _retval
    end

    def manufacturer : ::String?
      # gdk_monitor_get_manufacturer: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_monitor_get_manufacturer(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def model : ::String?
      # gdk_monitor_get_model: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGdk.gdk_monitor_get_model(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def refresh_rate : Int32
      # gdk_monitor_get_refresh_rate: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_get_refresh_rate(to_unsafe)

      # Return value handling
      _retval
    end

    def scale : Float64
      # gdk_monitor_get_scale: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_get_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def scale_factor : Int32
      # gdk_monitor_get_scale_factor: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_get_scale_factor(to_unsafe)

      # Return value handling
      _retval
    end

    def subpixel_layout : Gdk::SubpixelLayout
      # gdk_monitor_get_subpixel_layout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_get_subpixel_layout(to_unsafe)

      # Return value handling
      Gdk::SubpixelLayout.new(_retval)
    end

    def width_mm : Int32
      # gdk_monitor_get_width_mm: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_get_width_mm(to_unsafe)

      # Return value handling
      _retval
    end

    def is_valid? : Bool
      # gdk_monitor_is_valid: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_monitor_is_valid(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct InvalidateSignal < GObject::Signal
      def name : String
        @detail ? "invalidate::#{@detail}" : "invalidate"
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

      def connect(handler : Proc(Gdk::Monitor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::Monitor.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Monitor, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "invalidate")
      end
    end

    def invalidate_signal
      InvalidateSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
