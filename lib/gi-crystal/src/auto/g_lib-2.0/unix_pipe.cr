module GLib
  struct UnixPipe
    @data : LibGLib::UnixPipe

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::UnixPipe)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(fds : Enumerable(Int32)? = nil)
      @data = LibGLib::UnixPipe.new
      @data.fds = fds unless fds.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::UnixPipe)).zero?
    end

    delegate :fds, to: @data
    delegate :fds=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
