module HarfBuzz
  class OtNameEntryT
    @data : LibHarfBuzz::OtNameEntryT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::OtNameEntryT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(name_id : UInt32? = nil, var : HarfBuzz::VarIntT? = nil)
      _instance = allocate
      _instance.name_id = name_id unless name_id.nil?
      _instance.var = var unless var.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::OtNameEntryT)).zero?
    end

    def name_id : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtNameEntryT)).value.name_id
      value
    end

    def name_id=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def var : HarfBuzz::VarIntT
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtNameEntryT)).value.var
      HarfBuzz::VarIntT.new(value, GICrystal::Transfer::None)
    end

    def var=(value : HarfBuzz::VarIntT)
      _var = (to_unsafe + 4).as(Pointer(LibHarfBuzz::VarIntT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::OtNameEntryT))
      value
    end

    def language!
      self.language.not_nil!
    end

    def language : HarfBuzz::LanguageT?
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtNameEntryT)).value.language
      return if value.null?
      value = value.as(Pointer(Void))
      HarfBuzz::LanguageT.new(value, GICrystal::Transfer::None)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
