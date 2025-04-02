module HarfBuzz
  struct ColorStopT
    @data : LibHarfBuzz::ColorStopT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::ColorStopT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(offset : Float32? = nil, is_foreground : Int32? = nil, color : UInt32? = nil)
      @data = LibHarfBuzz::ColorStopT.new
      @data.offset = offset unless offset.nil?
      @data.is_foreground = is_foreground unless is_foreground.nil?
      @data.color = color unless color.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::ColorStopT)).zero?
    end

    delegate :offset, to: @data
    delegate :offset=, to: @data
    delegate :is_foreground, to: @data
    delegate :is_foreground=, to: @data
    delegate :color, to: @data
    delegate :color=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_color_stop_get_type
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
