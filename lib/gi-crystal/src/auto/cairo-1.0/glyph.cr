module Cairo
  struct Glyph
    @data : LibCairo::Glyph

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibCairo::Glyph)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(index : UInt64? = nil, x : Float64? = nil, y : Float64? = nil)
      @data = LibCairo::Glyph.new
      @data.index = index unless index.nil?
      @data.x = x unless x.nil?
      @data.y = y unless y.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibCairo::Glyph)).zero?
    end

    delegate :index, to: @data
    delegate :index=, to: @data
    delegate :x, to: @data
    delegate :x=, to: @data
    delegate :y, to: @data
    delegate :y=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_glyph_get_type
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
