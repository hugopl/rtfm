module GLib
  class SourceCallbackFuncs
    @data : LibGLib::SourceCallbackFuncs

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::SourceCallbackFuncs)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref : GLib::Ref? = nil, unref : GLib::Unref? = nil)
      _instance = allocate
      _instance.ref = ref unless ref.nil?
      _instance.unref = unref unless unref.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::SourceCallbackFuncs)).zero?
    end

    def ref : GLib::Ref
      value = to_unsafe.as(Pointer(LibGLib::SourceCallbackFuncs)).value.ref
      GLib::Ref.new(value, GICrystal::Transfer::None)
    end

    def ref=(value : GLib::Ref)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::SourceCallbackFuncs))
      value
    end

    def unref : GLib::Unref
      value = to_unsafe.as(Pointer(LibGLib::SourceCallbackFuncs)).value.unref
      GLib::Unref.new(value, GICrystal::Transfer::None)
    end

    def unref=(value : GLib::Unref)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::SourceCallbackFuncs))
      value
    end

    def get!
      self.get.not_nil!
    end

    def get : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGLib::SourceCallbackFuncs)).value.get
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
