module JavaScriptCore
  class ClassVTable
    @data : LibJavaScriptCore::ClassVTable

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibJavaScriptCore::ClassVTable)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(get_property : JavaScriptCore::ClassGetPropertyFunction? = nil, set_property : JavaScriptCore::ClassSetPropertyFunction? = nil, has_property : JavaScriptCore::ClassHasPropertyFunction? = nil, delete_property : JavaScriptCore::ClassDeletePropertyFunction? = nil, enumerate_properties : JavaScriptCore::ClassEnumeratePropertiesFunction? = nil)
      _instance = allocate
      _instance.get_property = get_property unless get_property.nil?
      _instance.set_property = set_property unless set_property.nil?
      _instance.has_property = has_property unless has_property.nil?
      _instance.delete_property = delete_property unless delete_property.nil?
      _instance.enumerate_properties = enumerate_properties unless enumerate_properties.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibJavaScriptCore::ClassVTable)).zero?
    end

    def get_property : JavaScriptCore::ClassGetPropertyFunction
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value.get_property
      JavaScriptCore::ClassGetPropertyFunction.new(value, GICrystal::Transfer::None)
    end

    def get_property=(value : JavaScriptCore::ClassGetPropertyFunction)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibJavaScriptCore::ClassVTable))
      value
    end

    def set_property : JavaScriptCore::ClassSetPropertyFunction
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value.set_property
      JavaScriptCore::ClassSetPropertyFunction.new(value, GICrystal::Transfer::None)
    end

    def set_property=(value : JavaScriptCore::ClassSetPropertyFunction)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibJavaScriptCore::ClassVTable))
      value
    end

    def has_property : JavaScriptCore::ClassHasPropertyFunction
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value.has_property
      JavaScriptCore::ClassHasPropertyFunction.new(value, GICrystal::Transfer::None)
    end

    def has_property=(value : JavaScriptCore::ClassHasPropertyFunction)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibJavaScriptCore::ClassVTable))
      value
    end

    def delete_property : JavaScriptCore::ClassDeletePropertyFunction
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value.delete_property
      JavaScriptCore::ClassDeletePropertyFunction.new(value, GICrystal::Transfer::None)
    end

    def delete_property=(value : JavaScriptCore::ClassDeletePropertyFunction)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibJavaScriptCore::ClassVTable))
      value
    end

    def enumerate_properties : JavaScriptCore::ClassEnumeratePropertiesFunction
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value.enumerate_properties
      JavaScriptCore::ClassEnumeratePropertiesFunction.new(value, GICrystal::Transfer::None)
    end

    def enumerate_properties=(value : JavaScriptCore::ClassEnumeratePropertiesFunction)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibJavaScriptCore::ClassVTable))
      value
    end

    def _jsc_reserved0!
      self._jsc_reserved0.not_nil!
    end

    def _jsc_reserved0 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved0
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _jsc_reserved1!
      self._jsc_reserved1.not_nil!
    end

    def _jsc_reserved1 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved1
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _jsc_reserved2!
      self._jsc_reserved2.not_nil!
    end

    def _jsc_reserved2 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved2
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _jsc_reserved3!
      self._jsc_reserved3.not_nil!
    end

    def _jsc_reserved3 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved3
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _jsc_reserved4!
      self._jsc_reserved4.not_nil!
    end

    def _jsc_reserved4 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved4
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _jsc_reserved5!
      self._jsc_reserved5.not_nil!
    end

    def _jsc_reserved5 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved5
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _jsc_reserved6!
      self._jsc_reserved6.not_nil!
    end

    def _jsc_reserved6 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved6
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def _jsc_reserved7!
      self._jsc_reserved7.not_nil!
    end

    def _jsc_reserved7 : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibJavaScriptCore::ClassVTable)).value._jsc_reserved7
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
