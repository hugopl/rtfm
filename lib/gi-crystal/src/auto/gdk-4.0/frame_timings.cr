module Gdk
  class FrameTimings
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(FrameTimings.g_type, pointer)
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
      LibGObject.g_boxed_free(FrameTimings.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_frame_timings_get_type
    end

    def complete : Bool
      # gdk_frame_timings_get_complete: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_timings_get_complete(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def frame_counter : Int64
      # gdk_frame_timings_get_frame_counter: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_timings_get_frame_counter(to_unsafe)

      # Return value handling
      _retval
    end

    def frame_time : Int64
      # gdk_frame_timings_get_frame_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_timings_get_frame_time(to_unsafe)

      # Return value handling
      _retval
    end

    def predicted_presentation_time : Int64
      # gdk_frame_timings_get_predicted_presentation_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_timings_get_predicted_presentation_time(to_unsafe)

      # Return value handling
      _retval
    end

    def presentation_time : Int64
      # gdk_frame_timings_get_presentation_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_timings_get_presentation_time(to_unsafe)

      # Return value handling
      _retval
    end

    def refresh_interval : Int64
      # gdk_frame_timings_get_refresh_interval: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_frame_timings_get_refresh_interval(to_unsafe)

      # Return value handling
      _retval
    end

    def ref : Gdk::FrameTimings
      # gdk_frame_timings_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_frame_timings_ref(to_unsafe)

      # Return value handling
      Gdk::FrameTimings.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gdk_frame_timings_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_frame_timings_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
