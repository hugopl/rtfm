module Gsk
  struct ColorStop
    @data : LibGsk::ColorStop

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGsk::ColorStop)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(offset : Float32? = nil, color : Gdk::RGBA? = nil)
      @data = LibGsk::ColorStop.new
      @data.offset = offset unless offset.nil?
      @data.color = color unless color.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGsk::ColorStop)).zero?
    end

    delegate :offset, to: @data
    delegate :offset=, to: @data
    delegate :color, to: @data
    delegate :color=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
