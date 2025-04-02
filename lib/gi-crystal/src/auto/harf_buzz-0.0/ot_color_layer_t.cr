module HarfBuzz
  struct OtColorLayerT
    @data : LibHarfBuzz::OtColorLayerT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::OtColorLayerT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(glyph : UInt32? = nil, color_index : UInt32? = nil)
      @data = LibHarfBuzz::OtColorLayerT.new
      @data.glyph = glyph unless glyph.nil?
      @data.color_index = color_index unless color_index.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::OtColorLayerT)).zero?
    end

    delegate :glyph, to: @data
    delegate :glyph=, to: @data
    delegate :color_index, to: @data
    delegate :color_index=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
