module GObject
  class Parameter
    @data : LibGObject::Parameter

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::Parameter)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(value : GObject::Value? = nil)
      _instance = allocate
      _instance.value = value unless value.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::Parameter)).zero?
    end

    def name!
      self.name.not_nil!
    end

    def name : ::String?
      value = to_unsafe.as(Pointer(LibGObject::Parameter)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def value : GObject::Value
      value = to_unsafe.as(Pointer(LibGObject::Parameter)).value.value
      GObject::Value.new(value, GICrystal::Transfer::None)
    end

    def value=(value : GObject::Value)
      _var = (to_unsafe + 8).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::Parameter))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
