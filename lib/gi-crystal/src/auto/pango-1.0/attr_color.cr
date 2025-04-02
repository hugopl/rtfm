module Pango
  class AttrColor
    @data : LibPango::AttrColor

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrColor)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil, color : Pango::Color? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance.color = color unless color.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrColor)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrColor)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrColor))
      value
    end

    def color : Pango::Color
      value = to_unsafe.as(Pointer(LibPango::AttrColor)).value.color
      Pango::Color.new(value, GICrystal::Transfer::None)
    end

    def color=(value : Pango::Color)
      _var = (to_unsafe + 16).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrColor))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
