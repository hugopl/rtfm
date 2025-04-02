module Pango
  class Analysis
    @data : LibPango::Analysis

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::Analysis)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(level : UInt8? = nil, gravity : UInt8? = nil, flags : UInt8? = nil, script : UInt8? = nil)
      _instance = allocate
      _instance.level = level unless level.nil?
      _instance.gravity = gravity unless gravity.nil?
      _instance.flags = flags unless flags.nil?
      _instance.script = script unless script.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::Analysis)).zero?
    end

    def shape_engine!
      self.shape_engine.not_nil!
    end

    def shape_engine : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.shape_engine
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def lang_engine!
      self.lang_engine.not_nil!
    end

    def lang_engine : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.lang_engine
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def font!
      self.font.not_nil!
    end

    def font : Pango::Font?
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.font
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::Font.new(value, GICrystal::Transfer::None)
    end

    def level : UInt8
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.level
      value
    end

    def level=(value : UInt8)
      _var = (to_unsafe + 24).as(Pointer(UInt8)).value = value
      value
    end

    def gravity : UInt8
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.gravity
      value
    end

    def gravity=(value : UInt8)
      _var = (to_unsafe + 25).as(Pointer(UInt8)).value = value
      value
    end

    def flags : UInt8
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.flags
      value
    end

    def flags=(value : UInt8)
      _var = (to_unsafe + 26).as(Pointer(UInt8)).value = value
      value
    end

    def script : UInt8
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.script
      value
    end

    def script=(value : UInt8)
      _var = (to_unsafe + 27).as(Pointer(UInt8)).value = value
      value
    end

    def language!
      self.language.not_nil!
    end

    def language : Pango::Language?
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.language
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::Language.new(value, GICrystal::Transfer::None)
    end

    def extra_attrs!
      self.extra_attrs.not_nil!
    end

    def extra_attrs : GLib::SList?
      value = to_unsafe.as(Pointer(LibPango::Analysis)).value.extra_attrs
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::SList(Pointer(Void)).new(value, GICrystal::Transfer::None)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
