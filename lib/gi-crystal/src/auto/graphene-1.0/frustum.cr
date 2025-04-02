module Graphene
  struct Frustum
    @data : LibGraphene::Frustum

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Frustum)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(planes : Enumerable(Graphene::Plane)? = nil)
      @data = LibGraphene::Frustum.new
      @data.planes = planes unless planes.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Frustum)).zero?
    end

    delegate :planes, to: @data
    delegate :planes=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_frustum_get_type
    end

    def contains_point(point : Graphene::Point3D) : Bool
      # graphene_frustum_contains_point: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_frustum_contains_point(to_unsafe, point)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal(b : Graphene::Frustum) : Bool
      # graphene_frustum_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_frustum_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_frustum_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_frustum_free(to_unsafe)

      # Return value handling
    end

    def planes(planes : Enumerable(Graphene::Plane)) : Nil
      # graphene_frustum_get_planes: (Method)
      # @planes: (out) (caller-allocates) (array fixed-size=6 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 6") if planes.size < 6

      planes = planes.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGraphene::Plane))

      # C call
      LibGraphene.graphene_frustum_get_planes(to_unsafe, planes)

      # Return value handling
    end

    def planes(*planes : Graphene::Plane)
      planes(planes)
    end

    def init(p0 : Graphene::Plane, p1 : Graphene::Plane, p2 : Graphene::Plane, p3 : Graphene::Plane, p4 : Graphene::Plane, p5 : Graphene::Plane) : Graphene::Frustum
      # graphene_frustum_init: (Method)
      # @p0:
      # @p1:
      # @p2:
      # @p3:
      # @p4:
      # @p5:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_frustum_init(to_unsafe, p0, p1, p2, p3, p4, p5)

      # Return value handling
      Graphene::Frustum.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_frustum(src : Graphene::Frustum) : Graphene::Frustum
      # graphene_frustum_init_from_frustum: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_frustum_init_from_frustum(to_unsafe, src)

      # Return value handling
      Graphene::Frustum.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_matrix(matrix : Graphene::Matrix) : Graphene::Frustum
      # graphene_frustum_init_from_matrix: (Method)
      # @matrix:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_frustum_init_from_matrix(to_unsafe, matrix)

      # Return value handling
      Graphene::Frustum.new(_retval, GICrystal::Transfer::None)
    end

    def intersects_box(box : Graphene::Box) : Bool
      # graphene_frustum_intersects_box: (Method)
      # @box:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_frustum_intersects_box(to_unsafe, box)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def intersects_sphere(sphere : Graphene::Sphere) : Bool
      # graphene_frustum_intersects_sphere: (Method)
      # @sphere:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_frustum_intersects_sphere(to_unsafe, sphere)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
