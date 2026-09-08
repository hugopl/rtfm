module Gtk
  struct SvgLocation
    @data : LibGtk::SvgLocation

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::SvgLocation)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(bytes : UInt64? = nil, lines : UInt64? = nil, line_chars : UInt64? = nil)
      @data = LibGtk::SvgLocation.new
      @data.bytes = bytes unless bytes.nil?
      @data.lines = lines unless lines.nil?
      @data.line_chars = line_chars unless line_chars.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::SvgLocation)).zero?
    end

    delegate :bytes, to: @data
    delegate :bytes=, to: @data
    delegate :lines, to: @data
    delegate :lines=, to: @data
    delegate :line_chars, to: @data
    delegate :line_chars=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
