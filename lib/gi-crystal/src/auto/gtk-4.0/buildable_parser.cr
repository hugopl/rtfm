module Gtk
  class BuildableParser
    @data : LibGtk::BuildableParser

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::BuildableParser)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(start_element : Gtk::StartElement? = nil, end_element : Gtk::EndElement? = nil, text : Gtk::Text? = nil, error : Gtk::Error? = nil, padding : Enumerable(Pointer(Void))? = nil)
      _instance = allocate
      _instance.start_element = start_element unless start_element.nil?
      _instance.end_element = end_element unless end_element.nil?
      _instance.text = text unless text.nil?
      _instance.error = error unless error.nil?
      _instance.padding = padding unless padding.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::BuildableParser)).zero?
    end

    def start_element : Gtk::StartElement
      value = to_unsafe.as(Pointer(LibGtk::BuildableParser)).value.start_element
      Gtk::StartElement.new(value, GICrystal::Transfer::None)
    end

    def start_element=(value : Gtk::StartElement)
      _var = (to_unsafe + 0).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGtk::BuildableParser))
      value
    end

    def end_element : Gtk::EndElement
      value = to_unsafe.as(Pointer(LibGtk::BuildableParser)).value.end_element
      Gtk::EndElement.new(value, GICrystal::Transfer::None)
    end

    def end_element=(value : Gtk::EndElement)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGtk::BuildableParser))
      value
    end

    def text : Gtk::Text
      value = to_unsafe.as(Pointer(LibGtk::BuildableParser)).value.text
      Gtk::Text.new(value, GICrystal::Transfer::None)
    end

    def text=(value : Gtk::Text)
      _var = (to_unsafe + 16).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGtk::BuildableParser))
      value
    end

    def error : Gtk::Error
      value = to_unsafe.as(Pointer(LibGtk::BuildableParser)).value.error
      Gtk::Error.new(value, GICrystal::Transfer::None)
    end

    def error=(value : Gtk::Error)
      _var = (to_unsafe + 24).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGtk::BuildableParser))
      value
    end

    def padding : Enumerable(Pointer(Void))
      value = to_unsafe.as(Pointer(LibGtk::BuildableParser)).value.padding
      value
    end

    def padding=(value : Enumerable(Pointer(Void)))
      _var = (to_unsafe + 32).as(Pointer(Pointer(Void)[4])).value = value
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
