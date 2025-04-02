module Gio
  class FileAttributeMatcher
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(FileAttributeMatcher.g_type, pointer)
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
      LibGObject.g_boxed_free(FileAttributeMatcher.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_file_attribute_matcher_get_type
    end

    def self.new(attributes : ::String) : self
      # g_file_attribute_matcher_new: (Constructor)
      # @attributes:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_attribute_matcher_new(attributes)

      # Return value handling
      Gio::FileAttributeMatcher.new(_retval, GICrystal::Transfer::Full)
    end

    def enumerate_namespace(ns : ::String) : Bool
      # g_file_attribute_matcher_enumerate_namespace: (Method)
      # @ns:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_attribute_matcher_enumerate_namespace(to_unsafe, ns)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enumerate_next : ::String?
      # g_file_attribute_matcher_enumerate_next: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_file_attribute_matcher_enumerate_next(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def matches(attribute : ::String) : Bool
      # g_file_attribute_matcher_matches: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_attribute_matcher_matches(to_unsafe, attribute)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def matches_only(attribute : ::String) : Bool
      # g_file_attribute_matcher_matches_only: (Method)
      # @attribute:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_file_attribute_matcher_matches_only(to_unsafe, attribute)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Gio::FileAttributeMatcher
      # g_file_attribute_matcher_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_attribute_matcher_ref(to_unsafe)

      # Return value handling
      Gio::FileAttributeMatcher.new(_retval, GICrystal::Transfer::Full)
    end

    def subtract(subtract : Gio::FileAttributeMatcher?) : Gio::FileAttributeMatcher?
      # g_file_attribute_matcher_subtract: (Method)
      # @subtract: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      subtract = if subtract.nil?
                   Pointer(Void).null
                 else
                   subtract.to_unsafe
                 end

      # C call
      _retval = LibGio.g_file_attribute_matcher_subtract(to_unsafe, subtract)

      # Return value handling
      Gio::FileAttributeMatcher.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_string : ::String
      # g_file_attribute_matcher_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_file_attribute_matcher_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def unref : Nil
      # g_file_attribute_matcher_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_file_attribute_matcher_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
