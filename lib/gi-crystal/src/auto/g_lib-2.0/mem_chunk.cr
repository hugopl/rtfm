module GLib
  class MemChunk
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

    @[Deprecated]
    def alloc : Pointer(Void)?
      # g_mem_chunk_alloc: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_mem_chunk_alloc(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    @[Deprecated]
    def alloc0 : Pointer(Void)?
      # g_mem_chunk_alloc0: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_mem_chunk_alloc0(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    @[Deprecated]
    def clean : Nil
      # g_mem_chunk_clean: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_mem_chunk_clean(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def destroy : Nil
      # g_mem_chunk_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_mem_chunk_destroy(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def free(mem : Pointer(Void)?) : Nil
      # g_mem_chunk_free: (Method)
      # @mem: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mem = if mem.nil?
              Pointer(Void).null
            else
              mem.to_unsafe
            end

      # C call
      LibGLib.g_mem_chunk_free(to_unsafe, mem)

      # Return value handling
    end

    @[Deprecated]
    def print : Nil
      # g_mem_chunk_print: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_mem_chunk_print(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def reset : Nil
      # g_mem_chunk_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_mem_chunk_reset(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def self.info : Nil
      # g_mem_chunk_info: (None)
      # Returns: (transfer none)

      # C call
      LibGLib.g_mem_chunk_info

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
