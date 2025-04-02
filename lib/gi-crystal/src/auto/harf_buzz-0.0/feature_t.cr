module HarfBuzz
  struct FeatureT
    @data : LibHarfBuzz::FeatureT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::FeatureT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(tag : UInt32? = nil, value : UInt32? = nil, start : UInt32? = nil, end _end : UInt32? = nil)
      @data = LibHarfBuzz::FeatureT.new
      @data.tag = tag unless tag.nil?
      @data.value = value unless value.nil?
      @data.start = start unless start.nil?
      @data.end = _end unless _end.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::FeatureT)).zero?
    end

    delegate :tag, to: @data
    delegate :tag=, to: @data
    delegate :value, to: @data
    delegate :value=, to: @data
    delegate :start, to: @data
    delegate :start=, to: @data
    delegate :end, to: @data
    delegate :end=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_feature_get_type
    end

    def _string(buf : Enumerable(::String)) : Nil
      # hb_feature_to_string: (Method)
      # @buf: (out) (transfer full) (array length=size element-type Utf8)
      # @size: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      size = buf.size
      # Generator::ArrayArgPlan
      buf = buf.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibHarfBuzz.hb_feature_to_string(to_unsafe, buf, size)

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
