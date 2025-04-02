module Graphene
  struct Sphere
    @data : LibGraphene::Sphere

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Sphere)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(center : Graphene::Vec3? = nil, radius : Float32? = nil)
      @data = LibGraphene::Sphere.new
      @data.center = center unless center.nil?
      @data.radius = radius unless radius.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Sphere)).zero?
    end

    delegate :center, to: @data
    delegate :center=, to: @data
    delegate :radius, to: @data
    delegate :radius=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_sphere_get_type
    end

    def contains_point(point : Graphene::Point3D) : Bool
      # graphene_sphere_contains_point: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_sphere_contains_point(to_unsafe, point)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def distance(point : Graphene::Point3D) : Float32
      # graphene_sphere_distance: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_sphere_distance(to_unsafe, point)

      # Return value handling
      _retval
    end

    def equal(b : Graphene::Sphere) : Bool
      # graphene_sphere_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_sphere_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_sphere_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_sphere_free(to_unsafe)

      # Return value handling
    end

    def bounding_box : Graphene::Box
      # graphene_sphere_get_bounding_box: (Method)
      # @box: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      box = Graphene::Box.new
      # C call
      LibGraphene.graphene_sphere_get_bounding_box(to_unsafe, box)

      # Return value handling
      box
    end

    def center : Graphene::Point3D
      # graphene_sphere_get_center: (Method)
      # @center: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      center = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_sphere_get_center(to_unsafe, center)

      # Return value handling
      center
    end

    def radius : Float32
      # graphene_sphere_get_radius: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_sphere_get_radius(to_unsafe)

      # Return value handling
      _retval
    end

    def init(center : Graphene::Point3D?, radius : Float32) : Graphene::Sphere
      # graphene_sphere_init: (Method)
      # @center: (nullable)
      # @radius:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      center = if center.nil?
                 Pointer(Void).null
               else
                 center.to_unsafe
               end

      # C call
      _retval = LibGraphene.graphene_sphere_init(to_unsafe, center, radius)

      # Return value handling
      Graphene::Sphere.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_points(points : Enumerable(Graphene::Point3D), center : Graphene::Point3D?) : Graphene::Sphere
      # graphene_sphere_init_from_points: (Method)
      # @n_points:
      # @points: (array length=n_points element-type Interface)
      # @center: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_points = points.size
      # Generator::ArrayArgPlan
      points = points.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Point3D))
      # Generator::NullableArrayPlan
      center = if center.nil?
                 Pointer(Void).null
               else
                 center.to_unsafe
               end

      # C call
      _retval = LibGraphene.graphene_sphere_init_from_points(to_unsafe, n_points, points, center)

      # Return value handling
      Graphene::Sphere.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vectors(vectors : Enumerable(Graphene::Vec3), center : Graphene::Point3D?) : Graphene::Sphere
      # graphene_sphere_init_from_vectors: (Method)
      # @n_vectors:
      # @vectors: (array length=n_vectors element-type Interface)
      # @center: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_vectors = vectors.size
      # Generator::ArrayArgPlan
      vectors = vectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Vec3))
      # Generator::NullableArrayPlan
      center = if center.nil?
                 Pointer(Void).null
               else
                 center.to_unsafe
               end

      # C call
      _retval = LibGraphene.graphene_sphere_init_from_vectors(to_unsafe, n_vectors, vectors, center)

      # Return value handling
      Graphene::Sphere.new(_retval, GICrystal::Transfer::None)
    end

    def is_empty : Bool
      # graphene_sphere_is_empty: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_sphere_is_empty(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def translate(point : Graphene::Point3D) : Graphene::Sphere
      # graphene_sphere_translate: (Method)
      # @point:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Sphere.new
      # C call
      LibGraphene.graphene_sphere_translate(to_unsafe, point, res)

      # Return value handling
      res
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
