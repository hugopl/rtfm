module GObject
  class TypePluginClass
    @data : LibGObject::TypePluginClass

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypePluginClass)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(base_iface : GObject::TypeInterface? = nil, use_plugin : GObject::TypePluginUse? = nil, unuse_plugin : GObject::TypePluginUnuse? = nil, complete_type_info : GObject::TypePluginCompleteTypeInfo? = nil, complete_interface_info : GObject::TypePluginCompleteInterfaceInfo? = nil)
      _instance = allocate
      _instance.base_iface = base_iface unless base_iface.nil?
      _instance.use_plugin = use_plugin unless use_plugin.nil?
      _instance.unuse_plugin = unuse_plugin unless unuse_plugin.nil?
      _instance.complete_type_info = complete_type_info unless complete_type_info.nil?
      _instance.complete_interface_info = complete_interface_info unless complete_interface_info.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypePluginClass)).zero?
    end

    def base_iface : GObject::TypeInterface
      value = to_unsafe.as(Pointer(LibGObject::TypePluginClass)).value.base_iface
      GObject::TypeInterface.new(value, GICrystal::Transfer::None)
    end

    def base_iface=(value : GObject::TypeInterface)
      _var = (to_unsafe + 0).as(Pointer(Void))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypePluginClass))
      value
    end

    def use_plugin : GObject::TypePluginUse
      value = to_unsafe.as(Pointer(LibGObject::TypePluginClass)).value.use_plugin
      GObject::TypePluginUse.new(value, GICrystal::Transfer::None)
    end

    def use_plugin=(value : GObject::TypePluginUse)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypePluginClass))
      value
    end

    def unuse_plugin : GObject::TypePluginUnuse
      value = to_unsafe.as(Pointer(LibGObject::TypePluginClass)).value.unuse_plugin
      GObject::TypePluginUnuse.new(value, GICrystal::Transfer::None)
    end

    def unuse_plugin=(value : GObject::TypePluginUnuse)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypePluginClass))
      value
    end

    def complete_type_info : GObject::TypePluginCompleteTypeInfo
      value = to_unsafe.as(Pointer(LibGObject::TypePluginClass)).value.complete_type_info
      GObject::TypePluginCompleteTypeInfo.new(value, GICrystal::Transfer::None)
    end

    def complete_type_info=(value : GObject::TypePluginCompleteTypeInfo)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypePluginClass))
      value
    end

    def complete_interface_info : GObject::TypePluginCompleteInterfaceInfo
      value = to_unsafe.as(Pointer(LibGObject::TypePluginClass)).value.complete_interface_info
      GObject::TypePluginCompleteInterfaceInfo.new(value, GICrystal::Transfer::None)
    end

    def complete_interface_info=(value : GObject::TypePluginCompleteInterfaceInfo)
      _var = (to_unsafe + 40).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypePluginClass))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
