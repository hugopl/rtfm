module Pango
  struct Color
    @data : LibPango::Color

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::Color)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(red : UInt16? = nil, green : UInt16? = nil, blue : UInt16? = nil)
      @data = LibPango::Color.new
      @data.red = red unless red.nil?
      @data.green = green unless green.nil?
      @data.blue = blue unless blue.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::Color)).zero?
    end

    delegate :red, to: @data
    delegate :red=, to: @data
    delegate :green, to: @data
    delegate :green=, to: @data
    delegate :blue, to: @data
    delegate :blue=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_color_get_type
    end

    def copy : Pango::Color?
      # pango_color_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_color_copy(to_unsafe)

      # Return value handling
      Pango::Color.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def free : Nil
      # pango_color_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_color_free(to_unsafe)

      # Return value handling
    end

    def parse(spec : ::String) : Bool
      # pango_color_parse: (Method)
      # @spec:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_color_parse(to_unsafe, spec)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def parse_with_alpha(spec : ::String) : Bool
      # pango_color_parse_with_alpha: (Method)
      # @alpha: (out) (transfer full) (optional)
      # @spec:
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      alpha = Pointer(UInt16).null
      # C call
      _retval = LibPango.pango_color_parse_with_alpha(to_unsafe, alpha, spec)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_string : ::String
      # pango_color_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_color_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
