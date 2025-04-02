require "../g_object-2.0/object"
require "./converter"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ZlibDecompressor < GObject::Object
    include Converter

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ZlibDecompressorClass), class_init,
        sizeof(LibGio::ZlibDecompressor), instance_init, 0)
    end

    GICrystal.declare_new_method(ZlibDecompressor, g_object_get_qdata)

    # Initialize a new `ZlibDecompressor`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    def initialize(*, file_info : Gio::FileInfo? = nil, format : Gio::ZlibCompressorFormat? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !file_info.nil?
        (_names.to_unsafe + _n).value = "file-info".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, file_info)
        _n += 1
      end
      if !format.nil?
        (_names.to_unsafe + _n).value = "format".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, format)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_zlib_decompressor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ZlibDecompressor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def file_info : Gio::FileInfo?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "file-info", pointerof(value), Pointer(Void).null)
      Gio::FileInfo.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def format=(value : Gio::ZlibCompressorFormat) : Gio::ZlibCompressorFormat
      unsafe_value = value

      LibGObject.g_object_set(self, "format", unsafe_value, Pointer(Void).null)
      value
    end

    def format : Gio::ZlibCompressorFormat
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "format", pointerof(value), Pointer(Void).null)
      Gio::ZlibCompressorFormat.new(value)
    end

    def self.new(format : Gio::ZlibCompressorFormat) : self
      # g_zlib_decompressor_new: (Constructor)
      # @format:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_zlib_decompressor_new(format)

      # Return value handling
      Gio::ZlibDecompressor.new(_retval, GICrystal::Transfer::Full)
    end

    def file_info : Gio::FileInfo?
      # g_zlib_decompressor_get_file_info: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_zlib_decompressor_get_file_info(to_unsafe)

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
