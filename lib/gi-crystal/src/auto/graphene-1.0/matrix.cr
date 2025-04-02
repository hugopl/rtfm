module Graphene
  struct Matrix
    @data : LibGraphene::Matrix

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGraphene::Matrix)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(value : Graphene::Simd4X4F? = nil)
      @data = LibGraphene::Matrix.new
      @data.value = value unless value.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGraphene::Matrix)).zero?
    end

    delegate :value, to: @data
    delegate :value=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGraphene.graphene_matrix_get_type
    end

    def decompose : Graphene::Vec3
      # graphene_matrix_decompose: (Method)
      # @translate: (out) (caller-allocates)
      # @scale: (out) (caller-allocates)
      # @rotate: (out) (caller-allocates)
      # @shear: (out) (caller-allocates)
      # @perspective: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      translate = Graphene::Vec3.new    # Generator::CallerAllocatesPlan
      scale = Graphene::Vec3.new        # Generator::CallerAllocatesPlan
      rotate = Graphene::Quaternion.new # Generator::CallerAllocatesPlan
      shear = Graphene::Vec3.new        # Generator::CallerAllocatesPlan
      perspective = Graphene::Vec4.new
      # C call
      _retval = LibGraphene.graphene_matrix_decompose(to_unsafe, translate, scale, rotate, shear, perspective)

      # Return value handling
      translate
    end

    def determinant : Float32
      # graphene_matrix_determinant: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_determinant(to_unsafe)

      # Return value handling
      _retval
    end

    def equal(b : Graphene::Matrix) : Bool
      # graphene_matrix_equal: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_equal(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal_fast(b : Graphene::Matrix) : Bool
      # graphene_matrix_equal_fast: (Method)
      # @b:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_equal_fast(to_unsafe, b)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # graphene_matrix_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_free(to_unsafe)

      # Return value handling
    end

    def row(index_ : UInt32) : Graphene::Vec4
      # graphene_matrix_get_row: (Method)
      # @index_:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec4.new
      # C call
      LibGraphene.graphene_matrix_get_row(to_unsafe, index_, res)

      # Return value handling
      res
    end

    def value(row : UInt32, col : UInt32) : Float32
      # graphene_matrix_get_value: (Method)
      # @row:
      # @col:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_get_value(to_unsafe, row, col)

      # Return value handling
      _retval
    end

    def x_scale : Float32
      # graphene_matrix_get_x_scale: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_get_x_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def x_translation : Float32
      # graphene_matrix_get_x_translation: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_get_x_translation(to_unsafe)

      # Return value handling
      _retval
    end

    def y_scale : Float32
      # graphene_matrix_get_y_scale: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_get_y_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def y_translation : Float32
      # graphene_matrix_get_y_translation: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_get_y_translation(to_unsafe)

      # Return value handling
      _retval
    end

    def z_scale : Float32
      # graphene_matrix_get_z_scale: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_get_z_scale(to_unsafe)

      # Return value handling
      _retval
    end

    def z_translation : Float32
      # graphene_matrix_get_z_translation: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_get_z_translation(to_unsafe)

      # Return value handling
      _retval
    end

    def init_from_2d(xx : Float64, yx : Float64, xy : Float64, yy : Float64, x_0 : Float64, y_0 : Float64) : Graphene::Matrix
      # graphene_matrix_init_from_2d: (Method)
      # @xx:
      # @yx:
      # @xy:
      # @yy:
      # @x_0:
      # @y_0:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_from_2d(to_unsafe, xx, yx, xy, yy, x_0, y_0)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_float(v : Enumerable(Float32)) : Graphene::Matrix
      # graphene_matrix_init_from_float: (Method)
      # @v: (array fixed-size=16 element-type Float)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 16") if v.size < 16

      v = v.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      _retval = LibGraphene.graphene_matrix_init_from_float(to_unsafe, v)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_float(*v : Float32)
      init_from_float(v)
    end

    def init_from_matrix(src : Graphene::Matrix) : Graphene::Matrix
      # graphene_matrix_init_from_matrix: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_from_matrix(to_unsafe, src)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_vec4(v0 : Graphene::Vec4, v1 : Graphene::Vec4, v2 : Graphene::Vec4, v3 : Graphene::Vec4) : Graphene::Matrix
      # graphene_matrix_init_from_vec4: (Method)
      # @v0:
      # @v1:
      # @v2:
      # @v3:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_from_vec4(to_unsafe, v0, v1, v2, v3)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_frustum(left : Float32, right : Float32, bottom : Float32, top : Float32, z_near : Float32, z_far : Float32) : Graphene::Matrix
      # graphene_matrix_init_frustum: (Method)
      # @left:
      # @right:
      # @bottom:
      # @top:
      # @z_near:
      # @z_far:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_frustum(to_unsafe, left, right, bottom, top, z_near, z_far)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_identity : Graphene::Matrix
      # graphene_matrix_init_identity: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_identity(to_unsafe)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_look_at(eye : Graphene::Vec3, center : Graphene::Vec3, up : Graphene::Vec3) : Graphene::Matrix
      # graphene_matrix_init_look_at: (Method)
      # @eye:
      # @center:
      # @up:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_look_at(to_unsafe, eye, center, up)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_ortho(left : Float32, right : Float32, top : Float32, bottom : Float32, z_near : Float32, z_far : Float32) : Graphene::Matrix
      # graphene_matrix_init_ortho: (Method)
      # @left:
      # @right:
      # @top:
      # @bottom:
      # @z_near:
      # @z_far:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_ortho(to_unsafe, left, right, top, bottom, z_near, z_far)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_perspective(fovy : Float32, aspect : Float32, z_near : Float32, z_far : Float32) : Graphene::Matrix
      # graphene_matrix_init_perspective: (Method)
      # @fovy:
      # @aspect:
      # @z_near:
      # @z_far:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_perspective(to_unsafe, fovy, aspect, z_near, z_far)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_rotate(angle : Float32, axis : Graphene::Vec3) : Graphene::Matrix
      # graphene_matrix_init_rotate: (Method)
      # @angle:
      # @axis:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_rotate(to_unsafe, angle, axis)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_scale(x : Float32, y : Float32, z : Float32) : Graphene::Matrix
      # graphene_matrix_init_scale: (Method)
      # @x:
      # @y:
      # @z:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_scale(to_unsafe, x, y, z)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_skew(x_skew : Float32, y_skew : Float32) : Graphene::Matrix
      # graphene_matrix_init_skew: (Method)
      # @x_skew:
      # @y_skew:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_skew(to_unsafe, x_skew, y_skew)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def init_translate(p : Graphene::Point3D) : Graphene::Matrix
      # graphene_matrix_init_translate: (Method)
      # @p:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_init_translate(to_unsafe, p)

      # Return value handling
      Graphene::Matrix.new(_retval, GICrystal::Transfer::None)
    end

    def interpolate(b : Graphene::Matrix, factor : Float64) : Graphene::Matrix
      # graphene_matrix_interpolate: (Method)
      # @b:
      # @factor:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Matrix.new
      # C call
      LibGraphene.graphene_matrix_interpolate(to_unsafe, b, factor, res)

      # Return value handling
      res
    end

    def inverse : Graphene::Matrix
      # graphene_matrix_inverse: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Matrix.new
      # C call
      _retval = LibGraphene.graphene_matrix_inverse(to_unsafe, res)

      # Return value handling
      res
    end

    def is_2d : Bool
      # graphene_matrix_is_2d: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_is_2d(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_backface_visible : Bool
      # graphene_matrix_is_backface_visible: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_is_backface_visible(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_identity : Bool
      # graphene_matrix_is_identity: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_is_identity(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_singular : Bool
      # graphene_matrix_is_singular: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_is_singular(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def multiply(b : Graphene::Matrix) : Graphene::Matrix
      # graphene_matrix_multiply: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Matrix.new
      # C call
      LibGraphene.graphene_matrix_multiply(to_unsafe, b, res)

      # Return value handling
      res
    end

    def near(b : Graphene::Matrix, epsilon : Float32) : Bool
      # graphene_matrix_near: (Method)
      # @b:
      # @epsilon:
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_near(to_unsafe, b, epsilon)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def normalize : Graphene::Matrix
      # graphene_matrix_normalize: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Matrix.new
      # C call
      LibGraphene.graphene_matrix_normalize(to_unsafe, res)

      # Return value handling
      res
    end

    def perspective(depth : Float32) : Graphene::Matrix
      # graphene_matrix_perspective: (Method)
      # @depth:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Matrix.new
      # C call
      LibGraphene.graphene_matrix_perspective(to_unsafe, depth, res)

      # Return value handling
      res
    end

    def print : Nil
      # graphene_matrix_print: (Method)
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_print(to_unsafe)

      # Return value handling
    end

    def project_point(p : Graphene::Point) : Graphene::Point
      # graphene_matrix_project_point: (Method)
      # @p:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point.new
      # C call
      LibGraphene.graphene_matrix_project_point(to_unsafe, p, res)

      # Return value handling
      res
    end

    def project_rect(r : Graphene::Rect) : Graphene::Quad
      # graphene_matrix_project_rect: (Method)
      # @r:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quad.new
      # C call
      LibGraphene.graphene_matrix_project_rect(to_unsafe, r, res)

      # Return value handling
      res
    end

    def project_rect_bounds(r : Graphene::Rect) : Graphene::Rect
      # graphene_matrix_project_rect_bounds: (Method)
      # @r:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_matrix_project_rect_bounds(to_unsafe, r, res)

      # Return value handling
      res
    end

    def rotate(angle : Float32, axis : Graphene::Vec3) : Nil
      # graphene_matrix_rotate: (Method)
      # @angle:
      # @axis:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_rotate(to_unsafe, angle, axis)

      # Return value handling
    end

    def rotate_euler(e : Graphene::Euler) : Nil
      # graphene_matrix_rotate_euler: (Method)
      # @e:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_rotate_euler(to_unsafe, e)

      # Return value handling
    end

    def rotate_quaternion(q : Graphene::Quaternion) : Nil
      # graphene_matrix_rotate_quaternion: (Method)
      # @q:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_rotate_quaternion(to_unsafe, q)

      # Return value handling
    end

    def rotate_x(angle : Float32) : Nil
      # graphene_matrix_rotate_x: (Method)
      # @angle:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_rotate_x(to_unsafe, angle)

      # Return value handling
    end

    def rotate_y(angle : Float32) : Nil
      # graphene_matrix_rotate_y: (Method)
      # @angle:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_rotate_y(to_unsafe, angle)

      # Return value handling
    end

    def rotate_z(angle : Float32) : Nil
      # graphene_matrix_rotate_z: (Method)
      # @angle:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_rotate_z(to_unsafe, angle)

      # Return value handling
    end

    def scale(factor_x : Float32, factor_y : Float32, factor_z : Float32) : Nil
      # graphene_matrix_scale: (Method)
      # @factor_x:
      # @factor_y:
      # @factor_z:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_scale(to_unsafe, factor_x, factor_y, factor_z)

      # Return value handling
    end

    def skew_xy(factor : Float32) : Nil
      # graphene_matrix_skew_xy: (Method)
      # @factor:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_skew_xy(to_unsafe, factor)

      # Return value handling
    end

    def skew_xz(factor : Float32) : Nil
      # graphene_matrix_skew_xz: (Method)
      # @factor:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_skew_xz(to_unsafe, factor)

      # Return value handling
    end

    def skew_yz(factor : Float32) : Nil
      # graphene_matrix_skew_yz: (Method)
      # @factor:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_skew_yz(to_unsafe, factor)

      # Return value handling
    end

    def to_2d(xx : Float64, yx : Float64, xy : Float64, yy : Float64, x_0 : Float64, y_0 : Float64) : Bool
      # graphene_matrix_to_2d: (Method)
      # @xx: (out) (transfer full)
      # @yx: (out) (transfer full)
      # @xy: (out) (transfer full)
      # @yy: (out) (transfer full)
      # @x_0: (out) (transfer full)
      # @y_0: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGraphene.graphene_matrix_to_2d(to_unsafe, xx, yx, xy, yy, x_0, y_0)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_float(v : Enumerable(Float32)) : Nil
      # graphene_matrix_to_float: (Method)
      # @v: (out) (caller-allocates) (array fixed-size=16 element-type Float)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 16") if v.size < 16

      v = v.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      LibGraphene.graphene_matrix_to_float(to_unsafe, v)

      # Return value handling
    end

    def to_float(*v : Float32)
      to_float(v)
    end

    def transform_bounds(r : Graphene::Rect) : Graphene::Rect
      # graphene_matrix_transform_bounds: (Method)
      # @r:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_matrix_transform_bounds(to_unsafe, r, res)

      # Return value handling
      res
    end

    def transform_box(b : Graphene::Box) : Graphene::Box
      # graphene_matrix_transform_box: (Method)
      # @b:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Box.new
      # C call
      LibGraphene.graphene_matrix_transform_box(to_unsafe, b, res)

      # Return value handling
      res
    end

    def transform_point(p : Graphene::Point) : Graphene::Point
      # graphene_matrix_transform_point: (Method)
      # @p:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point.new
      # C call
      LibGraphene.graphene_matrix_transform_point(to_unsafe, p, res)

      # Return value handling
      res
    end

    def transform_point3d(p : Graphene::Point3D) : Graphene::Point3D
      # graphene_matrix_transform_point3d: (Method)
      # @p:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_matrix_transform_point3d(to_unsafe, p, res)

      # Return value handling
      res
    end

    def transform_ray(r : Graphene::Ray) : Graphene::Ray
      # graphene_matrix_transform_ray: (Method)
      # @r:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Ray.new
      # C call
      LibGraphene.graphene_matrix_transform_ray(to_unsafe, r, res)

      # Return value handling
      res
    end

    def transform_rect(r : Graphene::Rect) : Graphene::Quad
      # graphene_matrix_transform_rect: (Method)
      # @r:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Quad.new
      # C call
      LibGraphene.graphene_matrix_transform_rect(to_unsafe, r, res)

      # Return value handling
      res
    end

    def transform_sphere(s : Graphene::Sphere) : Graphene::Sphere
      # graphene_matrix_transform_sphere: (Method)
      # @s:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Sphere.new
      # C call
      LibGraphene.graphene_matrix_transform_sphere(to_unsafe, s, res)

      # Return value handling
      res
    end

    def transform_vec3(v : Graphene::Vec3) : Graphene::Vec3
      # graphene_matrix_transform_vec3: (Method)
      # @v:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec3.new
      # C call
      LibGraphene.graphene_matrix_transform_vec3(to_unsafe, v, res)

      # Return value handling
      res
    end

    def transform_vec4(v : Graphene::Vec4) : Graphene::Vec4
      # graphene_matrix_transform_vec4: (Method)
      # @v:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Vec4.new
      # C call
      LibGraphene.graphene_matrix_transform_vec4(to_unsafe, v, res)

      # Return value handling
      res
    end

    def translate(pos : Graphene::Point3D) : Nil
      # graphene_matrix_translate: (Method)
      # @pos:
      # Returns: (transfer none)

      # C call
      LibGraphene.graphene_matrix_translate(to_unsafe, pos)

      # Return value handling
    end

    def transpose : Graphene::Matrix
      # graphene_matrix_transpose: (Method)
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Matrix.new
      # C call
      LibGraphene.graphene_matrix_transpose(to_unsafe, res)

      # Return value handling
      res
    end

    def unproject_point3d(modelview : Graphene::Matrix, point : Graphene::Point3D) : Graphene::Point3D
      # graphene_matrix_unproject_point3d: (Method)
      # @modelview:
      # @point:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point3D.new
      # C call
      LibGraphene.graphene_matrix_unproject_point3d(to_unsafe, modelview, point, res)

      # Return value handling
      res
    end

    def untransform_bounds(r : Graphene::Rect, bounds : Graphene::Rect) : Graphene::Rect
      # graphene_matrix_untransform_bounds: (Method)
      # @r:
      # @bounds:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Rect.new
      # C call
      LibGraphene.graphene_matrix_untransform_bounds(to_unsafe, r, bounds, res)

      # Return value handling
      res
    end

    def untransform_point(p : Graphene::Point, bounds : Graphene::Rect) : Graphene::Point
      # graphene_matrix_untransform_point: (Method)
      # @p:
      # @bounds:
      # @res: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      res = Graphene::Point.new
      # C call
      _retval = LibGraphene.graphene_matrix_untransform_point(to_unsafe, p, bounds, res)

      # Return value handling
      res
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
