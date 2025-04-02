module Graphene
  struct Box
    @data : LibGraphene::Box

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Box)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(min : Graphene::Vec3? = nil, max : Graphene::Vec3? = nil)
      @data = LibGraphene::Box.new
      @data.min = min unless min.nil?
      @data.max = max unless max.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Box)).zero?
    end

    delegate :min, to: @data
    delegate :min=, to: @data
    delegate :max, to: @data
    delegate :max=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_box_get_type
    end

    def contains_box(b : Graphene::Box) : Bool
      # graphene_box_contains_box: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_contains_box(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def contains_point(point : Graphene::Point3D) : Bool
      # graphene_box_contains_point: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_contains_point(to_unsafe, point)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal(b : Graphene::Box) : Bool
      # graphene_box_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def expand(point : Graphene::Point3D) : Graphene::Box
      # graphene_box_expand: (Method)
      # @point:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Box.new
      # C call
      LibGraphene.graphene_box_expand(to_unsafe, point, res)

      # Return value handling
      res
    end

    def expand_scalar(scalar : Float32) : Graphene::Box
      # graphene_box_expand_scalar: (Method)
      # @scalar:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Box.new
      # C call
      LibGraphene.graphene_box_expand_scalar(to_unsafe, scalar, res)

      # Return value handling
      res
    end

    def expand_vec3(vec : Graphene::Vec3) : Graphene::Box
      # graphene_box_expand_vec3: (Method)
      # @vec:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Box.new
      # C call
      LibGraphene.graphene_box_expand_vec3(to_unsafe, vec, res)

      # Return value handling
      res
    end

    def free : Nil
      # graphene_box_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_box_free(to_unsafe)

      # Return value handling
    end

    def bounding_sphere : Graphene::Sphere
      # graphene_box_get_bounding_sphere: (Method)
      # @sphere: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      sphere = Graphene::Sphere.new
      # C call
      LibGraphene.graphene_box_get_bounding_sphere(to_unsafe, sphere)

      # Return value handling
      sphere
    end

    def center : Graphene::Point3D
      # graphene_box_get_center: (Method)
      # @center: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      center = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_box_get_center(to_unsafe, center)

      # Return value handling
      center
    end

    def depth : Float32
      # graphene_box_get_depth: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_get_depth(to_unsafe)

      # Return value handling
      _retval
    end

    def height : Float32
      # graphene_box_get_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def max : Graphene::Point3D
      # graphene_box_get_max: (Method)
      # @max: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      max = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_box_get_max(to_unsafe, max)

      # Return value handling
      max
    end

    def min : Graphene::Point3D
      # graphene_box_get_min: (Method)
      # @min: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      min = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_box_get_min(to_unsafe, min)

      # Return value handling
      min
    end

    def size : Graphene::Vec3
      # graphene_box_get_size: (Method)
      # @size: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      size = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_box_get_size(to_unsafe, size)

      # Return value handling
      size
    end

    def vertices(vertices : Enumerable(Graphene::Vec3)) : Nil
      # graphene_box_get_vertices: (Method)
      # @vertices: (out) (caller-allocates) (array fixed-size=8 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 8") if vertices.size < 8

      vertices = vertices.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Vec3))

      # C call
      LibGraphene.graphene_box_get_vertices(to_unsafe, vertices)

      # Return value handling
    end

    def vertices(*vertices : Graphene::Vec3)
      vertices(vertices)
    end

    def width : Float32
      # graphene_box_get_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def init(min : Graphene::Point3D?, max : Graphene::Point3D?) : Graphene::Box
      # graphene_box_init: (Method)
      # @min: (nullable)
      # @max: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      min = if min.nil?
              Pointer(Void).null
            else
              min.to_unsafe
            end
      # Generator::NullableArrayPlan
      max = if max.nil?
              Pointer(Void).null
            else
              max.to_unsafe
            end

      # C call
      _retval = LibGraphene.graphene_box_init(to_unsafe, min, max)

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_box(src : Graphene::Box) : Graphene::Box
      # graphene_box_init_from_box: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_init_from_box(to_unsafe, src)

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_points(points : Enumerable(Graphene::Point3D)) : Graphene::Box
      # graphene_box_init_from_points: (Method)
      # @n_points:
      # @points: (array length=n_points element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_points = points.size
      # Generator::ArrayArgPlan
      points = points.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Point3D))

      # C call
      _retval = LibGraphene.graphene_box_init_from_points(to_unsafe, n_points, points)

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_points(*points : Graphene::Point3D)
      init_from_points(points)
    end

    def init_from_vec3(min : Graphene::Vec3?, max : Graphene::Vec3?) : Graphene::Box
      # graphene_box_init_from_vec3: (Method)
      # @min: (nullable)
      # @max: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      min = if min.nil?
              Pointer(Void).null
            else
              min.to_unsafe
            end
      # Generator::NullableArrayPlan
      max = if max.nil?
              Pointer(Void).null
            else
              max.to_unsafe
            end

      # C call
      _retval = LibGraphene.graphene_box_init_from_vec3(to_unsafe, min, max)

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vectors(vectors : Enumerable(Graphene::Vec3)) : Graphene::Box
      # graphene_box_init_from_vectors: (Method)
      # @n_vectors:
      # @vectors: (array length=n_vectors element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Vec3))

      # C call
      _retval = LibGraphene.graphene_box_init_from_vectors(to_unsafe, n_vectors, vectors)

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vectors(*vectors : Graphene::Vec3)
      init_from_vectors(vectors)
    end

    def intersection(b : Graphene::Box) : Graphene::Box
      # graphene_box_intersection: (Method)
      # @b:
      # @res: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      res = Pointer(Void).null # Generator::CallerAllocatesPlan
      res = Graphene::Box.new
      # C call
      _retval = LibGraphene.graphene_box_intersection(to_unsafe, b, res)

      # Return value handling
      res
    end

    def union(b : Graphene::Box) : Graphene::Box
      # graphene_box_union: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Box.new
      # C call
      LibGraphene.graphene_box_union(to_unsafe, b, res)

      # Return value handling
      res
    end

    def self.empty : Graphene::Box
      # graphene_box_empty: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_empty

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def self.infinite : Graphene::Box
      # graphene_box_infinite: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_infinite

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def self.minus_one : Graphene::Box
      # graphene_box_minus_one: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_minus_one

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def self.one : Graphene::Box
      # graphene_box_one: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_one

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def self.one_minus_one : Graphene::Box
      # graphene_box_one_minus_one: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_one_minus_one

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    def self.zero : Graphene::Box
      # graphene_box_zero: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_box_zero

      # Return value handling
      Graphene::Box.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
