module Gio
  class InputMessage
    @data : LibGio::InputMessage

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::InputMessage)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(num_vectors : UInt32? = nil, bytes_received : UInt64? = nil, flags : Int32? = nil)
      _instance = allocate
      _instance.num_vectors = num_vectors unless num_vectors.nil?
      _instance.bytes_received = bytes_received unless bytes_received.nil?
      _instance.flags = flags unless flags.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::InputMessage)).zero?
    end

    def address!
      self.address.not_nil!
    end

    def address : Gio::SocketAddress?
      value = to_unsafe.as(Pointer(LibGio::InputMessage)).value.address
      return if value.null?
      value = value.as(Pointer(Void))
      Gio::SocketAddress.new(value, GICrystal::Transfer::None)
    end

    def vectors!
      self.vectors.not_nil!
    end

    def vectors : Enumerable(Gio::InputVector)?
      value = to_unsafe.as(Pointer(LibGio::InputMessage)).value.vectors
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_array(value, num_vectors, GICrystal::Transfer::None)
    end

    def num_vectors : UInt32
      value = to_unsafe.as(Pointer(LibGio::InputMessage)).value.num_vectors
      value
    end

    def num_vectors=(value : UInt32)
      _var = (to_unsafe + 16).as(Pointer(UInt32)).value = value
      value
    end

    def bytes_received : UInt64
      value = to_unsafe.as(Pointer(LibGio::InputMessage)).value.bytes_received
      value
    end

    def bytes_received=(value : UInt64)
      _var = (to_unsafe + 24).as(Pointer(UInt64)).value = value
      value
    end

    def flags : Int32
      value = to_unsafe.as(Pointer(LibGio::InputMessage)).value.flags
      value
    end

    def flags=(value : Int32)
      _var = (to_unsafe + 32).as(Pointer(Int32)).value = value
      value
    end

    def control_messages!
      self.control_messages.not_nil!
    end

    def control_messages : Enumerable(Gio::SocketControlMessage)?
      value = to_unsafe.as(Pointer(LibGio::InputMessage)).value.control_messages
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_array(value, num_control_messages, GICrystal::Transfer::None)
    end

    def num_control_messages!
      self.num_control_messages.not_nil!
    end

    def num_control_messages : Pointer(UInt32)?
      value = to_unsafe.as(Pointer(LibGio::InputMessage)).value.num_control_messages
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
