module Pango
  class AttrFontDesc
    @data : LibPango::AttrFontDesc

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrFontDesc)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrFontDesc)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrFontDesc)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrFontDesc))
      value
    end

    def desc!
      self.desc.not_nil!
    end

    def desc : Pango::FontDescription?
      value = to_unsafe.as(Pointer(LibPango::AttrFontDesc)).value.desc
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::FontDescription.new(value, GICrystal::Transfer::None)
    end

    def self.new(desc : Pango::FontDescription) : Pango::Attribute
      # pango_attr_font_desc_new: (None)
      # @desc:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_font_desc_new(desc)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
