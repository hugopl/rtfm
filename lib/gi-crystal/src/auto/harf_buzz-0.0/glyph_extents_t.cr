module HarfBuzz
  struct GlyphExtentsT
    @data : LibHarfBuzz::GlyphExtentsT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::GlyphExtentsT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(x_bearing : Int32? = nil, y_bearing : Int32? = nil, width : Int32? = nil, height : Int32? = nil)
      @data = LibHarfBuzz::GlyphExtentsT.new
      @data.x_bearing = x_bearing unless x_bearing.nil?
      @data.y_bearing = y_bearing unless y_bearing.nil?
      @data.width = width unless width.nil?
      @data.height = height unless height.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::GlyphExtentsT)).zero?
    end

    delegate :x_bearing, to: @data
    delegate :x_bearing=, to: @data
    delegate :y_bearing, to: @data
    delegate :y_bearing=, to: @data
    delegate :width, to: @data
    delegate :width=, to: @data
    delegate :height, to: @data
    delegate :height=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
