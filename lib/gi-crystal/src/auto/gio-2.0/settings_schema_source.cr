module Gio
  class SettingsSchemaSource
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(SettingsSchemaSource.g_type, pointer)
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
      LibGObject.g_boxed_free(SettingsSchemaSource.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_settings_schema_source_get_type
    end

    def self.new_from_directory(directory : ::String, parent : Gio::SettingsSchemaSource?, trusted : Bool) : self
      # g_settings_schema_source_new_from_directory: (Constructor | Throws)
      # @directory:
      # @parent: (nullable)
      # @trusted:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGio.g_settings_schema_source_new_from_directory(directory, parent, trusted, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SettingsSchemaSource.new(_retval, GICrystal::Transfer::Full)
    end

    def list_schemas(recursive : Bool, non_relocatable : Enumerable(::String), relocatable : Enumerable(::String)) : Nil
      # g_settings_schema_source_list_schemas: (Method)
      # @recursive:
      # @non_relocatable: (out) (transfer full) (array zero-terminated=1 element-type Utf8)
      # @relocatable: (out) (transfer full) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      non_relocatable = non_relocatable.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
      # Generator::ArrayArgPlan
      relocatable = relocatable.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibGio.g_settings_schema_source_list_schemas(to_unsafe, recursive, non_relocatable, relocatable)

      # Return value handling
    end

    def lookup(schema_id : ::String, recursive : Bool) : Gio::SettingsSchema?
      # g_settings_schema_source_lookup: (Method)
      # @schema_id:
      # @recursive:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_settings_schema_source_lookup(to_unsafe, schema_id, recursive)

      # Return value handling
      Gio::SettingsSchema.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def ref : Gio::SettingsSchemaSource
      # g_settings_schema_source_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_schema_source_ref(to_unsafe)

      # Return value handling
      Gio::SettingsSchemaSource.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_settings_schema_source_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_schema_source_unref(to_unsafe)

      # Return value handling
    end

    def self.default : Gio::SettingsSchemaSource?
      # g_settings_schema_source_get_default: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_settings_schema_source_get_default

      # Return value handling
      Gio::SettingsSchemaSource.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
