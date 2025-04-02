module Gio
  class SettingsSchemaKey
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(SettingsSchemaKey.g_type, pointer)
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
      LibGObject.g_boxed_free(SettingsSchemaKey.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_settings_schema_key_get_type
    end

    def default_value : GLib::Variant
      # g_settings_schema_key_get_default_value: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_schema_key_get_default_value(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def description : ::String?
      # g_settings_schema_key_get_description: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_settings_schema_key_get_description(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def name : ::String
      # g_settings_schema_key_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_schema_key_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def range : GLib::Variant
      # g_settings_schema_key_get_range: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_schema_key_get_range(to_unsafe)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def summary : ::String?
      # g_settings_schema_key_get_summary: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_settings_schema_key_get_summary(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def value_type : GLib::VariantType
      # g_settings_schema_key_get_value_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_schema_key_get_value_type(to_unsafe)

      # Return value handling
      GLib::VariantType.new(_retval, GICrystal::Transfer::None)
    end

    def range_check(value : _) : Bool
      # g_settings_schema_key_range_check: (Method)
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGio.g_settings_schema_key_range_check(to_unsafe, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Gio::SettingsSchemaKey
      # g_settings_schema_key_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_schema_key_ref(to_unsafe)

      # Return value handling
      Gio::SettingsSchemaKey.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_settings_schema_key_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_schema_key_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
