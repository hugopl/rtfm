require "../gdk-4.0/snapshot"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Snapshot < Gdk::Snapshot
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::SnapshotClass), class_init,
        sizeof(LibGtk::Snapshot), instance_init, 0)
    end

    GICrystal.declare_new_method(Snapshot, g_object_get_qdata)

    # Initialize a new `Snapshot`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_snapshot_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Snapshot.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # gtk_snapshot_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_snapshot_new

      # Return value handling
      Gtk::Snapshot.new(_retval, GICrystal::Transfer::Full)
    end

    def append_border(outline : Gsk::RoundedRect, border_width : Enumerable(Float32), border_color : Enumerable(Gdk::RGBA)) : Nil
      # gtk_snapshot_append_border: (Method)
      # @outline:
      # @border_width: (array fixed-size=4 element-type Float)
      # @border_color: (array fixed-size=4 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if border_width.size < 4

      border_width = border_width.to_a.to_unsafe.as(Pointer(Float32))
      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if border_color.size < 4

      border_color = border_color.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGdk::RGBA))

      # C call
      LibGtk.gtk_snapshot_append_border(to_unsafe, outline, border_width, border_color)

      # Return value handling
    end

    def append_cairo(bounds : Graphene::Rect) : Cairo::Context
      # gtk_snapshot_append_cairo: (Method)
      # @bounds:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_snapshot_append_cairo(to_unsafe, bounds)

      # Return value handling
      Cairo::Context.new(_retval, GICrystal::Transfer::Full)
    end

    def append_color(color : Gdk::RGBA, bounds : Graphene::Rect) : Nil
      # gtk_snapshot_append_color: (Method)
      # @color:
      # @bounds:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_color(to_unsafe, color, bounds)

      # Return value handling
    end

    def append_conic_gradient(bounds : Graphene::Rect, center : Graphene::Point, rotation : Float32, stops : Enumerable(Gsk::ColorStop)) : Nil
      # gtk_snapshot_append_conic_gradient: (Method)
      # @bounds:
      # @center:
      # @rotation:
      # @stops: (array length=n_stops element-type Interface)
      # @n_stops:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_stops = stops.size
      # Generator::ArrayArgPlan
      stops = stops.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::ColorStop))

      # C call
      LibGtk.gtk_snapshot_append_conic_gradient(to_unsafe, bounds, center, rotation, stops, n_stops)

      # Return value handling
    end

    def append_fill(path : Gsk::Path, fill_rule : Gsk::FillRule, color : Gdk::RGBA) : Nil
      # gtk_snapshot_append_fill: (Method)
      # @path:
      # @fill_rule:
      # @color:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_fill(to_unsafe, path, fill_rule, color)

      # Return value handling
    end

    def append_inset_shadow(outline : Gsk::RoundedRect, color : Gdk::RGBA, dx : Float32, dy : Float32, spread : Float32, blur_radius : Float32) : Nil
      # gtk_snapshot_append_inset_shadow: (Method)
      # @outline:
      # @color:
      # @dx:
      # @dy:
      # @spread:
      # @blur_radius:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_inset_shadow(to_unsafe, outline, color, dx, dy, spread, blur_radius)

      # Return value handling
    end

    def append_layout(layout : Pango::Layout, color : Gdk::RGBA) : Nil
      # gtk_snapshot_append_layout: (Method)
      # @layout:
      # @color:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_layout(to_unsafe, layout, color)

      # Return value handling
    end

    def append_linear_gradient(bounds : Graphene::Rect, start_point : Graphene::Point, end_point : Graphene::Point, stops : Enumerable(Gsk::ColorStop)) : Nil
      # gtk_snapshot_append_linear_gradient: (Method)
      # @bounds:
      # @start_point:
      # @end_point:
      # @stops: (array length=n_stops element-type Interface)
      # @n_stops:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_stops = stops.size
      # Generator::ArrayArgPlan
      stops = stops.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::ColorStop))

      # C call
      LibGtk.gtk_snapshot_append_linear_gradient(to_unsafe, bounds, start_point, end_point, stops, n_stops)

      # Return value handling
    end

    def append_node(node : Gsk::RenderNode) : Nil
      # gtk_snapshot_append_node: (Method)
      # @node:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_node(to_unsafe, node)

      # Return value handling
    end

    def append_outset_shadow(outline : Gsk::RoundedRect, color : Gdk::RGBA, dx : Float32, dy : Float32, spread : Float32, blur_radius : Float32) : Nil
      # gtk_snapshot_append_outset_shadow: (Method)
      # @outline:
      # @color:
      # @dx:
      # @dy:
      # @spread:
      # @blur_radius:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_outset_shadow(to_unsafe, outline, color, dx, dy, spread, blur_radius)

      # Return value handling
    end

    def append_radial_gradient(bounds : Graphene::Rect, center : Graphene::Point, hradius : Float32, vradius : Float32, start : Float32, end _end : Float32, stops : Enumerable(Gsk::ColorStop)) : Nil
      # gtk_snapshot_append_radial_gradient: (Method)
      # @bounds:
      # @center:
      # @hradius:
      # @vradius:
      # @start:
      # @end:
      # @stops: (array length=n_stops element-type Interface)
      # @n_stops:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_stops = stops.size
      # Generator::ArrayArgPlan
      stops = stops.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::ColorStop))

      # C call
      LibGtk.gtk_snapshot_append_radial_gradient(to_unsafe, bounds, center, hradius, vradius, start, _end, stops, n_stops)

      # Return value handling
    end

    def append_repeating_linear_gradient(bounds : Graphene::Rect, start_point : Graphene::Point, end_point : Graphene::Point, stops : Enumerable(Gsk::ColorStop)) : Nil
      # gtk_snapshot_append_repeating_linear_gradient: (Method)
      # @bounds:
      # @start_point:
      # @end_point:
      # @stops: (array length=n_stops element-type Interface)
      # @n_stops:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_stops = stops.size
      # Generator::ArrayArgPlan
      stops = stops.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::ColorStop))

      # C call
      LibGtk.gtk_snapshot_append_repeating_linear_gradient(to_unsafe, bounds, start_point, end_point, stops, n_stops)

      # Return value handling
    end

    def append_repeating_radial_gradient(bounds : Graphene::Rect, center : Graphene::Point, hradius : Float32, vradius : Float32, start : Float32, end _end : Float32, stops : Enumerable(Gsk::ColorStop)) : Nil
      # gtk_snapshot_append_repeating_radial_gradient: (Method)
      # @bounds:
      # @center:
      # @hradius:
      # @vradius:
      # @start:
      # @end:
      # @stops: (array length=n_stops element-type Interface)
      # @n_stops:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_stops = stops.size
      # Generator::ArrayArgPlan
      stops = stops.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::ColorStop))

      # C call
      LibGtk.gtk_snapshot_append_repeating_radial_gradient(to_unsafe, bounds, center, hradius, vradius, start, _end, stops, n_stops)

      # Return value handling
    end

    def append_scaled_texture(texture : Gdk::Texture, filter : Gsk::ScalingFilter, bounds : Graphene::Rect) : Nil
      # gtk_snapshot_append_scaled_texture: (Method)
      # @texture:
      # @filter:
      # @bounds:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_scaled_texture(to_unsafe, texture, filter, bounds)

      # Return value handling
    end

    def append_stroke(path : Gsk::Path, stroke : Gsk::Stroke, color : Gdk::RGBA) : Nil
      # gtk_snapshot_append_stroke: (Method)
      # @path:
      # @stroke:
      # @color:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_stroke(to_unsafe, path, stroke, color)

      # Return value handling
    end

    def append_texture(texture : Gdk::Texture, bounds : Graphene::Rect) : Nil
      # gtk_snapshot_append_texture: (Method)
      # @texture:
      # @bounds:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_append_texture(to_unsafe, texture, bounds)

      # Return value handling
    end

    @[Deprecated]
    def gl_shader_pop_texture : Nil
      # gtk_snapshot_gl_shader_pop_texture: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_gl_shader_pop_texture(to_unsafe)

      # Return value handling
    end

    def perspective(depth : Float32) : Nil
      # gtk_snapshot_perspective: (Method)
      # @depth:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_perspective(to_unsafe, depth)

      # Return value handling
    end

    def pop : Nil
      # gtk_snapshot_pop: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_pop(to_unsafe)

      # Return value handling
    end

    def push_blend(blend_mode : Gsk::BlendMode) : Nil
      # gtk_snapshot_push_blend: (Method)
      # @blend_mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_blend(to_unsafe, blend_mode)

      # Return value handling
    end

    def push_blur(radius : Float64) : Nil
      # gtk_snapshot_push_blur: (Method)
      # @radius:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_blur(to_unsafe, radius)

      # Return value handling
    end

    def push_clip(bounds : Graphene::Rect) : Nil
      # gtk_snapshot_push_clip: (Method)
      # @bounds:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_clip(to_unsafe, bounds)

      # Return value handling
    end

    def push_color_matrix(color_matrix : Graphene::Matrix, color_offset : Graphene::Vec4) : Nil
      # gtk_snapshot_push_color_matrix: (Method)
      # @color_matrix:
      # @color_offset:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_color_matrix(to_unsafe, color_matrix, color_offset)

      # Return value handling
    end

    def push_cross_fade(progress : Float64) : Nil
      # gtk_snapshot_push_cross_fade: (Method)
      # @progress:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_cross_fade(to_unsafe, progress)

      # Return value handling
    end

    def push_fill(path : Gsk::Path, fill_rule : Gsk::FillRule) : Nil
      # gtk_snapshot_push_fill: (Method)
      # @path:
      # @fill_rule:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_fill(to_unsafe, path, fill_rule)

      # Return value handling
    end

    @[Deprecated]
    def push_gl_shader(shader : Gsk::GLShader, bounds : Graphene::Rect, take_args : GLib::Bytes) : Nil
      # gtk_snapshot_push_gl_shader: (Method)
      # @shader:
      # @bounds:
      # @take_args: (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_gl_shader(to_unsafe, shader, bounds, take_args)

      # Return value handling
    end

    def push_mask(mask_mode : Gsk::MaskMode) : Nil
      # gtk_snapshot_push_mask: (Method)
      # @mask_mode:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_mask(to_unsafe, mask_mode)

      # Return value handling
    end

    def push_opacity(opacity : Float64) : Nil
      # gtk_snapshot_push_opacity: (Method)
      # @opacity:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_opacity(to_unsafe, opacity)

      # Return value handling
    end

    def push_repeat(bounds : Graphene::Rect, child_bounds : Graphene::Rect?) : Nil
      # gtk_snapshot_push_repeat: (Method)
      # @bounds:
      # @child_bounds: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      child_bounds = if child_bounds.nil?
                       Pointer(Void).null
                     else
                       child_bounds.to_unsafe
                     end

      # C call
      LibGtk.gtk_snapshot_push_repeat(to_unsafe, bounds, child_bounds)

      # Return value handling
    end

    def push_rounded_clip(bounds : Gsk::RoundedRect) : Nil
      # gtk_snapshot_push_rounded_clip: (Method)
      # @bounds:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_rounded_clip(to_unsafe, bounds)

      # Return value handling
    end

    def push_shadow(shadow : Enumerable(Gsk::Shadow)) : Nil
      # gtk_snapshot_push_shadow: (Method)
      # @shadow: (array length=n_shadows element-type Interface)
      # @n_shadows:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_shadows = shadow.size
      # Generator::ArrayArgPlan
      shadow = shadow.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::Shadow))

      # C call
      LibGtk.gtk_snapshot_push_shadow(to_unsafe, shadow, n_shadows)

      # Return value handling
    end

    def push_shadow(*shadow : Gsk::Shadow)
      push_shadow(shadow)
    end

    def push_stroke(path : Gsk::Path, stroke : Gsk::Stroke) : Nil
      # gtk_snapshot_push_stroke: (Method)
      # @path:
      # @stroke:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_push_stroke(to_unsafe, path, stroke)

      # Return value handling
    end

    @[Deprecated]
    def render_background(context : Gtk::StyleContext, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
      # gtk_snapshot_render_background: (Method)
      # @context:
      # @x:
      # @y:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_render_background(to_unsafe, context, x, y, width, height)

      # Return value handling
    end

    @[Deprecated]
    def render_focus(context : Gtk::StyleContext, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
      # gtk_snapshot_render_focus: (Method)
      # @context:
      # @x:
      # @y:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_render_focus(to_unsafe, context, x, y, width, height)

      # Return value handling
    end

    @[Deprecated]
    def render_frame(context : Gtk::StyleContext, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
      # gtk_snapshot_render_frame: (Method)
      # @context:
      # @x:
      # @y:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_render_frame(to_unsafe, context, x, y, width, height)

      # Return value handling
    end

    @[Deprecated]
    def render_insertion_cursor(context : Gtk::StyleContext, x : Float64, y : Float64, layout : Pango::Layout, index : Int32, direction : Pango::Direction) : Nil
      # gtk_snapshot_render_insertion_cursor: (Method)
      # @context:
      # @x:
      # @y:
      # @layout:
      # @index:
      # @direction:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_render_insertion_cursor(to_unsafe, context, x, y, layout, index, direction)

      # Return value handling
    end

    @[Deprecated]
    def render_layout(context : Gtk::StyleContext, x : Float64, y : Float64, layout : Pango::Layout) : Nil
      # gtk_snapshot_render_layout: (Method)
      # @context:
      # @x:
      # @y:
      # @layout:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_render_layout(to_unsafe, context, x, y, layout)

      # Return value handling
    end

    def restore : Nil
      # gtk_snapshot_restore: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_restore(to_unsafe)

      # Return value handling
    end

    def rotate(angle : Float32) : Nil
      # gtk_snapshot_rotate: (Method)
      # @angle:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_rotate(to_unsafe, angle)

      # Return value handling
    end

    def rotate_3d(angle : Float32, axis : Graphene::Vec3) : Nil
      # gtk_snapshot_rotate_3d: (Method)
      # @angle:
      # @axis:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_rotate_3d(to_unsafe, angle, axis)

      # Return value handling
    end

    def save : Nil
      # gtk_snapshot_save: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_save(to_unsafe)

      # Return value handling
    end

    def scale(factor_x : Float32, factor_y : Float32) : Nil
      # gtk_snapshot_scale: (Method)
      # @factor_x:
      # @factor_y:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_scale(to_unsafe, factor_x, factor_y)

      # Return value handling
    end

    def scale_3d(factor_x : Float32, factor_y : Float32, factor_z : Float32) : Nil
      # gtk_snapshot_scale_3d: (Method)
      # @factor_x:
      # @factor_y:
      # @factor_z:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_scale_3d(to_unsafe, factor_x, factor_y, factor_z)

      # Return value handling
    end

    def to_node : Gsk::RenderNode?
      # gtk_snapshot_to_node: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_snapshot_to_node(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_paintable(size : Graphene::Size?) : Gdk::Paintable?
      # gtk_snapshot_to_paintable: (Method)
      # @size: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      size = if size.nil?
               Pointer(Void).null
             else
               size.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_snapshot_to_paintable(to_unsafe, size)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def transform(transform : Gsk::Transform?) : Nil
      # gtk_snapshot_transform: (Method)
      # @transform: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      transform = if transform.nil?
                    Pointer(Void).null
                  else
                    transform.to_unsafe
                  end

      # C call
      LibGtk.gtk_snapshot_transform(to_unsafe, transform)

      # Return value handling
    end

    def transform_matrix(matrix : Graphene::Matrix) : Nil
      # gtk_snapshot_transform_matrix: (Method)
      # @matrix:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_transform_matrix(to_unsafe, matrix)

      # Return value handling
    end

    def translate(point : Graphene::Point) : Nil
      # gtk_snapshot_translate: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_translate(to_unsafe, point)

      # Return value handling
    end

    def translate_3d(point : Graphene::Point3D) : Nil
      # gtk_snapshot_translate_3d: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_snapshot_translate_3d(to_unsafe, point)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
