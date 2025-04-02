require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Settings < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SettingsClass), class_init,
        sizeof(LibGio::Settings), instance_init, 0)
    end

    GICrystal.declare_new_method(Settings, g_object_get_qdata)

    # Initialize a new `Settings`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    def initialize(*, backend : Gio::SettingsBackend? = nil, delay_apply : Bool? = nil, has_unapplied : Bool? = nil, path : ::String? = nil, schema : ::String? = nil, schema_id : ::String? = nil, settings_schema : Gio::SettingsSchema? = nil)
      _names = uninitialized Pointer(LibC::Char)[7]
      _values = StaticArray(LibGObject::Value, 7).new(LibGObject::Value.new)
      _n = 0

      if !backend.nil?
        (_names.to_unsafe + _n).value = "backend".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, backend)
        _n += 1
      end
      if !delay_apply.nil?
        (_names.to_unsafe + _n).value = "delay-apply".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, delay_apply)
        _n += 1
      end
      if !has_unapplied.nil?
        (_names.to_unsafe + _n).value = "has-unapplied".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_unapplied)
        _n += 1
      end
      if !path.nil?
        (_names.to_unsafe + _n).value = "path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, path)
        _n += 1
      end
      if !schema.nil?
        (_names.to_unsafe + _n).value = "schema".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, schema)
        _n += 1
      end
      if !schema_id.nil?
        (_names.to_unsafe + _n).value = "schema-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, schema_id)
        _n += 1
      end
      if !settings_schema.nil?
        (_names.to_unsafe + _n).value = "settings-schema".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, settings_schema)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_settings_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Settings.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def backend=(value : Gio::SettingsBackend?) : Gio::SettingsBackend?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "backend", unsafe_value, Pointer(Void).null)
      value
    end

    def backend : Gio::SettingsBackend?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "backend", pointerof(value), Pointer(Void).null)
      Gio::SettingsBackend.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def delay_apply? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "delay-apply", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_unapplied? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-unapplied", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "path", unsafe_value, Pointer(Void).null)
      value
    end

    def path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#path` property to nil.
    def path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#path`, but can return nil.
    def path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def schema=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "schema", unsafe_value, Pointer(Void).null)
      value
    end

    def schema : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "schema", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#schema` property to nil.
    def schema=(value : Nil) : Nil
      LibGObject.g_object_set(self, "schema", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#schema`, but can return nil.
    def schema? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "schema", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def schema_id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "schema-id", unsafe_value, Pointer(Void).null)
      value
    end

    def schema_id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "schema-id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#schema_id` property to nil.
    def schema_id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "schema-id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#schema_id`, but can return nil.
    def schema_id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "schema-id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def settings_schema=(value : Gio::SettingsSchema?) : Gio::SettingsSchema?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "settings-schema", unsafe_value, Pointer(Void).null)
      value
    end

    def settings_schema : Gio::SettingsSchema?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "settings-schema", pointerof(value), Pointer(Void).null)
      Gio::SettingsSchema.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(schema_id : ::String) : self
      # g_settings_new: (Constructor)
      # @schema_id:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_new(schema_id)

      # Return value handling
      Gio::Settings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_full(schema : Gio::SettingsSchema, backend : Gio::SettingsBackend?, path : ::String?) : self
      # g_settings_new_full: (Constructor)
      # @schema:
      # @backend: (nullable)
      # @path: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      backend = if backend.nil?
                  Pointer(Void).null
                else
                  backend.to_unsafe
                end
      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end

      # C call
      _retval = LibGio.g_settings_new_full(schema, backend, path)

      # Return value handling
      Gio::Settings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_backend(schema_id : ::String, backend : Gio::SettingsBackend) : self
      # g_settings_new_with_backend: (Constructor)
      # @schema_id:
      # @backend:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_new_with_backend(schema_id, backend)

      # Return value handling
      Gio::Settings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_backend_and_path(schema_id : ::String, backend : Gio::SettingsBackend, path : ::String) : self
      # g_settings_new_with_backend_and_path: (Constructor)
      # @schema_id:
      # @backend:
      # @path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_new_with_backend_and_path(schema_id, backend, path)

      # Return value handling
      Gio::Settings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_path(schema_id : ::String, path : ::String) : self
      # g_settings_new_with_path: (Constructor)
      # @schema_id:
      # @path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_new_with_path(schema_id, path)

      # Return value handling
      Gio::Settings.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.list_relocatable_schemas : Enumerable(::String)
      # g_settings_list_relocatable_schemas: (None)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_settings_list_relocatable_schemas

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def self.list_schemas : Enumerable(::String)
      # g_settings_list_schemas: (None)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_settings_list_schemas

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def self.sync : Nil
      # g_settings_sync: (None)
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_sync

      # Return value handling
    end

    def self.unbind(object : GObject::Object, property : ::String) : Nil
      # g_settings_unbind: (None)
      # @object:
      # @property:
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_unbind(object, property)

      # Return value handling
    end

    def apply : Nil
      # g_settings_apply: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_apply(to_unsafe)

      # Return value handling
    end

    def bind(key : ::String, object : GObject::Object, property : ::String, flags : Gio::SettingsBindFlags) : Nil
      # g_settings_bind: (Method)
      # @key:
      # @object:
      # @property:
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_bind(to_unsafe, key, object, property, flags)

      # Return value handling
    end

    def bind_with_mapping(key : ::String, object : GObject::Object, property : ::String, flags : Gio::SettingsBindFlags, get_mapping : GObject::Closure?, set_mapping : GObject::Closure?) : Nil
      # g_settings_bind_with_mapping_closures: (Method)
      # @key:
      # @object:
      # @property:
      # @flags:
      # @get_mapping: (nullable)
      # @set_mapping: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      get_mapping = if get_mapping.nil?
                      Pointer(Void).null
                    else
                      get_mapping.to_unsafe
                    end
      # Generator::NullableArrayPlan
      set_mapping = if set_mapping.nil?
                      Pointer(Void).null
                    else
                      set_mapping.to_unsafe
                    end

      # C call
      LibGio.g_settings_bind_with_mapping_closures(to_unsafe, key, object, property, flags, get_mapping, set_mapping)

      # Return value handling
    end

    def bind_writable(key : ::String, object : GObject::Object, property : ::String, inverted : Bool) : Nil
      # g_settings_bind_writable: (Method)
      # @key:
      # @object:
      # @property:
      # @inverted:
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_bind_writable(to_unsafe, key, object, property, inverted)

      # Return value handling
    end

    def create_action(key : ::String) : Gio::Action
      # g_settings_create_action: (Method)
      # @key:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_create_action(to_unsafe, key)

      # Return value handling
      Gio::AbstractAction.new(_retval, GICrystal::Transfer::Full)
    end

    def delay : Nil
      # g_settings_delay: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_delay(to_unsafe)

      # Return value handling
    end

    def boolean(key : ::String) : Bool
      # g_settings_get_boolean: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_boolean(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def child(name : ::String) : Gio::Settings
      # g_settings_get_child: (Method)
      # @name:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_get_child(to_unsafe, name)

      # Return value handling
      Gio::Settings.new(_retval, GICrystal::Transfer::Full)
    end

    def default_value(key : ::String) : GLib::Variant?
      # g_settings_get_default_value: (Method)
      # @key:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_settings_get_default_value(to_unsafe, key)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def double(key : ::String) : Float64
      # g_settings_get_double: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_double(to_unsafe, key)

      # Return value handling
      _retval
    end

    def enum(key : ::String) : Int32
      # g_settings_get_enum: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_enum(to_unsafe, key)

      # Return value handling
      _retval
    end

    def flags(key : ::String) : UInt32
      # g_settings_get_flags: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_flags(to_unsafe, key)

      # Return value handling
      _retval
    end

    def has_unapplied : Bool
      # g_settings_get_has_unapplied: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_has_unapplied(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def int(key : ::String) : Int32
      # g_settings_get_int: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_int(to_unsafe, key)

      # Return value handling
      _retval
    end

    def int64(key : ::String) : Int64
      # g_settings_get_int64: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_int64(to_unsafe, key)

      # Return value handling
      _retval
    end

    def mapped(key : ::String, mapping : Gio::SettingsGetMapping, user_data : Pointer(Void)?) : Pointer(Void)?
      # g_settings_get_mapped: (Method)
      # @key:
      # @mapping:
      # @user_data: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGio.g_settings_get_mapped(to_unsafe, key, mapping, user_data)

      # Return value handling
      _retval unless _retval.null?
    end

    @[Deprecated]
    def range(key : ::String) : GLib::Variant
      # g_settings_get_range: (Method)
      # @key:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_get_range(to_unsafe, key)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def string(key : ::String) : ::String
      # g_settings_get_string: (Method)
      # @key:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_get_string(to_unsafe, key)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def strv(key : ::String) : Enumerable(::String)
      # g_settings_get_strv: (Method)
      # @key:
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_settings_get_strv(to_unsafe, key)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def uint(key : ::String) : UInt32
      # g_settings_get_uint: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_uint(to_unsafe, key)

      # Return value handling
      _retval
    end

    def uint64(key : ::String) : UInt64
      # g_settings_get_uint64: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_get_uint64(to_unsafe, key)

      # Return value handling
      _retval
    end

    def user_value(key : ::String) : GLib::Variant?
      # g_settings_get_user_value: (Method)
      # @key:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_settings_get_user_value(to_unsafe, key)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def value(key : ::String) : GLib::Variant
      # g_settings_get_value: (Method)
      # @key:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_settings_get_value(to_unsafe, key)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def is_writable(name : ::String) : Bool
      # g_settings_is_writable: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_is_writable(to_unsafe, name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_children : Enumerable(::String)
      # g_settings_list_children: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_settings_list_children(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def list_keys : Enumerable(::String)
      # g_settings_list_keys: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_settings_list_keys(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def range_check(key : ::String, value : _) : Bool
      # g_settings_range_check: (Method)
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
      _retval = LibGio.g_settings_range_check(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reset(key : ::String) : Nil
      # g_settings_reset: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_reset(to_unsafe, key)

      # Return value handling
    end

    def revert : Nil
      # g_settings_revert: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_settings_revert(to_unsafe)

      # Return value handling
    end

    def set_boolean(key : ::String, value : Bool) : Bool
      # g_settings_set_boolean: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_boolean(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_double(key : ::String, value : Float64) : Bool
      # g_settings_set_double: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_double(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_enum(key : ::String, value : Int32) : Bool
      # g_settings_set_enum: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_enum(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_flags(key : ::String, value : UInt32) : Bool
      # g_settings_set_flags: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_flags(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_int(key : ::String, value : Int32) : Bool
      # g_settings_set_int: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_int(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_int64(key : ::String, value : Int64) : Bool
      # g_settings_set_int64: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_int64(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_string(key : ::String, value : ::String) : Bool
      # g_settings_set_string: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_string(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_strv(key : ::String, value : Enumerable(::String)?) : Bool
      # g_settings_set_strv: (Method)
      # @key:
      # @value: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      value = if value.nil?
                Pointer(Pointer(LibC::Char)).null
              else
                value.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
              end

      # C call
      _retval = LibGio.g_settings_set_strv(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_uint(key : ::String, value : UInt32) : Bool
      # g_settings_set_uint: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_uint(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_uint64(key : ::String, value : UInt64) : Bool
      # g_settings_set_uint64: (Method)
      # @key:
      # @value:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_settings_set_uint64(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def set_value(key : ::String, value : _) : Bool
      # g_settings_set_value: (Method)
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
      _retval = LibGio.g_settings_set_value(to_unsafe, key, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ChangeEventSignal < GObject::Signal
      def name : String
        @detail ? "change-event::#{@detail}" : "change-event"
      end

      def connect(*, after : Bool = false, &block : Proc(Enumerable(UInt32)?, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Enumerable(UInt32)?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_keys : Pointer(UInt32), lib_n_keys : Int32, _lib_box : Pointer(Void)) {
          # Generator::ArrayLengthArgPlan
          # Generator::NullableArrayPlan
          keys = (lib_keys.null? ? nil : GICrystal.transfer_array(lib_keys, n_keys, GICrystal::Transfer::None))
          ::Box(Proc(Enumerable(UInt32)?, Bool)).unbox(_lib_box).call(keys)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Settings, Enumerable(UInt32)?, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_keys : Pointer(UInt32), lib_n_keys : Int32, _lib_box : Pointer(Void)) {
          _sender = Gio::Settings.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::ArrayLengthArgPlan
          # Generator::NullableArrayPlan
          keys = (lib_keys.null? ? nil : GICrystal.transfer_array(lib_keys, n_keys, GICrystal::Transfer::None))
          ::Box(Proc(Gio::Settings, Enumerable(UInt32)?, Bool)).unbox(_lib_box).call(_sender, keys)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(keys : Enumerable(UInt32)?) : Nil
        # Generator::ArrayLengthArgPlan
        n_keys = keys.try(&.size) || 0
        # Generator::NullableArrayPlan
        keys = if keys.nil?
                 Pointer(UInt32).null
               else
                 keys.to_a.to_unsafe.as(Pointer(UInt32))
               end

        LibGObject.g_signal_emit_by_name(@source, "change-event", keys, n_keys)
      end
    end

    def change_event_signal
      ChangeEventSignal.new(self)
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_key : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          key = ::String.new(lib_key)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(key)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Settings, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_key : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gio::Settings.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          key = ::String.new(lib_key)
          ::Box(Proc(Gio::Settings, ::String, Nil)).unbox(_lib_box).call(_sender, key)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(key : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed", key)
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    struct WritableChangeEventSignal < GObject::Signal
      def name : String
        @detail ? "writable-change-event::#{@detail}" : "writable-change-event"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_key : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          key = lib_key
          ::Box(Proc(UInt32, Bool)).unbox(_lib_box).call(key)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Settings, UInt32, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_key : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gio::Settings.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          key = lib_key
          ::Box(Proc(Gio::Settings, UInt32, Bool)).unbox(_lib_box).call(_sender, key)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(key : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "writable-change-event", key)
      end
    end

    def writable_change_event_signal
      WritableChangeEventSignal.new(self)
    end

    struct WritableChangedSignal < GObject::Signal
      def name : String
        @detail ? "writable-changed::#{@detail}" : "writable-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_key : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          key = ::String.new(lib_key)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(key)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Settings, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_key : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gio::Settings.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          key = ::String.new(lib_key)
          ::Box(Proc(Gio::Settings, ::String, Nil)).unbox(_lib_box).call(_sender, key)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(key : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "writable-changed", key)
      end
    end

    def writable_changed_signal
      WritableChangedSignal.new(self)
    end

    # change_event: (None)
    # @keys:
    # @n_keys:
    # Returns: (transfer none)
    private macro _register_change_event_vfunc(impl_method_name)
      private def self._vfunc_change_event(%this : Pointer(Void), lib_keys :  Pointer(UInt32), lib_n_keys :  Int32, ) : LibC::Int
        # @keys: 
# @n_keys: 

keys=lib_keys
n_keys=lib_n_keys


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(keys, n_keys)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_change_event(Pointer(Void), Pointer(UInt32), Int32)).pointer
        previous_def
      end
    end

    # change_event: (None)
    # @keys:
    # @n_keys:
    # Returns: (transfer none)
    private macro _register_unsafe_change_event_vfunc(impl_method_name)
      private def self._vfunc_unsafe_change_event(%this : Pointer(Void), lib_keys :  Pointer(UInt32), lib_n_keys :  Int32, ) : LibC::Int
# @keys: 
# @n_keys: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_keys, lib_n_keys)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_change_event = Proc(Pointer(Void), Pointer(UInt32), Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_change_event(Pointer(Void), Pointer(UInt32), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_change_event : Proc(Pointer(Void), Pointer(UInt32), Int32, LibC::Int)? = nil
    end

    # changed: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), ) : Void
        # @key: 

# Generator::BuiltInTypeArgPlan
key=::String.new(lib_key)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # changed: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), ) : Void
# @key: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # writable_change_event: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_writable_change_event_vfunc(impl_method_name)
      private def self._vfunc_writable_change_event(%this : Pointer(Void), lib_key :  UInt32, ) : LibC::Int
        # @key: 

key=lib_key


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_writable_change_event(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # writable_change_event: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_unsafe_writable_change_event_vfunc(impl_method_name)
      private def self._vfunc_unsafe_writable_change_event(%this : Pointer(Void), lib_key :  UInt32, ) : LibC::Int
# @key: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_writable_change_event = Proc(Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_writable_change_event(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_writable_change_event : Proc(Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # writable_changed: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_writable_changed_vfunc(impl_method_name)
      private def self._vfunc_writable_changed(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), ) : Void
        # @key: 

# Generator::BuiltInTypeArgPlan
key=::String.new(lib_key)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(key)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_writable_changed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # writable_changed: (None)
    # @key:
    # Returns: (transfer none)
    private macro _register_unsafe_writable_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_writable_changed(%this : Pointer(Void), lib_key :  Pointer(LibC::Char), ) : Void
# @key: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_key)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_writable_changed = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_writable_changed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_writable_changed : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
