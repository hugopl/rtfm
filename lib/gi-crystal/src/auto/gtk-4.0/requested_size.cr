module Gtk
  class RequestedSize
    @data : LibGtk::RequestedSize

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::RequestedSize)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(minimum_size : Int32? = nil, natural_size : Int32? = nil)
      _instance = allocate
      _instance.minimum_size = minimum_size unless minimum_size.nil?
      _instance.natural_size = natural_size unless natural_size.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::RequestedSize)).zero?
    end

    def data!
      self.data.not_nil!
    end

    def data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGtk::RequestedSize)).value.data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def minimum_size : Int32
      value = to_unsafe.as(Pointer(LibGtk::RequestedSize)).value.minimum_size
      value
    end

    def minimum_size=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def natural_size : Int32
      value = to_unsafe.as(Pointer(LibGtk::RequestedSize)).value.natural_size
      value
    end

    def natural_size=(value : Int32)
      _var = (to_unsafe + 12).as(Pointer(Int32)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
