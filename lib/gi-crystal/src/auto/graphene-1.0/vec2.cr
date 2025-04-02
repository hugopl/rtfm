module Graphene
  struct Vec2
    @data : LibGraphene::Vec2

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Vec2)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(value : Graphene::Simd4F? = nil)
      @data = LibGraphene::Vec2.new
      @data.value = value unless value.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Vec2)).zero?
    end

    delegate :value, to: @data
    delegate :value=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_vec2_get_type
    end

    def add(b : Graphene::Vec2) : Graphene::Vec2
      # graphene_vec2_add: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_add(to_unsafe, b, res)

      # Return value handling
      res
    end

    def divide(b : Graphene::Vec2) : Graphene::Vec2
      # graphene_vec2_divide: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_divide(to_unsafe, b, res)

      # Return value handling
      res
    end

    def dot(b : Graphene::Vec2) : Float32
      # graphene_vec2_dot: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_dot(to_unsafe, b)

      # Return value handling
      _retval
    end

    def equal(v2 : Graphene::Vec2) : Bool
      # graphene_vec2_equal: (Method)
      # @v2:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_equal(to_unsafe, v2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_vec2_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_vec2_free(to_unsafe)

      # Return value handling
    end

    def x : Float32
      # graphene_vec2_get_x: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_get_x(to_unsafe)

      # Return value handling
      _retval
    end

    def y : Float32
      # graphene_vec2_get_y: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_get_y(to_unsafe)

      # Return value handling
      _retval
    end

    def init(x : Float32, y : Float32) : Graphene::Vec2
      # graphene_vec2_init: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_init(to_unsafe, x, y)

      # Return value handling
      Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_float(src : Enumerable(Float32)) : Graphene::Vec2
      # graphene_vec2_init_from_float: (Method)
      # @src: (array fixed-size=2 element-type Float)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 2") if src.size < 2

      src = src.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      _retval = LibGraphene.graphene_vec2_init_from_float(to_unsafe, src)

      # Return value handling
      Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_float(*src : Float32)
      init_from_float(src)
    end

    def init_from_vec2(src : Graphene::Vec2) : Graphene::Vec2
      # graphene_vec2_init_from_vec2: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_init_from_vec2(to_unsafe, src)

      # Return value handling
      Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
    end

    def interpolate(v2 : Graphene::Vec2, factor : Float64) : Graphene::Vec2
      # graphene_vec2_interpolate: (Method)
      # @v2:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_interpolate(to_unsafe, v2, factor, res)

      # Return value handling
      res
    end

    def length : Float32
      # graphene_vec2_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_length(to_unsafe)

      # Return value handling
      _retval
    end

    def max(b : Graphene::Vec2) : Graphene::Vec2
      # graphene_vec2_max: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_max(to_unsafe, b, res)

      # Return value handling
      res
    end

    def min(b : Graphene::Vec2) : Graphene::Vec2
      # graphene_vec2_min: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_min(to_unsafe, b, res)

      # Return value handling
      res
    end

    def multiply(b : Graphene::Vec2) : Graphene::Vec2
      # graphene_vec2_multiply: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_multiply(to_unsafe, b, res)

      # Return value handling
      res
    end

    def near(v2 : Graphene::Vec2, epsilon : Float32) : Bool
      # graphene_vec2_near: (Method)
      # @v2:
      # @epsilon:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_near(to_unsafe, v2, epsilon)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def negate : Graphene::Vec2
      # graphene_vec2_negate: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_negate(to_unsafe, res)

      # Return value handling
      res
    end

    def normalize : Graphene::Vec2
      # graphene_vec2_normalize: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_normalize(to_unsafe, res)

      # Return value handling
      res
    end

    def scale(factor : Float32) : Graphene::Vec2
      # graphene_vec2_scale: (Method)
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_scale(to_unsafe, factor, res)

      # Return value handling
      res
    end

    def subtract(b : Graphene::Vec2) : Graphene::Vec2
      # graphene_vec2_subtract: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec2.new
      # C call
      LibGraphene.graphene_vec2_subtract(to_unsafe, b, res)

      # Return value handling
      res
    end

    def to_float(dest : Enumerable(Float32)) : Nil
      # graphene_vec2_to_float: (Method)
      # @dest: (out) (caller-allocates) (array fixed-size=2 element-type Float)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 2") if dest.size < 2

      dest = dest.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      LibGraphene.graphene_vec2_to_float(to_unsafe, dest)

      # Return value handling
    end

    def to_float(*dest : Float32)
      to_float(dest)
    end

    def self.one : Graphene::Vec2
      # graphene_vec2_one: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_one

      # Return value handling
      Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
    end

    def self.x_axis : Graphene::Vec2
      # graphene_vec2_x_axis: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_x_axis

      # Return value handling
      Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
    end

    def self.y_axis : Graphene::Vec2
      # graphene_vec2_y_axis: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_y_axis

      # Return value handling
      Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
    end

    def self.zero : Graphene::Vec2
      # graphene_vec2_zero: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_vec2_zero

      # Return value handling
      Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
