module Gio
  class DBusNodeInfo
    @data : LibGio::DBusNodeInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusNodeInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref_count : Int32? = nil)
      _instance = allocate
      _instance.ref_count = ref_count unless ref_count.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusNodeInfo)).zero?
    end

    def ref_count : Int32
      value = to_unsafe.as(Pointer(LibGio::DBusNodeInfo)).value.ref_count
      value
    end

    def ref_count=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def path!
      self.path.not_nil!
    end

    def path : ::String?
      value = to_unsafe.as(Pointer(LibGio::DBusNodeInfo)).value.path
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def interfaces!
      self.interfaces.not_nil!
    end

    def interfaces : Enumerable(Gio::DBusInterfaceInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusNodeInfo)).value.interfaces
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def nodes!
      self.nodes.not_nil!
    end

    def nodes : Enumerable(Gio::DBusNodeInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusNodeInfo)).value.nodes
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def annotations!
      self.annotations.not_nil!
    end

    def annotations : Enumerable(Gio::DBusAnnotationInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusNodeInfo)).value.annotations
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_node_info_get_type
    end

    def self.new_for_xml(xml_data : ::String) : self
      # g_dbus_node_info_new_for_xml: (Constructor | Throws)
      # @xml_data:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_node_info_new_for_xml(xml_data, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusNodeInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def generate_xml(indent : UInt32, string_builder : GLib::String) : Nil
      # g_dbus_node_info_generate_xml: (Method)
      # @indent:
      # @string_builder:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_node_info_generate_xml(to_unsafe, indent, string_builder)

      # Return value handling
    end

    def lookup_interface(name : ::String) : Gio::DBusInterfaceInfo?
      # g_dbus_node_info_lookup_interface: (Method)
      # @name:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_node_info_lookup_interface(to_unsafe, name)

      # Return value handling
      Gio::DBusInterfaceInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def ref : Gio::DBusNodeInfo
      # g_dbus_node_info_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_node_info_ref(to_unsafe)

      # Return value handling
      Gio::DBusNodeInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_dbus_node_info_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_node_info_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
