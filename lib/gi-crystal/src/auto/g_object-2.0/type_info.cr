module GObject
  class TypeInfo
    @data : LibGObject::TypeInfo

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypeInfo)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(class_size : UInt16? = nil, base_init : GObject::BaseInitFunc? = nil, base_finalize : GObject::BaseFinalizeFunc? = nil, class_init : GObject::ClassInitFunc? = nil, class_finalize : GObject::ClassFinalizeFunc? = nil, instance_size : UInt16? = nil, n_preallocs : UInt16? = nil, instance_init : GObject::InstanceInitFunc? = nil)
      _instance = allocate
      _instance.class_size = class_size unless class_size.nil?
      _instance.base_init = base_init unless base_init.nil?
      _instance.base_finalize = base_finalize unless base_finalize.nil?
      _instance.class_init = class_init unless class_init.nil?
      _instance.class_finalize = class_finalize unless class_finalize.nil?
      _instance.instance_size = instance_size unless instance_size.nil?
      _instance.n_preallocs = n_preallocs unless n_preallocs.nil?
      _instance.instance_init = instance_init unless instance_init.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypeInfo)).zero?
    end

    def class_size : UInt16
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.class_size
      value
    end

    def class_size=(value : UInt16)
      _var = (to_unsafe + 0).as(Pointer(UInt16)).value = value
      value
    end

    def base_init : GObject::BaseInitFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.base_init
      GObject::BaseInitFunc.new(value, GICrystal::Transfer::None)
    end

    def base_init=(value : GObject::BaseInitFunc)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeInfo))
      value
    end

    def base_finalize : GObject::BaseFinalizeFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.base_finalize
      GObject::BaseFinalizeFunc.new(value, GICrystal::Transfer::None)
    end

    def base_finalize=(value : GObject::BaseFinalizeFunc)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeInfo))
      value
    end

    def class_init : GObject::ClassInitFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.class_init
      GObject::ClassInitFunc.new(value, GICrystal::Transfer::None)
    end

    def class_init=(value : GObject::ClassInitFunc)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeInfo))
      value
    end

    def class_finalize : GObject::ClassFinalizeFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.class_finalize
      GObject::ClassFinalizeFunc.new(value, GICrystal::Transfer::None)
    end

    def class_finalize=(value : GObject::ClassFinalizeFunc)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeInfo))
      value
    end

    def class_data!
      self.class_data.not_nil!
    end

    def class_data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.class_data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def instance_size : UInt16
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.instance_size
      value
    end

    def instance_size=(value : UInt16)
      _var = (to_unsafe + 48).as(Pointer(UInt16)).value = value
      value
    end

    def n_preallocs : UInt16
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.n_preallocs
      value
    end

    def n_preallocs=(value : UInt16)
      _var = (to_unsafe + 50).as(Pointer(UInt16)).value = value
      value
    end

    def instance_init : GObject::InstanceInitFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.instance_init
      GObject::InstanceInitFunc.new(value, GICrystal::Transfer::None)
    end

    def instance_init=(value : GObject::InstanceInitFunc)
      _var = (to_unsafe + 56).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeInfo))
      value
    end

    def value_table!
      self.value_table.not_nil!
    end

    def value_table : GObject::TypeValueTable?
      value = to_unsafe.as(Pointer(LibGObject::TypeInfo)).value.value_table
      return if value.null?
      value = value.as(Pointer(Void))
      GObject::TypeValueTable.new(value, GICrystal::Transfer::None)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
