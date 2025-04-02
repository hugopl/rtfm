module GObject
  class EnumValue
    @data : LibGObject::EnumValue

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::EnumValue)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(value : Int32? = nil)
      _instance = allocate
      _instance.value = value unless value.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::EnumValue)).zero?
    end

    def value : Int32
      value = to_unsafe.as(Pointer(LibGObject::EnumValue)).value.value
      value
    end

    def value=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def value_name!
      self.value_name.not_nil!
    end

    def value_name : ::String?
      value = to_unsafe.as(Pointer(LibGObject::EnumValue)).value.value_name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def value_nick!
      self.value_nick.not_nil!
    end

    def value_nick : ::String?
      value = to_unsafe.as(Pointer(LibGObject::EnumValue)).value.value_nick
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
