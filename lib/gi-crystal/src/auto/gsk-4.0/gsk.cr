# Dependencies
require "../graphene-1.0/graphene.cr"
require "../gdk-4.0/gdk.cr"

# C lib declaration
require "./lib_gsk.cr"

# Wrappers
require "./blend_node.cr"
require "./blur_node.cr"
require "./border_node.cr"
require "./broadway_renderer.cr"
require "./cairo_node.cr"
require "./cairo_renderer.cr"
require "./clip_node.cr"
require "./color_matrix_node.cr"
require "./color_node.cr"
require "./color_stop.cr"
require "./conic_gradient_node.cr"
require "./container_node.cr"
require "./cross_fade_node.cr"
require "./debug_node.cr"
require "./fill_node.cr"
require "./gl_renderer.cr"
require "./gl_shader.cr"
require "./gl_shader_node.cr"
require "./inset_shadow_node.cr"
require "./linear_gradient_node.cr"
require "./mask_node.cr"
require "./ngl_renderer.cr"
require "./opacity_node.cr"
require "./outset_shadow_node.cr"
require "./parse_location.cr"
require "./path.cr"
require "./path_builder.cr"
require "./path_measure.cr"
require "./path_point.cr"
require "./radial_gradient_node.cr"
require "./render_node.cr"
require "./renderer.cr"
require "./repeat_node.cr"
require "./repeating_linear_gradient_node.cr"
require "./repeating_radial_gradient_node.cr"
require "./rounded_clip_node.cr"
require "./rounded_rect.cr"
require "./shader_args_builder.cr"
require "./shadow.cr"
require "./shadow_node.cr"
require "./stroke.cr"
require "./stroke_node.cr"
require "./subsurface_node.cr"
require "./text_node.cr"
require "./texture_node.cr"
require "./texture_scale_node.cr"
require "./transform.cr"
require "./transform_node.cr"
require "./vulkan_renderer.cr"

module Gsk
  # Callbacks

  alias ParseErrorFunc = Proc(Gsk::ParseLocation, Gsk::ParseLocation, GLib::Error, Nil)

  alias PathForeachFunc = Proc(Gsk::PathOperation, Graphene::Point, UInt64, Float32, Bool)

  # Base class for all errors in this module.
  class GskError < GLib::Error
  end

  # Enums

  enum BlendMode : UInt32
    Default    =  0
    Multiply   =  1
    Screen     =  2
    Overlay    =  3
    Darken     =  4
    Lighten    =  5
    ColorDodge =  6
    ColorBurn  =  7
    HardLight  =  8
    SoftLight  =  9
    Difference = 10
    Exclusion  = 11
    Color      = 12
    Hue        = 13
    Saturation = 14
    Luminosity = 15

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_blend_mode_get_type
    end
  end

  enum Corner : UInt32
    TopLeft     = 0
    TopRight    = 1
    BottomRight = 2
    BottomLeft  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_corner_get_type
    end
  end

  enum FillRule : UInt32
    Winding = 0
    EvenOdd = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_fill_rule_get_type
    end
  end

  enum GLUniformType : UInt32
    None  = 0
    Float = 1
    Int   = 2
    Uint  = 3
    Bool  = 4
    Vec2  = 5
    Vec3  = 6
    Vec4  = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_gl_uniform_type_get_type
    end
  end

  enum LineCap : UInt32
    Butt   = 0
    Round  = 1
    Square = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_line_cap_get_type
    end
  end

  enum LineJoin : UInt32
    Miter = 0
    Round = 1
    Bevel = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_line_join_get_type
    end
  end

  enum MaskMode : UInt32
    Alpha             = 0
    InvertedAlpha     = 1
    Luminance         = 2
    InvertedLuminance = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_mask_mode_get_type
    end
  end

  enum PathDirection : UInt32
    FromStart = 0
    ToStart   = 1
    ToEnd     = 2
    FromEnd   = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_path_direction_get_type
    end
  end

  enum PathOperation : UInt32
    Move  = 0
    Close = 1
    Line  = 2
    Quad  = 3
    Cubic = 4
    Conic = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_path_operation_get_type
    end
  end

  enum RenderNodeType : UInt32
    NotARenderNode              =  0
    ContainerNode               =  1
    CairoNode                   =  2
    ColorNode                   =  3
    LinearGradientNode          =  4
    RepeatingLinearGradientNode =  5
    RadialGradientNode          =  6
    RepeatingRadialGradientNode =  7
    ConicGradientNode           =  8
    BorderNode                  =  9
    TextureNode                 = 10
    InsetShadowNode             = 11
    OutsetShadowNode            = 12
    TransformNode               = 13
    OpacityNode                 = 14
    ColorMatrixNode             = 15
    RepeatNode                  = 16
    ClipNode                    = 17
    RoundedClipNode             = 18
    ShadowNode                  = 19
    BlendNode                   = 20
    CrossFadeNode               = 21
    TextNode                    = 22
    BlurNode                    = 23
    DebugNode                   = 24
    GlShaderNode                = 25
    TextureScaleNode            = 26
    MaskNode                    = 27
    FillNode                    = 28
    StrokeNode                  = 29
    SubsurfaceNode              = 30

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_render_node_type_get_type
    end
  end

  enum ScalingFilter : UInt32
    Linear    = 0
    Nearest   = 1
    Trilinear = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_scaling_filter_get_type
    end
  end

  enum TransformCategory : UInt32
    Unknown      = 0
    Any          = 1
    G3d          = 2
    G2d          = 3
    G2dAffine    = 4
    G2dTranslate = 5
    Identity     = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_transform_category_get_type
    end
  end

  # Flags

  @[Flags]
  enum PathForeachFlags : UInt32
    OnlyLines = 0
    Quad      = 1
    Cubic     = 2
    Conic     = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_path_foreach_flags_get_type
    end
  end

  def self.path_parse(string : ::String) : Gsk::Path?
    # gsk_path_parse: (None)
    # @string:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGsk.gsk_path_parse(string)

    # Return value handling
    Gsk::Path.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.serialization_error_quark : UInt32
    # gsk_serialization_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGsk.gsk_serialization_error_quark

    # Return value handling
    _retval
  end

  def self.stroke_equal(stroke1 : Pointer(Void)?, stroke2 : Pointer(Void)?) : Bool
    # gsk_stroke_equal: (None)
    # @stroke1: (nullable)
    # @stroke2: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    stroke1 = if stroke1.nil?
                Pointer(Void).null
              else
                stroke1.to_unsafe
              end
    # Generator::NullableArrayPlan
    stroke2 = if stroke2.nil?
                Pointer(Void).null
              else
                stroke2.to_unsafe
              end

    # C call
    _retval = LibGsk.gsk_stroke_equal(stroke1, stroke2)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.transform_parse(string : ::String, out_transform : Gsk::Transform) : Bool
    # gsk_transform_parse: (None)
    # @string:
    # @out_transform: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibGsk.gsk_transform_parse(string, out_transform)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.value_dup_render_node(value : _) : Gsk::RenderNode?
    # gsk_value_dup_render_node: (None)
    # @value:
    # Returns: (transfer full) (nullable)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGsk.gsk_value_dup_render_node(value)

    # Return value handling
    Gsk::RenderNode.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.value_get_render_node(value : _) : Gsk::RenderNode?
    # gsk_value_get_render_node: (None)
    # @value:
    # Returns: (transfer none) (nullable)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGsk.gsk_value_get_render_node(value)

    # Return value handling
    Gsk::RenderNode.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.value_set_render_node(value : _, node : Gsk::RenderNode) : Nil
    # gsk_value_set_render_node: (None)
    # @value:
    # @node:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    LibGsk.gsk_value_set_render_node(value, node)

    # Return value handling
  end

  def self.value_take_render_node(value : _, node : Gsk::RenderNode?) : Nil
    # gsk_value_take_render_node: (None)
    # @value:
    # @node: (transfer full) (nullable)
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end
    # Generator::TransferFullArgPlan
    GICrystal.ref(node)
    # Generator::NullableArrayPlan
    node = if node.nil?
             Pointer(Void).null
           else
             node.to_unsafe
           end

    # C call
    LibGsk.gsk_value_take_render_node(value, node)

    # Return value handling
  end

  # Errors

  class SerializationError < GskError
    class UnsupportedFormat < SerializationError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gsk-serialization-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnsupportedVersion < SerializationError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gsk-serialization-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidData < SerializationError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gsk-serialization-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    error_domain = error.value.domain
    error_code = error.value.code

    if error_domain == LibGLib.g_quark_try_string("gsk-serialization-error-quark")
      return SerializationError::UnsupportedFormat.new(error, transfer) if error_code == 0
      return SerializationError::UnsupportedVersion.new(error, transfer) if error_code == 1
      return SerializationError::InvalidData.new(error, transfer) if error_code == 2
    end

    Graphene.gerror_to_crystal?(error, transfer)
    Gdk.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../../../gtk4/src/bindings/gsk/gi_crystal.cr"
require "../../../../gtk4/src/bindings/gsk/render_node.cr"
