module Gio
  class DBusErrorEntry
    @data : LibGio::DBusErrorEntry

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusErrorEntry)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(error_code : Int32? = nil)
      _instance = allocate
      _instance.error_code = error_code unless error_code.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusErrorEntry)).zero?
    end

    def error_code : Int32
      value = to_unsafe.as(Pointer(LibGio::DBusErrorEntry)).value.error_code
      value
    end

    def error_code=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def dbus_error_name!
      self.dbus_error_name.not_nil!
    end

    def dbus_error_name : ::String?
      value = to_unsafe.as(Pointer(LibGio::DBusErrorEntry)).value.dbus_error_name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
