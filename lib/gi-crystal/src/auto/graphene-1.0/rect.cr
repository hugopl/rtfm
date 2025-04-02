module Graphene
  struct Rect
    @data : LibGraphene::Rect

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Rect)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(origin : Graphene::Point? = nil, size : Graphene::Size? = nil)
      @data = LibGraphene::Rect.new
      @data.origin = origin unless origin.nil?
      @data.size = size unless size.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Rect)).zero?
    end

    delegate :origin, to: @data
    delegate :origin=, to: @data
    delegate :size, to: @data
    delegate :size=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_rect_get_type
    end

    def contains_point(p : Graphene::Point) : Bool
      # graphene_rect_contains_point: (Method)
      # @p:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_contains_point(to_unsafe, p)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def contains_rect(b : Graphene::Rect) : Bool
      # graphene_rect_contains_rect: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_contains_rect(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal(b : Graphene::Rect) : Bool
      # graphene_rect_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def expand(p : Graphene::Point) : Graphene::Rect
      # graphene_rect_expand: (Method)
      # @p:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_expand(to_unsafe, p, res)

      # Return value handling
      res
    end

    def free : Nil
      # graphene_rect_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_rect_free(to_unsafe)

      # Return value handling
    end

    def area : Float32
      # graphene_rect_get_area: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_get_area(to_unsafe)

      # Return value handling
      _retval
    end

    def bottom_left : Graphene::Point
      # graphene_rect_get_bottom_left: (Method)
      # @p: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      p = Graphene::Point.new
      # C call
      LibGraphene.graphene_rect_get_bottom_left(to_unsafe, p)

      # Return value handling
      p
    end

    def bottom_right : Graphene::Point
      # graphene_rect_get_bottom_right: (Method)
      # @p: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      p = Graphene::Point.new
      # C call
      LibGraphene.graphene_rect_get_bottom_right(to_unsafe, p)

      # Return value handling
      p
    end

    def center : Graphene::Point
      # graphene_rect_get_center: (Method)
      # @p: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      p = Graphene::Point.new
      # C call
      LibGraphene.graphene_rect_get_center(to_unsafe, p)

      # Return value handling
      p
    end

    def height : Float32
      # graphene_rect_get_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def top_left : Graphene::Point
      # graphene_rect_get_top_left: (Method)
      # @p: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      p = Graphene::Point.new
      # C call
      LibGraphene.graphene_rect_get_top_left(to_unsafe, p)

      # Return value handling
      p
    end

    def top_right : Graphene::Point
      # graphene_rect_get_top_right: (Method)
      # @p: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      p = Graphene::Point.new
      # C call
      LibGraphene.graphene_rect_get_top_right(to_unsafe, p)

      # Return value handling
      p
    end

    def vertices(vertices : Enumerable(Graphene::Vec2)) : Nil
      # graphene_rect_get_vertices: (Method)
      # @vertices: (out) (caller-allocates) (array fixed-size=4 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if vertices.size < 4

      vertices = vertices.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Vec2))

      # C call
      LibGraphene.graphene_rect_get_vertices(to_unsafe, vertices)

      # Return value handling
    end

    def vertices(*vertices : Graphene::Vec2)
      vertices(vertices)
    end

    def width : Float32
      # graphene_rect_get_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def x : Float32
      # graphene_rect_get_x: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_get_x(to_unsafe)

      # Return value handling
      _retval
    end

    def y : Float32
      # graphene_rect_get_y: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_get_y(to_unsafe)

      # Return value handling
      _retval
    end

    def init(x : Float32, y : Float32, width : Float32, height : Float32) : Graphene::Rect
      # graphene_rect_init: (Method)
      # @x:
      # @y:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_init(to_unsafe, x, y, width, height)

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_rect(src : Graphene::Rect) : Graphene::Rect
      # graphene_rect_init_from_rect: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_init_from_rect(to_unsafe, src)

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    def inset(d_x : Float32, d_y : Float32) : Graphene::Rect
      # graphene_rect_inset: (Method)
      # @d_x:
      # @d_y:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_inset(to_unsafe, d_x, d_y)

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    def inset_r(d_x : Float32, d_y : Float32) : Graphene::Rect
      # graphene_rect_inset_r: (Method)
      # @d_x:
      # @d_y:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_inset_r(to_unsafe, d_x, d_y, res)

      # Return value handling
      res
    end

    def interpolate(b : Graphene::Rect, factor : Float64) : Graphene::Rect
      # graphene_rect_interpolate: (Method)
      # @b:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_interpolate(to_unsafe, b, factor, res)

      # Return value handling
      res
    end

    def intersection(b : Graphene::Rect) : Graphene::Rect
      # graphene_rect_intersection: (Method)
      # @b:
      # @res: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      res = Pointer(Void).null # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      _retval = LibGraphene.graphene_rect_intersection(to_unsafe, b, res)

      # Return value handling
      res
    end

    def normalize : Graphene::Rect
      # graphene_rect_normalize: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_normalize(to_unsafe)

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    def normalize_r : Graphene::Rect
      # graphene_rect_normalize_r: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_normalize_r(to_unsafe, res)

      # Return value handling
      res
    end

    def offset(d_x : Float32, d_y : Float32) : Graphene::Rect
      # graphene_rect_offset: (Method)
      # @d_x:
      # @d_y:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_offset(to_unsafe, d_x, d_y)

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    def offset_r(d_x : Float32, d_y : Float32) : Graphene::Rect
      # graphene_rect_offset_r: (Method)
      # @d_x:
      # @d_y:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_offset_r(to_unsafe, d_x, d_y, res)

      # Return value handling
      res
    end

    @[Deprecated]
    def round : Graphene::Rect
      # graphene_rect_round: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_round(to_unsafe, res)

      # Return value handling
      res
    end

    def round_extents : Graphene::Rect
      # graphene_rect_round_extents: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_round_extents(to_unsafe, res)

      # Return value handling
      res
    end

    @[Deprecated]
    def round_to_pixel : Graphene::Rect
      # graphene_rect_round_to_pixel: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_round_to_pixel(to_unsafe)

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    def scale(s_h : Float32, s_v : Float32) : Graphene::Rect
      # graphene_rect_scale: (Method)
      # @s_h:
      # @s_v:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_scale(to_unsafe, s_h, s_v, res)

      # Return value handling
      res
    end

    def union(b : Graphene::Rect) : Graphene::Rect
      # graphene_rect_union: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_rect_union(to_unsafe, b, res)

      # Return value handling
      res
    end

    def self.alloc : Graphene::Rect
      # graphene_rect_alloc: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGraphene.graphene_rect_alloc

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::Full)
    end

    def self.zero : Graphene::Rect
      # graphene_rect_zero: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_rect_zero

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
