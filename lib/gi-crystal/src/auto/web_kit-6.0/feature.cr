module WebKit
  class Feature
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Feature.g_type, pointer)
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
      LibGObject.g_boxed_free(Feature.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_feature_get_type
    end

    def category : ::String
      # webkit_feature_get_category: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_feature_get_category(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def default_value : Bool
      # webkit_feature_get_default_value: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_feature_get_default_value(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def details : ::String?
      # webkit_feature_get_details: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_feature_get_details(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def identifier : ::String
      # webkit_feature_get_identifier: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_feature_get_identifier(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def name : ::String?
      # webkit_feature_get_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_feature_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def status : WebKit::FeatureStatus
      # webkit_feature_get_status: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_feature_get_status(to_unsafe)

      # Return value handling
      WebKit::FeatureStatus.new(_retval)
    end

    def ref : WebKit::Feature
      # webkit_feature_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_feature_ref(to_unsafe)

      # Return value handling
      WebKit::Feature.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_feature_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_feature_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
