module Gio
  class FileAttributeInfo
    @data : LibGio::FileAttributeInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::FileAttributeInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(type : Gio::FileAttributeType? = nil, flags : Gio::FileAttributeInfoFlags? = nil)
      _instance = allocate
      _instance.type = type unless type.nil?
      _instance.flags = flags unless flags.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::FileAttributeInfo)).zero?
    end

    def name!
      self.name.not_nil!
    end

    def name : ::String?
      value = to_unsafe.as(Pointer(LibGio::FileAttributeInfo)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def type : Gio::FileAttributeType
      value = to_unsafe.as(Pointer(LibGio::FileAttributeInfo)).value.type
      Gio::FileAttributeType.new(value)
    end

    def type=(value : Gio::FileAttributeType)
      _var = (to_unsafe + 8).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::FileAttributeInfo))
      value
    end

    def flags : Gio::FileAttributeInfoFlags
      value = to_unsafe.as(Pointer(LibGio::FileAttributeInfo)).value.flags
      Gio::FileAttributeInfoFlags.new(value)
    end

    def flags=(value : Gio::FileAttributeInfoFlags)
      _var = (to_unsafe + 12).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::FileAttributeInfo))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
