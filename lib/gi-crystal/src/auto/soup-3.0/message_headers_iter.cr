module Soup
  struct MessageHeadersIter
    @data : LibSoup::MessageHeadersIter

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibSoup::MessageHeadersIter)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(dummy : Enumerable(Pointer(Void))? = nil)
      @data = LibSoup::MessageHeadersIter.new
      @data.dummy = dummy unless dummy.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibSoup::MessageHeadersIter)).zero?
    end

    delegate :dummy, to: @data
    delegate :dummy=, to: @data

    def self.init(hdrs : Soup::MessageHeaders) : Soup::MessageHeadersIter
      # soup_message_headers_iter_init: (None)
      # @iter: (out) (caller-allocates)
      # @hdrs:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Soup::MessageHeadersIter.new
      # C call
      LibSoup.soup_message_headers_iter_init(iter, hdrs)

      # Return value handling
      iter
    end

    def self.next(iter : Soup::MessageHeadersIter, name : ::String, value : ::String) : Bool
      # soup_message_headers_iter_next: (None)
      # @iter: (inout)
      # @name: (out)
      # @value: (out)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_headers_iter_next(iter, name, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
