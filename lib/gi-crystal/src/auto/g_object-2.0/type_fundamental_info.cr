module GObject
  class TypeFundamentalInfo
    @data : LibGObject::TypeFundamentalInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypeFundamentalInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(type_flags : GObject::TypeFundamentalFlags? = nil)
      _instance = allocate
      _instance.type_flags = type_flags unless type_flags.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypeFundamentalInfo)).zero?
    end

    def type_flags : GObject::TypeFundamentalFlags
      value = to_unsafe.as(Pointer(LibGObject::TypeFundamentalInfo)).value.type_flags
      GObject::TypeFundamentalFlags.new(value)
    end

    def type_flags=(value : GObject::TypeFundamentalFlags)
      _var = (to_unsafe + 0).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeFundamentalInfo))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
