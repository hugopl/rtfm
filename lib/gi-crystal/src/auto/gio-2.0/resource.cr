module Gio
  class Resource
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Resource.g_type, pointer)
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
      LibGObject.g_boxed_free(Resource.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_resource_get_type
    end

    def self.new_from_data(data : GLib::Bytes) : self
      # g_resource_new_from_data: (Constructor | Throws)
      # @data:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resource_new_from_data(data, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Resource.new(_retval, GICrystal::Transfer::Full)
    end

    def _register : Nil
      # g_resources_register: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_resources_register(to_unsafe)

      # Return value handling
    end

    def _unregister : Nil
      # g_resources_unregister: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_resources_unregister(to_unsafe)

      # Return value handling
    end

    def enumerate_children(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : Enumerable(::String)
      # g_resource_enumerate_children: (Method | Throws)
      # @path:
      # @lookup_flags:
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resource_enumerate_children(to_unsafe, path, lookup_flags, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def info(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : Bool
      # g_resource_get_info: (Method | Throws)
      # @path:
      # @lookup_flags:
      # @size: (out) (transfer full) (optional)
      # @flags: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      size = Pointer(UInt64).null # Generator::OutArgUsedInReturnPlan
      flags = Pointer(UInt32).null
      # C call
      _retval = LibGio.g_resource_get_info(to_unsafe, path, lookup_flags, size, flags, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_children(path : ::String) : Bool
      # g_resource_has_children: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_resource_has_children(to_unsafe, path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def lookup_data(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : GLib::Bytes
      # g_resource_lookup_data: (Method | Throws)
      # @path:
      # @lookup_flags:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resource_lookup_data(to_unsafe, path, lookup_flags, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def open_stream(path : ::String, lookup_flags : Gio::ResourceLookupFlags) : Gio::InputStream
      # g_resource_open_stream: (Method | Throws)
      # @path:
      # @lookup_flags:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resource_open_stream(to_unsafe, path, lookup_flags, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def ref : Gio::Resource
      # g_resource_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_resource_ref(to_unsafe)

      # Return value handling
      Gio::Resource.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_resource_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_resource_unref(to_unsafe)

      # Return value handling
    end

    def load(filename : ::String) : Gio::Resource
      # g_resource_load: (Throws)
      # @filename:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_resource_load(filename, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Resource.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      @pointer
    end
  end
end
