module HarfBuzz
  struct OtVarAxisT
    @data : LibHarfBuzz::OtVarAxisT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::OtVarAxisT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(tag : UInt32? = nil, name_id : UInt32? = nil, min_value : Float32? = nil, default_value : Float32? = nil, max_value : Float32? = nil)
      @data = LibHarfBuzz::OtVarAxisT.new
      @data.tag = tag unless tag.nil?
      @data.name_id = name_id unless name_id.nil?
      @data.min_value = min_value unless min_value.nil?
      @data.default_value = default_value unless default_value.nil?
      @data.max_value = max_value unless max_value.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::OtVarAxisT)).zero?
    end

    delegate :tag, to: @data
    delegate :tag=, to: @data
    delegate :name_id, to: @data
    delegate :name_id=, to: @data
    delegate :min_value, to: @data
    delegate :min_value=, to: @data
    delegate :default_value, to: @data
    delegate :default_value=, to: @data
    delegate :max_value, to: @data
    delegate :max_value=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
