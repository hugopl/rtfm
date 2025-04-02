module GObject
  class InterfaceInfo
    @data : LibGObject::InterfaceInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::InterfaceInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(interface_init : GObject::InterfaceInitFunc? = nil, interface_finalize : GObject::InterfaceFinalizeFunc? = nil)
      _instance = allocate
      _instance.interface_init = interface_init unless interface_init.nil?
      _instance.interface_finalize = interface_finalize unless interface_finalize.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::InterfaceInfo)).zero?
    end

    def interface_init : GObject::InterfaceInitFunc
      value = to_unsafe.as(Pointer(LibGObject::InterfaceInfo)).value.interface_init
      GObject::InterfaceInitFunc.new(value, GICrystal::Transfer::None)
    end

    def interface_init=(value : GObject::InterfaceInitFunc)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::InterfaceInfo))
      value
    end

    def interface_finalize : GObject::InterfaceFinalizeFunc
      value = to_unsafe.as(Pointer(LibGObject::InterfaceInfo)).value.interface_finalize
      GObject::InterfaceFinalizeFunc.new(value, GICrystal::Transfer::None)
    end

    def interface_finalize=(value : GObject::InterfaceFinalizeFunc)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::InterfaceInfo))
      value
    end

    def interface_data!
      self.interface_data.not_nil!
    end

    def interface_data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGObject::InterfaceInfo)).value.interface_data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
