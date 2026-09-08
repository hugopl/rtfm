module HarfBuzz
  class DrawStateT
    @data : LibHarfBuzz::DrawStateT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::DrawStateT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(path_open : Int32? = nil, path_start_x : Float32? = nil, path_start_y : Float32? = nil, current_x : Float32? = nil, current_y : Float32? = nil, reserved1 : HarfBuzz::VarNumT? = nil, reserved2 : HarfBuzz::VarNumT? = nil, reserved3 : HarfBuzz::VarNumT? = nil, reserved4 : HarfBuzz::VarNumT? = nil, reserved5 : HarfBuzz::VarNumT? = nil, reserved6 : HarfBuzz::VarNumT? = nil, reserved7 : HarfBuzz::VarNumT? = nil)
      _instance = allocate
      _instance.path_open = path_open unless path_open.nil?
      _instance.path_start_x = path_start_x unless path_start_x.nil?
      _instance.path_start_y = path_start_y unless path_start_y.nil?
      _instance.current_x = current_x unless current_x.nil?
      _instance.current_y = current_y unless current_y.nil?
      _instance.reserved1 = reserved1 unless reserved1.nil?
      _instance.reserved2 = reserved2 unless reserved2.nil?
      _instance.reserved3 = reserved3 unless reserved3.nil?
      _instance.reserved4 = reserved4 unless reserved4.nil?
      _instance.reserved5 = reserved5 unless reserved5.nil?
      _instance.reserved6 = reserved6 unless reserved6.nil?
      _instance.reserved7 = reserved7 unless reserved7.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::DrawStateT)).zero?
    end

    def path_open : Int32
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.path_open
      value
    end

    def path_open=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def path_start_x : Float32
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.path_start_x
      value
    end

    def path_start_x=(value : Float32)
      _var = (to_unsafe + 4).as(Pointer(Float32)).value = value
      value
    end

    def path_start_y : Float32
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.path_start_y
      value
    end

    def path_start_y=(value : Float32)
      _var = (to_unsafe + 8).as(Pointer(Float32)).value = value
      value
    end

    def current_x : Float32
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.current_x
      value
    end

    def current_x=(value : Float32)
      _var = (to_unsafe + 12).as(Pointer(Float32)).value = value
      value
    end

    def current_y : Float32
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.current_y
      value
    end

    def current_y=(value : Float32)
      _var = (to_unsafe + 16).as(Pointer(Float32)).value = value
      value
    end

    def reserved1 : HarfBuzz::VarNumT
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.reserved1
      HarfBuzz::VarNumT.new(value, GICrystal::Transfer::None)
    end

    def reserved1=(value : HarfBuzz::VarNumT)
      _var = (to_unsafe + 20).as(Pointer(LibHarfBuzz::VarNumT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::DrawStateT))
      value
    end

    def reserved2 : HarfBuzz::VarNumT
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.reserved2
      HarfBuzz::VarNumT.new(value, GICrystal::Transfer::None)
    end

    def reserved2=(value : HarfBuzz::VarNumT)
      _var = (to_unsafe + 24).as(Pointer(LibHarfBuzz::VarNumT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::DrawStateT))
      value
    end

    def reserved3 : HarfBuzz::VarNumT
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.reserved3
      HarfBuzz::VarNumT.new(value, GICrystal::Transfer::None)
    end

    def reserved3=(value : HarfBuzz::VarNumT)
      _var = (to_unsafe + 28).as(Pointer(LibHarfBuzz::VarNumT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::DrawStateT))
      value
    end

    def reserved4 : HarfBuzz::VarNumT
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.reserved4
      HarfBuzz::VarNumT.new(value, GICrystal::Transfer::None)
    end

    def reserved4=(value : HarfBuzz::VarNumT)
      _var = (to_unsafe + 32).as(Pointer(LibHarfBuzz::VarNumT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::DrawStateT))
      value
    end

    def reserved5 : HarfBuzz::VarNumT
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.reserved5
      HarfBuzz::VarNumT.new(value, GICrystal::Transfer::None)
    end

    def reserved5=(value : HarfBuzz::VarNumT)
      _var = (to_unsafe + 36).as(Pointer(LibHarfBuzz::VarNumT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::DrawStateT))
      value
    end

    def reserved6 : HarfBuzz::VarNumT
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.reserved6
      HarfBuzz::VarNumT.new(value, GICrystal::Transfer::None)
    end

    def reserved6=(value : HarfBuzz::VarNumT)
      _var = (to_unsafe + 40).as(Pointer(LibHarfBuzz::VarNumT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::DrawStateT))
      value
    end

    def reserved7 : HarfBuzz::VarNumT
      value = to_unsafe.as(Pointer(LibHarfBuzz::DrawStateT)).value.reserved7
      HarfBuzz::VarNumT.new(value, GICrystal::Transfer::None)
    end

    def reserved7=(value : HarfBuzz::VarNumT)
      _var = (to_unsafe + 44).as(Pointer(LibHarfBuzz::VarNumT))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::DrawStateT))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_draw_state_get_type
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
