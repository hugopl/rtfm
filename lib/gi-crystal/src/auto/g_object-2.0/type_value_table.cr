module GObject
  class TypeValueTable
    @data : LibGObject::TypeValueTable

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGObject::TypeValueTable)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(value_init : GObject::TypeValueInitFunc? = nil, value_free : GObject::TypeValueFreeFunc? = nil, value_copy : GObject::TypeValueCopyFunc? = nil, value_peek_pointer : GObject::TypeValuePeekPointerFunc? = nil, collect_value : GObject::TypeValueCollectFunc? = nil, lcopy_value : GObject::TypeValueLCopyFunc? = nil)
      _instance = allocate
      _instance.value_init = value_init unless value_init.nil?
      _instance.value_free = value_free unless value_free.nil?
      _instance.value_copy = value_copy unless value_copy.nil?
      _instance.value_peek_pointer = value_peek_pointer unless value_peek_pointer.nil?
      _instance.collect_value = collect_value unless collect_value.nil?
      _instance.lcopy_value = lcopy_value unless lcopy_value.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGObject::TypeValueTable)).zero?
    end

    def value_init : GObject::TypeValueInitFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.value_init
      GObject::TypeValueInitFunc.new(value, GICrystal::Transfer::None)
    end

    def value_init=(value : GObject::TypeValueInitFunc)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeValueTable))
      value
    end

    def value_free : GObject::TypeValueFreeFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.value_free
      GObject::TypeValueFreeFunc.new(value, GICrystal::Transfer::None)
    end

    def value_free=(value : GObject::TypeValueFreeFunc)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeValueTable))
      value
    end

    def value_copy : GObject::TypeValueCopyFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.value_copy
      GObject::TypeValueCopyFunc.new(value, GICrystal::Transfer::None)
    end

    def value_copy=(value : GObject::TypeValueCopyFunc)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeValueTable))
      value
    end

    def value_peek_pointer : GObject::TypeValuePeekPointerFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.value_peek_pointer
      GObject::TypeValuePeekPointerFunc.new(value, GICrystal::Transfer::None)
    end

    def value_peek_pointer=(value : GObject::TypeValuePeekPointerFunc)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeValueTable))
      value
    end

    def collect_format!
      self.collect_format.not_nil!
    end

    def collect_format : ::String?
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.collect_format
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def collect_value : GObject::TypeValueCollectFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.collect_value
      GObject::TypeValueCollectFunc.new(value, GICrystal::Transfer::None)
    end

    def collect_value=(value : GObject::TypeValueCollectFunc)
      _var = (to_unsafe + 40).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeValueTable))
      value
    end

    def lcopy_format!
      self.lcopy_format.not_nil!
    end

    def lcopy_format : ::String?
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.lcopy_format
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def lcopy_value : GObject::TypeValueLCopyFunc
      value = to_unsafe.as(Pointer(LibGObject::TypeValueTable)).value.lcopy_value
      GObject::TypeValueLCopyFunc.new(value, GICrystal::Transfer::None)
    end

    def lcopy_value=(value : GObject::TypeValueLCopyFunc)
      _var = (to_unsafe + 56).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGObject::TypeValueTable))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
