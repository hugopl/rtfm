@[Link("gtk-4", pkg_config: "gtk-4")]
lib LibGsk
  # Flags
  type PathForeachFlags = UInt32

  # Enums
  type BlendMode = UInt32
  type Corner = UInt32
  type FillRule = UInt32
  type GLUniformType = UInt32
  type LineCap = UInt32
  type LineJoin = UInt32
  type MaskMode = UInt32
  type PathDirection = UInt32
  type PathOperation = UInt32
  type RenderNodeType = UInt32
  type ScalingFilter = UInt32
  type SerializationError = UInt32
  type TransformCategory = UInt32

  # Callbacks
  alias ParseErrorFunc = Pointer(LibGsk::ParseLocation), Pointer(LibGsk::ParseLocation), Pointer(LibGLib::Error), Pointer(Void) -> Void
  alias PathForeachFunc = UInt32, Pointer(LibGraphene::Point), UInt64, Float32, Pointer(Void) -> LibC::Int

  # Interface types

  # Structs
  type BroadwayRendererClass = Void # Struct with zero bytes

  type CairoRendererClass = Void # Struct with zero bytes

  struct ColorStop # 20 bytes long
    offset : Float32
    color : LibGdk::RGBA
  end

  type GLRendererClass = Void # Struct with zero bytes

  struct GLShaderClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ParseLocation # 40 bytes long
    bytes : UInt64
    chars : UInt64
    lines : UInt64
    line_bytes : UInt64
    line_chars : UInt64
  end

  type Path = Void # Struct with zero bytes

  type PathBuilder = Void # Struct with zero bytes

  type PathMeasure = Void # Struct with zero bytes

  type PathPoint = Void # Struct with zero bytes

  type RendererClass = Void # Struct with zero bytes

  struct RoundedRect # 48 bytes long
    bounds : LibGraphene::Rect
    corner : LibGraphene::Size[4]
  end

  type ShaderArgsBuilder = Void # Struct with zero bytes

  struct Shadow # 28 bytes long
    color : LibGdk::RGBA
    dx : Float32
    dy : Float32
    radius : Float32
  end

  type Stroke = Void # Struct with zero bytes

  type Transform = Void # Struct with zero bytes

  type VulkanRendererClass = Void # Struct with zero bytes

  # Unions

  # Objects
  type BlendNode = Void # Object struct with no fields

  type BlurNode = Void # Object struct with no fields

  type BorderNode = Void # Object struct with no fields

  type BroadwayRenderer = Void # Object struct with no fields

  type CairoNode = Void # Object struct with no fields

  type CairoRenderer = Void # Object struct with no fields

  type ClipNode = Void # Object struct with no fields

  type ColorMatrixNode = Void # Object struct with no fields

  type ColorNode = Void # Object struct with no fields

  type ConicGradientNode = Void # Object struct with no fields

  type ContainerNode = Void # Object struct with no fields

  type CrossFadeNode = Void # Object struct with no fields

  type DebugNode = Void # Object struct with no fields

  type FillNode = Void # Object struct with no fields

  type GLRenderer = Void # Object struct with no fields

  type GLShader = Void # Object struct with no fields

  type GLShaderNode = Void # Object struct with no fields

  type InsetShadowNode = Void # Object struct with no fields

  type LinearGradientNode = Void # Object struct with no fields

  type MaskNode = Void # Object struct with no fields

  type NglRenderer = Void # Object struct with no fields

  type OpacityNode = Void # Object struct with no fields

  type OutsetShadowNode = Void # Object struct with no fields

  type RadialGradientNode = Void # Object struct with no fields

  type RenderNode = Void # Object struct with no fields

  type Renderer = Void # Object struct with no fields

  type RepeatNode = Void # Object struct with no fields

  type RepeatingLinearGradientNode = Void # Object struct with no fields

  type RepeatingRadialGradientNode = Void # Object struct with no fields

  type RoundedClipNode = Void # Object struct with no fields

  type ShadowNode = Void # Object struct with no fields

  type StrokeNode = Void # Object struct with no fields

  type SubsurfaceNode = Void # Object struct with no fields

  type TextNode = Void # Object struct with no fields

  type TextureNode = Void # Object struct with no fields

  type TextureScaleNode = Void # Object struct with no fields

  type TransformNode = Void # Object struct with no fields

  type VulkanRenderer = Void # Object struct with no fields

  # All C Functions
  fun gsk_blend_mode_get_type : UInt64
  fun gsk_blend_node_get_blend_mode(this : Void*) : UInt32
  fun gsk_blend_node_get_bottom_child(this : Void*) : Pointer(Void)
  fun gsk_blend_node_get_top_child(this : Void*) : Pointer(Void)
  fun gsk_blend_node_get_type : UInt64
  fun gsk_blend_node_new(bottom : Pointer(Void), top : Pointer(Void), blend_mode : UInt32) : Pointer(Void)
  fun gsk_blur_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_blur_node_get_radius(this : Void*) : Float32
  fun gsk_blur_node_get_type : UInt64
  fun gsk_blur_node_new(child : Pointer(Void), radius : Float32) : Pointer(Void)
  fun gsk_border_node_get_colors(this : Void*) : Pointer(LibGdk::RGBA[4])
  fun gsk_border_node_get_outline(this : Void*) : Pointer(Void)
  fun gsk_border_node_get_type : UInt64
  fun gsk_border_node_get_widths(this : Void*) : Pointer(Float32[4])
  fun gsk_border_node_new(outline : Pointer(Void), border_width : Pointer(Float32), border_color : Pointer(LibGdk::RGBA)) : Pointer(Void)
  fun gsk_broadway_renderer_get_type : UInt64
  fun gsk_broadway_renderer_new : Pointer(Void)
  fun gsk_cairo_node_get_draw_context(this : Void*) : Pointer(Void)
  fun gsk_cairo_node_get_surface(this : Void*) : Pointer(Void)
  fun gsk_cairo_node_get_type : UInt64
  fun gsk_cairo_node_new(bounds : Pointer(Void)) : Pointer(Void)
  fun gsk_cairo_renderer_get_type : UInt64
  fun gsk_cairo_renderer_new : Pointer(Void)
  fun gsk_clip_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_clip_node_get_clip(this : Void*) : Pointer(Void)
  fun gsk_clip_node_get_type : UInt64
  fun gsk_clip_node_new(child : Pointer(Void), clip : Pointer(Void)) : Pointer(Void)
  fun gsk_color_matrix_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_color_matrix_node_get_color_matrix(this : Void*) : Pointer(Void)
  fun gsk_color_matrix_node_get_color_offset(this : Void*) : Pointer(Void)
  fun gsk_color_matrix_node_get_type : UInt64
  fun gsk_color_matrix_node_new(child : Pointer(Void), color_matrix : Pointer(Void), color_offset : Pointer(Void)) : Pointer(Void)
  fun gsk_color_node_get_color(this : Void*) : Pointer(Void)
  fun gsk_color_node_get_type : UInt64
  fun gsk_color_node_new(rgba : Pointer(Void), bounds : Pointer(Void)) : Pointer(Void)
  fun gsk_conic_gradient_node_get_angle(this : Void*) : Float32
  fun gsk_conic_gradient_node_get_center(this : Void*) : Pointer(Void)
  fun gsk_conic_gradient_node_get_color_stops(this : Void*, n_stops : Pointer(UInt64)) : Pointer(LibGsk::ColorStop)
  fun gsk_conic_gradient_node_get_n_color_stops(this : Void*) : UInt64
  fun gsk_conic_gradient_node_get_rotation(this : Void*) : Float32
  fun gsk_conic_gradient_node_get_type : UInt64
  fun gsk_conic_gradient_node_new(bounds : Pointer(Void), center : Pointer(Void), rotation : Float32, color_stops : Pointer(LibGsk::ColorStop), n_color_stops : UInt64) : Pointer(Void)
  fun gsk_container_node_get_child(this : Void*, idx : UInt32) : Pointer(Void)
  fun gsk_container_node_get_n_children(this : Void*) : UInt32
  fun gsk_container_node_get_type : UInt64
  fun gsk_container_node_new(children : Pointer(Pointer(LibGsk::RenderNode)), n_children : UInt32) : Pointer(Void)
  fun gsk_corner_get_type : UInt64
  fun gsk_cross_fade_node_get_end_child(this : Void*) : Pointer(Void)
  fun gsk_cross_fade_node_get_progress(this : Void*) : Float32
  fun gsk_cross_fade_node_get_start_child(this : Void*) : Pointer(Void)
  fun gsk_cross_fade_node_get_type : UInt64
  fun gsk_cross_fade_node_new(start : Pointer(Void), _end : Pointer(Void), progress : Float32) : Pointer(Void)
  fun gsk_debug_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_debug_node_get_message(this : Void*) : Pointer(LibC::Char)
  fun gsk_debug_node_get_type : UInt64
  fun gsk_debug_node_new(child : Pointer(Void), message : Pointer(LibC::Char)) : Pointer(Void)
  fun gsk_fill_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_fill_node_get_fill_rule(this : Void*) : UInt32
  fun gsk_fill_node_get_path(this : Void*) : Pointer(Void)
  fun gsk_fill_node_get_type : UInt64
  fun gsk_fill_node_new(child : Pointer(Void), path : Pointer(Void), fill_rule : UInt32) : Pointer(Void)
  fun gsk_fill_rule_get_type : UInt64
  fun gsk_gl_renderer_get_type : UInt64
  fun gsk_gl_renderer_new : Pointer(Void)
  fun gsk_gl_shader_compile(this : Void*, renderer : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun gsk_gl_shader_find_uniform_by_name(this : Void*, name : Pointer(LibC::Char)) : Int32
  fun gsk_gl_shader_get_arg_bool(this : Void*, args : Pointer(Void), idx : Int32) : LibC::Int
  fun gsk_gl_shader_get_arg_float(this : Void*, args : Pointer(Void), idx : Int32) : Float32
  fun gsk_gl_shader_get_arg_int(this : Void*, args : Pointer(Void), idx : Int32) : Int32
  fun gsk_gl_shader_get_arg_uint(this : Void*, args : Pointer(Void), idx : Int32) : UInt32
  fun gsk_gl_shader_get_arg_vec2(this : Void*, args : Pointer(Void), idx : Int32, out_value : Pointer(Void)) : Void
  fun gsk_gl_shader_get_arg_vec3(this : Void*, args : Pointer(Void), idx : Int32, out_value : Pointer(Void)) : Void
  fun gsk_gl_shader_get_arg_vec4(this : Void*, args : Pointer(Void), idx : Int32, out_value : Pointer(Void)) : Void
  fun gsk_gl_shader_get_args_size(this : Void*) : UInt64
  fun gsk_gl_shader_get_n_textures(this : Void*) : Int32
  fun gsk_gl_shader_get_n_uniforms(this : Void*) : Int32
  fun gsk_gl_shader_get_resource(this : Void*) : Pointer(LibC::Char)
  fun gsk_gl_shader_get_source(this : Void*) : Pointer(Void)
  fun gsk_gl_shader_get_type : UInt64
  fun gsk_gl_shader_get_uniform_name(this : Void*, idx : Int32) : Pointer(LibC::Char)
  fun gsk_gl_shader_get_uniform_offset(this : Void*, idx : Int32) : Int32
  fun gsk_gl_shader_get_uniform_type(this : Void*, idx : Int32) : UInt32
  fun gsk_gl_shader_new_from_bytes(sourcecode : Pointer(Void)) : Pointer(Void)
  fun gsk_gl_shader_new_from_resource(resource_path : Pointer(LibC::Char)) : Pointer(Void)
  fun gsk_gl_shader_node_get_args(this : Void*) : Pointer(Void)
  fun gsk_gl_shader_node_get_child(this : Void*, idx : UInt32) : Pointer(Void)
  fun gsk_gl_shader_node_get_n_children(this : Void*) : UInt32
  fun gsk_gl_shader_node_get_shader(this : Void*) : Pointer(Void)
  fun gsk_gl_shader_node_get_type : UInt64
  fun gsk_gl_shader_node_new(shader : Pointer(Void), bounds : Pointer(Void), args : Pointer(Void), children : Pointer(Pointer(LibGsk::RenderNode)), n_children : UInt32) : Pointer(Void)
  fun gsk_gl_uniform_type_get_type : UInt64
  fun gsk_inset_shadow_node_get_blur_radius(this : Void*) : Float32
  fun gsk_inset_shadow_node_get_color(this : Void*) : Pointer(Void)
  fun gsk_inset_shadow_node_get_dx(this : Void*) : Float32
  fun gsk_inset_shadow_node_get_dy(this : Void*) : Float32
  fun gsk_inset_shadow_node_get_outline(this : Void*) : Pointer(Void)
  fun gsk_inset_shadow_node_get_spread(this : Void*) : Float32
  fun gsk_inset_shadow_node_get_type : UInt64
  fun gsk_inset_shadow_node_new(outline : Pointer(Void), color : Pointer(Void), dx : Float32, dy : Float32, spread : Float32, blur_radius : Float32) : Pointer(Void)
  fun gsk_line_cap_get_type : UInt64
  fun gsk_line_join_get_type : UInt64
  fun gsk_linear_gradient_node_get_color_stops(this : Void*, n_stops : Pointer(UInt64)) : Pointer(LibGsk::ColorStop)
  fun gsk_linear_gradient_node_get_end(this : Void*) : Pointer(Void)
  fun gsk_linear_gradient_node_get_n_color_stops(this : Void*) : UInt64
  fun gsk_linear_gradient_node_get_start(this : Void*) : Pointer(Void)
  fun gsk_linear_gradient_node_get_type : UInt64
  fun gsk_linear_gradient_node_new(bounds : Pointer(Void), start : Pointer(Void), _end : Pointer(Void), color_stops : Pointer(LibGsk::ColorStop), n_color_stops : UInt64) : Pointer(Void)
  fun gsk_mask_mode_get_type : UInt64
  fun gsk_mask_node_get_mask(this : Void*) : Pointer(Void)
  fun gsk_mask_node_get_mask_mode(this : Void*) : UInt32
  fun gsk_mask_node_get_source(this : Void*) : Pointer(Void)
  fun gsk_mask_node_get_type : UInt64
  fun gsk_mask_node_new(source : Pointer(Void), mask : Pointer(Void), mask_mode : UInt32) : Pointer(Void)
  fun gsk_ngl_renderer_get_type : UInt64
  fun gsk_ngl_renderer_new : Pointer(Void)
  fun gsk_opacity_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_opacity_node_get_opacity(this : Void*) : Float32
  fun gsk_opacity_node_get_type : UInt64
  fun gsk_opacity_node_new(child : Pointer(Void), opacity : Float32) : Pointer(Void)
  fun gsk_outset_shadow_node_get_blur_radius(this : Void*) : Float32
  fun gsk_outset_shadow_node_get_color(this : Void*) : Pointer(Void)
  fun gsk_outset_shadow_node_get_dx(this : Void*) : Float32
  fun gsk_outset_shadow_node_get_dy(this : Void*) : Float32
  fun gsk_outset_shadow_node_get_outline(this : Void*) : Pointer(Void)
  fun gsk_outset_shadow_node_get_spread(this : Void*) : Float32
  fun gsk_outset_shadow_node_get_type : UInt64
  fun gsk_outset_shadow_node_new(outline : Pointer(Void), color : Pointer(Void), dx : Float32, dy : Float32, spread : Float32, blur_radius : Float32) : Pointer(Void)
  fun gsk_path_builder_add_cairo_path(this : Void*, path : Pointer(Void)) : Void
  fun gsk_path_builder_add_circle(this : Void*, center : Pointer(Void), radius : Float32) : Void
  fun gsk_path_builder_add_layout(this : Void*, layout : Pointer(Void)) : Void
  fun gsk_path_builder_add_path(this : Void*, path : Pointer(Void)) : Void
  fun gsk_path_builder_add_rect(this : Void*, rect : Pointer(Void)) : Void
  fun gsk_path_builder_add_reverse_path(this : Void*, path : Pointer(Void)) : Void
  fun gsk_path_builder_add_rounded_rect(this : Void*, rect : Pointer(Void)) : Void
  fun gsk_path_builder_add_segment(this : Void*, path : Pointer(Void), start : Pointer(Void), _end : Pointer(Void)) : Void
  fun gsk_path_builder_arc_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Void
  fun gsk_path_builder_close(this : Void*) : Void
  fun gsk_path_builder_conic_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, weight : Float32) : Void
  fun gsk_path_builder_cubic_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, x3 : Float32, y3 : Float32) : Void
  fun gsk_path_builder_get_current_point(this : Void*) : Pointer(Void)
  fun gsk_path_builder_get_type : UInt64
  fun gsk_path_builder_html_arc_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, radius : Float32) : Void
  fun gsk_path_builder_line_to(this : Void*, x : Float32, y : Float32) : Void
  fun gsk_path_builder_move_to(this : Void*, x : Float32, y : Float32) : Void
  fun gsk_path_builder_new : Pointer(Void)
  fun gsk_path_builder_quad_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Void
  fun gsk_path_builder_ref(this : Void*) : Pointer(Void)
  fun gsk_path_builder_rel_arc_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Void
  fun gsk_path_builder_rel_conic_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, weight : Float32) : Void
  fun gsk_path_builder_rel_cubic_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, x3 : Float32, y3 : Float32) : Void
  fun gsk_path_builder_rel_html_arc_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, radius : Float32) : Void
  fun gsk_path_builder_rel_line_to(this : Void*, x : Float32, y : Float32) : Void
  fun gsk_path_builder_rel_move_to(this : Void*, x : Float32, y : Float32) : Void
  fun gsk_path_builder_rel_quad_to(this : Void*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Void
  fun gsk_path_builder_rel_svg_arc_to(this : Void*, rx : Float32, ry : Float32, x_axis_rotation : Float32, large_arc : LibC::Int, positive_sweep : LibC::Int, x : Float32, y : Float32) : Void
  fun gsk_path_builder_svg_arc_to(this : Void*, rx : Float32, ry : Float32, x_axis_rotation : Float32, large_arc : LibC::Int, positive_sweep : LibC::Int, x : Float32, y : Float32) : Void
  fun gsk_path_builder_to_path(this : Void*) : Pointer(Void)
  fun gsk_path_builder_unref(this : Void*) : Void
  fun gsk_path_direction_get_type : UInt64
  fun gsk_path_foreach(this : Void*, flags : UInt32, func : Void*, user_data : Pointer(Void)) : LibC::Int
  fun gsk_path_foreach_flags_get_type : UInt64
  fun gsk_path_get_bounds(this : Void*, bounds : Pointer(Void)) : LibC::Int
  fun gsk_path_get_closest_point(this : Void*, point : Pointer(Void), threshold : Float32, result : Pointer(Void), distance : Pointer(Float32)) : LibC::Int
  fun gsk_path_get_end_point(this : Void*, result : Pointer(Void)) : LibC::Int
  fun gsk_path_get_start_point(this : Void*, result : Pointer(Void)) : LibC::Int
  fun gsk_path_get_stroke_bounds(this : Void*, stroke : Pointer(Void), bounds : Pointer(Void)) : LibC::Int
  fun gsk_path_get_type : UInt64
  fun gsk_path_in_fill(this : Void*, point : Pointer(Void), fill_rule : UInt32) : LibC::Int
  fun gsk_path_is_closed(this : Void*) : LibC::Int
  fun gsk_path_is_empty(this : Void*) : LibC::Int
  fun gsk_path_measure_get_length(this : Void*) : Float32
  fun gsk_path_measure_get_path(this : Void*) : Pointer(Void)
  fun gsk_path_measure_get_point(this : Void*, distance : Float32, result : Pointer(Void)) : LibC::Int
  fun gsk_path_measure_get_tolerance(this : Void*) : Float32
  fun gsk_path_measure_get_type : UInt64
  fun gsk_path_measure_new(path : Pointer(Void)) : Pointer(Void)
  fun gsk_path_measure_new_with_tolerance(path : Pointer(Void), tolerance : Float32) : Pointer(Void)
  fun gsk_path_measure_ref(this : Void*) : Pointer(Void)
  fun gsk_path_measure_unref(this : Void*) : Void
  fun gsk_path_operation_get_type : UInt64
  fun gsk_path_parse(string : Pointer(LibC::Char)) : Pointer(Void)
  fun gsk_path_parse(string : Pointer(LibC::Char)) : Pointer(Void)
  fun gsk_path_point_compare(this : Void*, point2 : Pointer(Void)) : Int32
  fun gsk_path_point_copy(this : Void*) : Pointer(Void)
  fun gsk_path_point_equal(this : Void*, point2 : Pointer(Void)) : LibC::Int
  fun gsk_path_point_free(this : Void*) : Void
  fun gsk_path_point_get_curvature(this : Void*, path : Pointer(Void), direction : UInt32, center : Pointer(Void)) : Float32
  fun gsk_path_point_get_distance(this : Void*, measure : Pointer(Void)) : Float32
  fun gsk_path_point_get_position(this : Void*, path : Pointer(Void), position : Pointer(Void)) : Void
  fun gsk_path_point_get_rotation(this : Void*, path : Pointer(Void), direction : UInt32) : Float32
  fun gsk_path_point_get_tangent(this : Void*, path : Pointer(Void), direction : UInt32, tangent : Pointer(Void)) : Void
  fun gsk_path_point_get_type : UInt64
  fun gsk_path_print(this : Void*, string : Pointer(Void)) : Void
  fun gsk_path_ref(this : Void*) : Pointer(Void)
  fun gsk_path_to_cairo(this : Void*, cr : Pointer(Void)) : Void
  fun gsk_path_to_string(this : Void*) : Pointer(LibC::Char)
  fun gsk_path_unref(this : Void*) : Void
  fun gsk_radial_gradient_node_get_center(this : Void*) : Pointer(Void)
  fun gsk_radial_gradient_node_get_color_stops(this : Void*, n_stops : Pointer(UInt64)) : Pointer(LibGsk::ColorStop)
  fun gsk_radial_gradient_node_get_end(this : Void*) : Float32
  fun gsk_radial_gradient_node_get_hradius(this : Void*) : Float32
  fun gsk_radial_gradient_node_get_n_color_stops(this : Void*) : UInt64
  fun gsk_radial_gradient_node_get_start(this : Void*) : Float32
  fun gsk_radial_gradient_node_get_type : UInt64
  fun gsk_radial_gradient_node_get_vradius(this : Void*) : Float32
  fun gsk_radial_gradient_node_new(bounds : Pointer(Void), center : Pointer(Void), hradius : Float32, vradius : Float32, start : Float32, _end : Float32, color_stops : Pointer(LibGsk::ColorStop), n_color_stops : UInt64) : Pointer(Void)
  fun gsk_render_node_deserialize(bytes : Pointer(Void), error_func : Void*, user_data : Pointer(Void)) : Pointer(Void)
  fun gsk_render_node_draw(this : Void*, cr : Pointer(Void)) : Void
  fun gsk_render_node_get_bounds(this : Void*, bounds : Pointer(Void)) : Void
  fun gsk_render_node_get_node_type(this : Void*) : UInt32
  fun gsk_render_node_get_opaque_rect(this : Void*, out_opaque : Pointer(Void)) : LibC::Int
  fun gsk_render_node_get_type : UInt64
  fun gsk_render_node_ref(this : Void*) : Pointer(Void)
  fun gsk_render_node_serialize(this : Void*) : Pointer(Void)
  fun gsk_render_node_type_get_type : UInt64
  fun gsk_render_node_unref(this : Void*) : Void
  fun gsk_render_node_write_to_file(this : Void*, filename : Pointer(LibC::Char), error : LibGLib::Error**) : LibC::Int
  fun gsk_renderer_get_surface(this : Void*) : Pointer(Void)
  fun gsk_renderer_get_type : UInt64
  fun gsk_renderer_is_realized(this : Void*) : LibC::Int
  fun gsk_renderer_new_for_surface(surface : Pointer(Void)) : Pointer(Void)
  fun gsk_renderer_realize(this : Void*, surface : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun gsk_renderer_realize_for_display(this : Void*, display : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun gsk_renderer_render(this : Void*, root : Pointer(Void), region : Pointer(Void)) : Void
  fun gsk_renderer_render_texture(this : Void*, root : Pointer(Void), viewport : Pointer(Void)) : Pointer(Void)
  fun gsk_renderer_unrealize(this : Void*) : Void
  fun gsk_repeat_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_repeat_node_get_child_bounds(this : Void*) : Pointer(Void)
  fun gsk_repeat_node_get_type : UInt64
  fun gsk_repeat_node_new(bounds : Pointer(Void), child : Pointer(Void), child_bounds : Pointer(Void)) : Pointer(Void)
  fun gsk_repeating_linear_gradient_node_get_type : UInt64
  fun gsk_repeating_linear_gradient_node_new(bounds : Pointer(Void), start : Pointer(Void), _end : Pointer(Void), color_stops : Pointer(LibGsk::ColorStop), n_color_stops : UInt64) : Pointer(Void)
  fun gsk_repeating_radial_gradient_node_get_type : UInt64
  fun gsk_repeating_radial_gradient_node_new(bounds : Pointer(Void), center : Pointer(Void), hradius : Float32, vradius : Float32, start : Float32, _end : Float32, color_stops : Pointer(LibGsk::ColorStop), n_color_stops : UInt64) : Pointer(Void)
  fun gsk_rounded_clip_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_rounded_clip_node_get_clip(this : Void*) : Pointer(Void)
  fun gsk_rounded_clip_node_get_type : UInt64
  fun gsk_rounded_clip_node_new(child : Pointer(Void), clip : Pointer(Void)) : Pointer(Void)
  fun gsk_rounded_rect_contains_point(this : Void*, point : Pointer(Void)) : LibC::Int
  fun gsk_rounded_rect_contains_rect(this : Void*, rect : Pointer(Void)) : LibC::Int
  fun gsk_rounded_rect_init(this : Void*, bounds : Pointer(Void), top_left : Pointer(Void), top_right : Pointer(Void), bottom_right : Pointer(Void), bottom_left : Pointer(Void)) : Pointer(Void)
  fun gsk_rounded_rect_init_copy(this : Void*, src : Pointer(Void)) : Pointer(Void)
  fun gsk_rounded_rect_init_from_rect(this : Void*, bounds : Pointer(Void), radius : Float32) : Pointer(Void)
  fun gsk_rounded_rect_intersects_rect(this : Void*, rect : Pointer(Void)) : LibC::Int
  fun gsk_rounded_rect_is_rectilinear(this : Void*) : LibC::Int
  fun gsk_rounded_rect_normalize(this : Void*) : Pointer(Void)
  fun gsk_rounded_rect_offset(this : Void*, dx : Float32, dy : Float32) : Pointer(Void)
  fun gsk_rounded_rect_shrink(this : Void*, top : Float32, right : Float32, bottom : Float32, left : Float32) : Pointer(Void)
  fun gsk_scaling_filter_get_type : UInt64
  fun gsk_serialization_error_get_type : UInt64
  fun gsk_serialization_error_quark : UInt32
  fun gsk_shader_args_builder_get_type : UInt64
  fun gsk_shader_args_builder_new(shader : Pointer(Void), initial_values : Pointer(Void)) : Pointer(Void)
  fun gsk_shader_args_builder_ref(this : Void*) : Pointer(Void)
  fun gsk_shader_args_builder_set_bool(this : Void*, idx : Int32, value : LibC::Int) : Void
  fun gsk_shader_args_builder_set_float(this : Void*, idx : Int32, value : Float32) : Void
  fun gsk_shader_args_builder_set_int(this : Void*, idx : Int32, value : Int32) : Void
  fun gsk_shader_args_builder_set_uint(this : Void*, idx : Int32, value : UInt32) : Void
  fun gsk_shader_args_builder_set_vec2(this : Void*, idx : Int32, value : Pointer(Void)) : Void
  fun gsk_shader_args_builder_set_vec3(this : Void*, idx : Int32, value : Pointer(Void)) : Void
  fun gsk_shader_args_builder_set_vec4(this : Void*, idx : Int32, value : Pointer(Void)) : Void
  fun gsk_shader_args_builder_to_args(this : Void*) : Pointer(Void)
  fun gsk_shader_args_builder_unref(this : Void*) : Void
  fun gsk_shadow_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_shadow_node_get_n_shadows(this : Void*) : UInt64
  fun gsk_shadow_node_get_shadow(this : Void*, i : UInt64) : Pointer(Void)
  fun gsk_shadow_node_get_type : UInt64
  fun gsk_shadow_node_new(child : Pointer(Void), shadows : Pointer(LibGsk::Shadow), n_shadows : UInt64) : Pointer(Void)
  fun gsk_stroke_copy(this : Void*) : Pointer(Void)
  fun gsk_stroke_equal(stroke1 : Pointer(Void), stroke2 : Pointer(Void)) : LibC::Int
  fun gsk_stroke_equal(stroke1 : Pointer(Void), stroke2 : Pointer(Void)) : LibC::Int
  fun gsk_stroke_free(this : Void*) : Void
  fun gsk_stroke_get_dash(this : Void*, n_dash : Pointer(UInt64)) : Pointer(Float32)
  fun gsk_stroke_get_dash_offset(this : Void*) : Float32
  fun gsk_stroke_get_line_cap(this : Void*) : UInt32
  fun gsk_stroke_get_line_join(this : Void*) : UInt32
  fun gsk_stroke_get_line_width(this : Void*) : Float32
  fun gsk_stroke_get_miter_limit(this : Void*) : Float32
  fun gsk_stroke_get_type : UInt64
  fun gsk_stroke_new(line_width : Float32) : Pointer(Void)
  fun gsk_stroke_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_stroke_node_get_path(this : Void*) : Pointer(Void)
  fun gsk_stroke_node_get_stroke(this : Void*) : Pointer(Void)
  fun gsk_stroke_node_get_type : UInt64
  fun gsk_stroke_node_new(child : Pointer(Void), path : Pointer(Void), stroke : Pointer(Void)) : Pointer(Void)
  fun gsk_stroke_set_dash(this : Void*, dash : Pointer(Float32), n_dash : UInt64) : Void
  fun gsk_stroke_set_dash_offset(this : Void*, offset : Float32) : Void
  fun gsk_stroke_set_line_cap(this : Void*, line_cap : UInt32) : Void
  fun gsk_stroke_set_line_join(this : Void*, line_join : UInt32) : Void
  fun gsk_stroke_set_line_width(this : Void*, line_width : Float32) : Void
  fun gsk_stroke_set_miter_limit(this : Void*, limit : Float32) : Void
  fun gsk_stroke_to_cairo(this : Void*, cr : Pointer(Void)) : Void
  fun gsk_subsurface_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_subsurface_node_get_type : UInt64
  fun gsk_text_node_get_color(this : Void*) : Pointer(Void)
  fun gsk_text_node_get_font(this : Void*) : Pointer(Void)
  fun gsk_text_node_get_glyphs(this : Void*, n_glyphs : Pointer(UInt32)) : Pointer(LibPango::GlyphInfo)
  fun gsk_text_node_get_num_glyphs(this : Void*) : UInt32
  fun gsk_text_node_get_offset(this : Void*) : Pointer(Void)
  fun gsk_text_node_get_type : UInt64
  fun gsk_text_node_has_color_glyphs(this : Void*) : LibC::Int
  fun gsk_text_node_new(font : Pointer(Void), glyphs : Pointer(Void), color : Pointer(Void), offset : Pointer(Void)) : Pointer(Void)
  fun gsk_texture_node_get_texture(this : Void*) : Pointer(Void)
  fun gsk_texture_node_get_type : UInt64
  fun gsk_texture_node_new(texture : Pointer(Void), bounds : Pointer(Void)) : Pointer(Void)
  fun gsk_texture_scale_node_get_filter(this : Void*) : UInt32
  fun gsk_texture_scale_node_get_texture(this : Void*) : Pointer(Void)
  fun gsk_texture_scale_node_get_type : UInt64
  fun gsk_texture_scale_node_new(texture : Pointer(Void), bounds : Pointer(Void), filter : UInt32) : Pointer(Void)
  fun gsk_transform_category_get_type : UInt64
  fun gsk_transform_equal(this : Void*, second : Pointer(Void)) : LibC::Int
  fun gsk_transform_get_category(this : Void*) : UInt32
  fun gsk_transform_get_type : UInt64
  fun gsk_transform_invert(this : Void*) : Pointer(Void)
  fun gsk_transform_matrix(this : Void*, matrix : Pointer(Void)) : Pointer(Void)
  fun gsk_transform_new : Pointer(Void)
  fun gsk_transform_node_get_child(this : Void*) : Pointer(Void)
  fun gsk_transform_node_get_transform(this : Void*) : Pointer(Void)
  fun gsk_transform_node_get_type : UInt64
  fun gsk_transform_node_new(child : Pointer(Void), transform : Pointer(Void)) : Pointer(Void)
  fun gsk_transform_parse(string : Pointer(LibC::Char), out_transform : Pointer(Pointer(Void))) : LibC::Int
  fun gsk_transform_parse(string : Pointer(LibC::Char), out_transform : Pointer(Pointer(Void))) : LibC::Int
  fun gsk_transform_perspective(this : Void*, depth : Float32) : Pointer(Void)
  fun gsk_transform_print(this : Void*, string : Pointer(Void)) : Void
  fun gsk_transform_ref(this : Void*) : Pointer(Void)
  fun gsk_transform_rotate(this : Void*, angle : Float32) : Pointer(Void)
  fun gsk_transform_rotate_3d(this : Void*, angle : Float32, axis : Pointer(Void)) : Pointer(Void)
  fun gsk_transform_scale(this : Void*, factor_x : Float32, factor_y : Float32) : Pointer(Void)
  fun gsk_transform_scale_3d(this : Void*, factor_x : Float32, factor_y : Float32, factor_z : Float32) : Pointer(Void)
  fun gsk_transform_skew(this : Void*, skew_x : Float32, skew_y : Float32) : Pointer(Void)
  fun gsk_transform_to_2d(this : Void*, out_xx : Pointer(Float32), out_yx : Pointer(Float32), out_xy : Pointer(Float32), out_yy : Pointer(Float32), out_dx : Pointer(Float32), out_dy : Pointer(Float32)) : Void
  fun gsk_transform_to_2d_components(this : Void*, out_skew_x : Pointer(Float32), out_skew_y : Pointer(Float32), out_scale_x : Pointer(Float32), out_scale_y : Pointer(Float32), out_angle : Pointer(Float32), out_dx : Pointer(Float32), out_dy : Pointer(Float32)) : Void
  fun gsk_transform_to_affine(this : Void*, out_scale_x : Pointer(Float32), out_scale_y : Pointer(Float32), out_dx : Pointer(Float32), out_dy : Pointer(Float32)) : Void
  fun gsk_transform_to_matrix(this : Void*, out_matrix : Pointer(Void)) : Void
  fun gsk_transform_to_string(this : Void*) : Pointer(LibC::Char)
  fun gsk_transform_to_translate(this : Void*, out_dx : Pointer(Float32), out_dy : Pointer(Float32)) : Void
  fun gsk_transform_transform(this : Void*, other : Pointer(Void)) : Pointer(Void)
  fun gsk_transform_transform_bounds(this : Void*, rect : Pointer(Void), out_rect : Pointer(Void)) : Void
  fun gsk_transform_transform_point(this : Void*, point : Pointer(Void), out_point : Pointer(Void)) : Void
  fun gsk_transform_translate(this : Void*, point : Pointer(Void)) : Pointer(Void)
  fun gsk_transform_translate_3d(this : Void*, point : Pointer(Void)) : Pointer(Void)
  fun gsk_transform_unref(this : Void*) : Void
  fun gsk_value_dup_render_node(value : Pointer(Void)) : Pointer(Void)
  fun gsk_value_get_render_node(value : Pointer(Void)) : Pointer(Void)
  fun gsk_value_set_render_node(value : Pointer(Void), node : Pointer(Void)) : Void
  fun gsk_value_take_render_node(value : Pointer(Void), node : Pointer(Void)) : Void
  fun gsk_vulkan_renderer_get_type : UInt64
  fun gsk_vulkan_renderer_new : Pointer(Void)
end
