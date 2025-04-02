module GLib
  class Completion
    @data : LibGLib::Completion

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::Completion)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(func : GLib::CompletionFunc? = nil, strncmp_func : GLib::CompletionStrncmpFunc? = nil)
      _instance = allocate
      _instance.func = func unless func.nil?
      _instance.strncmp_func = strncmp_func unless strncmp_func.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::Completion)).zero?
    end

    def items!
      self.items.not_nil!
    end

    def items : GLib::List?
      value = to_unsafe.as(Pointer(LibGLib::Completion)).value.items
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::List(Pointer(Void)).new(value, GICrystal::Transfer::None)
    end

    def func : GLib::CompletionFunc
      value = to_unsafe.as(Pointer(LibGLib::Completion)).value.func
      GLib::CompletionFunc.new(value, GICrystal::Transfer::None)
    end

    def func=(value : GLib::CompletionFunc)
      _var = (to_unsafe + 8).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::Completion))
      value
    end

    def prefix!
      self.prefix.not_nil!
    end

    def prefix : ::String?
      value = to_unsafe.as(Pointer(LibGLib::Completion)).value.prefix
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def cache!
      self.cache.not_nil!
    end

    def cache : GLib::List?
      value = to_unsafe.as(Pointer(LibGLib::Completion)).value.cache
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::List(Pointer(Void)).new(value, GICrystal::Transfer::None)
    end

    def strncmp_func : GLib::CompletionStrncmpFunc
      value = to_unsafe.as(Pointer(LibGLib::Completion)).value.strncmp_func
      GLib::CompletionStrncmpFunc.new(value, GICrystal::Transfer::None)
    end

    def strncmp_func=(value : GLib::CompletionStrncmpFunc)
      _var = (to_unsafe + 32).as(Pointer(Void*))
      _var.copy_from(value.to_unsafe, sizeof(LibGLib::Completion))
      value
    end

    @[Deprecated]
    def clear_items : Nil
      # g_completion_clear_items: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_completion_clear_items(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def complete_utf8(prefix : ::String, new_prefix : ::String) : GLib::List
      # g_completion_complete_utf8: (Method)
      # @prefix:
      # @new_prefix:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_completion_complete_utf8(to_unsafe, prefix, new_prefix)

      # Return value handling
      GLib::List(::String).new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def free : Nil
      # g_completion_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_completion_free(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
