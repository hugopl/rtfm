module Graphene
  struct Simd4X4F
    @data : LibGraphene::Simd4X4F

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Simd4X4F)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(x : Graphene::Simd4F? = nil, y : Graphene::Simd4F? = nil, z : Graphene::Simd4F? = nil, w : Graphene::Simd4F? = nil)
      @data = LibGraphene::Simd4X4F.new
      @data.x = x unless x.nil?
      @data.y = y unless y.nil?
      @data.z = z unless z.nil?
      @data.w = w unless w.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Simd4X4F)).zero?
    end

    delegate :x, to: @data
    delegate :x=, to: @data
    delegate :y, to: @data
    delegate :y=, to: @data
    delegate :z, to: @data
    delegate :z=, to: @data
    delegate :w, to: @data
    delegate :w=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
