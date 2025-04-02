module Gio
  class IOExtension
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = pointer
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

    def name : ::String
      # g_io_extension_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def priority : Int32
      # g_io_extension_get_priority: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_get_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def type : UInt64
      # g_io_extension_get_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_get_type(to_unsafe)

      # Return value handling
      _retval
    end

    def to_unsafe
      @pointer
    end
  end
end
