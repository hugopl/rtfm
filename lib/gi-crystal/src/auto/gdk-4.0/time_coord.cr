module Gdk
  class TimeCoord
    @data : LibGdk::TimeCoord

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGdk::TimeCoord)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(time : UInt32? = nil, flags : Gdk::AxisFlags? = nil, axes : Enumerable(Float64)? = nil)
      _instance = allocate
      _instance.time = time unless time.nil?
      _instance.flags = flags unless flags.nil?
      _instance.axes = axes unless axes.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGdk::TimeCoord)).zero?
    end

    def time : UInt32
      value = to_unsafe.as(Pointer(LibGdk::TimeCoord)).value.time
      value
    end

    def time=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def flags : Gdk::AxisFlags
      value = to_unsafe.as(Pointer(LibGdk::TimeCoord)).value.flags
      Gdk::AxisFlags.new(value)
    end

    def flags=(value : Gdk::AxisFlags)
      _var = (to_unsafe + 4).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibGdk::TimeCoord))
      value
    end

    def axes : Enumerable(Float64)
      value = to_unsafe.as(Pointer(LibGdk::TimeCoord)).value.axes
      value
    end

    def axes=(value : Enumerable(Float64))
      _var = (to_unsafe + 8).as(Pointer(Float64[12])).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
