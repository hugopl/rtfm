module Gio
  class DBusPropertyInfo
    @data : LibGio::DBusPropertyInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusPropertyInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref_count : Int32? = nil, flags : Gio::DBusPropertyInfoFlags? = nil)
      _instance = allocate
      _instance.ref_count = ref_count unless ref_count.nil?
      _instance.flags = flags unless flags.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusPropertyInfo)).zero?
    end

    def ref_count : Int32
      value = to_unsafe.as(Pointer(LibGio::DBusPropertyInfo)).value.ref_count
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
      value = to_unsafe.as(Pointer(LibGio::DBusPropertyInfo)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def signature!
      self.signature.not_nil!
    end

    def signature : ::String?
      value = to_unsafe.as(Pointer(LibGio::DBusPropertyInfo)).value.signature
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def flags : Gio::DBusPropertyInfoFlags
      value = to_unsafe.as(Pointer(LibGio::DBusPropertyInfo)).value.flags
      Gio::DBusPropertyInfoFlags.new(value)
    end

    def flags=(value : Gio::DBusPropertyInfoFlags)
      _var = (to_unsafe + 24).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::DBusPropertyInfo))
      value
    end

    def annotations!
      self.annotations.not_nil!
    end

    def annotations : Enumerable(Gio::DBusAnnotationInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusPropertyInfo)).value.annotations
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_property_info_get_type
    end

    def ref : Gio::DBusPropertyInfo
      # g_dbus_property_info_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_property_info_ref(to_unsafe)

      # Return value handling
      Gio::DBusPropertyInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_dbus_property_info_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_property_info_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
