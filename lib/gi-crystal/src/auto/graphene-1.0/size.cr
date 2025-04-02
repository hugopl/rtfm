module Graphene
  struct Size
    @data : LibGraphene::Size

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Size)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(width : Float32? = nil, height : Float32? = nil)
      @data = LibGraphene::Size.new
      @data.width = width unless width.nil?
      @data.height = height unless height.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Size)).zero?
    end

    delegate :width, to: @data
    delegate :width=, to: @data
    delegate :height, to: @data
    delegate :height=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_size_get_type
    end

    def equal(b : Graphene::Size) : Bool
      # graphene_size_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_size_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_size_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_size_free(to_unsafe)

      # Return value handling
    end

    def init(width : Float32, height : Float32) : Graphene::Size
      # graphene_size_init: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_size_init(to_unsafe, width, height)

      # Return value handling
      Graphene::Size.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_size(src : Graphene::Size) : Graphene::Size
      # graphene_size_init_from_size: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_size_init_from_size(to_unsafe, src)

      # Return value handling
      Graphene::Size.new(_retval, GICrystal::Transfer::None)
    end

    def interpolate(b : Graphene::Size, factor : Float64) : Graphene::Size
      # graphene_size_interpolate: (Method)
      # @b:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Size.new
      # C call
      LibGraphene.graphene_size_interpolate(to_unsafe, b, factor, res)

      # Return value handling
      res
    end

    def scale(factor : Float32) : Graphene::Size
      # graphene_size_scale: (Method)
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Size.new
      # C call
      LibGraphene.graphene_size_scale(to_unsafe, factor, res)

      # Return value handling
      res
    end

    def self.zero : Graphene::Size
      # graphene_size_zero: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_size_zero

      # Return value handling
      Graphene::Size.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
