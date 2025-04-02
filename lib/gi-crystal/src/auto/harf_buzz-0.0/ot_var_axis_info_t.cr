module HarfBuzz
  class OtVarAxisInfoT
    @data : LibHarfBuzz::OtVarAxisInfoT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(axis_index : UInt32? = nil, tag : UInt32? = nil, name_id : UInt32? = nil, flags : HarfBuzz::OtVarAxisFlagsT? = nil, min_value : Float32? = nil, default_value : Float32? = nil, max_value : Float32? = nil, reserved : UInt32? = nil)
      _instance = allocate
      _instance.axis_index = axis_index unless axis_index.nil?
      _instance.tag = tag unless tag.nil?
      _instance.name_id = name_id unless name_id.nil?
      _instance.flags = flags unless flags.nil?
      _instance.min_value = min_value unless min_value.nil?
      _instance.default_value = default_value unless default_value.nil?
      _instance.max_value = max_value unless max_value.nil?
      _instance.reserved = reserved unless reserved.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::OtVarAxisInfoT)).zero?
    end

    def axis_index : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.axis_index
      value
    end

    def axis_index=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def tag : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.tag
      value
    end

    def tag=(value : UInt32)
      _var = (to_unsafe + 4).as(Pointer(UInt32)).value = value
      value
    end

    def name_id : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.name_id
      value
    end

    def name_id=(value : UInt32)
      _var = (to_unsafe + 8).as(Pointer(UInt32)).value = value
      value
    end

    def flags : HarfBuzz::OtVarAxisFlagsT
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.flags
      HarfBuzz::OtVarAxisFlagsT.new(value)
    end

    def flags=(value : HarfBuzz::OtVarAxisFlagsT)
      _var = (to_unsafe + 12).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::OtVarAxisInfoT))
      value
    end

    def min_value : Float32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.min_value
      value
    end

    def min_value=(value : Float32)
      _var = (to_unsafe + 16).as(Pointer(Float32)).value = value
      value
    end

    def default_value : Float32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.default_value
      value
    end

    def default_value=(value : Float32)
      _var = (to_unsafe + 20).as(Pointer(Float32)).value = value
      value
    end

    def max_value : Float32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.max_value
      value
    end

    def max_value=(value : Float32)
      _var = (to_unsafe + 24).as(Pointer(Float32)).value = value
      value
    end

    def reserved : UInt32
      value = to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT)).value.reserved
      value
    end

    def reserved=(value : UInt32)
      _var = (to_unsafe + 28).as(Pointer(UInt32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_ot_var_axis_info_get_type
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
