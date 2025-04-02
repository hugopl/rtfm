module Gio
  class DBusSignalInfo
    @data : LibGio::DBusSignalInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusSignalInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref_count : Int32? = nil)
      _instance = allocate
      _instance.ref_count = ref_count unless ref_count.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusSignalInfo)).zero?
    end

    def ref_count : Int32
      value = to_unsafe.as(Pointer(LibGio::DBusSignalInfo)).value.ref_count
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
      value = to_unsafe.as(Pointer(LibGio::DBusSignalInfo)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def args!
      self.args.not_nil!
    end

    def args : Enumerable(Gio::DBusArgInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusSignalInfo)).value.args
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def annotations!
      self.annotations.not_nil!
    end

    def annotations : Enumerable(Gio::DBusAnnotationInfo)?
      value = to_unsafe.as(Pointer(LibGio::DBusSignalInfo)).value.annotations
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_dbus_signal_info_get_type
    end

    def ref : Gio::DBusSignalInfo
      # g_dbus_signal_info_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_signal_info_ref(to_unsafe)

      # Return value handling
      Gio::DBusSignalInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_dbus_signal_info_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_signal_info_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
