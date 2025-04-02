module Gsk
  struct ParseLocation
    @data : LibGsk::ParseLocation

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGsk::ParseLocation)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(bytes : UInt64? = nil, chars : UInt64? = nil, lines : UInt64? = nil, line_bytes : UInt64? = nil, line_chars : UInt64? = nil)
      @data = LibGsk::ParseLocation.new
      @data.bytes = bytes unless bytes.nil?
      @data.chars = chars unless chars.nil?
      @data.lines = lines unless lines.nil?
      @data.line_bytes = line_bytes unless line_bytes.nil?
      @data.line_chars = line_chars unless line_chars.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGsk::ParseLocation)).zero?
    end

    delegate :bytes, to: @data
    delegate :bytes=, to: @data
    delegate :chars, to: @data
    delegate :chars=, to: @data
    delegate :lines, to: @data
    delegate :lines=, to: @data
    delegate :line_bytes, to: @data
    delegate :line_bytes=, to: @data
    delegate :line_chars, to: @data
    delegate :line_chars=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
