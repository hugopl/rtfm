require "./input_stream"
require "./pollable_input_stream"

require "./seekable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class MemoryInputStream < InputStream
    include PollableInputStream
    include Seekable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::MemoryInputStreamClass), class_init,
        sizeof(LibGio::MemoryInputStream), instance_init, 0)
    end

    GICrystal.declare_new_method(MemoryInputStream, g_object_get_qdata)

    # Initialize a new `MemoryInputStream`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_memory_input_stream_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::MemoryInputStream.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_memory_input_stream_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_memory_input_stream_new

      # Return value handling
      Gio::MemoryInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_bytes(bytes : GLib::Bytes) : self
      # g_memory_input_stream_new_from_bytes: (Constructor)
      # @bytes:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_memory_input_stream_new_from_bytes(bytes)

      # Return value handling
      Gio::MemoryInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_data(data : ::Bytes, destroy : GLib::DestroyNotify?) : self
      # g_memory_input_stream_new_from_data: (Constructor)
      # @data: (transfer full) (array length=len element-type UInt8)
      # @len:
      # @destroy: (nullable)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      len = data.size
      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_memory_input_stream_new_from_data(data, len, destroy)

      # Return value handling
      Gio::MemoryInputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def add_bytes(bytes : GLib::Bytes) : Nil
      # g_memory_input_stream_add_bytes: (Method)
      # @bytes:
      # Returns: (transfer none)

      # C call
      LibGio.g_memory_input_stream_add_bytes(to_unsafe, bytes)

      # Return value handling
    end

    def add_data(data : ::Bytes, destroy : GLib::DestroyNotify?) : Nil
      # g_memory_input_stream_add_data: (Method)
      # @data: (transfer full) (array length=len element-type UInt8)
      # @len:
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      len = data.size
      # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      LibGio.g_memory_input_stream_add_data(to_unsafe, data, len, destroy)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
