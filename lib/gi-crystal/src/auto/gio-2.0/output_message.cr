module Gio
  class OutputMessage
    @data : LibGio::OutputMessage

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::OutputMessage)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(num_vectors : UInt32? = nil, bytes_sent : UInt32? = nil, num_control_messages : UInt32? = nil)
      _instance = allocate
      _instance.num_vectors = num_vectors unless num_vectors.nil?
      _instance.bytes_sent = bytes_sent unless bytes_sent.nil?
      _instance.num_control_messages = num_control_messages unless num_control_messages.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::OutputMessage)).zero?
    end

    def address!
      self.address.not_nil!
    end

    def address : Gio::SocketAddress?
      value = to_unsafe.as(Pointer(LibGio::OutputMessage)).value.address
      return if value.null?
      value = value.as(Pointer(Void))
      Gio::SocketAddress.new(value, GICrystal::Transfer::None)
    end

    def vectors!
      self.vectors.not_nil!
    end

    def vectors : Gio::OutputVector?
      value = to_unsafe.as(Pointer(LibGio::OutputMessage)).value.vectors
      return if value.null?
      value = value.as(Pointer(Void))
      Gio::OutputVector.new(value, GICrystal::Transfer::None)
    end

    def num_vectors : UInt32
      value = to_unsafe.as(Pointer(LibGio::OutputMessage)).value.num_vectors
      value
    end

    def num_vectors=(value : UInt32)
      _var = (to_unsafe + 16).as(Pointer(UInt32)).value = value
      value
    end

    def bytes_sent : UInt32
      value = to_unsafe.as(Pointer(LibGio::OutputMessage)).value.bytes_sent
      value
    end

    def bytes_sent=(value : UInt32)
      _var = (to_unsafe + 20).as(Pointer(UInt32)).value = value
      value
    end

    def control_messages!
      self.control_messages.not_nil!
    end

    def control_messages : Enumerable(Gio::SocketControlMessage)?
      value = to_unsafe.as(Pointer(LibGio::OutputMessage)).value.control_messages
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_array(value, num_control_messages, GICrystal::Transfer::None)
    end

    def num_control_messages : UInt32
      value = to_unsafe.as(Pointer(LibGio::OutputMessage)).value.num_control_messages
      value
    end

    def num_control_messages=(value : UInt32)
      _var = (to_unsafe + 32).as(Pointer(UInt32)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
