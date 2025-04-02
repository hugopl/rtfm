module Gio
  class FileAttributeInfoList
    @data : LibGio::FileAttributeInfoList

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGio::FileAttributeInfoList)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(n_infos : Int32? = nil)
      _instance = allocate
      _instance.n_infos = n_infos unless n_infos.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGio::FileAttributeInfoList)).zero?
    end

    def infos!
      self.infos.not_nil!
    end

    def infos : Gio::FileAttributeInfo?
      value = to_unsafe.as(Pointer(LibGio::FileAttributeInfoList)).value.infos
      return if value.null?
      value = value.as(Pointer(Void))
      Gio::FileAttributeInfo.new(value, GICrystal::Transfer::None)
    end

    def n_infos : Int32
      value = to_unsafe.as(Pointer(LibGio::FileAttributeInfoList)).value.n_infos
      value
    end

    def n_infos=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_attribute_info_list_get_type
    end

    def add(name : ::String, type : Gio::FileAttributeType, flags : Gio::FileAttributeInfoFlags) : Nil
      # g_file_attribute_info_list_add: (Method)
      # @name:
      # @type:
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_file_attribute_info_list_add(to_unsafe, name, type, flags)

      # Return value handling
    end

    def dup : Gio::FileAttributeInfoList
      # g_file_attribute_info_list_dup: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_attribute_info_list_dup(to_unsafe)

      # Return value handling
      Gio::FileAttributeInfoList.new(_retval, GICrystal::Transfer::Full)
    end

    def lookup(name : ::String) : Gio::FileAttributeInfo
      # g_file_attribute_info_list_lookup: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_attribute_info_list_lookup(to_unsafe, name)

      # Return value handling
      Gio::FileAttributeInfo.new(_retval, GICrystal::Transfer::None)
    end

    def ref : Gio::FileAttributeInfoList
      # g_file_attribute_info_list_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_attribute_info_list_ref(to_unsafe)

      # Return value handling
      Gio::FileAttributeInfoList.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_file_attribute_info_list_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_file_attribute_info_list_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
