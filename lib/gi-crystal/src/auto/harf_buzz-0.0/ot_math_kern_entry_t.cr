module HarfBuzz
  struct OtMathKernEntryT
    @data : LibHarfBuzz::OtMathKernEntryT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::OtMathKernEntryT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(max_correction_height : Int32? = nil, kern_value : Int32? = nil)
      @data = LibHarfBuzz::OtMathKernEntryT.new
      @data.max_correction_height = max_correction_height unless max_correction_height.nil?
      @data.kern_value = kern_value unless kern_value.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::OtMathKernEntryT)).zero?
    end

    delegate :max_correction_height, to: @data
    delegate :max_correction_height=, to: @data
    delegate :kern_value, to: @data
    delegate :kern_value=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
