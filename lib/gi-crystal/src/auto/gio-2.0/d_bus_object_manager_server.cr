require "../g_object-2.0/object"
require "./d_bus_object_manager"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusObjectManagerServer < GObject::Object
    include DBusObjectManager

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DBusObjectManagerServerClass), class_init,
        sizeof(LibGio::DBusObjectManagerServer), instance_init, 0)
    end

    GICrystal.declare_new_method(DBusObjectManagerServer, g_object_get_qdata)

    # Initialize a new `DBusObjectManagerServer`.
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

    def initialize(*, connection : Gio::DBusConnection? = nil, object_path : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !connection.nil?
        (_names.to_unsafe + _n).value = "connection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, connection)
        _n += 1
      end
      if !object_path.nil?
        (_names.to_unsafe + _n).value = "object-path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, object_path)
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
      @@g_type ||= LibGio.g_dbus_object_manager_server_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusObjectManagerServer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def connection=(value : Gio::DBusConnection?) : Gio::DBusConnection?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "connection", unsafe_value, Pointer(Void).null)
      value
    end

    def connection : Gio::DBusConnection?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "connection", pointerof(value), Pointer(Void).null)
      Gio::DBusConnection.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def object_path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "object-path", unsafe_value, Pointer(Void).null)
      value
    end

    def object_path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "object-path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#object_path` property to nil.
    def object_path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "object-path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#object_path`, but can return nil.
    def object_path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "object-path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(object_path : ::String) : self
      # g_dbus_object_manager_server_new: (Constructor)
      # @object_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_object_manager_server_new(object_path)

      # Return value handling
      Gio::DBusObjectManagerServer.new(_retval, GICrystal::Transfer::Full)
    end

    def export(object : Gio::DBusObjectSkeleton) : Nil
      # g_dbus_object_manager_server_export: (Method)
      # @object:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_object_manager_server_export(to_unsafe, object)

      # Return value handling
    end

    def export_uniquely(object : Gio::DBusObjectSkeleton) : Nil
      # g_dbus_object_manager_server_export_uniquely: (Method)
      # @object:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_object_manager_server_export_uniquely(to_unsafe, object)

      # Return value handling
    end

    def connection : Gio::DBusConnection?
      # g_dbus_object_manager_server_get_connection: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dbus_object_manager_server_get_connection(to_unsafe)

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def is_exported(object : Gio::DBusObjectSkeleton) : Bool
      # g_dbus_object_manager_server_is_exported: (Method)
      # @object:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_object_manager_server_is_exported(to_unsafe, object)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def connection=(connection : Gio::DBusConnection?) : Nil
      # g_dbus_object_manager_server_set_connection: (Method | Setter)
      # @connection: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      connection = if connection.nil?
                     Pointer(Void).null
                   else
                     connection.to_unsafe
                   end

      # C call
      LibGio.g_dbus_object_manager_server_set_connection(to_unsafe, connection)

      # Return value handling
    end

    def unexport(object_path : ::String) : Bool
      # g_dbus_object_manager_server_unexport: (Method)
      # @object_path:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_object_manager_server_unexport(to_unsafe, object_path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
