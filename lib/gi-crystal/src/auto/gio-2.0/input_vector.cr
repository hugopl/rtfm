module Gio
  class InputVector
    @data : LibGio::InputVector

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::InputVector)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(size : UInt64? = nil)
      _instance = allocate
      _instance.size = size unless size.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::InputVector)).zero?
    end

    def buffer!
      self.buffer.not_nil!
    end

    def buffer : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGio::InputVector)).value.buffer
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def size : UInt64
      value = to_unsafe.as(Pointer(LibGio::InputVector)).value.size
      value
    end

    def size=(value : UInt64)
      _var = (to_unsafe + 8).as(Pointer(UInt64)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
