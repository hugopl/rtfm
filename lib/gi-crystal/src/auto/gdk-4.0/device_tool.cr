require "../g_object-2.0/object"

module Gdk
  @[GICrystal::GeneratedWrapper]
  class DeviceTool < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DeviceTool, g_object_get_qdata)

    # Initialize a new `DeviceTool`.
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

    def initialize(*, axes : Gdk::AxisFlags? = nil, hardware_id : UInt64? = nil, serial : UInt64? = nil, tool_type : Gdk::DeviceToolType? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !axes.nil?
        (_names.to_unsafe + _n).value = "axes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, axes)
        _n += 1
      end
      if !hardware_id.nil?
        (_names.to_unsafe + _n).value = "hardware-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hardware_id)
        _n += 1
      end
      if !serial.nil?
        (_names.to_unsafe + _n).value = "serial".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, serial)
        _n += 1
      end
      if !tool_type.nil?
        (_names.to_unsafe + _n).value = "tool-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tool_type)
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
      @@g_type ||= LibGdk.gdk_device_tool_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::DeviceTool.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def axes=(value : Gdk::AxisFlags) : Gdk::AxisFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "axes", unsafe_value, Pointer(Void).null)
      value
    end

    def axes : Gdk::AxisFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "axes", pointerof(value), Pointer(Void).null)
      Gdk::AxisFlags.new(value)
    end

    def hardware_id=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "hardware-id", unsafe_value, Pointer(Void).null)
      value
    end

    def hardware_id : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "hardware-id", pointerof(value), Pointer(Void).null)
      value
    end

    def serial=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "serial", unsafe_value, Pointer(Void).null)
      value
    end

    def serial : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "serial", pointerof(value), Pointer(Void).null)
      value
    end

    def tool_type=(value : Gdk::DeviceToolType) : Gdk::DeviceToolType
      unsafe_value = value

      LibGObject.g_object_set(self, "tool-type", unsafe_value, Pointer(Void).null)
      value
    end

    def tool_type : Gdk::DeviceToolType
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "tool-type", pointerof(value), Pointer(Void).null)
      Gdk::DeviceToolType.new(value)
    end

    def axes : Gdk::AxisFlags
      # gdk_device_tool_get_axes: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_tool_get_axes(to_unsafe)

      # Return value handling
      Gdk::AxisFlags.new(_retval)
    end

    def hardware_id : UInt64
      # gdk_device_tool_get_hardware_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_tool_get_hardware_id(to_unsafe)

      # Return value handling
      _retval
    end

    def serial : UInt64
      # gdk_device_tool_get_serial: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_tool_get_serial(to_unsafe)

      # Return value handling
      _retval
    end

    def tool_type : Gdk::DeviceToolType
      # gdk_device_tool_get_tool_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_device_tool_get_tool_type(to_unsafe)

      # Return value handling
      Gdk::DeviceToolType.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
