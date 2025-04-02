module GLib
  struct Tuples
    @data : LibGLib::Tuples

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::Tuples)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(len : UInt32? = nil)
      @data = LibGLib::Tuples.new
      @data.len = len unless len.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::Tuples)).zero?
    end

    delegate :len, to: @data
    delegate :len=, to: @data

    @[Deprecated]
    def destroy : Nil
      # g_tuples_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_tuples_destroy(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def index(index_ : Int32, field : Int32) : Pointer(Void)?
      # g_tuples_index: (Method)
      # @index_:
      # @field:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_tuples_index(to_unsafe, index_, field)

      # Return value handling
      _retval unless _retval.null?
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
