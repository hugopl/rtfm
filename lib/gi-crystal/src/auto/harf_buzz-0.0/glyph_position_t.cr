module HarfBuzz
  class GlyphPositionT
    @data : LibHarfBuzz::GlyphPositionT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::GlyphPositionT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(x_advance : Int32? = nil, y_advance : Int32? = nil, x_offset : Int32? = nil, y_offset : Int32? = nil, var : HarfBuzz::VarIntT? = nil)
      _instance = allocate
      _instance.x_advance = x_advance unless x_advance.nil?
      _instance.y_advance = y_advance unless y_advance.nil?
      _instance.x_offset = x_offset unless x_offset.nil?
      _instance.y_offset = y_offset unless y_offset.nil?
      _instance.var = var unless var.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::GlyphPositionT)).zero?
    end

    def x_advance : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::GlyphPositionT)).value.x_advance
      value
    end

    def x_advance=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def y_advance : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::GlyphPositionT)).value.y_advance
      value
    end

    def y_advance=(value : Int32)
      _var = (to_unsafe + 4).as(Pointer(Int32)).value = value
      value
    end

    def x_offset : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::GlyphPositionT)).value.x_offset
      value
    end

    def x_offset=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def y_offset : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::GlyphPositionT)).value.y_offset
      value
    end

    def y_offset=(value : Int32)
      _var = (to_unsafe + 12).as(Pointer(Int32)).value = value
      value
    end

    def var : HarfBuzz::VarIntT
      value = to_unsafe.as(Pointer(LibHarfBuzz::GlyphPositionT)).value.var
      HarfBuzz::VarIntT.new(value, GICrystal::Transfer::None)
    end

    def var=(value : HarfBuzz::VarIntT)
      _var = (to_unsafe + 16).as(Pointer(LibHarfBuzz::VarIntT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::GlyphPositionT))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_glyph_position_get_type
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
