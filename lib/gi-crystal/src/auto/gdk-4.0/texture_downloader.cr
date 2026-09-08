module Gdk
  class TextureDownloader
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(TextureDownloader.g_type, pointer)
                 else
                   pointer
                 end
    end

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(TextureDownloader.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_texture_downloader_get_type
    end

    def self.new(texture : Gdk::Texture) : self
      # gdk_texture_downloader_new: (Constructor)
      # @texture:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_downloader_new(texture)

      # Return value handling
      Gdk::TextureDownloader.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Gdk::TextureDownloader
      # gdk_texture_downloader_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_downloader_copy(to_unsafe)

      # Return value handling
      Gdk::TextureDownloader.new(_retval, GICrystal::Transfer::Full)
    end

    def download_bytes(out_stride : UInt64) : GLib::Bytes
      # gdk_texture_downloader_download_bytes: (Method)
      # @out_stride: (out) (transfer full)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_downloader_download_bytes(to_unsafe, out_stride)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def download_bytes_with_planes(out_offsets : Enumerable(UInt64), out_strides : Enumerable(UInt64)) : GLib::Bytes
      # gdk_texture_downloader_download_bytes_with_planes: (Method)
      # @out_offsets: (out) (caller-allocates) (array fixed-size=4 element-type UInt64)
      # @out_strides: (out) (caller-allocates) (array fixed-size=4 element-type UInt64)
      # Returns: (transfer full)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if out_offsets.size < 4

      out_offsets = out_offsets.to_a.to_unsafe.as(Pointer(UInt64))
      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if out_strides.size < 4

      out_strides = out_strides.to_a.to_unsafe.as(Pointer(UInt64))

      # C call
      _retval = LibGdk.gdk_texture_downloader_download_bytes_with_planes(to_unsafe, out_offsets, out_strides)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def download_into(data : ::Bytes, stride : UInt64) : Nil
      # gdk_texture_downloader_download_into: (Method)
      # @data: (array element-type UInt8)
      # @stride:
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      LibGdk.gdk_texture_downloader_download_into(to_unsafe, data, stride)

      # Return value handling
    end

    def free : Nil
      # gdk_texture_downloader_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_texture_downloader_free(to_unsafe)

      # Return value handling
    end

    def color_state : Gdk::ColorState
      # gdk_texture_downloader_get_color_state: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_texture_downloader_get_color_state(to_unsafe)

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def format : Gdk::MemoryFormat
      # gdk_texture_downloader_get_format: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_downloader_get_format(to_unsafe)

      # Return value handling
      Gdk::MemoryFormat.new(_retval)
    end

    def texture : Gdk::Texture
      # gdk_texture_downloader_get_texture: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_texture_downloader_get_texture(to_unsafe)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::None)
    end

    def color_state=(color_state : Gdk::ColorState) : Nil
      # gdk_texture_downloader_set_color_state: (Method)
      # @color_state:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_texture_downloader_set_color_state(to_unsafe, color_state)

      # Return value handling
    end

    def format=(format : Gdk::MemoryFormat) : Nil
      # gdk_texture_downloader_set_format: (Method)
      # @format:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_texture_downloader_set_format(to_unsafe, format)

      # Return value handling
    end

    def texture=(texture : Gdk::Texture) : Nil
      # gdk_texture_downloader_set_texture: (Method)
      # @texture:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_texture_downloader_set_texture(to_unsafe, texture)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
