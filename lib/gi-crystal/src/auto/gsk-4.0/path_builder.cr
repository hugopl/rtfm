module Gsk
  class PathBuilder
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(PathBuilder.g_type, pointer)
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
      LibGObject.g_boxed_free(PathBuilder.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_path_builder_get_type
    end

    def add_cairo_path(path : Cairo::Path) : Nil
      # gsk_path_builder_add_cairo_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_cairo_path(to_unsafe, path)

      # Return value handling
    end

    def add_circle(center : Graphene::Point, radius : Float32) : Nil
      # gsk_path_builder_add_circle: (Method)
      # @center:
      # @radius:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_circle(to_unsafe, center, radius)

      # Return value handling
    end

    def add_layout(layout : Pango::Layout) : Nil
      # gsk_path_builder_add_layout: (Method)
      # @layout:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_layout(to_unsafe, layout)

      # Return value handling
    end

    def add_path(path : Gsk::Path) : Nil
      # gsk_path_builder_add_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_path(to_unsafe, path)

      # Return value handling
    end

    def add_rect(rect : Graphene::Rect) : Nil
      # gsk_path_builder_add_rect: (Method)
      # @rect:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_rect(to_unsafe, rect)

      # Return value handling
    end

    def add_reverse_path(path : Gsk::Path) : Nil
      # gsk_path_builder_add_reverse_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_reverse_path(to_unsafe, path)

      # Return value handling
    end

    def add_rounded_rect(rect : Gsk::RoundedRect) : Nil
      # gsk_path_builder_add_rounded_rect: (Method)
      # @rect:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_rounded_rect(to_unsafe, rect)

      # Return value handling
    end

    def add_segment(path : Gsk::Path, start : Gsk::PathPoint, end _end : Gsk::PathPoint) : Nil
      # gsk_path_builder_add_segment: (Method)
      # @path:
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_add_segment(to_unsafe, path, start, _end)

      # Return value handling
    end

    def arc_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Nil
      # gsk_path_builder_arc_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_arc_to(to_unsafe, x1, y1, x2, y2)

      # Return value handling
    end

    def close : Nil
      # gsk_path_builder_close: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_close(to_unsafe)

      # Return value handling
    end

    def conic_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, weight : Float32) : Nil
      # gsk_path_builder_conic_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # @weight:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_conic_to(to_unsafe, x1, y1, x2, y2, weight)

      # Return value handling
    end

    def cubic_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, x3 : Float32, y3 : Float32) : Nil
      # gsk_path_builder_cubic_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # @x3:
      # @y3:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_cubic_to(to_unsafe, x1, y1, x2, y2, x3, y3)

      # Return value handling
    end

    def current_point : Graphene::Point
      # gsk_path_builder_get_current_point: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_builder_get_current_point(to_unsafe)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def html_arc_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, radius : Float32) : Nil
      # gsk_path_builder_html_arc_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # @radius:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_html_arc_to(to_unsafe, x1, y1, x2, y2, radius)

      # Return value handling
    end

    def line_to(x : Float32, y : Float32) : Nil
      # gsk_path_builder_line_to: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_line_to(to_unsafe, x, y)

      # Return value handling
    end

    def move_to(x : Float32, y : Float32) : Nil
      # gsk_path_builder_move_to: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_move_to(to_unsafe, x, y)

      # Return value handling
    end

    def quad_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Nil
      # gsk_path_builder_quad_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_quad_to(to_unsafe, x1, y1, x2, y2)

      # Return value handling
    end

    def ref : Gsk::PathBuilder
      # gsk_path_builder_ref: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_builder_ref(to_unsafe)

      # Return value handling
      Gsk::PathBuilder.new(_retval, GICrystal::Transfer::None)
    end

    def rel_arc_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Nil
      # gsk_path_builder_rel_arc_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_arc_to(to_unsafe, x1, y1, x2, y2)

      # Return value handling
    end

    def rel_conic_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, weight : Float32) : Nil
      # gsk_path_builder_rel_conic_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # @weight:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_conic_to(to_unsafe, x1, y1, x2, y2, weight)

      # Return value handling
    end

    def rel_cubic_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, x3 : Float32, y3 : Float32) : Nil
      # gsk_path_builder_rel_cubic_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # @x3:
      # @y3:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_cubic_to(to_unsafe, x1, y1, x2, y2, x3, y3)

      # Return value handling
    end

    def rel_html_arc_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32, radius : Float32) : Nil
      # gsk_path_builder_rel_html_arc_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # @radius:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_html_arc_to(to_unsafe, x1, y1, x2, y2, radius)

      # Return value handling
    end

    def rel_line_to(x : Float32, y : Float32) : Nil
      # gsk_path_builder_rel_line_to: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_line_to(to_unsafe, x, y)

      # Return value handling
    end

    def rel_move_to(x : Float32, y : Float32) : Nil
      # gsk_path_builder_rel_move_to: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_move_to(to_unsafe, x, y)

      # Return value handling
    end

    def rel_quad_to(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Nil
      # gsk_path_builder_rel_quad_to: (Method)
      # @x1:
      # @y1:
      # @x2:
      # @y2:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_quad_to(to_unsafe, x1, y1, x2, y2)

      # Return value handling
    end

    def rel_svg_arc_to(rx : Float32, ry : Float32, x_axis_rotation : Float32, large_arc : Bool, positive_sweep : Bool, x : Float32, y : Float32) : Nil
      # gsk_path_builder_rel_svg_arc_to: (Method)
      # @rx:
      # @ry:
      # @x_axis_rotation:
      # @large_arc:
      # @positive_sweep:
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_rel_svg_arc_to(to_unsafe, rx, ry, x_axis_rotation, large_arc, positive_sweep, x, y)

      # Return value handling
    end

    def svg_arc_to(rx : Float32, ry : Float32, x_axis_rotation : Float32, large_arc : Bool, positive_sweep : Bool, x : Float32, y : Float32) : Nil
      # gsk_path_builder_svg_arc_to: (Method)
      # @rx:
      # @ry:
      # @x_axis_rotation:
      # @large_arc:
      # @positive_sweep:
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_svg_arc_to(to_unsafe, rx, ry, x_axis_rotation, large_arc, positive_sweep, x, y)

      # Return value handling
    end

    def to_path : Gsk::Path
      # gsk_path_builder_to_path: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_path_builder_to_path(to_unsafe)

      # Return value handling
      Gsk::Path.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gsk_path_builder_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_builder_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
