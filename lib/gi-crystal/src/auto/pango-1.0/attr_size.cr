module Pango
  class AttrSize
    @data : LibPango::AttrSize

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrSize)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(attr : Pango::Attribute? = nil, size : Int32? = nil, absolute : UInt32? = nil)
      _instance = allocate
      _instance.attr = attr unless attr.nil?
      _instance.size = size unless size.nil?
      _instance.absolute = absolute unless absolute.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrSize)).zero?
    end

    def attr : Pango::Attribute
      value = to_unsafe.as(Pointer(LibPango::AttrSize)).value.attr
      Pango::Attribute.new(value, GICrystal::Transfer::None)
    end

    def attr=(value : Pango::Attribute)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrSize))
      value
    end

    def size : Int32
      value = to_unsafe.as(Pointer(LibPango::AttrSize)).value.size
      value
    end

    def size=(value : Int32)
      _var = (to_unsafe + 16).as(Pointer(Int32)).value = value
      value
    end

    def absolute : UInt32
      value = to_unsafe.as(Pointer(LibPango::AttrSize)).value.absolute
      value
    end

    def absolute=(value : UInt32)
      _var = (to_unsafe + 20).as(Pointer(UInt32)).value = value
      value
    end

    def self.new(size : Int32) : Pango::Attribute
      # pango_attr_size_new: (None)
      # @size:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_size_new(size)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_absolute(size : Int32) : Pango::Attribute
      # pango_attr_size_new_absolute: (None)
      # @size:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_size_new_absolute(size)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
