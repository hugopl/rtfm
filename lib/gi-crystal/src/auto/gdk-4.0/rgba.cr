module Gdk
  struct RGBA
    @data : LibGdk::RGBA

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGdk::RGBA)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(red : Float32? = nil, green : Float32? = nil, blue : Float32? = nil, alpha : Float32? = nil)
      @data = LibGdk::RGBA.new
      @data.red = red unless red.nil?
      @data.green = green unless green.nil?
      @data.blue = blue unless blue.nil?
      @data.alpha = alpha unless alpha.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGdk::RGBA)).zero?
    end

    delegate :red, to: @data
    delegate :red=, to: @data
    delegate :green, to: @data
    delegate :green=, to: @data
    delegate :blue, to: @data
    delegate :blue=, to: @data
    delegate :alpha, to: @data
    delegate :alpha=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_rgba_get_type
    end

    def copy : Gdk::RGBA
      # gdk_rgba_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_rgba_copy(to_unsafe)

      # Return value handling
      Gdk::RGBA.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(p2 : Gdk::RGBA) : Bool
      # gdk_rgba_equal: (Method)
      # @p2:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_rgba_equal(to_unsafe, p2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # gdk_rgba_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_rgba_free(to_unsafe)

      # Return value handling
    end

    def hash : UInt32
      # gdk_rgba_hash: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_rgba_hash(to_unsafe)

      # Return value handling
      _retval
    end

    def is_clear : Bool
      # gdk_rgba_is_clear: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_rgba_is_clear(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_opaque : Bool
      # gdk_rgba_is_opaque: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_rgba_is_opaque(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def parse(spec : ::String) : Bool
      # gdk_rgba_parse: (Method)
      # @spec:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_rgba_parse(to_unsafe, spec)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_string : ::String
      # gdk_rgba_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_rgba_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
