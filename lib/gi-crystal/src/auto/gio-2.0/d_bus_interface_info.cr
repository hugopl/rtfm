module Gio
  class DBusInterfaceInfo
    @data : LibGio::DBusInterfaceInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusInterfaceInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref_count : Int32? = nil)
      _instance = allocate
      _instance.ref_count = ref_count unless ref_count.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusInterfaceInfo)).zero?
    end

    def ref_count : Int32
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceInfo)).value.ref_count
      value
    end

    def ref_count=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def name!
      self.name.not_nil!
    end

    def name : ::String?
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceInfo)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def methods!
      self.methods.not_nil!
    end

    def methods : Enumerable(Gio::DBusMethodInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceInfo)).value.methods
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def signals!
      self.signals.not_nil!
    end

    def signals : Enumerable(Gio::DBusSignalInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceInfo)).value.signals
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def properties!
      self.properties.not_nil!
    end

    def properties : Enumerable(Gio::DBusPropertyInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceInfo)).value.properties
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def annotations!
      self.annotations.not_nil!
    end

    def annotations : Enumerable(Gio::DBusAnnotationInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceInfo)).value.annotations
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_interface_info_get_type
    end

    def cache_build : Nil
      # g_dbus_interface_info_cache_build: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_info_cache_build(to_unsafe)

      # Return value handling
    end

    def cache_release : Nil
      # g_dbus_interface_info_cache_release: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_info_cache_release(to_unsafe)

      # Return value handling
    end

    def generate_xml(indent : UInt32, string_builder : GLib::String) : Nil
      # g_dbus_interface_info_generate_xml: (Method)
      # @indent:
      # @string_builder:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_info_generate_xml(to_unsafe, indent, string_builder)

      # Return value handling
    end

    def lookup_method(name : ::String) : Gio::DBusMethodInfo?
      # g_dbus_interface_info_lookup_method: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_interface_info_lookup_method(to_unsafe, name)

      # Return value handling
      Gio::DBusMethodInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def lookup_property(name : ::String) : Gio::DBusPropertyInfo?
      # g_dbus_interface_info_lookup_property: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_interface_info_lookup_property(to_unsafe, name)

      # Return value handling
      Gio::DBusPropertyInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def lookup_signal(name : ::String) : Gio::DBusSignalInfo?
      # g_dbus_interface_info_lookup_signal: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_interface_info_lookup_signal(to_unsafe, name)

      # Return value handling
      Gio::DBusSignalInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def ref : Gio::DBusInterfaceInfo
      # g_dbus_interface_info_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_interface_info_ref(to_unsafe)

      # Return value handling
      Gio::DBusInterfaceInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_dbus_interface_info_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_interface_info_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
