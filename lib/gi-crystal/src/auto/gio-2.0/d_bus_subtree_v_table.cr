module Gio
  class DBusSubtreeVTable
    @data : LibGio::DBusSubtreeVTable

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::DBusSubtreeVTable)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(enumerate : Gio::DBusSubtreeEnumerateFunc? = nil, introspect : Gio::DBusSubtreeIntrospectFunc? = nil, dispatch : Gio::DBusSubtreeDispatchFunc? = nil, padding : Enumerable(Pointer(Void))? = nil)
      _instance = allocate
      _instance.enumerate = enumerate unless enumerate.nil?
      _instance.introspect = introspect unless introspect.nil?
      _instance.dispatch = dispatch unless dispatch.nil?
      _instance.padding = padding unless padding.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::DBusSubtreeVTable)).zero?
    end

    def enumerate : Gio::DBusSubtreeEnumerateFunc
      value = to_unsafe.as(Pointer(LibGio::DBusSubtreeVTable)).value.enumerate
      Gio::DBusSubtreeEnumerateFunc.new(value, GICrystal::Transfer::None)
    end

    def enumerate=(value : Gio::DBusSubtreeEnumerateFunc)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::DBusSubtreeVTable))
      value
    end

    def introspect : Gio::DBusSubtreeIntrospectFunc
      value = to_unsafe.as(Pointer(LibGio::DBusSubtreeVTable)).value.introspect
      Gio::DBusSubtreeIntrospectFunc.new(value, GICrystal::Transfer::None)
    end

    def introspect=(value : Gio::DBusSubtreeIntrospectFunc)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::DBusSubtreeVTable))
      value
    end

    def dispatch : Gio::DBusSubtreeDispatchFunc
      value = to_unsafe.as(Pointer(LibGio::DBusSubtreeVTable)).value.dispatch
      Gio::DBusSubtreeDispatchFunc.new(value, GICrystal::Transfer::None)
    end

    def dispatch=(value : Gio::DBusSubtreeDispatchFunc)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGio::DBusSubtreeVTable))
      value
    end

    def padding : Enumerable(Pointer(Void))
      value = to_unsafe.as(Pointer(LibGio::DBusSubtreeVTable)).value.padding
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
