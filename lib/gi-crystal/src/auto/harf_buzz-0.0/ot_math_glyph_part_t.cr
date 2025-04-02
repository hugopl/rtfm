module HarfBuzz
  class OtMathGlyphPartT
    @data : LibHarfBuzz::OtMathGlyphPartT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::OtMathGlyphPartT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(glyph : UInt32? = nil, start_connector_length : Int32? = nil, end_connector_length : Int32? = nil, full_advance : Int32? = nil, flags : HarfBuzz::OtMathGlyphPartFlagsT? = nil)
      _instance = allocate
      _instance.glyph = glyph unless glyph.nil?
      _instance.start_connector_length = start_connector_length unless start_connector_length.nil?
      _instance.end_connector_length = end_connector_length unless end_connector_length.nil?
      _instance.full_advance = full_advance unless full_advance.nil?
      _instance.flags = flags unless flags.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::OtMathGlyphPartT)).zero?
    end

    def glyph : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtMathGlyphPartT)).value.glyph
      value
    end

    def glyph=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def start_connector_length : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtMathGlyphPartT)).value.start_connector_length
      value
    end

    def start_connector_length=(value : Int32)
      _var = (to_unsafe + 4).as(Pointer(Int32)).value = value
      value
    end

    def end_connector_length : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtMathGlyphPartT)).value.end_connector_length
      value
    end

    def end_connector_length=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def full_advance : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtMathGlyphPartT)).value.full_advance
      value
    end

    def full_advance=(value : Int32)
      _var = (to_unsafe + 12).as(Pointer(Int32)).value = value
      value
    end

    def flags : HarfBuzz::OtMathGlyphPartFlagsT
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtMathGlyphPartT)).value.flags
      HarfBuzz::OtMathGlyphPartFlagsT.new(value)
    end

    def flags=(value : HarfBuzz::OtMathGlyphPartFlagsT)
      _var = (to_unsafe + 16).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::OtMathGlyphPartT))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_ot_math_glyph_part_get_type
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
