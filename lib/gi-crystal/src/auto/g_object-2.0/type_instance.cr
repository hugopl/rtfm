module GObject
  class TypeInstance
    @data : LibGObject::TypeInstance

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypeInstance)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new
      _instance = allocate
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypeInstance)).zero?
    end

    def g_class!
      self.g_class.not_nil!
    end

    def g_class : GObject::TypeClass?
      value = to_unsafe.as(Pointer(LibGObject::TypeInstance)).value.g_class
      return if value.null?
      value = value.as(Pointer(Void))
      GObject::TypeClass.new(value, GICrystal::Transfer::None)
    end

    def private(private_type : UInt64) : Pointer(Void)?
      # g_type_instance_get_private: (Method)
      # @private_type:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_type_instance_get_private(to_unsafe, private_type)

      # Return value handling
      _retval unless _retval.null?
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
