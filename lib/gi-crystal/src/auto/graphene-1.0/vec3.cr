module Graphene
  struct Vec3
    @data : LibGraphene::Vec3

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Vec3)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(value : Graphene::Simd4F? = nil)
      @data = LibGraphene::Vec3.new
      @data.value = value unless value.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Vec3)).zero?
    end

    delegate :value, to: @data
    delegate :value=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_vec3_get_type
    end

    def add(b : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_add: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_add(to_unsafe, b, res)

      # Return value handling
      res
    end

    def cross(b : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_cross: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_cross(to_unsafe, b, res)

      # Return value handling
      res
    end

    def divide(b : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_divide: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_divide(to_unsafe, b, res)

      # Return value handling
      res
    end

    def dot(b : Graphene::Vec3) : Float32
      # graphene_vec3_dot: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_dot(to_unsafe, b)

      # Return value handling
      _retval
    end

    def equal(v2 : Graphene::Vec3) : Bool
      # graphene_vec3_equal: (Method)
      # @v2:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_equal(to_unsafe, v2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_vec3_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_vec3_free(to_unsafe)

      # Return value handling
    end

    def x : Float32
      # graphene_vec3_get_x: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_get_x(to_unsafe)

      # Return value handling
      _retval
    end

    def xy : Graphene::Vec2
      # graphene_vec3_get_xy: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec3_get_xy(to_unsafe, res)

      # Return value handling
      res
    end

    def xy0 : Graphene::Vec3
      # graphene_vec3_get_xy0: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_get_xy0(to_unsafe, res)

      # Return value handling
      res
    end

    def xyz0 : Graphene::Vec4
      # graphene_vec3_get_xyz0: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec4.new
      # C call
      LibGraphene.graphene_vec3_get_xyz0(to_unsafe, res)

      # Return value handling
      res
    end

    def xyz1 : Graphene::Vec4
      # graphene_vec3_get_xyz1: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec4.new
      # C call
      LibGraphene.graphene_vec3_get_xyz1(to_unsafe, res)

      # Return value handling
      res
    end

    def xyzw(w : Float32) : Graphene::Vec4
      # graphene_vec3_get_xyzw: (Method)
      # @w:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec4.new
      # C call
      LibGraphene.graphene_vec3_get_xyzw(to_unsafe, w, res)

      # Return value handling
      res
    end

    def y : Float32
      # graphene_vec3_get_y: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_get_y(to_unsafe)

      # Return value handling
      _retval
    end

    def z : Float32
      # graphene_vec3_get_z: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_get_z(to_unsafe)

      # Return value handling
      _retval
    end

    def init(x : Float32, y : Float32, z : Float32) : Graphene::Vec3
      # graphene_vec3_init: (Method)
      # @x:
      # @y:
      # @z:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_init(to_unsafe, x, y, z)

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_float(src : Enumerable(Float32)) : Graphene::Vec3
      # graphene_vec3_init_from_float: (Method)
      # @src: (array fixed-size=3 element-type Float)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 3") if src.size < 3

      src = src.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      _retval = LibGraphene.graphene_vec3_init_from_float(to_unsafe, src)

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_float(*src : Float32)
      init_from_float(src)
    end

    def init_from_vec3(src : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_init_from_vec3: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_init_from_vec3(to_unsafe, src)

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    def interpolate(v2 : Graphene::Vec3, factor : Float64) : Graphene::Vec3
      # graphene_vec3_interpolate: (Method)
      # @v2:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_interpolate(to_unsafe, v2, factor, res)

      # Return value handling
      res
    end

    def length : Float32
      # graphene_vec3_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_length(to_unsafe)

      # Return value handling
      _retval
    end

    def max(b : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_max: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_max(to_unsafe, b, res)

      # Return value handling
      res
    end

    def min(b : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_min: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_min(to_unsafe, b, res)

      # Return value handling
      res
    end

    def multiply(b : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_multiply: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_multiply(to_unsafe, b, res)

      # Return value handling
      res
    end

    def near(v2 : Graphene::Vec3, epsilon : Float32) : Bool
      # graphene_vec3_near: (Method)
      # @v2:
      # @epsilon:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_near(to_unsafe, v2, epsilon)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def negate : Graphene::Vec3
      # graphene_vec3_negate: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_negate(to_unsafe, res)

      # Return value handling
      res
    end

    def normalize : Graphene::Vec3
      # graphene_vec3_normalize: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_normalize(to_unsafe, res)

      # Return value handling
      res
    end

    def scale(factor : Float32) : Graphene::Vec3
      # graphene_vec3_scale: (Method)
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_scale(to_unsafe, factor, res)

      # Return value handling
      res
    end

    def subtract(b : Graphene::Vec3) : Graphene::Vec3
      # graphene_vec3_subtract: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_vec3_subtract(to_unsafe, b, res)

      # Return value handling
      res
    end

    def to_float(dest : Enumerable(Float32)) : Nil
      # graphene_vec3_to_float: (Method)
      # @dest: (out) (caller-allocates) (array fixed-size=3 element-type Float)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 3") if dest.size < 3

      dest = dest.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      LibGraphene.graphene_vec3_to_float(to_unsafe, dest)

      # Return value handling
    end

    def to_float(*dest : Float32)
      to_float(dest)
    end

    def self.one : Graphene::Vec3
      # graphene_vec3_one: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_one

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    def self.x_axis : Graphene::Vec3
      # graphene_vec3_x_axis: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_x_axis

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    def self.y_axis : Graphene::Vec3
      # graphene_vec3_y_axis: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_y_axis

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    def self.z_axis : Graphene::Vec3
      # graphene_vec3_z_axis: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_z_axis

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    def self.zero : Graphene::Vec3
      # graphene_vec3_zero: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec3_zero

      # Return value handling
      Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
