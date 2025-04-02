module WebKit
  class GeolocationPosition
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(GeolocationPosition.g_type, pointer)
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
      LibGObject.g_boxed_free(GeolocationPosition.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_geolocation_position_get_type
    end

    def self.new(latitude : Float64, longitude : Float64, accuracy : Float64) : self
      # webkit_geolocation_position_new: (Constructor)
      # @latitude:
      # @longitude:
      # @accuracy:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_geolocation_position_new(latitude, longitude, accuracy)

      # Return value handling
      WebKit::GeolocationPosition.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : WebKit::GeolocationPosition
      # webkit_geolocation_position_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_geolocation_position_copy(to_unsafe)

      # Return value handling
      WebKit::GeolocationPosition.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # webkit_geolocation_position_free: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_position_free(to_unsafe)

      # Return value handling
    end

    def altitude=(altitude : Float64) : Nil
      # webkit_geolocation_position_set_altitude: (Method)
      # @altitude:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_position_set_altitude(to_unsafe, altitude)

      # Return value handling
    end

    def altitude_accuracy=(altitude_accuracy : Float64) : Nil
      # webkit_geolocation_position_set_altitude_accuracy: (Method)
      # @altitude_accuracy:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_position_set_altitude_accuracy(to_unsafe, altitude_accuracy)

      # Return value handling
    end

    def heading=(heading : Float64) : Nil
      # webkit_geolocation_position_set_heading: (Method)
      # @heading:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_position_set_heading(to_unsafe, heading)

      # Return value handling
    end

    def speed=(speed : Float64) : Nil
      # webkit_geolocation_position_set_speed: (Method)
      # @speed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_position_set_speed(to_unsafe, speed)

      # Return value handling
    end

    def timestamp=(timestamp : UInt64) : Nil
      # webkit_geolocation_position_set_timestamp: (Method)
      # @timestamp:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_geolocation_position_set_timestamp(to_unsafe, timestamp)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
