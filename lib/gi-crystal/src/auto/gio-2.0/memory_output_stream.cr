require "./output_stream"
require "./pollable_output_stream"

require "./seekable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class MemoryOutputStream < OutputStream
    include PollableOutputStream
    include Seekable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::MemoryOutputStreamClass), class_init,
        sizeof(LibGio::MemoryOutputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(MemoryOutputStream, g_object_get_qdata)

    # Initialize a new `MemoryOutputStream`.
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

    def initialize(*, data : Pointer(Void)? = nil, data_size : UInt64? = nil, size : UInt64? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !data.nil?
        (_names.to_unsafe + _n).value = "data".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, data)
        _n += 1
      end
      if !data_size.nil?
        (_names.to_unsafe + _n).value = "data-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, data_size)
        _n += 1
      end
      if !size.nil?
        (_names.to_unsafe + _n).value = "size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, size)
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
      @@g_type ||= LibGio.g_memory_output_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::MemoryOutputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def data=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "data", unsafe_value, Pointer(Void).null)
      value
    end

    def data : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "data", pointerof(value), Pointer(Void).null)
      value
    end

    def data_size : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "data-size", pointerof(value), Pointer(Void).null)
      value
    end

    def size=(value : UInt64) : UInt64
      unsafe_value = value

      LibGObject.g_object_set(self, "size", unsafe_value, Pointer(Void).null)
      value
    end

    def size : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "size", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new_resizable : self
      # g_memory_output_stream_new_resizable: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_memory_output_stream_new_resizable

      # Return value handling
      Gio::MemoryOutputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def data : Pointer(Void)?
      # g_memory_output_stream_get_data: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_memory_output_stream_get_data(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def data_size : UInt64
      # g_memory_output_stream_get_data_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_memory_output_stream_get_data_size(to_unsafe)

      # Return value handling
      _retval
    end

    def size : UInt64
      # g_memory_output_stream_get_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_memory_output_stream_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def steal_as_bytes : GLib::Bytes
      # g_memory_output_stream_steal_as_bytes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_memory_output_stream_steal_as_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def steal_data : Pointer(Void)?
      # g_memory_output_stream_steal_data: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_memory_output_stream_steal_data(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
