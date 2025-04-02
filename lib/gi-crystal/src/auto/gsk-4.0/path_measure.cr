module Gsk
  class PathMeasure
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(PathMeasure.g_type, pointer)
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
      LibGObject.g_boxed_free(PathMeasure.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_path_measure_get_type
    end

    def self.new(path : Gsk::Path) : self
      # gsk_path_measure_new: (Constructor)
      # @path:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_path_measure_new(path)

      # Return value handling
      Gsk::PathMeasure.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_tolerance(path : Gsk::Path, tolerance : Float32) : self
      # gsk_path_measure_new_with_tolerance: (Constructor)
      # @path:
      # @tolerance:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_path_measure_new_with_tolerance(path, tolerance)

      # Return value handling
      Gsk::PathMeasure.new(_retval, GICrystal::Transfer::Full)
    end

    def length : Float32
      # gsk_path_measure_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_measure_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def path : Gsk::Path
      # gsk_path_measure_get_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_measure_get_path(to_unsafe)

      # Return value handling
      Gsk::Path.new(_retval, GICrystal::Transfer::None)
    end

    def point(distance : Float32) : Gsk::PathPoint
      # gsk_path_measure_get_point: (Method)
      # @distance:
      # @result: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      result = Gsk::PathPoint.new
      # C call
      _retval = LibGsk.gsk_path_measure_get_point(to_unsafe, distance, result)

      # Return value handling
      result
    end

    def tolerance : Float32
      # gsk_path_measure_get_tolerance: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_path_measure_get_tolerance(to_unsafe)

      # Return value handling
      _retval
    end

    def ref : Gsk::PathMeasure
      # gsk_path_measure_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_path_measure_ref(to_unsafe)

      # Return value handling
      Gsk::PathMeasure.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gsk_path_measure_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_path_measure_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
