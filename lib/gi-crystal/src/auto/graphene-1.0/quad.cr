module Graphene
  struct Quad
    @data : LibGraphene::Quad

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Quad)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(points : Enumerable(Graphene::Point)? = nil)
      @data = LibGraphene::Quad.new
      @data.points = points unless points.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Quad)).zero?
    end

    delegate :points, to: @data
    delegate :points=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_quad_get_type
    end

    def bounds : Graphene::Rect
      # graphene_quad_bounds: (Method)
      # @r: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      r = Graphene::Rect.new
      # C call
      LibGraphene.graphene_quad_bounds(to_unsafe, r)

      # Return value handling
      r
    end

    def contains(p : Graphene::Point) : Bool
      # graphene_quad_contains: (Method)
      # @p:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quad_contains(to_unsafe, p)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_quad_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_quad_free(to_unsafe)

      # Return value handling
    end

    def point(index_ : UInt32) : Graphene::Point
      # graphene_quad_get_point: (Method)
      # @index_:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quad_get_point(to_unsafe, index_)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def init(p1 : Graphene::Point, p2 : Graphene::Point, p3 : Graphene::Point, p4 : Graphene::Point) : Graphene::Quad
      # graphene_quad_init: (Method)
      # @p1:
      # @p2:
      # @p3:
      # @p4:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quad_init(to_unsafe, p1, p2, p3, p4)

      # Return value handling
      Graphene::Quad.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_points(points : Enumerable(Graphene::Point)) : Graphene::Quad
      # graphene_quad_init_from_points: (Method)
      # @points: (array fixed-size=4 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if points.size < 4

      points = points.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Point))

      # C call
      _retval = LibGraphene.graphene_quad_init_from_points(to_unsafe, points)

      # Return value handling
      Graphene::Quad.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_points(*points : Graphene::Point)
      init_from_points(points)
    end

    def init_from_rect(r : Graphene::Rect) : Graphene::Quad
      # graphene_quad_init_from_rect: (Method)
      # @r:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quad_init_from_rect(to_unsafe, r)

      # Return value handling
      Graphene::Quad.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
