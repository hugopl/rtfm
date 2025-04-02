module Gtk
  class PadActionEntry
    @data : LibGtk::PadActionEntry

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::PadActionEntry)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(type : Gtk::PadActionType? = nil, index : Int32? = nil, mode : Int32? = nil)
      _instance = allocate
      _instance.type = type unless type.nil?
      _instance.index = index unless index.nil?
      _instance.mode = mode unless mode.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::PadActionEntry)).zero?
    end

    def type : Gtk::PadActionType
      value = to_unsafe.as(Pointer(LibGtk::PadActionEntry)).value.type
      Gtk::PadActionType.new(value)
    end

    def type=(value : Gtk::PadActionType)
      _var = (to_unsafe + 0).as(Pointer(UInt32))
      _var.copy_from(value.to_unsafe, sizeof(LibGtk::PadActionEntry))
      value
    end

    def index : Int32
      value = to_unsafe.as(Pointer(LibGtk::PadActionEntry)).value.index
      value
    end

    def index=(value : Int32)
      _var = (to_unsafe + 4).as(Pointer(Int32)).value = value
      value
    end

    def mode : Int32
      value = to_unsafe.as(Pointer(LibGtk::PadActionEntry)).value.mode
      value
    end

    def mode=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def label!
      self.label.not_nil!
    end

    def label : ::String?
      value = to_unsafe.as(Pointer(LibGtk::PadActionEntry)).value.label
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def action_name!
      self.action_name.not_nil!
    end

    def action_name : ::String?
      value = to_unsafe.as(Pointer(LibGtk::PadActionEntry)).value.action_name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
