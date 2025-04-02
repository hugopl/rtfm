module Pango
  struct Rectangle
    @data : LibPango::Rectangle

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::Rectangle)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(x : Int32? = nil, y : Int32? = nil, width : Int32? = nil, height : Int32? = nil)
      @data = LibPango::Rectangle.new
      @data.x = x unless x.nil?
      @data.y = y unless y.nil?
      @data.width = width unless width.nil?
      @data.height = height unless height.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::Rectangle)).zero?
    end

    delegate :x, to: @data
    delegate :x=, to: @data
    delegate :y, to: @data
    delegate :y=, to: @data
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
