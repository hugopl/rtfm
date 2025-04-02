module GLib
  class VariantBuilder
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(VariantBuilder.g_type, pointer)
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
      LibGObject.g_boxed_free(VariantBuilder.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_variant_builder_get_type
    end

    def self.new(type : GLib::VariantType) : self
      # g_variant_builder_new: (Constructor)
      # @type:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_builder_new(type)

      # Return value handling
      GLib::VariantBuilder.new(_retval, GICrystal::Transfer::Full)
    end

    def add_value(value : _) : Nil
      # g_variant_builder_add_value: (Method)
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGLib.g_variant_builder_add_value(to_unsafe, value)

      # Return value handling
    end

    def close : Nil
      # g_variant_builder_close: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_variant_builder_close(to_unsafe)

      # Return value handling
    end

    def end : GLib::Variant
      # g_variant_builder_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_variant_builder_end(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::None)
    end

    def open(type : GLib::VariantType) : Nil
      # g_variant_builder_open: (Method)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGLib.g_variant_builder_open(to_unsafe, type)

      # Return value handling
    end

    def ref : GLib::VariantBuilder
      # g_variant_builder_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_variant_builder_ref(to_unsafe)

      # Return value handling
      GLib::VariantBuilder.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_variant_builder_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_variant_builder_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
