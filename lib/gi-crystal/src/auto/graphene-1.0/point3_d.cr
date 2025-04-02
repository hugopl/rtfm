module Graphene
  struct Point3D
    @data : LibGraphene::Point3D

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Point3D)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(x : Float32? = nil, y : Float32? = nil, z : Float32? = nil)
      @data = LibGraphene::Point3D.new
      @data.x = x unless x.nil?
      @data.y = y unless y.nil?
      @data.z = z unless z.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Point3D)).zero?
    end

    delegate :x, to: @data
    delegate :x=, to: @data
    delegate :y, to: @data
    delegate :y=, to: @data
    delegate :z, to: @data
    delegate :z=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_point3d_get_type
    end

    def cross(b : Graphene::Point3D) : Graphene::Point3D
      # graphene_point3d_cross: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_point3d_cross(to_unsafe, b, res)

      # Return value handling
      res
    end

    def distance(b : Graphene::Point3D) : Graphene::Vec3
      # graphene_point3d_distance: (Method)
      # @b:
      # @delta: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      delta = Pointer(Void).null # Generator::CallerAllocatesPlan
      delta = Graphene::Vec3.new
      # C call
      _retval = LibGraphene.graphene_point3d_distance(to_unsafe, b, delta)

      # Return value handling
      delta
    end

    def dot(b : Graphene::Point3D) : Float32
      # graphene_point3d_dot: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_dot(to_unsafe, b)

      # Return value handling
      _retval
    end

    def equal(b : Graphene::Point3D) : Bool
      # graphene_point3d_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_point3d_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_point3d_free(to_unsafe)

      # Return value handling
    end

    def init(x : Float32, y : Float32, z : Float32) : Graphene::Point3D
      # graphene_point3d_init: (Method)
      # @x:
      # @y:
      # @z:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_init(to_unsafe, x, y, z)

      # Return value handling
      Graphene::Point3D.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_point(src : Graphene::Point3D) : Graphene::Point3D
      # graphene_point3d_init_from_point: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_init_from_point(to_unsafe, src)

      # Return value handling
      Graphene::Point3D.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vec3(v : Graphene::Vec3) : Graphene::Point3D
      # graphene_point3d_init_from_vec3: (Method)
      # @v:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_init_from_vec3(to_unsafe, v)

      # Return value handling
      Graphene::Point3D.new(_retval, GICrystal::Transfer::None)
    end

    def interpolate(b : Graphene::Point3D, factor : Float64) : Graphene::Point3D
      # graphene_point3d_interpolate: (Method)
      # @b:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_point3d_interpolate(to_unsafe, b, factor, res)

      # Return value handling
      res
    end

    def length : Float32
      # graphene_point3d_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_length(to_unsafe)

      # Return value handling
      _retval
    end

    def near(b : Graphene::Point3D, epsilon : Float32) : Bool
      # graphene_point3d_near: (Method)
      # @b:
      # @epsilon:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_near(to_unsafe, b, epsilon)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def normalize : Graphene::Point3D
      # graphene_point3d_normalize: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_point3d_normalize(to_unsafe, res)

      # Return value handling
      res
    end

    def normalize_viewport(viewport : Graphene::Rect, z_near : Float32, z_far : Float32) : Graphene::Point3D
      # graphene_point3d_normalize_viewport: (Method)
      # @viewport:
      # @z_near:
      # @z_far:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_point3d_normalize_viewport(to_unsafe, viewport, z_near, z_far, res)

      # Return value handling
      res
    end

    def scale(factor : Float32) : Graphene::Point3D
      # graphene_point3d_scale: (Method)
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_point3d_scale(to_unsafe, factor, res)

      # Return value handling
      res
    end

    def to_vec3 : Graphene::Vec3
      # graphene_point3d_to_vec3: (Method)
      # @v: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      v = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_point3d_to_vec3(to_unsafe, v)

      # Return value handling
      v
    end

    def self.zero : Graphene::Point3D
      # graphene_point3d_zero: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_point3d_zero

      # Return value handling
      Graphene::Point3D.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
