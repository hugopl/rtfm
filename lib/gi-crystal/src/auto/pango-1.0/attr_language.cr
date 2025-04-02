module Pango
  class AttrLanguage
    @data : LibPango::AttrLanguage

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrLanguage)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrLanguage)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrLanguage)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrLanguage))
      value
    end

    def value!
      self.value.not_nil!
    end

    def value : Pango::Language?
      value = to_unsafe.as(Pointer(LibPango::AttrLanguage)).value.value
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::Language.new(value, GICrystal::Transfer::None)
    end

    def self.new(language : Pango::Language) : Pango::Attribute
      # pango_attr_language_new: (None)
      # @language:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_language_new(language)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
