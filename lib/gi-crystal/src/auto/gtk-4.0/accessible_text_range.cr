module Gtk
  struct AccessibleTextRange
    @data : LibGtk::AccessibleTextRange

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::AccessibleTextRange)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(start : UInt64? = nil, length : UInt64? = nil)
      @data = LibGtk::AccessibleTextRange.new
      @data.start = start unless start.nil?
      @data.length = length unless length.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::AccessibleTextRange)).zero?
    end

    delegate :start, to: @data
    delegate :start=, to: @data
    delegate :length, to: @data
    delegate :length=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
