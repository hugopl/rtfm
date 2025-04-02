module HarfBuzz
  class SegmentPropertiesT
    @data : LibHarfBuzz::SegmentPropertiesT

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibHarfBuzz::SegmentPropertiesT)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(direction : HarfBuzz::DirectionT? = nil, script : HarfBuzz::ScriptT? = nil)
      _instance = allocate
      _instance.direction = direction unless direction.nil?
      _instance.script = script unless script.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibHarfBuzz::SegmentPropertiesT)).zero?
    end

    def direction : HarfBuzz::DirectionT
      value = to_unsafe.as(Pointer(LibHarfBuzz::SegmentPropertiesT)).value.direction
      HarfBuzz::DirectionT.new(value)
    end

    def direction=(value : HarfBuzz::DirectionT)
      _var = (to_unsafe + 0).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::SegmentPropertiesT))
      value
    end

    def script : HarfBuzz::ScriptT
      value = to_unsafe.as(Pointer(LibHarfBuzz::SegmentPropertiesT)).value.script
      HarfBuzz::ScriptT.new(value)
    end

    def script=(value : HarfBuzz::ScriptT)
      _var = (to_unsafe + 4).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibHarfBuzz::SegmentPropertiesT))
      value
    end

    def language!
      self.language.not_nil!
    end

    def language : HarfBuzz::LanguageT?
      value = to_unsafe.as(Pointer(LibHarfBuzz::SegmentPropertiesT)).value.language
      return if value.null?
      value = value.as(Pointer(Void))
      HarfBuzz::LanguageT.new(value, GICrystal::Transfer::None)
    end

    def reserved1!
      self.reserved1.not_nil!
    end

    def reserved1 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::SegmentPropertiesT)).value.reserved1
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def reserved2!
      self.reserved2.not_nil!
    end

    def reserved2 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibHarfBuzz::SegmentPropertiesT)).value.reserved2
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibHarfBuzz.hb_gobject_segment_properties_get_type
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
