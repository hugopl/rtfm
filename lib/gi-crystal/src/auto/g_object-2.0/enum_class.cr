module GObject
  class EnumClass
    @data : LibGObject::EnumClass

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::EnumClass)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(g_type_class : GObject::TypeClass? = nil, minimum : Int32? = nil, maximum : Int32? = nil, n_values : UInt32? = nil)
      _instance = allocate
      _instance.g_type_class = g_type_class unless g_type_class.nil?
      _instance.minimum = minimum unless minimum.nil?
      _instance.maximum = maximum unless maximum.nil?
      _instance.n_values = n_values unless n_values.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::EnumClass)).zero?
    end

    def g_type_class : GObject::TypeClass
      value = to_unsafe.as(Pointer(LibGObject::EnumClass)).value.g_type_class
      GObject::TypeClass.new(value, GICrystal::Transfer::None)
    end

    def g_type_class=(value : GObject::TypeClass)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::EnumClass))
      value
    end

    def minimum : Int32
      value = to_unsafe.as(Pointer(LibGObject::EnumClass)).value.minimum
      value
    end

    def minimum=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def maximum : Int32
      value = to_unsafe.as(Pointer(LibGObject::EnumClass)).value.maximum
      value
    end

    def maximum=(value : Int32)
      _var = (to_unsafe + 12).as(Pointer(Int32)).value = value
      value
    end

    def n_values : UInt32
      value = to_unsafe.as(Pointer(LibGObject::EnumClass)).value.n_values
      value
    end

    def n_values=(value : UInt32)
      _var = (to_unsafe + 16).as(Pointer(UInt32)).value = value
      value
    end

    def values!
      self.values.not_nil!
    end

    def values : GObject::EnumValue?
      value = to_unsafe.as(Pointer(LibGObject::EnumClass)).value.values
      return if value.null?
      value = value.as(Pointer(Void))
      GObject::EnumValue.new(value, GICrystal::Transfer::None)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
