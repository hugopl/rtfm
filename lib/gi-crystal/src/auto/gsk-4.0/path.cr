module Gsk
  class Path
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Path.g_type, pointer)
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
      LibGObject.g_boxed_free(Path.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_path_get_type
    end

    def foreach(flags : Gsk::PathForeachFlags, func : Gsk::PathForeachFunc, user_data : Pointer(Void)?) : Bool
      # gsk_path_foreach: (Method)
      # @flags:
      # @func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGsk.gsk_path_foreach(to_unsafe, flags, func, user_data)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def bounds : Graphene::Rect
      # gsk_path_get_bounds: (Method)
      # @bounds: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      bounds = Graphene::Rect.new
      # C call
      _retval = LibGsk.gsk_path_get_bounds(to_unsafe, bounds)

      # Return value handling
      bounds
    end

    def closest_point(point : Graphene::Point, threshold : Float32) : Gsk::PathPoint
      # gsk_path_get_closest_point: (Method)
      # @point:
      # @threshold:
      # @result: (out) (caller-allocates)
      # @distance: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      result = Gsk::PathPoint.new # Generator::OutArgUsedInReturnPlan
      distance = Pointer(Float32).null
      # C call
      _retval = LibGsk.gsk_path_get_closest_point(to_unsafe, point, threshold, result, distance)

      # Return value handling
      result
    end

    def end_point : Gsk::PathPoint
      # gsk_path_get_end_point: (Method)
      # @result: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      result = Gsk::PathPoint.new
      # C call
      _retval = LibGsk.gsk_path_get_end_point(to_unsafe, result)

      # Return value handling
      result
    end

    def start_point : Gsk::PathPoint
      # gsk_path_get_start_point: (Method)
      # @result: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      result = Gsk::PathPoint.new
      # C call
      _retval = LibGsk.gsk_path_get_start_point(to_unsafe, result)

      # Return value handling
      result
    end

    def stroke_bounds(stroke : Gsk::Stroke) : Graphene::Rect
      # gsk_path_get_stroke_bounds: (Method)
      # @stroke:
      # @bounds: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      bounds = Graphene::Rect.new
      # C call
      _retval = LibGsk.gsk_path_get_stroke_bounds(to_unsafe, stroke, bounds)

      # Return value handling
      bounds
    end

    def in_fill(point : Graphene::Point, fill_rule : Gsk::FillRule) : Bool
      # gsk_path_in_fill: (Method)
      # @point:
      # @fill_rule:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_in_fill(to_unsafe, point, fill_rule)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_closed : Bool
      # gsk_path_is_closed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_is_closed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_empty : Bool
      # gsk_path_is_empty: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_is_empty(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def print(string : GLib::String) : Nil
      # gsk_path_print: (Method)
      # @string:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_print(to_unsafe, string)

      # Return value handling
    end

    def ref : Gsk::Path
      # gsk_path_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_path_ref(to_unsafe)

      # Return value handling
      Gsk::Path.new(_retval, GICrystal::Transfer::Full)
    end

    def to_cairo(cr : Cairo::Context) : Nil
      # gsk_path_to_cairo: (Method)
      # @cr:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_to_cairo(to_unsafe, cr)

      # Return value handling
    end

    def to_string : ::String
      # gsk_path_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_path_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def unref : Nil
      # gsk_path_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_unref(to_unsafe)

      # Return value handling
    end

    def self.parse(string : ::String) : Gsk::Path?
      # gsk_path_parse: (None)
      # @string:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_path_parse(string)

      # Return value handling
      Gsk::Path.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
