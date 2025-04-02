module WebKit
  class FeatureList
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(FeatureList.g_type, pointer)
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
      LibGObject.g_boxed_free(FeatureList.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_feature_list_get_type
    end

    def get(index : UInt64) : WebKit::Feature
      # webkit_feature_list_get: (Method)
      # @index:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_feature_list_get(to_unsafe, index)

      # Return value handling
      WebKit::Feature.new(_retval, GICrystal::Transfer::None)
    end

    def length : UInt64
      # webkit_feature_list_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_feature_list_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def ref : WebKit::FeatureList
      # webkit_feature_list_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_feature_list_ref(to_unsafe)

      # Return value handling
      WebKit::FeatureList.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_feature_list_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_feature_list_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
