module HarfBuzz
  struct UserDataKeyT
    @data : LibHarfBuzz::UserDataKeyT

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::UserDataKeyT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(unused : Int8? = nil)
      @data = LibHarfBuzz::UserDataKeyT.new
      @data.unused = unused unless unused.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::UserDataKeyT)).zero?
    end

    delegate :unused, to: @data
    delegate :unused=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_user_data_key_get_type
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
