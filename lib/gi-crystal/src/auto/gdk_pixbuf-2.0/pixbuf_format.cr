module GdkPixbuf
  class PixbufFormat
    @data : LibGdkPixbuf::PixbufFormat

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGdkPixbuf::PixbufFormat)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(flags : UInt32? = nil, disabled : Bool? = nil)
      _instance = allocate
      _instance.flags = flags unless flags.nil?
      _instance.disabled = disabled unless disabled.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGdkPixbuf::PixbufFormat)).zero?
    end

    def name!
      self.name.not_nil!
    end

    def name : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def signature!
      self.signature.not_nil!
    end

    def signature : GdkPixbuf::PixbufModulePattern?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.signature
      return if value.null?
      value = value.as(Pointer(Void))
      GdkPixbuf::PixbufModulePattern.new(value, GICrystal::Transfer::None)
    end

    def domain!
      self.domain.not_nil!
    end

    def domain : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.domain
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def description!
      self.description.not_nil!
    end

    def description : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.description
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def mime_types!
      self.mime_types.not_nil!
    end

    def mime_types : Enumerable(::String)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.mime_types
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def extensions!
      self.extensions.not_nil!
    end

    def extensions : Enumerable(::String)?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.extensions
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def flags : UInt32
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.flags
      value
    end

    def flags=(value : UInt32)
      _var = (to_unsafe + 48).as(Pointer(UInt32)).value = value
      value
    end

    def disabled : Bool
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.disabled
      GICrystal.to_bool(value)
    end

    def disabled=(value : Bool)
      _var = (to_unsafe + 52).as(Pointer(LibC::Int)).value = GICrystal.to_c_bool(value)
      value
    end

    def license!
      self.license.not_nil!
    end

    def license : ::String?
      value = to_unsafe.as(Pointer(LibGdkPixbuf::PixbufFormat)).value.license
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdkPixbuf.gdk_pixbuf_format_get_type
    end

    def copy : GdkPixbuf::PixbufFormat?
      # gdk_pixbuf_format_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_copy(to_unsafe)

      # Return value handling
      GdkPixbuf::PixbufFormat.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def free : Nil
      # gdk_pixbuf_format_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_format_free(to_unsafe)

      # Return value handling
    end

    def description : ::String?
      # gdk_pixbuf_format_get_description: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_get_description(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def extensions : Enumerable(::String)?
      # gdk_pixbuf_format_get_extensions: (Method)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_get_extensions(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def license : ::String?
      # gdk_pixbuf_format_get_license: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_get_license(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def mime_types : Enumerable(::String)?
      # gdk_pixbuf_format_get_mime_types: (Method)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_get_mime_types(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def name : ::String?
      # gdk_pixbuf_format_get_name: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_get_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def is_disabled : Bool
      # gdk_pixbuf_format_is_disabled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_is_disabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_save_option_supported(option_key : ::String) : Bool
      # gdk_pixbuf_format_is_save_option_supported: (Method)
      # @option_key:
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_is_save_option_supported(to_unsafe, option_key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_scalable : Bool
      # gdk_pixbuf_format_is_scalable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_is_scalable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_writable : Bool
      # gdk_pixbuf_format_is_writable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdkPixbuf.gdk_pixbuf_format_is_writable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def disabled=(disabled : Bool) : Nil
      # gdk_pixbuf_format_set_disabled: (Method)
      # @disabled:
      # Returns: (transfer none)

      # C call
      LibGdkPixbuf.gdk_pixbuf_format_set_disabled(to_unsafe, disabled)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
