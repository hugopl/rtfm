module Graphene
  struct Point
    @data : LibGraphene::Point

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Point)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(x : Float32? = nil, y : Float32? = nil)
      @data = LibGraphene::Point.new
      @data.x = x unless x.nil?
      @data.y = y unless y.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Point)).zero?
    end

    delegate :x, to: @data
    delegate :x=, to: @data
    delegate :y, to: @data
    delegate :y=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_point_get_type
    end

    def distance(b : Graphene::Point) : Float32
      # graphene_point_distance: (Method)
      # @b:
      # @d_x: (out) (transfer full) (optional)
      # @d_y: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      d_x = Pointer(Float32).null # Generator::OutArgUsedInReturnPlan
      d_y = Pointer(Float32).null
      # C call
      _retval = LibGraphene.graphene_point_distance(to_unsafe, b, d_x, d_y)

      # Return value handling
      _retval
    end

    def equal(b : Graphene::Point) : Bool
      # graphene_point_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_point_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_point_free(to_unsafe)

      # Return value handling
    end

    def init(x : Float32, y : Float32) : Graphene::Point
      # graphene_point_init: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point_init(to_unsafe, x, y)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_point(src : Graphene::Point) : Graphene::Point
      # graphene_point_init_from_point: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point_init_from_point(to_unsafe, src)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vec2(src : Graphene::Vec2) : Graphene::Point
      # graphene_point_init_from_vec2: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point_init_from_vec2(to_unsafe, src)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def interpolate(b : Graphene::Point, factor : Float64) : Graphene::Point
      # graphene_point_interpolate: (Method)
      # @b:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point.new
      # C call
      LibGraphene.graphene_point_interpolate(to_unsafe, b, factor, res)

      # Return value handling
      res
    end

    def near(b : Graphene::Point, epsilon : Float32) : Bool
      # graphene_point_near: (Method)
      # @b:
      # @epsilon:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point_near(to_unsafe, b, epsilon)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_vec2 : Graphene::Vec2
      # graphene_point_to_vec2: (Method)
      # @v: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      v = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_point_to_vec2(to_unsafe, v)

      # Return value handling
      v
    end

    def self.zero : Graphene::Point
      # graphene_point_zero: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point_zero

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
