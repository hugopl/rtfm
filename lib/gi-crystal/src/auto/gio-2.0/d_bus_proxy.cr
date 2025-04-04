require "../g_object-2.0/object"
require "./async_initable"

require "./d_bus_interface"

require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusProxy < GObject::Object
    include AsyncInitable
    include DBusInterface
    include Initable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DBusProxyClass), class_init,
        sizeof(LibGio::DBusProxy), instance_init, 0)
    end

    GICrystal.declare_new_method(DBusProxy, g_object_get_qdata)

    # Initialize a new `DBusProxy`.
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

    def initialize(*, g_bus_type : Gio::BusType? = nil, g_connection : Gio::DBusConnection? = nil, g_default_timeout : Int32? = nil, g_flags : Gio::DBusProxyFlags? = nil, g_interface_info : Gio::DBusInterfaceInfo? = nil, g_interface_name : ::String? = nil, g_name : ::String? = nil, g_name_owner : ::String? = nil, g_object_path : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !g_bus_type.nil?
        (_names.to_unsafe + _n).value = "g-bus-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_bus_type)
        _n += 1
      end
      if !g_connection.nil?
        (_names.to_unsafe + _n).value = "g-connection".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_connection)
        _n += 1
      end
      if !g_default_timeout.nil?
        (_names.to_unsafe + _n).value = "g-default-timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_default_timeout)
        _n += 1
      end
      if !g_flags.nil?
        (_names.to_unsafe + _n).value = "g-flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_flags)
        _n += 1
      end
      if !g_interface_info.nil?
        (_names.to_unsafe + _n).value = "g-interface-info".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_interface_info)
        _n += 1
      end
      if !g_interface_name.nil?
        (_names.to_unsafe + _n).value = "g-interface-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_interface_name)
        _n += 1
      end
      if !g_name.nil?
        (_names.to_unsafe + _n).value = "g-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_name)
        _n += 1
      end
      if !g_name_owner.nil?
        (_names.to_unsafe + _n).value = "g-name-owner".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, g_name_owner)
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
      @@g_type ||= LibGio.g_dbus_proxy_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusProxy.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def g_bus_type=(value : Gio::BusType) : Gio::BusType
      unsafe_value = value

      LibGObject.g_object_set(self, "g-bus-type", unsafe_value, Pointer(Void).null)
      value
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

    def g_default_timeout=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "g-default-timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def g_default_timeout : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "g-default-timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def g_flags=(value : Gio::DBusProxyFlags) : Gio::DBusProxyFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "g-flags", unsafe_value, Pointer(Void).null)
      value
    end

    def g_flags : Gio::DBusProxyFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "g-flags", pointerof(value), Pointer(Void).null)
      Gio::DBusProxyFlags.new(value)
    end

    def g_interface_info=(value : Gio::DBusInterfaceInfo?) : Gio::DBusInterfaceInfo?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "g-interface-info", unsafe_value, Pointer(Void).null)
      value
    end

    def g_interface_info : Gio::DBusInterfaceInfo?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "g-interface-info", pointerof(value), Pointer(Void).null)
      Gio::DBusInterfaceInfo.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def g_interface_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "g-interface-name", unsafe_value, Pointer(Void).null)
      value
    end

    def g_interface_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-interface-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#g_interface_name` property to nil.
    def g_interface_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "g-interface-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#g_interface_name`, but can return nil.
    def g_interface_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-interface-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def g_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "g-name", unsafe_value, Pointer(Void).null)
      value
    end

    def g_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#g_name` property to nil.
    def g_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "g-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#g_name`, but can return nil.
    def g_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def g_name_owner : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-name-owner", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#g_name_owner`, but can return nil.
    def g_name_owner? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "g-name-owner", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def self.new_finish(res : Gio::AsyncResult) : self
      # g_dbus_proxy_new_finish: (Constructor | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_proxy_new_finish(res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusProxy.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_bus_finish(res : Gio::AsyncResult) : self
      # g_dbus_proxy_new_for_bus_finish: (Constructor | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_proxy_new_for_bus_finish(res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusProxy.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_bus_sync(bus_type : Gio::BusType, flags : Gio::DBusProxyFlags, info : Gio::DBusInterfaceInfo?, name : ::String, object_path : ::String, interface_name : ::String, cancellable : Gio::Cancellable?) : self
      # g_dbus_proxy_new_for_bus_sync: (Constructor | Throws)
      # @bus_type:
      # @flags:
      # @info: (nullable)
      # @name:
      # @object_path:
      # @interface_name:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      info = if info.nil?
               Pointer(Void).null
             else
               info.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_proxy_new_for_bus_sync(bus_type, flags, info, name, object_path, interface_name, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusProxy.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_sync(connection : Gio::DBusConnection, flags : Gio::DBusProxyFlags, info : Gio::DBusInterfaceInfo?, name : ::String?, object_path : ::String, interface_name : ::String, cancellable : Gio::Cancellable?) : self
      # g_dbus_proxy_new_sync: (Constructor | Throws)
      # @connection:
      # @flags:
      # @info: (nullable)
      # @name: (nullable)
      # @object_path:
      # @interface_name:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      info = if info.nil?
               Pointer(Void).null
             else
               info.to_unsafe
             end
      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_proxy_new_sync(connection, flags, info, name, object_path, interface_name, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusProxy.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(connection : Gio::DBusConnection, flags : Gio::DBusProxyFlags, info : Gio::DBusInterfaceInfo?, name : ::String?, object_path : ::String, interface_name : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_proxy_new: (None)
      # @connection:
      # @flags:
      # @info: (nullable)
      # @name: (nullable)
      # @object_path:
      # @interface_name:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      info = if info.nil?
               Pointer(Void).null
             else
               info.to_unsafe
             end
      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
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
      LibGio.g_dbus_proxy_new(connection, flags, info, name, object_path, interface_name, cancellable, callback, user_data)

      # Return value handling
    end

    def self.new_for_bus(bus_type : Gio::BusType, flags : Gio::DBusProxyFlags, info : Gio::DBusInterfaceInfo?, name : ::String, object_path : ::String, interface_name : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_proxy_new_for_bus: (None)
      # @bus_type:
      # @flags:
      # @info: (nullable)
      # @name:
      # @object_path:
      # @interface_name:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      info = if info.nil?
               Pointer(Void).null
             else
               info.to_unsafe
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
      LibGio.g_dbus_proxy_new_for_bus(bus_type, flags, info, name, object_path, interface_name, cancellable, callback, user_data)

      # Return value handling
    end

    def call(method_name : ::String, parameters : _?, flags : Gio::DBusCallFlags, timeout_msec : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_proxy_call: (Method)
      # @method_name:
      # @parameters: (nullable)
      # @flags:
      # @timeout_msec:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
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
      LibGio.g_dbus_proxy_call(to_unsafe, method_name, parameters, flags, timeout_msec, cancellable, callback, user_data)

      # Return value handling
    end

    def call_finish(res : Gio::AsyncResult) : GLib::Variant
      # g_dbus_proxy_call_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_proxy_call_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def call_sync(method_name : ::String, parameters : _?, flags : Gio::DBusCallFlags, timeout_msec : Int32, cancellable : Gio::Cancellable?) : GLib::Variant
      # g_dbus_proxy_call_sync: (Method | Throws)
      # @method_name:
      # @parameters: (nullable)
      # @flags:
      # @timeout_msec:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_proxy_call_sync(to_unsafe, method_name, parameters, flags, timeout_msec, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def call_with_unix_fd_list(method_name : ::String, parameters : _?, flags : Gio::DBusCallFlags, timeout_msec : Int32, fd_list : Gio::UnixFDList?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_proxy_call_with_unix_fd_list: (Method)
      # @method_name:
      # @parameters: (nullable)
      # @flags:
      # @timeout_msec:
      # @fd_list: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      fd_list = if fd_list.nil?
                  Pointer(Void).null
                else
                  fd_list.to_unsafe
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
      LibGio.g_dbus_proxy_call_with_unix_fd_list(to_unsafe, method_name, parameters, flags, timeout_msec, fd_list, cancellable, callback, user_data)

      # Return value handling
    end

    def call_with_unix_fd_list_finish(res : Gio::AsyncResult) : GLib::Variant
      # g_dbus_proxy_call_with_unix_fd_list_finish: (Method | Throws)
      # @out_fd_list: (out) (transfer full) (nullable) (optional)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::TransferFullArgPlan
      GICrystal.ref(out_fd_list)
      # Generator::OutArgUsedInReturnPlan
      out_fd_list = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_dbus_proxy_call_with_unix_fd_list_finish(to_unsafe, out_fd_list, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def call_with_unix_fd_list_sync(method_name : ::String, parameters : _?, flags : Gio::DBusCallFlags, timeout_msec : Int32, fd_list : Gio::UnixFDList?, cancellable : Gio::Cancellable?) : GLib::Variant
      # g_dbus_proxy_call_with_unix_fd_list_sync: (Method | Throws)
      # @method_name:
      # @parameters: (nullable)
      # @flags:
      # @timeout_msec:
      # @fd_list: (nullable)
      # @out_fd_list: (out) (transfer full) (nullable) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      fd_list = if fd_list.nil?
                  Pointer(Void).null
                else
                  fd_list.to_unsafe
                end
      # Generator::TransferFullArgPlan
      GICrystal.ref(out_fd_list)
      # Generator::OutArgUsedInReturnPlan
      out_fd_list = Pointer(Pointer(Void)).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_proxy_call_with_unix_fd_list_sync(to_unsafe, method_name, parameters, flags, timeout_msec, fd_list, out_fd_list, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def cached_property(property_name : ::String) : GLib::Variant?
      # g_dbus_proxy_get_cached_property: (Method)
      # @property_name:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dbus_proxy_get_cached_property(to_unsafe, property_name)

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def cached_property_names : Enumerable(::String)?
      # g_dbus_proxy_get_cached_property_names: (Method)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_dbus_proxy_get_cached_property_names(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def connection : Gio::DBusConnection
      # g_dbus_proxy_get_connection: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_proxy_get_connection(to_unsafe)

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::None)
    end

    def default_timeout : Int32
      # g_dbus_proxy_get_default_timeout: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_proxy_get_default_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def flags : Gio::DBusProxyFlags
      # g_dbus_proxy_get_flags: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_proxy_get_flags(to_unsafe)

      # Return value handling
      Gio::DBusProxyFlags.new(_retval)
    end

    def interface_info : Gio::DBusInterfaceInfo?
      # g_dbus_proxy_get_interface_info: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_proxy_get_interface_info(to_unsafe)

      # Return value handling
      Gio::DBusInterfaceInfo.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def interface_name : ::String
      # g_dbus_proxy_get_interface_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_proxy_get_interface_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def name : ::String?
      # g_dbus_proxy_get_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_proxy_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def name_owner : ::String?
      # g_dbus_proxy_get_name_owner: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dbus_proxy_get_name_owner(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def object_path : ::String
      # g_dbus_proxy_get_object_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_proxy_get_object_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def set_cached_property(property_name : ::String, value : _?) : Nil
      # g_dbus_proxy_set_cached_property: (Method)
      # @property_name:
      # @value: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if value.nil?
                Pointer(Void).null
              elsif !value.is_a?(GLib::Variant)
                GLib::Variant.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      LibGio.g_dbus_proxy_set_cached_property(to_unsafe, property_name, value)

      # Return value handling
    end

    def default_timeout=(timeout_msec : Int32) : Nil
      # g_dbus_proxy_set_default_timeout: (Method)
      # @timeout_msec:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_proxy_set_default_timeout(to_unsafe, timeout_msec)

      # Return value handling
    end

    def interface_info=(info : Gio::DBusInterfaceInfo?) : Nil
      # g_dbus_proxy_set_interface_info: (Method)
      # @info: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      info = if info.nil?
               Pointer(Void).null
             else
               info.to_unsafe
             end

      # C call
      LibGio.g_dbus_proxy_set_interface_info(to_unsafe, info)

      # Return value handling
    end

    struct GPropertiesChangedSignal < GObject::Signal
      def name : String
        @detail ? "g-properties-changed::#{@detail}" : "g-properties-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::Variant, Enumerable(::String), Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::Variant, Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_changed_properties : Pointer(Void), lib_invalidated_properties : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          # Generator::HandmadeArgPlan
          changed_properties = GLib::Variant.new(lib_changed_properties, :none)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(GLib::Variant, Enumerable(::String), Nil)).unbox(_lib_box).call(changed_properties, invalidated_properties)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusProxy, GLib::Variant, Enumerable(::String), Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_changed_properties : Pointer(Void), lib_invalidated_properties : Pointer(Pointer(LibC::Char)), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusProxy.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          changed_properties = GLib::Variant.new(lib_changed_properties, :none)
          # Generator::ArrayArgPlan
          raise NotImplementedError.new
          ::Box(Proc(Gio::DBusProxy, GLib::Variant, Enumerable(::String), Nil)).unbox(_lib_box).call(_sender, changed_properties, invalidated_properties)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(changed_properties : _, invalidated_properties : Enumerable(::String)) : Nil
        # Generator::HandmadeArgPlan
        changed_properties = if !changed_properties.is_a?(GLib::Variant)
                               GLib::Variant.new(changed_properties).to_unsafe
                             else
                               changed_properties.to_unsafe
                             end
        # Generator::ArrayArgPlan
        invalidated_properties = invalidated_properties.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

        LibGObject.g_signal_emit_by_name(@source, "g-properties-changed", changed_properties, invalidated_properties)
      end
    end

    def g_properties_changed_signal
      GPropertiesChangedSignal.new(self)
    end

    struct GSignalSignal < GObject::Signal
      def name : String
        @detail ? "g-signal::#{@detail}" : "g-signal"
      end

      def connect(*, after : Bool = false, &block : Proc(::String?, ::String, GLib::Variant, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String?, ::String, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sender_name : Pointer(LibC::Char), lib_signal_name : Pointer(LibC::Char), lib_parameters : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          sender_name = (lib_sender_name.null? ? nil : ::String.new(lib_sender_name))
          # Generator::BuiltInTypeArgPlan
          sender_name = ::String.new(lib_sender_name) unless lib_sender_name.null?
          # Generator::BuiltInTypeArgPlan
          signal_name = ::String.new(lib_signal_name)
          # Generator::HandmadeArgPlan
          parameters = GLib::Variant.new(lib_parameters, :none)
          ::Box(Proc(::String?, ::String, GLib::Variant, Nil)).unbox(_lib_box).call(sender_name, signal_name, parameters)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusProxy, ::String?, ::String, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_sender_name : Pointer(LibC::Char), lib_signal_name : Pointer(LibC::Char), lib_parameters : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusProxy.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          sender_name = (lib_sender_name.null? ? nil : ::String.new(lib_sender_name))
          # Generator::BuiltInTypeArgPlan
          sender_name = ::String.new(lib_sender_name) unless lib_sender_name.null?
          # Generator::BuiltInTypeArgPlan
          signal_name = ::String.new(lib_signal_name)
          # Generator::HandmadeArgPlan
          parameters = GLib::Variant.new(lib_parameters, :none)
          ::Box(Proc(Gio::DBusProxy, ::String?, ::String, GLib::Variant, Nil)).unbox(_lib_box).call(_sender, sender_name, signal_name, parameters)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(sender_name : ::String?, signal_name : ::String, parameters : _) : Nil
        # Generator::NullableArrayPlan
        sender_name = if sender_name.nil?
                        Pointer(LibC::Char).null
                      else
                        sender_name.to_unsafe
                      end
        # Generator::HandmadeArgPlan
        parameters = if !parameters.is_a?(GLib::Variant)
                       GLib::Variant.new(parameters).to_unsafe
                     else
                       parameters.to_unsafe
                     end

        LibGObject.g_signal_emit_by_name(@source, "g-signal", sender_name, signal_name, parameters)
      end
    end

    def g_signal_signal
      GSignalSignal.new(self)
    end

    # g_properties_changed: (None)
    # @changed_properties:
    # @invalidated_properties:
    # Returns: (transfer none)
    private macro _register_g_properties_changed_vfunc(impl_method_name)
      private def self._vfunc_g_properties_changed(%this : Pointer(Void), lib_changed_properties :  Pointer(Void), lib_invalidated_properties :  Pointer(LibC::Char), ) : Void
        # @changed_properties: 
# @invalidated_properties: 

# Generator::HandmadeArgPlan
changed_properties=GLib::Variant.new(lib_changed_properties, :none)
# Generator::BuiltInTypeArgPlan
invalidated_properties=::String.new(lib_invalidated_properties)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(changed_properties, invalidated_properties)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_g_properties_changed(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # g_properties_changed: (None)
    # @changed_properties:
    # @invalidated_properties:
    # Returns: (transfer none)
    private macro _register_unsafe_g_properties_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_g_properties_changed(%this : Pointer(Void), lib_changed_properties :  Pointer(Void), lib_invalidated_properties :  Pointer(LibC::Char), ) : Void
# @changed_properties: 
# @invalidated_properties: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_changed_properties, lib_invalidated_properties)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_g_properties_changed = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_g_properties_changed(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_g_properties_changed : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # g_signal: (None)
    # @sender_name:
    # @signal_name:
    # @parameters:
    # Returns: (transfer none)
    private macro _register_g_signal_vfunc(impl_method_name)
      private def self._vfunc_g_signal(%this : Pointer(Void), lib_sender_name :  Pointer(LibC::Char), lib_signal_name :  Pointer(LibC::Char), lib_parameters :  Pointer(Void), ) : Void
        # @sender_name: 
# @signal_name: 
# @parameters: 

# Generator::BuiltInTypeArgPlan
sender_name=::String.new(lib_sender_name)
# Generator::BuiltInTypeArgPlan
signal_name=::String.new(lib_signal_name)
# Generator::HandmadeArgPlan
parameters=GLib::Variant.new(lib_parameters, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(sender_name, signal_name, parameters)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_g_signal(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # g_signal: (None)
    # @sender_name:
    # @signal_name:
    # @parameters:
    # Returns: (transfer none)
    private macro _register_unsafe_g_signal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_g_signal(%this : Pointer(Void), lib_sender_name :  Pointer(LibC::Char), lib_signal_name :  Pointer(LibC::Char), lib_parameters :  Pointer(Void), ) : Void
# @sender_name: 
# @signal_name: 
# @parameters: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_sender_name, lib_signal_name, lib_parameters)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_g_signal = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_g_signal(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_g_signal : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
