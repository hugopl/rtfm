module GObject
  class ObjectConstructParam
    @data : LibGObject::ObjectConstructParam

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::ObjectConstructParam)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new
      _instance = allocate
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::ObjectConstructParam)).zero?
    end

    def pspec!
      self.pspec.not_nil!
    end

    def pspec : GObject::ParamSpec?
      value = to_unsafe.as(Pointer(LibGObject::ObjectConstructParam)).value.pspec
      return if value.null?
      value = value.as(Pointer(Void))
      GObject::ParamSpec.new(value, GICrystal::Transfer::None)
    end

    def value!
      self.value.not_nil!
    end

    def value : GObject::Value?
      value = to_unsafe.as(Pointer(LibGObject::ObjectConstructParam)).value.value
      return if value.null?
      value = value.as(Pointer(Void))
      GObject::Value.new(value, GICrystal::Transfer::None)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
