module GLib
  class Bytes
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Bytes.g_type, pointer)
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
      LibGObject.g_boxed_free(Bytes.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_bytes_get_type
    end

    def compare(bytes2 : GLib::Bytes) : Int32
      # g_bytes_compare: (Method)
      # @bytes2:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_bytes_compare(to_unsafe, bytes2)

      # Return value handling
      _retval
    end

    def equal(bytes2 : GLib::Bytes) : Bool
      # g_bytes_equal: (Method)
      # @bytes2:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_bytes_equal(to_unsafe, bytes2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def data : ::Bytes?
      # g_bytes_get_data: (Method)
      # @size: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable) (array length=size element-type UInt8)

      # Generator::OutArgUsedInReturnPlan
      size = 0_u64
      # C call
      _retval = LibGLib.g_bytes_get_data(to_unsafe, pointerof(size))

      # Return value handling
      GICrystal.transfer_array(_retval, size, GICrystal::Transfer::None) unless _retval.null?
    end

    def region(element_size : UInt64, offset : UInt64, n_elements : UInt64) : Pointer(Void)?
      # g_bytes_get_region: (Method)
      # @element_size:
      # @offset:
      # @n_elements:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_bytes_get_region(to_unsafe, element_size, offset, n_elements)

      # Return value handling
      _retval unless _retval.null?
    end

    def size : UInt64
      # g_bytes_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_bytes_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def hash : UInt32
      # g_bytes_hash: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_bytes_hash(to_unsafe)

      # Return value handling
      _retval
    end

    def new_from_bytes(offset : UInt64, length : UInt64) : GLib::Bytes
      # g_bytes_new_from_bytes: (Method)
      # @offset:
      # @length:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_bytes_new_from_bytes(to_unsafe, offset, length)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      @pointer
    end
  end
end
