module Cairo
  struct TextCluster
    @data : LibCairo::TextCluster

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibCairo::TextCluster)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(num_bytes : Int32? = nil, num_glyphs : Int32? = nil)
      @data = LibCairo::TextCluster.new
      @data.num_bytes = num_bytes unless num_bytes.nil?
      @data.num_glyphs = num_glyphs unless num_glyphs.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibCairo::TextCluster)).zero?
    end

    delegate :num_bytes, to: @data
    delegate :num_bytes=, to: @data
    delegate :num_glyphs, to: @data
    delegate :num_glyphs=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_text_cluster_get_type
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
