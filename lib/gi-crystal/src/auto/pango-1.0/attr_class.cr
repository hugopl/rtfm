module Pango
  class AttrClass
    @data : LibPango::AttrClass

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::AttrClass)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(type : Pango::AttrType? = nil, copy : Pango::Copy? = nil, destroy : Pango::Destroy? = nil, equal : Pango::Equal? = nil)
      _instance = allocate
      _instance.type = type unless type.nil?
      _instance.copy = copy unless copy.nil?
      _instance.destroy = destroy unless destroy.nil?
      _instance.equal = equal unless equal.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::AttrClass)).zero?
    end

    def type : Pango::AttrType
      value = to_unsafe.as(Pointer(LibPango::AttrClass)).value.type
      Pango::AttrType.new(value)
    end

    def type=(value : Pango::AttrType)
      _var = (to_unsafe + 0).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrClass))
      value
    end

    def copy : Pango::Copy
      value = to_unsafe.as(Pointer(LibPango::AttrClass)).value.copy
      Pango::Copy.new(value, GICrystal::Transfer::None)
    end

    def copy=(value : Pango::Copy)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrClass))
      value
    end

    def destroy : Pango::Destroy
      value = to_unsafe.as(Pointer(LibPango::AttrClass)).value.destroy
      Pango::Destroy.new(value, GICrystal::Transfer::None)
    end

    def destroy=(value : Pango::Destroy)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrClass))
      value
    end

    def equal : Pango::Equal
      value = to_unsafe.as(Pointer(LibPango::AttrClass)).value.equal
      Pango::Equal.new(value, GICrystal::Transfer::None)
    end

    def equal=(value : Pango::Equal)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibPango::AttrClass))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
