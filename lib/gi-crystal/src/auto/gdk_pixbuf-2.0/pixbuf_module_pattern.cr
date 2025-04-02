module GdkPixbuf
  class PixbufModulePattern
    @data : LibGdkPixbuf::PixbufModulePattern

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGdkPixbuf::PixbufModulePattern)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(relevance : Int32? = nil)
      _instance = allocate
      _instance.relevance = relevance unless relevance.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGdkPixbuf::PixbufModulePattern)).zero?
    end

    def prefix!
      self.prefix.not_nil!
    end

    def prefix : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModulePattern)).value.prefix
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def mask!
      self.mask.not_nil!
    end

    def mask : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModulePattern)).value.mask
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def relevance : Int32
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufModulePattern)).value.relevance
      value
    end

    def relevance=(value : Int32)
      _var = (to_unsafe + 16).as(Pointer(Int32)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
