require "../g_object-2.0/object"
require "./action_group"

require "./remote_action_group"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusActionGroup < GObject::Object
    include ActionGroup
    include RemoteActionGroup

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DBusActionGroup, g_object_get_qdata)

    # Initialize a new `DBusActionGroup`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_dbus_action_group_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusActionGroup.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.get(connection : Gio::DBusConnection, bus_name : ::String?, object_path : ::String) : Gio::DBusActionGroup
      # g_dbus_action_group_get: (None)
      # @connection:
      # @bus_name: (nullable)
      # @object_path:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      bus_name = if bus_name.nil?
                   Pointer(LibC::Char).null
                 else
                   bus_name.to_unsafe
                 end

      # C call
      _retval = LibGio.g_dbus_action_group_get(connection, bus_name, object_path)

      # Return value handling
      Gio::DBusActionGroup.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
