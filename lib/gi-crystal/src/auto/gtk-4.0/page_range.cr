module Gtk
  struct PageRange
    @data : LibGtk::PageRange

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::PageRange)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(start : Int32? = nil, end _end : Int32? = nil)
      @data = LibGtk::PageRange.new
      @data.start = start unless start.nil?
      @data.end = _end unless _end.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::PageRange)).zero?
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
