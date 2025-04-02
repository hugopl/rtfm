module Graphene
  struct Plane
    @data : LibGraphene::Plane

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Plane)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(normal : Graphene::Vec3? = nil, constant : Float32? = nil)
      @data = LibGraphene::Plane.new
      @data.normal = normal unless normal.nil?
      @data.constant = constant unless constant.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Plane)).zero?
    end

    delegate :normal, to: @data
    delegate :normal=, to: @data
    delegate :constant, to: @data
    delegate :constant=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_plane_get_type
    end

    def distance(point : Graphene::Point3D) : Float32
      # graphene_plane_distance: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_plane_distance(to_unsafe, point)

      # Return value handling
      _retval
    end

    def equal(b : Graphene::Plane) : Bool
      # graphene_plane_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_plane_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_plane_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_plane_free(to_unsafe)

      # Return value handling
    end

    def constant : Float32
      # graphene_plane_get_constant: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_plane_get_constant(to_unsafe)

      # Return value handling
      _retval
    end

    def normal : Graphene::Vec3
      # graphene_plane_get_normal: (Method)
      # @normal: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      normal = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_plane_get_normal(to_unsafe, normal)

      # Return value handling
      normal
    end

    def init(normal : Graphene::Vec3?, constant : Float32) : Graphene::Plane
      # graphene_plane_init: (Method)
      # @normal: (nullable)
      # @constant:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      normal = if normal.nil?
                 Pointer(Void).null
               else
                 normal.to_unsafe
               end

      # C call
      _retval = LibGraphene.graphene_plane_init(to_unsafe, normal, constant)

      # Return value handling
      Graphene::Plane.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_plane(src : Graphene::Plane) : Graphene::Plane
      # graphene_plane_init_from_plane: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_plane_init_from_plane(to_unsafe, src)

      # Return value handling
      Graphene::Plane.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_point(normal : Graphene::Vec3, point : Graphene::Point3D) : Graphene::Plane
      # graphene_plane_init_from_point: (Method)
      # @normal:
      # @point:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_plane_init_from_point(to_unsafe, normal, point)

      # Return value handling
      Graphene::Plane.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_points(a : Graphene::Point3D, b : Graphene::Point3D, c : Graphene::Point3D) : Graphene::Plane
      # graphene_plane_init_from_points: (Method)
      # @a:
      # @b:
      # @c:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_plane_init_from_points(to_unsafe, a, b, c)

      # Return value handling
      Graphene::Plane.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vec4(src : Graphene::Vec4) : Graphene::Plane
      # graphene_plane_init_from_vec4: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_plane_init_from_vec4(to_unsafe, src)

      # Return value handling
      Graphene::Plane.new(_retval, GICrystal::Transfer::None)
    end

    def negate : Graphene::Plane
      # graphene_plane_negate: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Plane.new
      # C call
      LibGraphene.graphene_plane_negate(to_unsafe, res)

      # Return value handling
      res
    end

    def normalize : Graphene::Plane
      # graphene_plane_normalize: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Plane.new
      # C call
      LibGraphene.graphene_plane_normalize(to_unsafe, res)

      # Return value handling
      res
    end

    def transform(matrix : Graphene::Matrix, normal_matrix : Graphene::Matrix?) : Graphene::Plane
      # graphene_plane_transform: (Method)
      # @matrix:
      # @normal_matrix: (nullable)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      normal_matrix = if normal_matrix.nil?
                        Pointer(Void).null
                      else
                        normal_matrix.to_unsafe
                      end
      # Generator::CallerAllocatesPlan
      res = Graphene::Plane.new
      # C call
      LibGraphene.graphene_plane_transform(to_unsafe, matrix, normal_matrix, res)

      # Return value handling
      res
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
