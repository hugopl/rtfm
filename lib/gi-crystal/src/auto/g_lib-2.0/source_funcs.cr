module GLib
  class SourceFuncs
    @data : LibGLib::SourceFuncs

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::SourceFuncs)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(prepare : GLib::SourceFuncsPrepareFunc? = nil, check : GLib::SourceFuncsCheckFunc? = nil, finalize : GLib::SourceFuncsFinalizeFunc? = nil, closure_callback : GLib::SourceFunc? = nil, closure_marshal : GLib::SourceDummyMarshal? = nil)
      _instance = allocate
      _instance.prepare = prepare unless prepare.nil?
      _instance.check = check unless check.nil?
      _instance.finalize = finalize unless finalize.nil?
      _instance.closure_callback = closure_callback unless closure_callback.nil?
      _instance.closure_marshal = closure_marshal unless closure_marshal.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::SourceFuncs)).zero?
    end

    def prepare : GLib::SourceFuncsPrepareFunc
      value = to_unsafe.as(Pointer(LibGLib::SourceFuncs)).value.prepare
      GLib::SourceFuncsPrepareFunc.new(value, GICrystal::Transfer::None)
    end

    def prepare=(value : GLib::SourceFuncsPrepareFunc)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::SourceFuncs))
      value
    end

    def check : GLib::SourceFuncsCheckFunc
      value = to_unsafe.as(Pointer(LibGLib::SourceFuncs)).value.check
      GLib::SourceFuncsCheckFunc.new(value, GICrystal::Transfer::None)
    end

    def check=(value : GLib::SourceFuncsCheckFunc)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::SourceFuncs))
      value
    end

    def dispatch!
      self.dispatch.not_nil!
    end

    def dispatch : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGLib::SourceFuncs)).value.dispatch
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _finalize : GLib::SourceFuncsFinalizeFunc
      value = to_unsafe.as(Pointer(LibGLib::SourceFuncs)).value.finalize
      GLib::SourceFuncsFinalizeFunc.new(value, GICrystal::Transfer::None)
    end

    def _finalize=(value : GLib::SourceFuncsFinalizeFunc)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::SourceFuncs))
      value
    end

    def closure_callback : GLib::SourceFunc
      value = to_unsafe.as(Pointer(LibGLib::SourceFuncs)).value.closure_callback
      GLib::SourceFunc.new(value, GICrystal::Transfer::None)
    end

    def closure_callback=(value : GLib::SourceFunc)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::SourceFuncs))
      value
    end

    def closure_marshal : GLib::SourceDummyMarshal
      value = to_unsafe.as(Pointer(LibGLib::SourceFuncs)).value.closure_marshal
      GLib::SourceDummyMarshal.new(value, GICrystal::Transfer::None)
    end

    def closure_marshal=(value : GLib::SourceDummyMarshal)
      _var = (to_unsafe + 40).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::SourceFuncs))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
