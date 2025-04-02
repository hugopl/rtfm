module HarfBuzz
  struct VariationT
    @data : LibHarfBuzz::VariationT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::VariationT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(tag : UInt32? = nil, value : Float32? = nil)
      @data = LibHarfBuzz::VariationT.new
      @data.tag = tag unless tag.nil?
      @data.value = value unless value.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::VariationT)).zero?
    end

    delegate :tag, to: @data
    delegate :tag=, to: @data
    delegate :value, to: @data
    delegate :value=, to: @data

    def _string(buf : Enumerable(::String)) : Nil
      # hb_variation_to_string: (Method)
      # @buf: (out) (caller-allocates) (array length=size element-type Utf8)
      # @size: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      size = buf.size
      # Generator::ArrayArgPlan
      buf = buf.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibHarfBuzz.hb_variation_to_string(to_unsafe, buf, size)

      # Return value handling
    end

    def _string(*buf : ::String)
      _string(buf)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
