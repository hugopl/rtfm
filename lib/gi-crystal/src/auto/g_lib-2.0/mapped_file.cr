module GLib
  class MappedFile
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(MappedFile.g_type, pointer)
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
      LibGObject.g_boxed_free(MappedFile.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_mapped_file_get_type
    end

    def self.new(filename : ::String, writable : Bool) : self
      # g_mapped_file_new: (Constructor | Throws)
      # @filename:
      # @writable:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGLib.g_mapped_file_new(filename, writable, pointerof(_error))

      # Error check
      GLib.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::MappedFile.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_fd(fd : Int32, writable : Bool) : self
      # g_mapped_file_new_from_fd: (Constructor | Throws)
      # @fd:
      # @writable:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGLib.g_mapped_file_new_from_fd(fd, writable, pointerof(_error))

      # Error check
      GLib.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::MappedFile.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def free : Nil
      # g_mapped_file_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_mapped_file_free(to_unsafe)

      # Return value handling
    end

    def bytes : GLib::Bytes
      # g_mapped_file_get_bytes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_mapped_file_get_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def contents : ::String?
      # g_mapped_file_get_contents: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_mapped_file_get_contents(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def length : UInt64
      # g_mapped_file_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_mapped_file_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def ref : GLib::MappedFile
      # g_mapped_file_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_mapped_file_ref(to_unsafe)

      # Return value handling
      GLib::MappedFile.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_mapped_file_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_mapped_file_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
