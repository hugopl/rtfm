require "../g_object-2.0/object"
require "./converter"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ZlibCompressor < GObject::Object
    include Converter

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ZlibCompressorClass), class_init,
        sizeof(LibGio::ZlibCompressor), instance_init, 0)
    end

    GICrystal.declare_new_method(ZlibCompressor, g_object_get_qdata)

    # Initialize a new `ZlibCompressor`.
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

    def initialize(*, file_info : Gio::FileInfo? = nil, format : Gio::ZlibCompressorFormat? = nil, level : Int32? = nil, os : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
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
      if !level.nil?
        (_names.to_unsafe + _n).value = "level".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, level)
        _n += 1
      end
      if !os.nil?
        (_names.to_unsafe + _n).value = "os".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, os)
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
      @@g_type ||= LibGio.g_zlib_compressor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ZlibCompressor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def file_info=(value : Gio::FileInfo?) : Gio::FileInfo?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "file-info", unsafe_value, Pointer(Void).null)
      value
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

    def level=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "level", unsafe_value, Pointer(Void).null)
      value
    end

    def level : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "level", pointerof(value), Pointer(Void).null)
      value
    end

    def os=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "os", unsafe_value, Pointer(Void).null)
      value
    end

    def os : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "os", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(format : Gio::ZlibCompressorFormat, level : Int32) : self
      # g_zlib_compressor_new: (Constructor)
      # @format:
      # @level:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_zlib_compressor_new(format, level)

      # Return value handling
      Gio::ZlibCompressor.new(_retval, GICrystal::Transfer::Full)
    end

    def file_info : Gio::FileInfo?
      # g_zlib_compressor_get_file_info: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_zlib_compressor_get_file_info(to_unsafe)

      # Return value handling
      Gio::FileInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def os : Int32
      # g_zlib_compressor_get_os: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_zlib_compressor_get_os(to_unsafe)

      # Return value handling
      _retval
    end

    def file_info=(file_info : Gio::FileInfo?) : Nil
      # g_zlib_compressor_set_file_info: (Method | Setter)
      # @file_info: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      file_info = if file_info.nil?
                    Pointer(Void).null
                  else
                    file_info.to_unsafe
                  end

      # C call
      LibGio.g_zlib_compressor_set_file_info(to_unsafe, file_info)

      # Return value handling
    end

    def os=(os : Int32) : Nil
      # g_zlib_compressor_set_os: (Method | Setter)
      # @os:
      # Returns: (transfer none)

      # C call
      LibGio.g_zlib_compressor_set_os(to_unsafe, os)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
