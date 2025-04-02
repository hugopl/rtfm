module GObject
  class TypeQuery
    @data : LibGObject::TypeQuery

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypeQuery)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(type : UInt64? = nil, class_size : UInt32? = nil, instance_size : UInt32? = nil)
      _instance = allocate
      _instance.type = type unless type.nil?
      _instance.class_size = class_size unless class_size.nil?
      _instance.instance_size = instance_size unless instance_size.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypeQuery)).zero?
    end

    def type : UInt64
      value = to_unsafe.as(Pointer(LibGObject::TypeQuery)).value.type
      value
    end

    def type=(value : UInt64)
      _var = (to_unsafe + 0).as(Pointer(UInt64)).value = value
      value
    end

    def type_name!
      self.type_name.not_nil!
    end

    def type_name : ::String?
      value = to_unsafe.as(Pointer(LibGObject::TypeQuery)).value.type_name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def class_size : UInt32
      value = to_unsafe.as(Pointer(LibGObject::TypeQuery)).value.class_size
      value
    end

    def class_size=(value : UInt32)
      _var = (to_unsafe + 16).as(Pointer(UInt32)).value = value
      value
    end

    def instance_size : UInt32
      value = to_unsafe.as(Pointer(LibGObject::TypeQuery)).value.instance_size
      value
    end

    def instance_size=(value : UInt32)
      _var = (to_unsafe + 20).as(Pointer(UInt32)).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
