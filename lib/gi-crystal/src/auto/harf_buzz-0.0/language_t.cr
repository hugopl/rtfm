module HarfBuzz
  class LanguageT
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

    def _string : ::String
      # hb_language_to_string: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibHarfBuzz.hb_language_to_string(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
