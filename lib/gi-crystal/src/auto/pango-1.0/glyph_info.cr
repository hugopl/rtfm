module Pango
  struct GlyphInfo
    @data : LibPango::GlyphInfo

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::GlyphInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(glyph : UInt32? = nil, geometry : Pango::GlyphGeometry? = nil, attr : Pango::GlyphVisAttr? = nil)
      @data = LibPango::GlyphInfo.new
      @data.glyph = glyph unless glyph.nil?
      @data.geometry = geometry unless geometry.nil?
      @data.attr = attr unless attr.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::GlyphInfo)).zero?
    end

    delegate :glyph, to: @data
    delegate :glyph=, to: @data
    delegate :geometry, to: @data
    delegate :geometry=, to: @data
    delegate :attr, to: @data
    delegate :attr=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
