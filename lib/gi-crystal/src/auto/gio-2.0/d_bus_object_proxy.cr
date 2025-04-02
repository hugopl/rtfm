require "../g_object-2.0/object"
require "./d_bus_object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusObjectProxy < GObject::Object
    include DBusObject

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DBusObjectProxyClass), class_init,
        sizeof(LibGio::DBusObjectProxy), instance_init, 0)
    end

    GICrystal.declare_new_method(DBusObjectProxy, g_object_get_qdata)

    # Initialize a new `DBusObjectProxy`.
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

    def initialize(*, g_connection : Gio::DBusConnection? = nil, g_object_path : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !g_connection.nil?
        (_names.to_unsafe + _n).value = "g-connection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_connection)
        _n += 1
      end
      if !g_object_path.nil?
        (_names.to_unsafe + _n).value = "g-object-path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_object_path)
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
      @@g_type ||= LibGio.g_dbus_object_proxy_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusObjectProxy.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def g_connection=(value : Gio::DBusConnection?) : Gio::DBusConnection?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "g-connection", unsafe_value, Pointer(Void).null)
      value
    end

    def g_connection : Gio::DBusConnection?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "g-connection", pointerof(value), Pointer(Void).null)
      Gio::DBusConnection.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def g_object_path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "g-object-path", unsafe_value, Pointer(Void).null)
      value
    end

    def g_object_path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-object-path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#g_object_path` property to nil.
    def g_object_path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "g-object-path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#g_object_path`, but can return nil.
    def g_object_path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-object-path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(connection : Gio::DBusConnection, object_path : ::String) : self
      # g_dbus_object_proxy_new: (Constructor)
      # @connection:
      # @object_path:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dbus_object_proxy_new(connection, object_path)

      # Return value handling
      Gio::DBusObjectProxy.new(_retval, GICrystal::Transfer::Full)
    end

    def connection : Gio::DBusConnection
      # g_dbus_object_proxy_get_connection: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_object_proxy_get_connection(to_unsafe)

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
