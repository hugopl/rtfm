module Soup
  struct Range
    @data : LibSoup::Range

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibSoup::Range)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(start : Int64? = nil, end _end : Int64? = nil)
      @data = LibSoup::Range.new
      @data.start = start unless start.nil?
      @data.end = _end unless _end.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibSoup::Range)).zero?
    end

    delegate :start, to: @data
    delegate :start=, to: @data
    delegate :end, to: @data
    delegate :end=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
