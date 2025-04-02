module GLib
  class Cache
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
    def destroy : Nil
      # g_cache_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_cache_destroy(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def insert(key : Pointer(Void)?) : Pointer(Void)?
      # g_cache_insert: (Method)
      # @key: (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      key = if key.nil?
              Pointer(Void).null
            else
              key.to_unsafe
            end

      # C call
      _retval = LibGLib.g_cache_insert(to_unsafe, key)

      # Return value handling
      _retval unless _retval.null?
    end

    @[Deprecated]
    def key_foreach(func : GLib::HFunc, user_data : Pointer(Void)?) : Nil
      # g_cache_key_foreach: (Method)
      # @func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGLib.g_cache_key_foreach(to_unsafe, func, user_data)

      # Return value handling
    end

    @[Deprecated]
    def remove(value : Pointer(Void)?) : Nil
      # g_cache_remove: (Method)
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(Void).null
              else
                value.to_unsafe
              end

      # C call
      LibGLib.g_cache_remove(to_unsafe, value)

      # Return value handling
    end

    @[Deprecated]
    def value_foreach(func : GLib::HFunc, user_data : Pointer(Void)?) : Nil
      # g_cache_value_foreach: (Method)
      # @func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGLib.g_cache_value_foreach(to_unsafe, func, user_data)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
