module Gio
  class DBusInterfaceVTable
    @data : LibGio::DBusInterfaceVTable

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusInterfaceVTable)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(method_call : Gio::DBusInterfaceMethodCallFunc? = nil, get_property : Gio::DBusInterfaceGetPropertyFunc? = nil, set_property : Gio::DBusInterfaceSetPropertyFunc? = nil, padding : Enumerable(Pointer(Void))? = nil)
      _instance = allocate
      _instance.method_call = method_call unless method_call.nil?
      _instance.get_property = get_property unless get_property.nil?
      _instance.set_property = set_property unless set_property.nil?
      _instance.padding = padding unless padding.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusInterfaceVTable)).zero?
    end

    def method_call : Gio::DBusInterfaceMethodCallFunc
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceVTable)).value.method_call
      Gio::DBusInterfaceMethodCallFunc.new(value, GICrystal::Transfer::None)
    end

    def method_call=(value : Gio::DBusInterfaceMethodCallFunc)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::DBusInterfaceVTable))
      value
    end

    def get_property : Gio::DBusInterfaceGetPropertyFunc
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceVTable)).value.get_property
      Gio::DBusInterfaceGetPropertyFunc.new(value, GICrystal::Transfer::None)
    end

    def get_property=(value : Gio::DBusInterfaceGetPropertyFunc)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::DBusInterfaceVTable))
      value
    end

    def set_property : Gio::DBusInterfaceSetPropertyFunc
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceVTable)).value.set_property
      Gio::DBusInterfaceSetPropertyFunc.new(value, GICrystal::Transfer::None)
    end

    def set_property=(value : Gio::DBusInterfaceSetPropertyFunc)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::DBusInterfaceVTable))
      value
    end

    def padding : Enumerable(Pointer(Void))
      value = to_unsafe.as(Pointer(LibGio::DBusInterfaceVTable)).value.padding
      value
    end

    def padding=(value : Enumerable(Pointer(Void)))
      _var = (to_unsafe + 24).as(Pointer(Pointer(Void)[8])).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
