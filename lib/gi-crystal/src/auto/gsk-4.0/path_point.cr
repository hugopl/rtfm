module Gsk
  class PathPoint
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(PathPoint.g_type, pointer)
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
      LibGObject.g_boxed_free(PathPoint.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_path_point_get_type
    end

    def compare(point2 : Gsk::PathPoint) : Int32
      # gsk_path_point_compare: (Method)
      # @point2:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_point_compare(to_unsafe, point2)

      # Return value handling
      _retval
    end

    def copy : Gsk::PathPoint
      # gsk_path_point_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_path_point_copy(to_unsafe)

      # Return value handling
      Gsk::PathPoint.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(point2 : Gsk::PathPoint) : Bool
      # gsk_path_point_equal: (Method)
      # @point2:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_point_equal(to_unsafe, point2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # gsk_path_point_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_point_free(to_unsafe)

      # Return value handling
    end

    def distance(measure : Gsk::PathMeasure) : Float32
      # gsk_path_point_get_distance: (Method)
      # @measure:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_point_get_distance(to_unsafe, measure)

      # Return value handling
      _retval
    end

    def position(path : Gsk::Path) : Graphene::Point
      # gsk_path_point_get_position: (Method)
      # @path:
      # @position: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      position = Graphene::Point.new
      # C call
      LibGsk.gsk_path_point_get_position(to_unsafe, path, position)

      # Return value handling
      position
    end

    def rotation(path : Gsk::Path, direction : Gsk::PathDirection) : Float32
      # gsk_path_point_get_rotation: (Method)
      # @path:
      # @direction:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_point_get_rotation(to_unsafe, path, direction)

      # Return value handling
      _retval
    end

    def tangent(path : Gsk::Path, direction : Gsk::PathDirection) : Graphene::Vec2
      # gsk_path_point_get_tangent: (Method)
      # @path:
      # @direction:
      # @tangent: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      tangent = Graphene::Vec2.new
      # C call
      LibGsk.gsk_path_point_get_tangent(to_unsafe, path, direction, tangent)

      # Return value handling
      tangent
    end

    def to_unsafe
      @pointer
    end
  end
end
