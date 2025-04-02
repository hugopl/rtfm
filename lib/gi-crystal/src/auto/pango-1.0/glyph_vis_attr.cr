module Pango
  struct GlyphVisAttr
    @data : LibPango::GlyphVisAttr

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::GlyphVisAttr)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(is_cluster_start : UInt32? = nil, is_color : UInt32? = nil)
      @data = LibPango::GlyphVisAttr.new
      @data.is_cluster_start = is_cluster_start unless is_cluster_start.nil?
      @data.is_color = is_color unless is_color.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::GlyphVisAttr)).zero?
    end

    delegate :is_cluster_start, to: @data
    delegate :is_cluster_start=, to: @data
    delegate :is_color, to: @data
    delegate :is_color=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
