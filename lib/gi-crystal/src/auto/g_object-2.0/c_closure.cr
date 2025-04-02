module GObject
  class CClosure
    @data : LibGObject::CClosure

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::CClosure)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(closure : GObject::Closure? = nil)
      _instance = allocate
      _instance.closure = closure unless closure.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::CClosure)).zero?
    end

    def closure : GObject::Closure
      value = to_unsafe.as(Pointer(LibGObject::CClosure)).value.closure
      GObject::Closure.new(value, GICrystal::Transfer::None)
    end

    def closure=(value : GObject::Closure)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::CClosure))
      value
    end

    def callback!
      self.callback.not_nil!
    end

    def callback : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGObject::CClosure)).value.callback
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
