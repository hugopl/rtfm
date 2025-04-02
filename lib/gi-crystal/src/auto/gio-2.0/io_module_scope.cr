module Gio
  class IOModuleScope
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

    def block(basename : ::String) : Nil
      # g_io_module_scope_block: (Method)
      # @basename:
      # Returns: (transfer none)

      # C call
      LibGio.g_io_module_scope_block(to_unsafe, basename)

      # Return value handling
    end

    def free : Nil
      # g_io_module_scope_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_io_module_scope_free(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
