require "./filter_output_stream"
require "./seekable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class BufferedOutputStream < FilterOutputStream
    include Seekable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::BufferedOutputStreamClass), class_init,
        sizeof(LibGio::BufferedOutputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(BufferedOutputStream, g_object_get_qdata)

    # Initialize a new `BufferedOutputStream`.
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

    def initialize(*, auto_grow : Bool? = nil, base_stream : Gio::OutputStream? = nil, buffer_size : UInt32? = nil, close_base_stream : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !auto_grow.nil?
        (_names.to_unsafe + _n).value = "auto-grow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, auto_grow)
        _n += 1
      end
      if !base_stream.nil?
        (_names.to_unsafe + _n).value = "base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_stream)
        _n += 1
      end
      if !buffer_size.nil?
        (_names.to_unsafe + _n).value = "buffer-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, buffer_size)
        _n += 1
      end
      if !close_base_stream.nil?
        (_names.to_unsafe + _n).value = "close-base-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, close_base_stream)
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
      @@g_type ||= LibGio.g_buffered_output_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::BufferedOutputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def auto_grow=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "auto-grow", unsafe_value, Pointer(Void).null)
      value
    end

    def auto_grow? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "auto-grow", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def buffer_size=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "buffer-size", unsafe_value, Pointer(Void).null)
      value
    end

    def buffer_size : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "buffer-size", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(base_stream : Gio::OutputStream) : self
      # g_buffered_output_stream_new: (Constructor)
      # @base_stream:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_buffered_output_stream_new(base_stream)

      # Return value handling
      Gio::BufferedOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_sized(base_stream : Gio::OutputStream, size : UInt64) : self
      # g_buffered_output_stream_new_sized: (Constructor)
      # @base_stream:
      # @size:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_buffered_output_stream_new_sized(base_stream, size)

      # Return value handling
      Gio::BufferedOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def auto_grow : Bool
      # g_buffered_output_stream_get_auto_grow: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_buffered_output_stream_get_auto_grow(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def buffer_size : UInt64
      # g_buffered_output_stream_get_buffer_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_buffered_output_stream_get_buffer_size(to_unsafe)

      # Return value handling
      _retval
    end

    def auto_grow=(auto_grow : Bool) : Nil
      # g_buffered_output_stream_set_auto_grow: (Method | Setter)
      # @auto_grow:
      # Returns: (transfer none)

      # C call
      LibGio.g_buffered_output_stream_set_auto_grow(to_unsafe, auto_grow)

      # Return value handling
    end

    def buffer_size=(size : UInt64) : Nil
      # g_buffered_output_stream_set_buffer_size: (Method | Setter)
      # @size:
      # Returns: (transfer none)

      # C call
      LibGio.g_buffered_output_stream_set_buffer_size(to_unsafe, size)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
