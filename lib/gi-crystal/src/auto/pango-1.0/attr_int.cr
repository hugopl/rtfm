module Pango
  class AttrInt
    @data : LibPango::AttrInt

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrInt)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil, value : Int32? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance.value = value unless value.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrInt)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrInt)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrInt))
      value
    end

    def value : Int32
      value = to_unsafe.as(Pointer(LibPango::AttrInt)).value.value
      value
    end

    def value=(value : Int32)
      _var = (to_unsafe + 16).as(Pointer(Int32)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
