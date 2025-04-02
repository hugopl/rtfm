# Dependencies
require "../g_object-2.0/g_object.cr"

# C lib declaration
require "./lib_graphene.cr"

# Wrappers
require "./box.cr"
require "./euler.cr"
require "./frustum.cr"
require "./matrix.cr"
require "./plane.cr"
require "./point.cr"
require "./point3_d.cr"
require "./quad.cr"
require "./quaternion.cr"
require "./ray.cr"
require "./rect.cr"
require "./simd4_f.cr"
require "./simd4_x4_f.cr"
require "./size.cr"
require "./sphere.cr"
require "./triangle.cr"
require "./vec2.cr"
require "./vec3.cr"
require "./vec4.cr"

module Graphene
  PI       = 3.141593
  PI_2     = 1.570796
  VEC2_LEN =        2
  VEC3_LEN =        3
  VEC4_LEN =        4

  # Callbacks

  # Enums

  enum EulerOrder : Int32
    Default = -1
    Xyz     =  0
    Yzx     =  1
    Zxy     =  2
    Xzy     =  3
    Yxz     =  4
    Zyx     =  5
    Sxyz    =  6
    Sxyx    =  7
    Sxzy    =  8
    Sxzx    =  9
    Syzx    = 10
    Syzy    = 11
    Syxz    = 12
    Syxy    = 13
    Szxy    = 14
    Szxz    = 15
    Szyx    = 16
    Szyz    = 17
    Rzyx    = 18
    Rxyx    = 19
    Ryzx    = 20
    Rxzx    = 21
    Rxzy    = 22
    Ryzy    = 23
    Rzxy    = 24
    Ryxy    = 25
    Ryxz    = 26
    Rzxz    = 27
    Rxyz    = 28
    Rzyz    = 29
  end

  enum RayIntersectionKind : UInt32
    None  = 0
    Enter = 1
    Leave = 2
  end

  # Flags

  def self.box_empty : Graphene::Box
    # graphene_box_empty: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_box_empty

    # Return value handling
    Graphene::Box.new(_retval, GICrystal::Transfer::None)
  end

  def self.box_infinite : Graphene::Box
    # graphene_box_infinite: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_box_infinite

    # Return value handling
    Graphene::Box.new(_retval, GICrystal::Transfer::None)
  end

  def self.box_minus_one : Graphene::Box
    # graphene_box_minus_one: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_box_minus_one

    # Return value handling
    Graphene::Box.new(_retval, GICrystal::Transfer::None)
  end

  def self.box_one : Graphene::Box
    # graphene_box_one: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_box_one

    # Return value handling
    Graphene::Box.new(_retval, GICrystal::Transfer::None)
  end

  def self.box_one_minus_one : Graphene::Box
    # graphene_box_one_minus_one: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_box_one_minus_one

    # Return value handling
    Graphene::Box.new(_retval, GICrystal::Transfer::None)
  end

  def self.box_zero : Graphene::Box
    # graphene_box_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_box_zero

    # Return value handling
    Graphene::Box.new(_retval, GICrystal::Transfer::None)
  end

  def self.point3d_zero : Graphene::Point3D
    # graphene_point3d_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_point3d_zero

    # Return value handling
    Graphene::Point3D.new(_retval, GICrystal::Transfer::None)
  end

  def self.point_zero : Graphene::Point
    # graphene_point_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_point_zero

    # Return value handling
    Graphene::Point.new(_retval, GICrystal::Transfer::None)
  end

  def self.rect_alloc : Graphene::Rect
    # graphene_rect_alloc: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGraphene.graphene_rect_alloc

    # Return value handling
    Graphene::Rect.new(_retval, GICrystal::Transfer::Full)
  end

  def self.rect_zero : Graphene::Rect
    # graphene_rect_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_rect_zero

    # Return value handling
    Graphene::Rect.new(_retval, GICrystal::Transfer::None)
  end

  def self.size_zero : Graphene::Size
    # graphene_size_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_size_zero

    # Return value handling
    Graphene::Size.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec2_one : Graphene::Vec2
    # graphene_vec2_one: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec2_one

    # Return value handling
    Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec2_x_axis : Graphene::Vec2
    # graphene_vec2_x_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec2_x_axis

    # Return value handling
    Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec2_y_axis : Graphene::Vec2
    # graphene_vec2_y_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec2_y_axis

    # Return value handling
    Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec2_zero : Graphene::Vec2
    # graphene_vec2_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec2_zero

    # Return value handling
    Graphene::Vec2.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec3_one : Graphene::Vec3
    # graphene_vec3_one: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec3_one

    # Return value handling
    Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec3_x_axis : Graphene::Vec3
    # graphene_vec3_x_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec3_x_axis

    # Return value handling
    Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec3_y_axis : Graphene::Vec3
    # graphene_vec3_y_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec3_y_axis

    # Return value handling
    Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec3_z_axis : Graphene::Vec3
    # graphene_vec3_z_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec3_z_axis

    # Return value handling
    Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec3_zero : Graphene::Vec3
    # graphene_vec3_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec3_zero

    # Return value handling
    Graphene::Vec3.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec4_one : Graphene::Vec4
    # graphene_vec4_one: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec4_one

    # Return value handling
    Graphene::Vec4.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec4_w_axis : Graphene::Vec4
    # graphene_vec4_w_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec4_w_axis

    # Return value handling
    Graphene::Vec4.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec4_x_axis : Graphene::Vec4
    # graphene_vec4_x_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec4_x_axis

    # Return value handling
    Graphene::Vec4.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec4_y_axis : Graphene::Vec4
    # graphene_vec4_y_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec4_y_axis

    # Return value handling
    Graphene::Vec4.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec4_z_axis : Graphene::Vec4
    # graphene_vec4_z_axis: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec4_z_axis

    # Return value handling
    Graphene::Vec4.new(_retval, GICrystal::Transfer::None)
  end

  def self.vec4_zero : Graphene::Vec4
    # graphene_vec4_zero: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGraphene.graphene_vec4_zero

    # Return value handling
    Graphene::Vec4.new(_retval, GICrystal::Transfer::None)
  end

  # Errors

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    GObject.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end
