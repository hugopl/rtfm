module GObject
  class SignalInvocationHint
    @data : LibGObject::SignalInvocationHint

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::SignalInvocationHint)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(signal_id : UInt32? = nil, detail : UInt32? = nil, run_type : GObject::SignalFlags? = nil)
      _instance = allocate
      _instance.signal_id = signal_id unless signal_id.nil?
      _instance.detail = detail unless detail.nil?
      _instance.run_type = run_type unless run_type.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::SignalInvocationHint)).zero?
    end

    def signal_id : UInt32
      value = to_unsafe.as(Pointer(LibGObject::SignalInvocationHint)).value.signal_id
      value
    end

    def signal_id=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def detail : UInt32
      value = to_unsafe.as(Pointer(LibGObject::SignalInvocationHint)).value.detail
      value
    end

    def detail=(value : UInt32)
      _var = (to_unsafe + 4).as(Pointer(UInt32)).value = value
      value
    end

    def run_type : GObject::SignalFlags
      value = to_unsafe.as(Pointer(LibGObject::SignalInvocationHint)).value.run_type
      GObject::SignalFlags.new(value)
    end

    def run_type=(value : GObject::SignalFlags)
      _var = (to_unsafe + 8).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::SignalInvocationHint))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
