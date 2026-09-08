module Gsk
  class Transform
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Transform.g_type, pointer)
                 else
                   pointer
                 end
    end

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(Transform.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_transform_get_type
    end

    def equal(second : Gsk::Transform?) : Bool
      # gsk_transform_equal: (Method)
      # @second: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      second = if second.nil?
                 Pointer(Void).null
               else
                 second.to_unsafe
               end

      # C call
      _retval = LibGsk.gsk_transform_equal(to_unsafe, second)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def category : Gsk::TransformCategory
      # gsk_transform_get_category: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_transform_get_category(to_unsafe)

      # Return value handling
      Gsk::TransformCategory.new(_retval)
    end

    def invert : Gsk::Transform?
      # gsk_transform_invert: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_invert(to_unsafe)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def matrix(matrix : Graphene::Matrix) : Gsk::Transform
      # gsk_transform_matrix: (Method)
      # @matrix:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_transform_matrix(to_unsafe, matrix)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full)
    end

    def matrix_2d(xx : Float32, yx : Float32, xy : Float32, yy : Float32, dx : Float32, dy : Float32) : Gsk::Transform?
      # gsk_transform_matrix_2d: (Method)
      # @xx:
      # @yx:
      # @xy:
      # @yy:
      # @dx:
      # @dy:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_matrix_2d(to_unsafe, xx, yx, xy, yy, dx, dy)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def perspective(depth : Float32) : Gsk::Transform
      # gsk_transform_perspective: (Method)
      # @depth:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_transform_perspective(to_unsafe, depth)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full)
    end

    def print(string : GLib::String) : Nil
      # gsk_transform_print: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_transform_print(to_unsafe, string)

      # Return value handling
    end

    def ref : Gsk::Transform?
      # gsk_transform_ref: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_ref(to_unsafe)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def rotate(angle : Float32) : Gsk::Transform?
      # gsk_transform_rotate: (Method)
      # @angle:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_rotate(to_unsafe, angle)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def rotate_3d(angle : Float32, axis : Graphene::Vec3) : Gsk::Transform?
      # gsk_transform_rotate_3d: (Method)
      # @angle:
      # @axis:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_rotate_3d(to_unsafe, angle, axis)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def scale(factor_x : Float32, factor_y : Float32) : Gsk::Transform?
      # gsk_transform_scale: (Method)
      # @factor_x:
      # @factor_y:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_scale(to_unsafe, factor_x, factor_y)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def scale_3d(factor_x : Float32, factor_y : Float32, factor_z : Float32) : Gsk::Transform?
      # gsk_transform_scale_3d: (Method)
      # @factor_x:
      # @factor_y:
      # @factor_z:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_scale_3d(to_unsafe, factor_x, factor_y, factor_z)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def skew(skew_x : Float32, skew_y : Float32) : Gsk::Transform?
      # gsk_transform_skew: (Method)
      # @skew_x:
      # @skew_y:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_skew(to_unsafe, skew_x, skew_y)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_2d(out_xx : Float32, out_yx : Float32, out_xy : Float32, out_yy : Float32, out_dx : Float32, out_dy : Float32) : Nil
      # gsk_transform_to_2d: (Method)
      # @out_xx: (out) (transfer full)
      # @out_yx: (out) (transfer full)
      # @out_xy: (out) (transfer full)
      # @out_yy: (out) (transfer full)
      # @out_dx: (out) (transfer full)
      # @out_dy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_transform_to_2d(to_unsafe, out_xx, out_yx, out_xy, out_yy, out_dx, out_dy)

      # Return value handling
    end

    def to_2d_components(out_skew_x : Float32, out_skew_y : Float32, out_scale_x : Float32, out_scale_y : Float32, out_angle : Float32, out_dx : Float32, out_dy : Float32) : Nil
      # gsk_transform_to_2d_components: (Method)
      # @out_skew_x: (out) (transfer full)
      # @out_skew_y: (out) (transfer full)
      # @out_scale_x: (out) (transfer full)
      # @out_scale_y: (out) (transfer full)
      # @out_angle: (out) (transfer full)
      # @out_dx: (out) (transfer full)
      # @out_dy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_transform_to_2d_components(to_unsafe, out_skew_x, out_skew_y, out_scale_x, out_scale_y, out_angle, out_dx, out_dy)

      # Return value handling
    end

    def to_affine(out_scale_x : Float32, out_scale_y : Float32, out_dx : Float32, out_dy : Float32) : Nil
      # gsk_transform_to_affine: (Method)
      # @out_scale_x: (out) (transfer full)
      # @out_scale_y: (out) (transfer full)
      # @out_dx: (out) (transfer full)
      # @out_dy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_transform_to_affine(to_unsafe, out_scale_x, out_scale_y, out_dx, out_dy)

      # Return value handling
    end

    def to_matrix : Graphene::Matrix
      # gsk_transform_to_matrix: (Method)
      # @out_matrix: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      out_matrix = Graphene::Matrix.new
      # C call
      LibGsk.gsk_transform_to_matrix(to_unsafe, out_matrix)

      # Return value handling
      out_matrix
    end

    def to_string : ::String
      # gsk_transform_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_transform_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def to_translate(out_dx : Float32, out_dy : Float32) : Nil
      # gsk_transform_to_translate: (Method)
      # @out_dx: (out) (transfer full)
      # @out_dy: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_transform_to_translate(to_unsafe, out_dx, out_dy)

      # Return value handling
    end

    def transform(other : Gsk::Transform?) : Gsk::Transform?
      # gsk_transform_transform: (Method)
      # @other: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      other = if other.nil?
                Pointer(Void).null
              else
                other.to_unsafe
              end

      # C call
      _retval = LibGsk.gsk_transform_transform(to_unsafe, other)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def transform_bounds(rect : Graphene::Rect) : Graphene::Rect
      # gsk_transform_transform_bounds: (Method)
      # @rect:
      # @out_rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      out_rect = Graphene::Rect.new
      # C call
      LibGsk.gsk_transform_transform_bounds(to_unsafe, rect, out_rect)

      # Return value handling
      out_rect
    end

    def transform_point(point : Graphene::Point) : Graphene::Point
      # gsk_transform_transform_point: (Method)
      # @point:
      # @out_point: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      out_point = Graphene::Point.new
      # C call
      LibGsk.gsk_transform_transform_point(to_unsafe, point, out_point)

      # Return value handling
      out_point
    end

    def translate(point : Graphene::Point) : Gsk::Transform?
      # gsk_transform_translate: (Method)
      # @point:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_translate(to_unsafe, point)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def translate_3d(point : Graphene::Point3D) : Gsk::Transform?
      # gsk_transform_translate_3d: (Method)
      # @point:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_transform_translate_3d(to_unsafe, point)

      # Return value handling
      Gsk::Transform.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def unref : Nil
      # gsk_transform_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_transform_unref(to_unsafe)

      # Return value handling
    end

    def self.parse(string : ::String, out_transform : Gsk::Transform) : Bool
      # gsk_transform_parse: (None)
      # @string:
      # @out_transform: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_transform_parse(string, out_transform)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
