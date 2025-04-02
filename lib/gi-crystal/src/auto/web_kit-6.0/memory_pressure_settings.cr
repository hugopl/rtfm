module WebKit
  class MemoryPressureSettings
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(MemoryPressureSettings.g_type, pointer)
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
      LibGObject.g_boxed_free(MemoryPressureSettings.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_memory_pressure_settings_get_type
    end

    def copy : WebKit::MemoryPressureSettings
      # webkit_memory_pressure_settings_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_memory_pressure_settings_copy(to_unsafe)

      # Return value handling
      WebKit::MemoryPressureSettings.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # webkit_memory_pressure_settings_free: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_memory_pressure_settings_free(to_unsafe)

      # Return value handling
    end

    def conservative_threshold : Float64
      # webkit_memory_pressure_settings_get_conservative_threshold: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_memory_pressure_settings_get_conservative_threshold(to_unsafe)

      # Return value handling
      _retval
    end

    def kill_threshold : Float64
      # webkit_memory_pressure_settings_get_kill_threshold: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_memory_pressure_settings_get_kill_threshold(to_unsafe)

      # Return value handling
      _retval
    end

    def memory_limit : UInt32
      # webkit_memory_pressure_settings_get_memory_limit: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_memory_pressure_settings_get_memory_limit(to_unsafe)

      # Return value handling
      _retval
    end

    def poll_interval : Float64
      # webkit_memory_pressure_settings_get_poll_interval: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_memory_pressure_settings_get_poll_interval(to_unsafe)

      # Return value handling
      _retval
    end

    def strict_threshold : Float64
      # webkit_memory_pressure_settings_get_strict_threshold: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_memory_pressure_settings_get_strict_threshold(to_unsafe)

      # Return value handling
      _retval
    end

    def conservative_threshold=(value : Float64) : Nil
      # webkit_memory_pressure_settings_set_conservative_threshold: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_memory_pressure_settings_set_conservative_threshold(to_unsafe, value)

      # Return value handling
    end

    def kill_threshold=(value : Float64) : Nil
      # webkit_memory_pressure_settings_set_kill_threshold: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_memory_pressure_settings_set_kill_threshold(to_unsafe, value)

      # Return value handling
    end

    def memory_limit=(memory_limit : UInt32) : Nil
      # webkit_memory_pressure_settings_set_memory_limit: (Method)
      # @memory_limit:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_memory_pressure_settings_set_memory_limit(to_unsafe, memory_limit)

      # Return value handling
    end

    def poll_interval=(value : Float64) : Nil
      # webkit_memory_pressure_settings_set_poll_interval: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_memory_pressure_settings_set_poll_interval(to_unsafe, value)

      # Return value handling
    end

    def strict_threshold=(value : Float64) : Nil
      # webkit_memory_pressure_settings_set_strict_threshold: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_memory_pressure_settings_set_strict_threshold(to_unsafe, value)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
