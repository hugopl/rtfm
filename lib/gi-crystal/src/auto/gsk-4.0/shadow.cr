module Gsk
  struct Shadow
    @data : LibGsk::Shadow

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGsk::Shadow)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(color : Gdk::RGBA? = nil, dx : Float32? = nil, dy : Float32? = nil, radius : Float32? = nil)
      @data = LibGsk::Shadow.new
      @data.color = color unless color.nil?
      @data.dx = dx unless dx.nil?
      @data.dy = dy unless dy.nil?
      @data.radius = radius unless radius.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGsk::Shadow)).zero?
    end

    delegate :color, to: @data
    delegate :color=, to: @data
    delegate :dx, to: @data
    delegate :dx=, to: @data
    delegate :dy, to: @data
    delegate :dy=, to: @data
    delegate :radius, to: @data
    delegate :radius=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
