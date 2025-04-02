module Gdk
  struct KeymapKey
    @data : LibGdk::KeymapKey

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGdk::KeymapKey)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(keycode : UInt32? = nil, group : Int32? = nil, level : Int32? = nil)
      @data = LibGdk::KeymapKey.new
      @data.keycode = keycode unless keycode.nil?
      @data.group = group unless group.nil?
      @data.level = level unless level.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGdk::KeymapKey)).zero?
    end

    delegate :keycode, to: @data
    delegate :keycode=, to: @data
    delegate :group, to: @data
    delegate :group=, to: @data
    delegate :level, to: @data
    delegate :level=, to: @data

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
