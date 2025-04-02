module HarfBuzz
  class ColorLineT
    @data : LibHarfBuzz::ColorLineT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::ColorLineT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(get_color_stops : HarfBuzz::ColorLineGetColorStopsFuncT? = nil, get_extend : HarfBuzz::ColorLineGetExtendFuncT? = nil)
      _instance = allocate
      _instance.get_color_stops = get_color_stops unless get_color_stops.nil?
      _instance.get_extend = get_extend unless get_extend.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::ColorLineT)).zero?
    end

    def data!
      self.data.not_nil!
    end

    def data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def get_color_stops : HarfBuzz::ColorLineGetColorStopsFuncT
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.get_color_stops
      HarfBuzz::ColorLineGetColorStopsFuncT.new(value, GICrystal::Transfer::None)
    end

    def get_color_stops=(value : HarfBuzz::ColorLineGetColorStopsFuncT)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::ColorLineT))
      value
    end

    def get_color_stops_user_data!
      self.get_color_stops_user_data.not_nil!
    end

    def get_color_stops_user_data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.get_color_stops_user_data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def get_extend : HarfBuzz::ColorLineGetExtendFuncT
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.get_extend
      HarfBuzz::ColorLineGetExtendFuncT.new(value, GICrystal::Transfer::None)
    end

    def get_extend=(value : HarfBuzz::ColorLineGetExtendFuncT)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::ColorLineT))
      value
    end

    def get_extend_user_data!
      self.get_extend_user_data.not_nil!
    end

    def get_extend_user_data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.get_extend_user_data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved0!
      self.reserved0.not_nil!
    end

    def reserved0 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved0
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved1!
      self.reserved1.not_nil!
    end

    def reserved1 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved1
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved2!
      self.reserved2.not_nil!
    end

    def reserved2 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved2
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved3!
      self.reserved3.not_nil!
    end

    def reserved3 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved3
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved5!
      self.reserved5.not_nil!
    end

    def reserved5 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved5
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved6!
      self.reserved6.not_nil!
    end

    def reserved6 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved6
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved7!
      self.reserved7.not_nil!
    end

    def reserved7 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved7
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved8!
      self.reserved8.not_nil!
    end

    def reserved8 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::ColorLineT)).value.reserved8
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_color_line_get_type
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
