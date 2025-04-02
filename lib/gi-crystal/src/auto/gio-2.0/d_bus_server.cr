require "../g_object-2.0/object"
require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusServer < GObject::Object
    include Initable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DBusServer, g_object_get_qdata)

    # Initialize a new `DBusServer`.
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

    def initialize(*, active : Bool? = nil, address : ::String? = nil, authentication_observer : Gio::DBusAuthObserver? = nil, client_address : ::String? = nil, flags : Gio::DBusServerFlags? = nil, guid : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !active.nil?
        (_names.to_unsafe + _n).value = "active".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, active)
        _n += 1
      end
      if !address.nil?
        (_names.to_unsafe + _n).value = "address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, address)
        _n += 1
      end
      if !authentication_observer.nil?
        (_names.to_unsafe + _n).value = "authentication-observer".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, authentication_observer)
        _n += 1
      end
      if !client_address.nil?
        (_names.to_unsafe + _n).value = "client-address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, client_address)
        _n += 1
      end
      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
        _n += 1
      end
      if !guid.nil?
        (_names.to_unsafe + _n).value = "guid".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, guid)
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
      @@g_type ||= LibGio.g_dbus_server_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusServer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def active? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "active", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def address=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "address", unsafe_value, Pointer(Void).null)
      value
    end

    def address : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "address", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#address` property to nil.
    def address=(value : Nil) : Nil
      LibGObject.g_object_set(self, "address", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#address`, but can return nil.
    def address? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "address", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def authentication_observer=(value : Gio::DBusAuthObserver?) : Gio::DBusAuthObserver?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "authentication-observer", unsafe_value, Pointer(Void).null)
      value
    end

    def authentication_observer : Gio::DBusAuthObserver?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "authentication-observer", pointerof(value), Pointer(Void).null)
      Gio::DBusAuthObserver.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def client_address : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "client-address", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#client_address`, but can return nil.
    def client_address? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "client-address", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def flags=(value : Gio::DBusServerFlags) : Gio::DBusServerFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Gio::DBusServerFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Gio::DBusServerFlags.new(value)
    end

    def guid=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "guid", unsafe_value, Pointer(Void).null)
      value
    end

    def guid : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "guid", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#guid` property to nil.
    def guid=(value : Nil) : Nil
      LibGObject.g_object_set(self, "guid", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#guid`, but can return nil.
    def guid? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "guid", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new_sync(address : ::String, flags : Gio::DBusServerFlags, guid : ::String, observer : Gio::DBusAuthObserver?, cancellable : Gio::Cancellable?) : self
      # g_dbus_server_new_sync: (Constructor | Throws)
      # @address:
      # @flags:
      # @guid:
      # @observer: (nullable)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      observer = if observer.nil?
                   Pointer(Void).null
                 else
                   observer.to_unsafe
                 end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_server_new_sync(address, flags, guid, observer, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusServer.new(_retval, GICrystal::Transfer::Full)
    end

    def client_address : ::String
      # g_dbus_server_get_client_address: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_server_get_client_address(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def flags : Gio::DBusServerFlags
      # g_dbus_server_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_server_get_flags(to_unsafe)

      # Return value handling
      Gio::DBusServerFlags.new(_retval)
    end

    def guid : ::String
      # g_dbus_server_get_guid: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_server_get_guid(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def is_active? : Bool
      # g_dbus_server_is_active: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_server_is_active(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def start : Nil
      # g_dbus_server_start: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_server_start(to_unsafe)

      # Return value handling
    end

    def stop : Nil
      # g_dbus_server_stop: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_server_stop(to_unsafe)

      # Return value handling
    end

    struct NewConnectionSignal < GObject::Signal
      def name : String
        @detail ? "new-connection::#{@detail}" : "new-connection"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusConnection, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusConnection, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          connection = Gio::DBusConnection.new(lib_connection, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusConnection, Bool)).unbox(_lib_box).call(connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusServer, Gio::DBusConnection, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_connection : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusServer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          connection = Gio::DBusConnection.new(lib_connection, GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusServer, Gio::DBusConnection, Bool)).unbox(_lib_box).call(_sender, connection)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(connection : Gio::DBusConnection) : Nil
        LibGObject.g_signal_emit_by_name(@source, "new-connection", connection)
      end
    end

    def new_connection_signal
      NewConnectionSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
