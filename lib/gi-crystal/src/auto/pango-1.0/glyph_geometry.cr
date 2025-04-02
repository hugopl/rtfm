module Pango
  struct GlyphGeometry
    @data : LibPango::GlyphGeometry

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::GlyphGeometry)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(width : Int32? = nil, x_offset : Int32? = nil, y_offset : Int32? = nil)
      @data = LibPango::GlyphGeometry.new
      @data.width = width unless width.nil?
      @data.x_offset = x_offset unless x_offset.nil?
      @data.y_offset = y_offset unless y_offset.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::GlyphGeometry)).zero?
    end

    delegate :width, to: @data
    delegate :width=, to: @data
    delegate :x_offset, to: @data
    delegate :x_offset=, to: @data
    delegate :y_offset, to: @data
    delegate :y_offset=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
