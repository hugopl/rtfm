module GLib
  class MarkupParser
    @data : LibGLib::MarkupParser

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::MarkupParser)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(start_element : GLib::StartElement? = nil, end_element : GLib::EndElement? = nil, text : GLib::Text? = nil, passthrough : GLib::Passthrough? = nil, error : GLib::Error? = nil)
      _instance = allocate
      _instance.start_element = start_element unless start_element.nil?
      _instance.end_element = end_element unless end_element.nil?
      _instance.text = text unless text.nil?
      _instance.passthrough = passthrough unless passthrough.nil?
      _instance.error = error unless error.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::MarkupParser)).zero?
    end

    def start_element : GLib::StartElement
      value = to_unsafe.as(Pointer(LibGLib::MarkupParser)).value.start_element
      GLib::StartElement.new(value, GICrystal::Transfer::None)
    end

    def start_element=(value : GLib::StartElement)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::MarkupParser))
      value
    end

    def end_element : GLib::EndElement
      value = to_unsafe.as(Pointer(LibGLib::MarkupParser)).value.end_element
      GLib::EndElement.new(value, GICrystal::Transfer::None)
    end

    def end_element=(value : GLib::EndElement)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::MarkupParser))
      value
    end

    def text : GLib::Text
      value = to_unsafe.as(Pointer(LibGLib::MarkupParser)).value.text
      GLib::Text.new(value, GICrystal::Transfer::None)
    end

    def text=(value : GLib::Text)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::MarkupParser))
      value
    end

    def passthrough : GLib::Passthrough
      value = to_unsafe.as(Pointer(LibGLib::MarkupParser)).value.passthrough
      GLib::Passthrough.new(value, GICrystal::Transfer::None)
    end

    def passthrough=(value : GLib::Passthrough)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::MarkupParser))
      value
    end

    def error : GLib::Error
      value = to_unsafe.as(Pointer(LibGLib::MarkupParser)).value.error
      GLib::Error.new(value, GICrystal::Transfer::None)
    end

    def error=(value : GLib::Error)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::MarkupParser))
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
