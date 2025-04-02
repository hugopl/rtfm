module Gio
  class ActionEntry
    @data : LibGio::ActionEntry

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::ActionEntry)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(activate : Gio::Activate? = nil, change_state : Gio::ChangeState? = nil, padding : Enumerable(UInt64)? = nil)
      _instance = allocate
      _instance.activate = activate unless activate.nil?
      _instance.change_state = change_state unless change_state.nil?
      _instance.padding = padding unless padding.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::ActionEntry)).zero?
    end

    def name!
      self.name.not_nil!
    end

    def name : ::String?
      value = to_unsafe.as(Pointer(LibGio::ActionEntry)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def activate : Gio::Activate
      value = to_unsafe.as(Pointer(LibGio::ActionEntry)).value.activate
      Gio::Activate.new(value, GICrystal::Transfer::None)
    end

    def activate=(value : Gio::Activate)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::ActionEntry))
      value
    end

    def parameter_type!
      self.parameter_type.not_nil!
    end

    def parameter_type : ::String?
      value = to_unsafe.as(Pointer(LibGio::ActionEntry)).value.parameter_type
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def state!
      self.state.not_nil!
    end

    def state : ::String?
      value = to_unsafe.as(Pointer(LibGio::ActionEntry)).value.state
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def change_state : Gio::ChangeState
      value = to_unsafe.as(Pointer(LibGio::ActionEntry)).value.change_state
      Gio::ChangeState.new(value, GICrystal::Transfer::None)
    end

    def change_state=(value : Gio::ChangeState)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::ActionEntry))
      value
    end

    def padding : Enumerable(UInt64)
      value = to_unsafe.as(Pointer(LibGio::ActionEntry)).value.padding
      value
    end

    def padding=(value : Enumerable(UInt64))
      _var = (to_unsafe + 40).as(Pointer(UInt64[3])).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
