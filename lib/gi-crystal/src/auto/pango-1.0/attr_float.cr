module Pango
  class AttrFloat
    @data : LibPango::AttrFloat

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrFloat)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil, value : Float64? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance.value = value unless value.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrFloat)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrFloat)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrFloat))
      value
    end

    def value : Float64
      value = to_unsafe.as(Pointer(LibPango::AttrFloat)).value.value
      value
    end

    def value=(value : Float64)
      _var = (to_unsafe + 16).as(Pointer(Float64)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
