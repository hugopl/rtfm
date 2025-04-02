module GLib
  class VariantDict
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(VariantDict.g_type, pointer)
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
      LibGObject.g_boxed_free(VariantDict.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_variant_dict_get_type
    end

    def self.new(from_asv : _?) : self
      # g_variant_dict_new: (Constructor)
      # @from_asv: (nullable)
      # Returns: (transfer full)

      # Generator::HandmadeArgPlan
      from_asv = if from_asv.nil?
                   Pointer(Void).null
                 elsif !from_asv.is_a?(GLib::Variant)
                   GLib::Variant.new(from_asv).to_unsafe
                 else
                   from_asv.to_unsafe
                 end

      # C call
      _retval = LibGLib.g_variant_dict_new(from_asv)

      # Return value handling
      GLib::VariantDict.new(_retval, GICrystal::Transfer::Full)
    end

    def clear : Nil
      # g_variant_dict_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_variant_dict_clear(to_unsafe)

      # Return value handling
    end

    def contains(key : ::String) : Bool
      # g_variant_dict_contains: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_dict_contains(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def end : GLib::Variant
      # g_variant_dict_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_dict_end(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None)
    end

    def insert_value(key : ::String, value : _) : Nil
      # g_variant_dict_insert_value: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGLib.g_variant_dict_insert_value(to_unsafe, key, value)

      # Return value handling
    end

    def lookup_value(key : ::String, expected_type : GLib::VariantType?) : GLib::Variant?
      # g_variant_dict_lookup_value: (Method)
      # @key:
      # @expected_type: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      expected_type = if expected_type.nil?
                        Pointer(Void).null
                      else
                        expected_type.to_unsafe
                      end

      # C call
      _retval = LibGLib.g_variant_dict_lookup_value(to_unsafe, key, expected_type)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def ref : GLib::VariantDict
      # g_variant_dict_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_dict_ref(to_unsafe)

      # Return value handling
      GLib::VariantDict.new(_retval, GICrystal::Transfer::Full)
    end

    def remove(key : ::String) : Bool
      # g_variant_dict_remove: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_dict_remove(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def unref : Nil
      # g_variant_dict_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_variant_dict_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
