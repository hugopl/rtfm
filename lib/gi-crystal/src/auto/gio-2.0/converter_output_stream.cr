require "./filter_output_stream"
require "./pollable_output_stream"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ConverterOutputStream < FilterOutputStream
    include PollableOutputStream

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ConverterOutputStreamClass), class_init,
        sizeof(LibGio::ConverterOutputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(ConverterOutputStream, g_object_get_qdata)

    # Initialize a new `ConverterOutputStream`.
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

    def initialize(*, base_stream : Gio::OutputStream? = nil, close_base_stream : Bool? = nil, converter : Gio::Converter? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !base_stream.nil?
        (_names.to_unsafe + _n).value = "base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_stream)
        _n += 1
      end
      if !close_base_stream.nil?
        (_names.to_unsafe + _n).value = "close-base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, close_base_stream)
        _n += 1
      end
      if !converter.nil?
        (_names.to_unsafe + _n).value = "converter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, converter)
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
      @@g_type ||= LibGio.g_converter_output_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ConverterOutputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def converter=(value : Gio::Converter?) : Gio::Converter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "converter", unsafe_value, Pointer(Void).null)
      value
    end

    def converter : Gio::Converter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "converter", pointerof(value), Pointer(Void).null)
      Gio::AbstractConverter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(base_stream : Gio::OutputStream, converter : Gio::Converter) : self
      # g_converter_output_stream_new: (Constructor)
      # @base_stream:
      # @converter:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_converter_output_stream_new(base_stream, converter)

      # Return value handling
      Gio::ConverterOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def converter : Gio::Converter
      # g_converter_output_stream_get_converter: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_converter_output_stream_get_converter(to_unsafe)

      # Return value handling
      Gio::AbstractConverter.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
