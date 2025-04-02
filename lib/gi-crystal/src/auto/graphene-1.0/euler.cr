module Graphene
  class Euler
    @data : LibGraphene::Euler

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Euler)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(angles : Graphene::Vec3? = nil, order : Graphene::EulerOrder? = nil)
      _instance = allocate
      _instance.angles = angles unless angles.nil?
      _instance.order = order unless order.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Euler)).zero?
    end

    def angles : Graphene::Vec3
      value = to_unsafe.as(Pointer(LibGraphene::Euler)).value.angles
      Graphene::Vec3.new(value, GICrystal::Transfer::None)
    end

    def angles=(value : Graphene::Vec3)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibGraphene::Euler))
      value
    end

    def order : Graphene::EulerOrder
      value = to_unsafe.as(Pointer(LibGraphene::Euler)).value.order
      Graphene::EulerOrder.new(value)
    end

    def order=(value : Graphene::EulerOrder)
      _var = (to_unsafe + 16).as(Pointer(Int32))
      _var.copy_from(value.to_unsafe, sizeof(LibGraphene::Euler))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_euler_get_type
    end

    def equal(b : Graphene::Euler) : Bool
      # graphene_euler_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_euler_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_euler_free(to_unsafe)

      # Return value handling
    end

    def alpha : Float32
      # graphene_euler_get_alpha: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_get_alpha(to_unsafe)

      # Return value handling
      _retval
    end

    def beta : Float32
      # graphene_euler_get_beta: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_get_beta(to_unsafe)

      # Return value handling
      _retval
    end

    def gamma : Float32
      # graphene_euler_get_gamma: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_get_gamma(to_unsafe)

      # Return value handling
      _retval
    end

    def order : Graphene::EulerOrder
      # graphene_euler_get_order: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_get_order(to_unsafe)

      # Return value handling
      Graphene::EulerOrder.new(_retval)
    end

    def x : Float32
      # graphene_euler_get_x: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_get_x(to_unsafe)

      # Return value handling
      _retval
    end

    def y : Float32
      # graphene_euler_get_y: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_get_y(to_unsafe)

      # Return value handling
      _retval
    end

    def z : Float32
      # graphene_euler_get_z: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_get_z(to_unsafe)

      # Return value handling
      _retval
    end

    def init(x : Float32, y : Float32, z : Float32) : Graphene::Euler
      # graphene_euler_init: (Method)
      # @x:
      # @y:
      # @z:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_init(to_unsafe, x, y, z)

      # Return value handling
      Graphene::Euler.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_euler(src : Graphene::Euler?) : Graphene::Euler
      # graphene_euler_init_from_euler: (Method)
      # @src: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      src = if src.nil?
              Pointer(Void).null
            else
              src.to_unsafe
            end

      # C call
      _retval = LibGraphene.graphene_euler_init_from_euler(to_unsafe, src)

      # Return value handling
      Graphene::Euler.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_matrix(m : Graphene::Matrix?, order : Graphene::EulerOrder) : Graphene::Euler
      # graphene_euler_init_from_matrix: (Method)
      # @m: (nullable)
      # @order:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      m = if m.nil?
            Pointer(Void).null
          else
            m.to_unsafe
          end

      # C call
      _retval = LibGraphene.graphene_euler_init_from_matrix(to_unsafe, m, order)

      # Return value handling
      Graphene::Euler.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_quaternion(q : Graphene::Quaternion?, order : Graphene::EulerOrder) : Graphene::Euler
      # graphene_euler_init_from_quaternion: (Method)
      # @q: (nullable)
      # @order:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      q = if q.nil?
            Pointer(Void).null
          else
            q.to_unsafe
          end

      # C call
      _retval = LibGraphene.graphene_euler_init_from_quaternion(to_unsafe, q, order)

      # Return value handling
      Graphene::Euler.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_radians(x : Float32, y : Float32, z : Float32, order : Graphene::EulerOrder) : Graphene::Euler
      # graphene_euler_init_from_radians: (Method)
      # @x:
      # @y:
      # @z:
      # @order:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_init_from_radians(to_unsafe, x, y, z, order)

      # Return value handling
      Graphene::Euler.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vec3(v : Graphene::Vec3?, order : Graphene::EulerOrder) : Graphene::Euler
      # graphene_euler_init_from_vec3: (Method)
      # @v: (nullable)
      # @order:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      v = if v.nil?
            Pointer(Void).null
          else
            v.to_unsafe
          end

      # C call
      _retval = LibGraphene.graphene_euler_init_from_vec3(to_unsafe, v, order)

      # Return value handling
      Graphene::Euler.new(_retval, GICrystal::Transfer::None)
    end

    def init_with_order(x : Float32, y : Float32, z : Float32, order : Graphene::EulerOrder) : Graphene::Euler
      # graphene_euler_init_with_order: (Method)
      # @x:
      # @y:
      # @z:
      # @order:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_euler_init_with_order(to_unsafe, x, y, z, order)

      # Return value handling
      Graphene::Euler.new(_retval, GICrystal::Transfer::None)
    end

    def reorder(order : Graphene::EulerOrder) : Graphene::Euler
      # graphene_euler_reorder: (Method)
      # @order:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Euler.new
      # C call
      LibGraphene.graphene_euler_reorder(to_unsafe, order, res)

      # Return value handling
      res
    end

    def to_matrix : Graphene::Matrix
      # graphene_euler_to_matrix: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Matrix.new
      # C call
      LibGraphene.graphene_euler_to_matrix(to_unsafe, res)

      # Return value handling
      res
    end

    def to_quaternion : Graphene::Quaternion
      # graphene_euler_to_quaternion: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quaternion.new
      # C call
      LibGraphene.graphene_euler_to_quaternion(to_unsafe, res)

      # Return value handling
      res
    end

    def to_vec3 : Graphene::Vec3
      # graphene_euler_to_vec3: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_euler_to_vec3(to_unsafe, res)

      # Return value handling
      res
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
