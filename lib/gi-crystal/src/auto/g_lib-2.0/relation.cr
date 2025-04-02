module GLib
  class Relation
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
    def count(key : Pointer(Void)?, field : Int32) : Int32
      # g_relation_count: (Method)
      # @key: (nullable)
      # @field:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      key = if key.nil?
              Pointer(Void).null
            else
              key.to_unsafe
            end

      # C call
      _retval = LibGLib.g_relation_count(to_unsafe, key, field)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def delete(key : Pointer(Void)?, field : Int32) : Int32
      # g_relation_delete: (Method)
      # @key: (nullable)
      # @field:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      key = if key.nil?
              Pointer(Void).null
            else
              key.to_unsafe
            end

      # C call
      _retval = LibGLib.g_relation_delete(to_unsafe, key, field)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def destroy : Nil
      # g_relation_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_relation_destroy(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def print : Nil
      # g_relation_print: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_relation_print(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
