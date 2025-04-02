module Pango
  class AttrString
    @data : LibPango::AttrString

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrString)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrString)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrString)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrString))
      value
    end

    def value!
      self.value.not_nil!
    end

    def value : ::String?
      value = to_unsafe.as(Pointer(LibPango::AttrString)).value.value
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
