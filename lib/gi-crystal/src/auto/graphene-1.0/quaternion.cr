module Graphene
  struct Quaternion
    @data : LibGraphene::Quaternion

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Quaternion)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(x : Float32? = nil, y : Float32? = nil, z : Float32? = nil, w : Float32? = nil)
      @data = LibGraphene::Quaternion.new
      @data.x = x unless x.nil?
      @data.y = y unless y.nil?
      @data.z = z unless z.nil?
      @data.w = w unless w.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Quaternion)).zero?
    end

    delegate :x, to: @data
    delegate :x=, to: @data
    delegate :y, to: @data
    delegate :y=, to: @data
    delegate :z, to: @data
    delegate :z=, to: @data
    delegate :w, to: @data
    delegate :w=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_quaternion_get_type
    end

    def add(b : Graphene::Quaternion) : Graphene::Quaternion
      # graphene_quaternion_add: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quaternion.new
      # C call
      LibGraphene.graphene_quaternion_add(to_unsafe, b, res)

      # Return value handling
      res
    end

    def dot(b : Graphene::Quaternion) : Float32
      # graphene_quaternion_dot: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_dot(to_unsafe, b)

      # Return value handling
      _retval
    end

    def equal(b : Graphene::Quaternion) : Bool
      # graphene_quaternion_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_quaternion_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_quaternion_free(to_unsafe)

      # Return value handling
    end

    def init(x : Float32, y : Float32, z : Float32, w : Float32) : Graphene::Quaternion
      # graphene_quaternion_init: (Method)
      # @x:
      # @y:
      # @z:
      # @w:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init(to_unsafe, x, y, z, w)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_angle_vec3(angle : Float32, axis : Graphene::Vec3) : Graphene::Quaternion
      # graphene_quaternion_init_from_angle_vec3: (Method)
      # @angle:
      # @axis:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_from_angle_vec3(to_unsafe, angle, axis)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_angles(deg_x : Float32, deg_y : Float32, deg_z : Float32) : Graphene::Quaternion
      # graphene_quaternion_init_from_angles: (Method)
      # @deg_x:
      # @deg_y:
      # @deg_z:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_from_angles(to_unsafe, deg_x, deg_y, deg_z)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_euler(e : Graphene::Euler) : Graphene::Quaternion
      # graphene_quaternion_init_from_euler: (Method)
      # @e:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_from_euler(to_unsafe, e)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_matrix(m : Graphene::Matrix) : Graphene::Quaternion
      # graphene_quaternion_init_from_matrix: (Method)
      # @m:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_from_matrix(to_unsafe, m)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_quaternion(src : Graphene::Quaternion) : Graphene::Quaternion
      # graphene_quaternion_init_from_quaternion: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_from_quaternion(to_unsafe, src)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_radians(rad_x : Float32, rad_y : Float32, rad_z : Float32) : Graphene::Quaternion
      # graphene_quaternion_init_from_radians: (Method)
      # @rad_x:
      # @rad_y:
      # @rad_z:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_from_radians(to_unsafe, rad_x, rad_y, rad_z)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vec4(src : Graphene::Vec4) : Graphene::Quaternion
      # graphene_quaternion_init_from_vec4: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_from_vec4(to_unsafe, src)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def init_identity : Graphene::Quaternion
      # graphene_quaternion_init_identity: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_quaternion_init_identity(to_unsafe)

      # Return value handling
      Graphene::Quaternion.new(_retval, GICrystal::Transfer::None)
    end

    def invert : Graphene::Quaternion
      # graphene_quaternion_invert: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quaternion.new
      # C call
      LibGraphene.graphene_quaternion_invert(to_unsafe, res)

      # Return value handling
      res
    end

    def multiply(b : Graphene::Quaternion) : Graphene::Quaternion
      # graphene_quaternion_multiply: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quaternion.new
      # C call
      LibGraphene.graphene_quaternion_multiply(to_unsafe, b, res)

      # Return value handling
      res
    end

    def normalize : Graphene::Quaternion
      # graphene_quaternion_normalize: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quaternion.new
      # C call
      LibGraphene.graphene_quaternion_normalize(to_unsafe, res)

      # Return value handling
      res
    end

    def scale(factor : Float32) : Graphene::Quaternion
      # graphene_quaternion_scale: (Method)
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quaternion.new
      # C call
      LibGraphene.graphene_quaternion_scale(to_unsafe, factor, res)

      # Return value handling
      res
    end

    def slerp(b : Graphene::Quaternion, factor : Float32) : Graphene::Quaternion
      # graphene_quaternion_slerp: (Method)
      # @b:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quaternion.new
      # C call
      LibGraphene.graphene_quaternion_slerp(to_unsafe, b, factor, res)

      # Return value handling
      res
    end

    def to_angle_vec3(angle : Float32) : Graphene::Vec3
      # graphene_quaternion_to_angle_vec3: (Method)
      # @angle: (out) (transfer full)
      # @axis: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      axis = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_quaternion_to_angle_vec3(to_unsafe, angle, axis)

      # Return value handling
      axis
    end

    def to_angles : Nil
      # graphene_quaternion_to_angles: (Method)
      # @deg_x: (out) (transfer full) (optional)
      # @deg_y: (out) (transfer full) (optional)
      # @deg_z: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      deg_x = Pointer(Float32).null # Generator::OutArgUsedInReturnPlan
      deg_y = Pointer(Float32).null # Generator::OutArgUsedInReturnPlan
      deg_z = Pointer(Float32).null
      # C call
      LibGraphene.graphene_quaternion_to_angles(to_unsafe, deg_x, deg_y, deg_z)

      # Return value handling
    end

    def to_matrix : Graphene::Matrix
      # graphene_quaternion_to_matrix: (Method)
      # @m: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      m = Graphene::Matrix.new
      # C call
      LibGraphene.graphene_quaternion_to_matrix(to_unsafe, m)

      # Return value handling
      m
    end

    def to_radians : Nil
      # graphene_quaternion_to_radians: (Method)
      # @rad_x: (out) (transfer full) (optional)
      # @rad_y: (out) (transfer full) (optional)
      # @rad_z: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      rad_x = Pointer(Float32).null # Generator::OutArgUsedInReturnPlan
      rad_y = Pointer(Float32).null # Generator::OutArgUsedInReturnPlan
      rad_z = Pointer(Float32).null
      # C call
      LibGraphene.graphene_quaternion_to_radians(to_unsafe, rad_x, rad_y, rad_z)

      # Return value handling
    end

    def to_vec4 : Graphene::Vec4
      # graphene_quaternion_to_vec4: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec4.new
      # C call
      LibGraphene.graphene_quaternion_to_vec4(to_unsafe, res)

      # Return value handling
      res
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
