module Graphene
  struct Ray
    @data : LibGraphene::Ray

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Ray)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(origin : Graphene::Vec3? = nil, direction : Graphene::Vec3? = nil)
      @data = LibGraphene::Ray.new
      @data.origin = origin unless origin.nil?
      @data.direction = direction unless direction.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Ray)).zero?
    end

    delegate :origin, to: @data
    delegate :origin=, to: @data
    delegate :direction, to: @data
    delegate :direction=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_ray_get_type
    end

    def equal(b : Graphene::Ray) : Bool
      # graphene_ray_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_ray_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_ray_free(to_unsafe)

      # Return value handling
    end

    def closest_point_to_point(p : Graphene::Point3D) : Graphene::Point3D
      # graphene_ray_get_closest_point_to_point: (Method)
      # @p:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_ray_get_closest_point_to_point(to_unsafe, p, res)

      # Return value handling
      res
    end

    def direction : Graphene::Vec3
      # graphene_ray_get_direction: (Method)
      # @direction: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      direction = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_ray_get_direction(to_unsafe, direction)

      # Return value handling
      direction
    end

    def distance_to_plane(p : Graphene::Plane) : Float32
      # graphene_ray_get_distance_to_plane: (Method)
      # @p:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_get_distance_to_plane(to_unsafe, p)

      # Return value handling
      _retval
    end

    def distance_to_point(p : Graphene::Point3D) : Float32
      # graphene_ray_get_distance_to_point: (Method)
      # @p:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_get_distance_to_point(to_unsafe, p)

      # Return value handling
      _retval
    end

    def origin : Graphene::Point3D
      # graphene_ray_get_origin: (Method)
      # @origin: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      origin = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_ray_get_origin(to_unsafe, origin)

      # Return value handling
      origin
    end

    def position_at(t : Float32) : Graphene::Point3D
      # graphene_ray_get_position_at: (Method)
      # @t:
      # @position: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      position = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_ray_get_position_at(to_unsafe, t, position)

      # Return value handling
      position
    end

    def init(origin : Graphene::Point3D?, direction : Graphene::Vec3?) : Graphene::Ray
      # graphene_ray_init: (Method)
      # @origin: (nullable)
      # @direction: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      origin = if origin.nil?
                 Pointer(Void).null
               else
                 origin.to_unsafe
               end
      # Generator::NullableArrayPlan
      direction = if direction.nil?
                    Pointer(Void).null
                  else
                    direction.to_unsafe
                  end

      # C call
      _retval = LibGraphene.graphene_ray_init(to_unsafe, origin, direction)

      # Return value handling
      Graphene::Ray.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_ray(src : Graphene::Ray) : Graphene::Ray
      # graphene_ray_init_from_ray: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_init_from_ray(to_unsafe, src)

      # Return value handling
      Graphene::Ray.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vec3(origin : Graphene::Vec3?, direction : Graphene::Vec3?) : Graphene::Ray
      # graphene_ray_init_from_vec3: (Method)
      # @origin: (nullable)
      # @direction: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      origin = if origin.nil?
                 Pointer(Void).null
               else
                 origin.to_unsafe
               end
      # Generator::NullableArrayPlan
      direction = if direction.nil?
                    Pointer(Void).null
                  else
                    direction.to_unsafe
                  end

      # C call
      _retval = LibGraphene.graphene_ray_init_from_vec3(to_unsafe, origin, direction)

      # Return value handling
      Graphene::Ray.new(_retval, GICrystal::Transfer::None)
    end

    def intersect_box(b : Graphene::Box, t_out : Float32) : Graphene::RayIntersectionKind
      # graphene_ray_intersect_box: (Method)
      # @b:
      # @t_out: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_intersect_box(to_unsafe, b, t_out)

      # Return value handling
      Graphene::RayIntersectionKind.new(_retval)
    end

    def intersect_sphere(s : Graphene::Sphere, t_out : Float32) : Graphene::RayIntersectionKind
      # graphene_ray_intersect_sphere: (Method)
      # @s:
      # @t_out: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_intersect_sphere(to_unsafe, s, t_out)

      # Return value handling
      Graphene::RayIntersectionKind.new(_retval)
    end

    def intersect_triangle(t : Graphene::Triangle, t_out : Float32) : Graphene::RayIntersectionKind
      # graphene_ray_intersect_triangle: (Method)
      # @t:
      # @t_out: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_intersect_triangle(to_unsafe, t, t_out)

      # Return value handling
      Graphene::RayIntersectionKind.new(_retval)
    end

    def intersects_box(b : Graphene::Box) : Bool
      # graphene_ray_intersects_box: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_intersects_box(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def intersects_sphere(s : Graphene::Sphere) : Bool
      # graphene_ray_intersects_sphere: (Method)
      # @s:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_intersects_sphere(to_unsafe, s)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def intersects_triangle(t : Graphene::Triangle) : Bool
      # graphene_ray_intersects_triangle: (Method)
      # @t:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_ray_intersects_triangle(to_unsafe, t)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
