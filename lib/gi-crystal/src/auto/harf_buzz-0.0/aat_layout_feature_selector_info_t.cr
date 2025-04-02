module HarfBuzz
  class AatLayoutFeatureSelectorInfoT
    @data : LibHarfBuzz::AatLayoutFeatureSelectorInfoT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::AatLayoutFeatureSelectorInfoT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(name_id : UInt32? = nil, enable : HarfBuzz::AatLayoutFeatureSelectorT? = nil, disable : HarfBuzz::AatLayoutFeatureSelectorT? = nil, reserved : UInt32? = nil)
      _instance = allocate
      _instance.name_id = name_id unless name_id.nil?
      _instance.enable = enable unless enable.nil?
      _instance.disable = disable unless disable.nil?
      _instance.reserved = reserved unless reserved.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::AatLayoutFeatureSelectorInfoT)).zero?
    end

    def name_id : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::AatLayoutFeatureSelectorInfoT)).value.name_id
      value
    end

    def name_id=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def enable : HarfBuzz::AatLayoutFeatureSelectorT
      value = to_unsafe.as(Pointer(LibHarfBuzz::AatLayoutFeatureSelectorInfoT)).value.enable
      HarfBuzz::AatLayoutFeatureSelectorT.new(value)
    end

    def enable=(value : HarfBuzz::AatLayoutFeatureSelectorT)
      _var = (to_unsafe + 4).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::AatLayoutFeatureSelectorInfoT))
      value
    end

    def disable : HarfBuzz::AatLayoutFeatureSelectorT
      value = to_unsafe.as(Pointer(LibHarfBuzz::AatLayoutFeatureSelectorInfoT)).value.disable
      HarfBuzz::AatLayoutFeatureSelectorT.new(value)
    end

    def disable=(value : HarfBuzz::AatLayoutFeatureSelectorT)
      _var = (to_unsafe + 8).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::AatLayoutFeatureSelectorInfoT))
      value
    end

    def reserved : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::AatLayoutFeatureSelectorInfoT)).value.reserved
      value
    end

    def reserved=(value : UInt32)
      _var = (to_unsafe + 12).as(Pointer(UInt32)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
