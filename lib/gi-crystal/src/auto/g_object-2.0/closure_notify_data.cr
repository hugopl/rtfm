module GObject
  class ClosureNotifyData
    @data : LibGObject::ClosureNotifyData

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::ClosureNotifyData)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(notify : GObject::ClosureNotify? = nil)
      _instance = allocate
      _instance.notify = notify unless notify.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::ClosureNotifyData)).zero?
    end

    def data!
      self.data.not_nil!
    end

    def data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGObject::ClosureNotifyData)).value.data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def notify : GObject::ClosureNotify
      value = to_unsafe.as(Pointer(LibGObject::ClosureNotifyData)).value.notify
      GObject::ClosureNotify.new(value, GICrystal::Transfer::None)
    end

    def notify=(value : GObject::ClosureNotify)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::ClosureNotifyData))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
