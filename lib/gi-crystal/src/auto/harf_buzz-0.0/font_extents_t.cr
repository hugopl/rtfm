module HarfBuzz
  struct FontExtentsT
    @data : LibHarfBuzz::FontExtentsT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::FontExtentsT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(ascender : Int32? = nil, descender : Int32? = nil, line_gap : Int32? = nil, reserved9 : Int32? = nil, reserved8 : Int32? = nil, reserved7 : Int32? = nil, reserved6 : Int32? = nil, reserved5 : Int32? = nil, reserved4 : Int32? = nil, reserved3 : Int32? = nil, reserved2 : Int32? = nil, reserved1 : Int32? = nil)
      @data = LibHarfBuzz::FontExtentsT.new
      @data.ascender = ascender unless ascender.nil?
      @data.descender = descender unless descender.nil?
      @data.line_gap = line_gap unless line_gap.nil?
      @data.reserved9 = reserved9 unless reserved9.nil?
      @data.reserved8 = reserved8 unless reserved8.nil?
      @data.reserved7 = reserved7 unless reserved7.nil?
      @data.reserved6 = reserved6 unless reserved6.nil?
      @data.reserved5 = reserved5 unless reserved5.nil?
      @data.reserved4 = reserved4 unless reserved4.nil?
      @data.reserved3 = reserved3 unless reserved3.nil?
      @data.reserved2 = reserved2 unless reserved2.nil?
      @data.reserved1 = reserved1 unless reserved1.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::FontExtentsT)).zero?
    end

    delegate :ascender, to: @data
    delegate :ascender=, to: @data
    delegate :descender, to: @data
    delegate :descender=, to: @data
    delegate :line_gap, to: @data
    delegate :line_gap=, to: @data
    delegate :reserved9, to: @data
    delegate :reserved9=, to: @data
    delegate :reserved8, to: @data
    delegate :reserved8=, to: @data
    delegate :reserved7, to: @data
    delegate :reserved7=, to: @data
    delegate :reserved6, to: @data
    delegate :reserved6=, to: @data
    delegate :reserved5, to: @data
    delegate :reserved5=, to: @data
    delegate :reserved4, to: @data
    delegate :reserved4=, to: @data
    delegate :reserved3, to: @data
    delegate :reserved3=, to: @data
    delegate :reserved2, to: @data
    delegate :reserved2=, to: @data
    delegate :reserved1, to: @data
    delegate :reserved1=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
