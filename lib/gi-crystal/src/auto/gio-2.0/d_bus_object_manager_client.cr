require "../g_object-2.0/object"
require "./async_initable"

require "./d_bus_object_manager"

require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusObjectManagerClient < GObject::Object
    include AsyncInitable
    include DBusObjectManager
    include Initable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DBusObjectManagerClientClass), class_init,
        sizeof(LibGio::DBusObjectManagerClient), instance_init, 0)
    end

    GICrystal.declare_new_method(DBusObjectManagerClient, g_object_get_qdata)

    # Initialize a new `DBusObjectManagerClient`.
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

    def initialize(*, bus_type : Gio::BusType? = nil, connection : Gio::DBusConnection? = nil, flags : Gio::DBusObjectManagerClientFlags? = nil, get_proxy_type_destroy_notify : Pointer(Void)? = nil, get_proxy_type_func : Pointer(Void)? = nil, get_proxy_type_user_data : Pointer(Void)? = nil, name : ::String? = nil, name_owner : ::String? = nil, object_path : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !bus_type.nil?
        (_names.to_unsafe + _n).value = "bus-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, bus_type)
        _n += 1
      end
      if !connection.nil?
        (_names.to_unsafe + _n).value = "connection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, connection)
        _n += 1
      end
      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
        _n += 1
      end
      if !get_proxy_type_destroy_notify.nil?
        (_names.to_unsafe + _n).value = "get-proxy-type-destroy-notify".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, get_proxy_type_destroy_notify)
        _n += 1
      end
      if !get_proxy_type_func.nil?
        (_names.to_unsafe + _n).value = "get-proxy-type-func".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, get_proxy_type_func)
        _n += 1
      end
      if !get_proxy_type_user_data.nil?
        (_names.to_unsafe + _n).value = "get-proxy-type-user-data".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, get_proxy_type_user_data)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !name_owner.nil?
        (_names.to_unsafe + _n).value = "name-owner".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name_owner)
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
      @@g_type ||= LibGio.g_dbus_object_manager_client_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusObjectManagerClient.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def bus_type=(value : Gio::BusType) : Gio::BusType
      unsafe_value = value

      LibGObject.g_object_set(self, "bus-type", unsafe_value, Pointer(Void).null)
      value
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

    def flags=(value : Gio::DBusObjectManagerClientFlags) : Gio::DBusObjectManagerClientFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Gio::DBusObjectManagerClientFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Gio::DBusObjectManagerClientFlags.new(value)
    end

    def get_proxy_type_destroy_notify=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "get-proxy-type-destroy-notify", unsafe_value, Pointer(Void).null)
      value
    end

    def get_proxy_type_destroy_notify : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "get-proxy-type-destroy-notify", pointerof(value), Pointer(Void).null)
      value
    end

    def get_proxy_type_func=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "get-proxy-type-func", unsafe_value, Pointer(Void).null)
      value
    end

    def get_proxy_type_func : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "get-proxy-type-func", pointerof(value), Pointer(Void).null)
      value
    end

    def get_proxy_type_user_data=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "get-proxy-type-user-data", unsafe_value, Pointer(Void).null)
      value
    end

    def get_proxy_type_user_data : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "get-proxy-type-user-data", pointerof(value), Pointer(Void).null)
      value
    end

    def name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "name", unsafe_value, Pointer(Void).null)
      value
    end

    def name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#name` property to nil.
    def name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#name`, but can return nil.
    def name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def name_owner : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name-owner", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#name_owner`, but can return nil.
    def name_owner? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "name-owner", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def self.new_finish(res : Gio::AsyncResult) : self
      # g_dbus_object_manager_client_new_finish: (Constructor | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_object_manager_client_new_finish(res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusObjectManagerClient.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_bus_finish(res : Gio::AsyncResult) : self
      # g_dbus_object_manager_client_new_for_bus_finish: (Constructor | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_object_manager_client_new_for_bus_finish(res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusObjectManagerClient.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_bus_sync(bus_type : Gio::BusType, flags : Gio::DBusObjectManagerClientFlags, name : ::String, object_path : ::String, get_proxy_type_func : Gio::DBusProxyTypeFunc?, get_proxy_type_user_data : Pointer(Void)?, get_proxy_type_destroy_notify : GLib::DestroyNotify?, cancellable : Gio::Cancellable?) : self
      # g_dbus_object_manager_client_new_for_bus_sync: (Constructor | Throws)
      # @bus_type:
      # @flags:
      # @name:
      # @object_path:
      # @get_proxy_type_func: (nullable)
      # @get_proxy_type_user_data: (nullable)
      # @get_proxy_type_destroy_notify: (nullable)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      get_proxy_type_user_data = if get_proxy_type_user_data.nil?
                                   Pointer(Void).null
                                 else
                                   get_proxy_type_user_data.to_unsafe
                                 end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_object_manager_client_new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusObjectManagerClient.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_sync(connection : Gio::DBusConnection, flags : Gio::DBusObjectManagerClientFlags, name : ::String?, object_path : ::String, get_proxy_type_func : Gio::DBusProxyTypeFunc?, get_proxy_type_user_data : Pointer(Void)?, get_proxy_type_destroy_notify : GLib::DestroyNotify?, cancellable : Gio::Cancellable?) : self
      # g_dbus_object_manager_client_new_sync: (Constructor | Throws)
      # @connection:
      # @flags:
      # @name: (nullable)
      # @object_path:
      # @get_proxy_type_func: (nullable)
      # @get_proxy_type_user_data: (nullable)
      # @get_proxy_type_destroy_notify: (nullable)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::NullableArrayPlan
      get_proxy_type_user_data = if get_proxy_type_user_data.nil?
                                   Pointer(Void).null
                                 else
                                   get_proxy_type_user_data.to_unsafe
                                 end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_object_manager_client_new_sync(connection, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusObjectManagerClient.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(connection : Gio::DBusConnection, flags : Gio::DBusObjectManagerClientFlags, name : ::String, object_path : ::String, get_proxy_type_func : Gio::DBusProxyTypeFunc?, get_proxy_type_user_data : Pointer(Void)?, get_proxy_type_destroy_notify : GLib::DestroyNotify?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_object_manager_client_new: (None)
      # @connection:
      # @flags:
      # @name:
      # @object_path:
      # @get_proxy_type_func: (nullable)
      # @get_proxy_type_user_data: (nullable)
      # @get_proxy_type_destroy_notify: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      get_proxy_type_user_data = if get_proxy_type_user_data.nil?
                                   Pointer(Void).null
                                 else
                                   get_proxy_type_user_data.to_unsafe
                                 end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_dbus_object_manager_client_new(connection, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, callback, user_data)

      # Return value handling
    end

    def self.new_for_bus(bus_type : Gio::BusType, flags : Gio::DBusObjectManagerClientFlags, name : ::String, object_path : ::String, get_proxy_type_func : Gio::DBusProxyTypeFunc?, get_proxy_type_user_data : Pointer(Void)?, get_proxy_type_destroy_notify : GLib::DestroyNotify?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_object_manager_client_new_for_bus: (None)
      # @bus_type:
      # @flags:
      # @name:
      # @object_path:
      # @get_proxy_type_func: (nullable)
      # @get_proxy_type_user_data: (nullable)
      # @get_proxy_type_destroy_notify: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      get_proxy_type_user_data = if get_proxy_type_user_data.nil?
                                   Pointer(Void).null
                                 else
                                   get_proxy_type_user_data.to_unsafe
                                 end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_dbus_object_manager_client_new_for_bus(bus_type, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, callback, user_data)

      # Return value handling
    end

    def connection : Gio::DBusConnection
      # g_dbus_object_manager_client_get_connection: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_object_manager_client_get_connection(to_unsafe)

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::None)
    end

    def flags : Gio::DBusObjectManagerClientFlags
      # g_dbus_object_manager_client_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_object_manager_client_get_flags(to_unsafe)

      # Return value handling
      Gio::DBusObjectManagerClientFlags.new(_retval)
    end

    def name : ::String
      # g_dbus_object_manager_client_get_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_object_manager_client_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def name_owner : ::String?
      # g_dbus_object_manager_client_get_name_owner: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dbus_object_manager_client_get_name_owner(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    struct InterfaceProxyPropertiesChangedSignal < GObject::Signal
      def name : String
        @detail ? "interface-proxy-properties-changed::#{@detail}" : "interface-proxy-properties-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusObjectProxy, Gio::DBusProxy, GLib::Variant, Enumerable(::String), Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusObjectProxy, Gio::DBusProxy, GLib::Variant, Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object_proxy : Pointer(Void), lib_interface_proxy : Pointer(Void), lib_changed_properties : Pointer(Void), lib_invalidated_properties : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object_proxy = Gio::DBusObjectProxy.new(lib_object_proxy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface_proxy = Gio::DBusProxy.new(lib_interface_proxy, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          changed_properties = GLib::Variant.new(lib_changed_properties, :none)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(Gio::DBusObjectProxy, Gio::DBusProxy, GLib::Variant, Enumerable(::String), Nil)).unbox(_lib_box).call(object_proxy, interface_proxy, changed_properties, invalidated_properties)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusObjectManagerClient, Gio::DBusObjectProxy, Gio::DBusProxy, GLib::Variant, Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object_proxy : Pointer(Void), lib_interface_proxy : Pointer(Void), lib_changed_properties : Pointer(Void), lib_invalidated_properties : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusObjectManagerClient.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object_proxy = Gio::DBusObjectProxy.new(lib_object_proxy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface_proxy = Gio::DBusProxy.new(lib_interface_proxy, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          changed_properties = GLib::Variant.new(lib_changed_properties, :none)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(Gio::DBusObjectManagerClient, Gio::DBusObjectProxy, Gio::DBusProxy, GLib::Variant, Enumerable(::String), Nil)).unbox(_lib_box).call(_sender, object_proxy, interface_proxy, changed_properties, invalidated_properties)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object_proxy : Gio::DBusObjectProxy, interface_proxy : Gio::DBusProxy, changed_properties : _, invalidated_properties : Enumerable(::String)) : Nil
        # Generator::HandmadeArgPlan
        changed_properties = if !changed_properties.is_a?(GLib::Variant)
                               GLib::Variant.new(changed_properties).to_unsafe
                             else
                               changed_properties.to_unsafe
                             end
        # Generator::ArrayArgPlan
        invalidated_properties = invalidated_properties.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

        LibGObject.g_signal_emit_by_name(@source, "interface-proxy-properties-changed", object_proxy, interface_proxy, changed_properties, invalidated_properties)
      end
    end

    def interface_proxy_properties_changed_signal
      InterfaceProxyPropertiesChangedSignal.new(self)
    end

    struct InterfaceProxySignalSignal < GObject::Signal
      def name : String
        @detail ? "interface-proxy-signal::#{@detail}" : "interface-proxy-signal"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::DBusObjectProxy, Gio::DBusProxy, ::String, ::String, GLib::Variant, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::DBusObjectProxy, Gio::DBusProxy, ::String, ::String, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object_proxy : Pointer(Void), lib_interface_proxy : Pointer(Void), lib_sender_name : Pointer(LibC::Char), lib_signal_name : Pointer(LibC::Char), lib_parameters : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          object_proxy = Gio::DBusObjectProxy.new(lib_object_proxy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface_proxy = Gio::DBusProxy.new(lib_interface_proxy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          sender_name = ::String.new(lib_sender_name)
          # Generator::BuiltInTypeArgPlan
          signal_name = ::String.new(lib_signal_name)
          # Generator::HandmadeArgPlan
          parameters = GLib::Variant.new(lib_parameters, :none)
          ::Box(Proc(Gio::DBusObjectProxy, Gio::DBusProxy, ::String, ::String, GLib::Variant, Nil)).unbox(_lib_box).call(object_proxy, interface_proxy, sender_name, signal_name, parameters)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusObjectManagerClient, Gio::DBusObjectProxy, Gio::DBusProxy, ::String, ::String, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_object_proxy : Pointer(Void), lib_interface_proxy : Pointer(Void), lib_sender_name : Pointer(LibC::Char), lib_signal_name : Pointer(LibC::Char), lib_parameters : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusObjectManagerClient.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          object_proxy = Gio::DBusObjectProxy.new(lib_object_proxy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          interface_proxy = Gio::DBusProxy.new(lib_interface_proxy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          sender_name = ::String.new(lib_sender_name)
          # Generator::BuiltInTypeArgPlan
          signal_name = ::String.new(lib_signal_name)
          # Generator::HandmadeArgPlan
          parameters = GLib::Variant.new(lib_parameters, :none)
          ::Box(Proc(Gio::DBusObjectManagerClient, Gio::DBusObjectProxy, Gio::DBusProxy, ::String, ::String, GLib::Variant, Nil)).unbox(_lib_box).call(_sender, object_proxy, interface_proxy, sender_name, signal_name, parameters)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(object_proxy : Gio::DBusObjectProxy, interface_proxy : Gio::DBusProxy, sender_name : ::String, signal_name : ::String, parameters : _) : Nil
        # Generator::HandmadeArgPlan
        parameters = if !parameters.is_a?(GLib::Variant)
                       GLib::Variant.new(parameters).to_unsafe
                     else
                       parameters.to_unsafe
                     end

        LibGObject.g_signal_emit_by_name(@source, "interface-proxy-signal", object_proxy, interface_proxy, sender_name, signal_name, parameters)
      end
    end

    def interface_proxy_signal_signal
      InterfaceProxySignalSignal.new(self)
    end

    # interface_proxy_properties_changed: (None)
    # @object_proxy:
    # @interface_proxy:
    # @changed_properties:
    # @invalidated_properties:
    # Returns: (transfer none)
    private macro _register_interface_proxy_properties_changed_vfunc(impl_method_name)
      private def self._vfunc_interface_proxy_properties_changed(%this : Pointer(Void), lib_object_proxy :  Pointer(Void), lib_interface_proxy :  Pointer(Void), lib_changed_properties :  Pointer(Void), lib_invalidated_properties :  Pointer(LibC::Char), ) : Void
        # @object_proxy: 
# @interface_proxy: 
# @changed_properties: 
# @invalidated_properties: 

# Generator::BuiltInTypeArgPlan
object_proxy=Gio::DBusObjectProxy.new(lib_object_proxy, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
interface_proxy=Gio::DBusProxy.new(lib_interface_proxy, GICrystal::Transfer::None)
# Generator::HandmadeArgPlan
changed_properties=GLib::Variant.new(lib_changed_properties, :none)
# Generator::BuiltInTypeArgPlan
invalidated_properties=::String.new(lib_invalidated_properties)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object_proxy, interface_proxy, changed_properties, invalidated_properties)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_interface_proxy_properties_changed(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # interface_proxy_properties_changed: (None)
    # @object_proxy:
    # @interface_proxy:
    # @changed_properties:
    # @invalidated_properties:
    # Returns: (transfer none)
    private macro _register_unsafe_interface_proxy_properties_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_interface_proxy_properties_changed(%this : Pointer(Void), lib_object_proxy :  Pointer(Void), lib_interface_proxy :  Pointer(Void), lib_changed_properties :  Pointer(Void), lib_invalidated_properties :  Pointer(LibC::Char), ) : Void
# @object_proxy: 
# @interface_proxy: 
# @changed_properties: 
# @invalidated_properties: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object_proxy, lib_interface_proxy, lib_changed_properties, lib_invalidated_properties)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_interface_proxy_properties_changed = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_interface_proxy_properties_changed(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_interface_proxy_properties_changed : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # interface_proxy_signal: (None)
    # @object_proxy:
    # @interface_proxy:
    # @sender_name:
    # @signal_name:
    # @parameters:
    # Returns: (transfer none)
    private macro _register_interface_proxy_signal_vfunc(impl_method_name)
      private def self._vfunc_interface_proxy_signal(%this : Pointer(Void), lib_object_proxy :  Pointer(Void), lib_interface_proxy :  Pointer(Void), lib_sender_name :  Pointer(LibC::Char), lib_signal_name :  Pointer(LibC::Char), lib_parameters :  Pointer(Void), ) : Void
        # @object_proxy: 
# @interface_proxy: 
# @sender_name: 
# @signal_name: 
# @parameters: 

# Generator::BuiltInTypeArgPlan
object_proxy=Gio::DBusObjectProxy.new(lib_object_proxy, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
interface_proxy=Gio::DBusProxy.new(lib_interface_proxy, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
sender_name=::String.new(lib_sender_name)
# Generator::BuiltInTypeArgPlan
signal_name=::String.new(lib_signal_name)
# Generator::HandmadeArgPlan
parameters=GLib::Variant.new(lib_parameters, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(object_proxy, interface_proxy, sender_name, signal_name, parameters)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_interface_proxy_signal(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # interface_proxy_signal: (None)
    # @object_proxy:
    # @interface_proxy:
    # @sender_name:
    # @signal_name:
    # @parameters:
    # Returns: (transfer none)
    private macro _register_unsafe_interface_proxy_signal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_interface_proxy_signal(%this : Pointer(Void), lib_object_proxy :  Pointer(Void), lib_interface_proxy :  Pointer(Void), lib_sender_name :  Pointer(LibC::Char), lib_signal_name :  Pointer(LibC::Char), lib_parameters :  Pointer(Void), ) : Void
# @object_proxy: 
# @interface_proxy: 
# @sender_name: 
# @signal_name: 
# @parameters: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_object_proxy, lib_interface_proxy, lib_sender_name, lib_signal_name, lib_parameters)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_interface_proxy_signal = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_interface_proxy_signal(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_interface_proxy_signal : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
