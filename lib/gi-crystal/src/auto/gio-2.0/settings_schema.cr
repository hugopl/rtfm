module Gio
  class SettingsSchema
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(SettingsSchema.g_type, pointer)
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
      LibGObject.g_boxed_free(SettingsSchema.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_settings_schema_get_type
    end

    def id : ::String
      # g_settings_schema_get_id: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_schema_get_id(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def key(name : ::String) : Gio::SettingsSchemaKey
      # g_settings_schema_get_key: (Method)
      # @name:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_schema_get_key(to_unsafe, name)

      # Return value handling
      Gio::SettingsSchemaKey.new(_retval, GICrystal::Transfer::Full)
    end

    def path : ::String?
      # g_settings_schema_get_path: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_settings_schema_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def has_key(name : ::String) : Bool
      # g_settings_schema_has_key: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_schema_has_key(to_unsafe, name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_children : Enumerable(::String)
      # g_settings_schema_list_children: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_settings_schema_list_children(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def list_keys : Enumerable(::String)
      # g_settings_schema_list_keys: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_settings_schema_list_keys(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def ref : Gio::SettingsSchema
      # g_settings_schema_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_schema_ref(to_unsafe)

      # Return value handling
      Gio::SettingsSchema.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_settings_schema_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_schema_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
