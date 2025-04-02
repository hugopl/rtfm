module HarfBuzz
  struct OtMathGlyphVariantT
    @data : LibHarfBuzz::OtMathGlyphVariantT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::OtMathGlyphVariantT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(glyph : UInt32? = nil, advance : Int32? = nil)
      @data = LibHarfBuzz::OtMathGlyphVariantT.new
      @data.glyph = glyph unless glyph.nil?
      @data.advance = advance unless advance.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::OtMathGlyphVariantT)).zero?
    end

    delegate :glyph, to: @data
    delegate :glyph=, to: @data
    delegate :advance, to: @data
    delegate :advance=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_ot_math_glyph_variant_get_type
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
