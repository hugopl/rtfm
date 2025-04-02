module Gtk
  class RecentData
    @data : LibGtk::RecentData

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGtk::RecentData)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(is_private : Bool? = nil)
      _instance = allocate
      _instance.is_private = is_private unless is_private.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGtk::RecentData)).zero?
    end

    def display_name!
      self.display_name.not_nil!
    end

    def display_name : ::String?
      value = to_unsafe.as(Pointer(LibGtk::RecentData)).value.display_name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def description!
      self.description.not_nil!
    end

    def description : ::String?
      value = to_unsafe.as(Pointer(LibGtk::RecentData)).value.description
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def mime_type!
      self.mime_type.not_nil!
    end

    def mime_type : ::String?
      value = to_unsafe.as(Pointer(LibGtk::RecentData)).value.mime_type
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def app_name!
      self.app_name.not_nil!
    end

    def app_name : ::String?
      value = to_unsafe.as(Pointer(LibGtk::RecentData)).value.app_name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def app_exec!
      self.app_exec.not_nil!
    end

    def app_exec : ::String?
      value = to_unsafe.as(Pointer(LibGtk::RecentData)).value.app_exec
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def groups!
      self.groups.not_nil!
    end

    def groups : Enumerable(::String)?
      value = to_unsafe.as(Pointer(LibGtk::RecentData)).value.groups
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def is_private : Bool
      value = to_unsafe.as(Pointer(LibGtk::RecentData)).value.is_private
      GICrystal.to_bool(value)
    end

    def is_private=(value : Bool)
      _var = (to_unsafe + 48).as(Pointer(LibC::Int)).value = GICrystal.to_c_bool(value)
      value
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
