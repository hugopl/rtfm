require "../g_object-2.0/object"
require "./async_initable"

require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DBusConnection < GObject::Object
    include AsyncInitable
    include Initable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(DBusConnection, g_object_get_qdata)

    # Initialize a new `DBusConnection`.
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

    def initialize(*, address : ::String? = nil, authentication_observer : Gio::DBusAuthObserver? = nil, capabilities : Gio::DBusCapabilityFlags? = nil, closed : Bool? = nil, exit_on_close : Bool? = nil, flags : Gio::DBusConnectionFlags? = nil, guid : ::String? = nil, stream : Gio::IOStream? = nil, unique_name : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

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
      if !capabilities.nil?
        (_names.to_unsafe + _n).value = "capabilities".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, capabilities)
        _n += 1
      end
      if !closed.nil?
        (_names.to_unsafe + _n).value = "closed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, closed)
        _n += 1
      end
      if !exit_on_close.nil?
        (_names.to_unsafe + _n).value = "exit-on-close".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, exit_on_close)
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
      if !stream.nil?
        (_names.to_unsafe + _n).value = "stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, stream)
        _n += 1
      end
      if !unique_name.nil?
        (_names.to_unsafe + _n).value = "unique-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, unique_name)
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
      @@g_type ||= LibGio.g_dbus_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DBusConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def address=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "address", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#address` property to nil.
    def address=(value : Nil) : Nil
      LibGObject.g_object_set(self, "address", Pointer(Void).null, Pointer(Void).null)
    end

    def authentication_observer=(value : Gio::DBusAuthObserver?) : Gio::DBusAuthObserver?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "authentication-observer", unsafe_value, Pointer(Void).null)
      value
    end

    def capabilities : Gio::DBusCapabilityFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "capabilities", pointerof(value), Pointer(Void).null)
      Gio::DBusCapabilityFlags.new(value)
    end

    def closed? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "closed", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def exit_on_close=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "exit-on-close", unsafe_value, Pointer(Void).null)
      value
    end

    def exit_on_close? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "exit-on-close", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def flags=(value : Gio::DBusConnectionFlags) : Gio::DBusConnectionFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Gio::DBusConnectionFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Gio::DBusConnectionFlags.new(value)
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

    def stream=(value : Gio::IOStream?) : Gio::IOStream?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "stream", unsafe_value, Pointer(Void).null)
      value
    end

    def stream : Gio::IOStream?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "stream", pointerof(value), Pointer(Void).null)
      Gio::IOStream.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def unique_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "unique-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#unique_name`, but can return nil.
    def unique_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "unique-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new_finish(res : Gio::AsyncResult) : self
      # g_dbus_connection_new_finish: (Constructor | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_new_finish(res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_address_finish(res : Gio::AsyncResult) : self
      # g_dbus_connection_new_for_address_finish: (Constructor | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_new_for_address_finish(res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_address_sync(address : ::String, flags : Gio::DBusConnectionFlags, observer : Gio::DBusAuthObserver?, cancellable : Gio::Cancellable?) : self
      # g_dbus_connection_new_for_address_sync: (Constructor | Throws)
      # @address:
      # @flags:
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
      _retval = LibGio.g_dbus_connection_new_for_address_sync(address, flags, observer, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_sync(stream : Gio::IOStream, guid : ::String?, flags : Gio::DBusConnectionFlags, observer : Gio::DBusAuthObserver?, cancellable : Gio::Cancellable?) : self
      # g_dbus_connection_new_sync: (Constructor | Throws)
      # @stream:
      # @guid: (nullable)
      # @flags:
      # @observer: (nullable)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      guid = if guid.nil?
               Pointer(LibC::Char).null
             else
               guid.to_unsafe
             end
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
      _retval = LibGio.g_dbus_connection_new_sync(stream, guid, flags, observer, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(stream : Gio::IOStream, guid : ::String?, flags : Gio::DBusConnectionFlags, observer : Gio::DBusAuthObserver?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_connection_new: (None)
      # @stream:
      # @guid: (nullable)
      # @flags:
      # @observer: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      guid = if guid.nil?
               Pointer(LibC::Char).null
             else
               guid.to_unsafe
             end
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
      LibGio.g_dbus_connection_new(stream, guid, flags, observer, cancellable, callback, user_data)

      # Return value handling
    end

    def self.new_for_address(address : ::String, flags : Gio::DBusConnectionFlags, observer : Gio::DBusAuthObserver?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_connection_new_for_address: (None)
      # @address:
      # @flags:
      # @observer: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibGio.g_dbus_connection_new_for_address(address, flags, observer, cancellable, callback, user_data)

      # Return value handling
    end

    def add_filter(filter_function : Gio::DBusMessageFilterFunction) : UInt32
      # g_dbus_connection_add_filter: (Method)
      # @filter_function:
      # @user_data: (nullable)
      # @user_data_free_func:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter_function
        _box = ::Box.box(filter_function)
        filter_function = ->(lib_connection : Pointer(Void), lib_message : Pointer(Void), lib_incoming : LibC::Int, lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          connection = Gio::DBusConnection.new(lib_connection, GICrystal::Transfer::None)
          # Generator::TransferFullArgPlan
          # Generator::BuiltInTypeArgPlan
          message = Gio::DBusMessage.new(lib_message, GICrystal::Transfer::Full)
          # Generator::BuiltInTypeArgPlan
          incoming = GICrystal.to_bool(lib_incoming)
          ::Box(Proc(Gio::DBusConnection, Gio::DBusMessage, Bool, Gio::DBusMessage)).unbox(lib_user_data).call(connection, message, incoming)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_data_free_func = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter_function = user_data = user_data_free_func = Pointer(Void).null
      end

      # C call
      _retval = LibGio.g_dbus_connection_add_filter(to_unsafe, filter_function, user_data, user_data_free_func)

      # Return value handling
      _retval
    end

    def call(bus_name : ::String?, object_path : ::String, interface_name : ::String, method_name : ::String, parameters : _?, reply_type : GLib::VariantType?, flags : Gio::DBusCallFlags, timeout_msec : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_connection_call: (Method)
      # @bus_name: (nullable)
      # @object_path:
      # @interface_name:
      # @method_name:
      # @parameters: (nullable)
      # @reply_type: (nullable)
      # @flags:
      # @timeout_msec:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      bus_name = if bus_name.nil?
                   Pointer(LibC::Char).null
                 else
                   bus_name.to_unsafe
                 end
      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      reply_type = if reply_type.nil?
                     Pointer(Void).null
                   else
                     reply_type.to_unsafe
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
      LibGio.g_dbus_connection_call(to_unsafe, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, cancellable, callback, user_data)

      # Return value handling
    end

    def call_finish(res : Gio::AsyncResult) : GLib::Variant
      # g_dbus_connection_call_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_call_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def call_sync(bus_name : ::String?, object_path : ::String, interface_name : ::String, method_name : ::String, parameters : _?, reply_type : GLib::VariantType?, flags : Gio::DBusCallFlags, timeout_msec : Int32, cancellable : Gio::Cancellable?) : GLib::Variant
      # g_dbus_connection_call_sync: (Method | Throws)
      # @bus_name: (nullable)
      # @object_path:
      # @interface_name:
      # @method_name:
      # @parameters: (nullable)
      # @reply_type: (nullable)
      # @flags:
      # @timeout_msec:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      bus_name = if bus_name.nil?
                   Pointer(LibC::Char).null
                 else
                   bus_name.to_unsafe
                 end
      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      reply_type = if reply_type.nil?
                     Pointer(Void).null
                   else
                     reply_type.to_unsafe
                   end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_connection_call_sync(to_unsafe, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def call_with_unix_fd_list(bus_name : ::String?, object_path : ::String, interface_name : ::String, method_name : ::String, parameters : _?, reply_type : GLib::VariantType?, flags : Gio::DBusCallFlags, timeout_msec : Int32, fd_list : Gio::UnixFDList?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_connection_call_with_unix_fd_list: (Method)
      # @bus_name: (nullable)
      # @object_path:
      # @interface_name:
      # @method_name:
      # @parameters: (nullable)
      # @reply_type: (nullable)
      # @flags:
      # @timeout_msec:
      # @fd_list: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      bus_name = if bus_name.nil?
                   Pointer(LibC::Char).null
                 else
                   bus_name.to_unsafe
                 end
      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      reply_type = if reply_type.nil?
                     Pointer(Void).null
                   else
                     reply_type.to_unsafe
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
      LibGio.g_dbus_connection_call_with_unix_fd_list(to_unsafe, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, fd_list, cancellable, callback, user_data)

      # Return value handling
    end

    def call_with_unix_fd_list_finish(res : Gio::AsyncResult) : GLib::Variant
      # g_dbus_connection_call_with_unix_fd_list_finish: (Method | Throws)
      # @out_fd_list: (out) (transfer full) (nullable) (optional)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::TransferFullArgPlan
      GICrystal.ref(out_fd_list)
      # Generator::OutArgUsedInReturnPlan
      out_fd_list = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_dbus_connection_call_with_unix_fd_list_finish(to_unsafe, out_fd_list, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def call_with_unix_fd_list_sync(bus_name : ::String?, object_path : ::String, interface_name : ::String, method_name : ::String, parameters : _?, reply_type : GLib::VariantType?, flags : Gio::DBusCallFlags, timeout_msec : Int32, fd_list : Gio::UnixFDList?, cancellable : Gio::Cancellable?) : GLib::Variant
      # g_dbus_connection_call_with_unix_fd_list_sync: (Method | Throws)
      # @bus_name: (nullable)
      # @object_path:
      # @interface_name:
      # @method_name:
      # @parameters: (nullable)
      # @reply_type: (nullable)
      # @flags:
      # @timeout_msec:
      # @fd_list: (nullable)
      # @out_fd_list: (out) (transfer full) (nullable) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      bus_name = if bus_name.nil?
                   Pointer(LibC::Char).null
                 else
                   bus_name.to_unsafe
                 end
      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end
      # Generator::NullableArrayPlan
      reply_type = if reply_type.nil?
                     Pointer(Void).null
                   else
                     reply_type.to_unsafe
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
      _retval = LibGio.g_dbus_connection_call_with_unix_fd_list_sync(to_unsafe, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, fd_list, out_fd_list, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Variant.new(_retval, GICrystal::Transfer::Full)
    end

    def close(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_connection_close: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibGio.g_dbus_connection_close(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def close_finish(res : Gio::AsyncResult) : Bool
      # g_dbus_connection_close_finish: (Method | Throws)
      # @res:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_close_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def close_sync(cancellable : Gio::Cancellable?) : Bool
      # g_dbus_connection_close_sync: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_connection_close_sync(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def emit_signal(destination_bus_name : ::String?, object_path : ::String, interface_name : ::String, signal_name : ::String, parameters : _?) : Bool
      # g_dbus_connection_emit_signal: (Method | Throws)
      # @destination_bus_name: (nullable)
      # @object_path:
      # @interface_name:
      # @signal_name:
      # @parameters: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      destination_bus_name = if destination_bus_name.nil?
                               Pointer(LibC::Char).null
                             else
                               destination_bus_name.to_unsafe
                             end
      # Generator::HandmadeArgPlan
      parameters = if parameters.nil?
                     Pointer(Void).null
                   elsif !parameters.is_a?(GLib::Variant)
                     GLib::Variant.new(parameters).to_unsafe
                   else
                     parameters.to_unsafe
                   end

      # C call
      _retval = LibGio.g_dbus_connection_emit_signal(to_unsafe, destination_bus_name, object_path, interface_name, signal_name, parameters, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def export_action_group(object_path : ::String, action_group : Gio::ActionGroup) : UInt32
      # g_dbus_connection_export_action_group: (Method | Throws)
      # @object_path:
      # @action_group:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_export_action_group(to_unsafe, object_path, action_group, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def export_menu_model(object_path : ::String, menu : Gio::MenuModel) : UInt32
      # g_dbus_connection_export_menu_model: (Method | Throws)
      # @object_path:
      # @menu:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_export_menu_model(to_unsafe, object_path, menu, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def flush(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_connection_flush: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

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
      LibGio.g_dbus_connection_flush(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def flush_finish(res : Gio::AsyncResult) : Bool
      # g_dbus_connection_flush_finish: (Method | Throws)
      # @res:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_flush_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def flush_sync(cancellable : Gio::Cancellable?) : Bool
      # g_dbus_connection_flush_sync: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_connection_flush_sync(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def capabilities : Gio::DBusCapabilityFlags
      # g_dbus_connection_get_capabilities: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_get_capabilities(to_unsafe)

      # Return value handling
      Gio::DBusCapabilityFlags.new(_retval)
    end

    def exit_on_close : Bool
      # g_dbus_connection_get_exit_on_close: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_get_exit_on_close(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def flags : Gio::DBusConnectionFlags
      # g_dbus_connection_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_get_flags(to_unsafe)

      # Return value handling
      Gio::DBusConnectionFlags.new(_retval)
    end

    def guid : ::String
      # g_dbus_connection_get_guid: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_get_guid(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def last_serial : UInt32
      # g_dbus_connection_get_last_serial: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_get_last_serial(to_unsafe)

      # Return value handling
      _retval
    end

    def peer_credentials : Gio::Credentials?
      # g_dbus_connection_get_peer_credentials: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_connection_get_peer_credentials(to_unsafe)

      # Return value handling
      Gio::Credentials.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def stream : Gio::IOStream
      # g_dbus_connection_get_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_get_stream(to_unsafe)

      # Return value handling
      Gio::IOStream.new(_retval, GICrystal::Transfer::None)
    end

    def unique_name : ::String?
      # g_dbus_connection_get_unique_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dbus_connection_get_unique_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def is_closed? : Bool
      # g_dbus_connection_is_closed: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_is_closed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def register_object(object_path : ::String, interface_info : Gio::DBusInterfaceInfo, method_call_closure : GObject::Closure?, get_property_closure : GObject::Closure?, set_property_closure : GObject::Closure?) : UInt32
      # g_dbus_connection_register_object_with_closures: (Method | Throws)
      # @object_path:
      # @interface_info:
      # @method_call_closure: (nullable)
      # @get_property_closure: (nullable)
      # @set_property_closure: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      method_call_closure = if method_call_closure.nil?
                              Pointer(Void).null
                            else
                              method_call_closure.to_unsafe
                            end
      # Generator::NullableArrayPlan
      get_property_closure = if get_property_closure.nil?
                               Pointer(Void).null
                             else
                               get_property_closure.to_unsafe
                             end
      # Generator::NullableArrayPlan
      set_property_closure = if set_property_closure.nil?
                               Pointer(Void).null
                             else
                               set_property_closure.to_unsafe
                             end

      # C call
      _retval = LibGio.g_dbus_connection_register_object_with_closures(to_unsafe, object_path, interface_info, method_call_closure, get_property_closure, set_property_closure, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def register_object_with_closures2(object_path : ::String, interface_info : Gio::DBusInterfaceInfo, method_call_closure : GObject::Closure?, get_property_closure : GObject::Closure?, set_property_closure : GObject::Closure?) : UInt32
      # g_dbus_connection_register_object_with_closures2: (Method | Throws)
      # @object_path:
      # @interface_info:
      # @method_call_closure: (nullable)
      # @get_property_closure: (nullable)
      # @set_property_closure: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      method_call_closure = if method_call_closure.nil?
                              Pointer(Void).null
                            else
                              method_call_closure.to_unsafe
                            end
      # Generator::NullableArrayPlan
      get_property_closure = if get_property_closure.nil?
                               Pointer(Void).null
                             else
                               get_property_closure.to_unsafe
                             end
      # Generator::NullableArrayPlan
      set_property_closure = if set_property_closure.nil?
                               Pointer(Void).null
                             else
                               set_property_closure.to_unsafe
                             end

      # C call
      _retval = LibGio.g_dbus_connection_register_object_with_closures2(to_unsafe, object_path, interface_info, method_call_closure, get_property_closure, set_property_closure, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def register_subtree(object_path : ::String, vtable : Gio::DBusSubtreeVTable, flags : Gio::DBusSubtreeFlags, user_data : Pointer(Void)?, user_data_free_func : GLib::DestroyNotify) : UInt32
      # g_dbus_connection_register_subtree: (Method | Throws)
      # @object_path:
      # @vtable:
      # @flags:
      # @user_data: (nullable)
      # @user_data_free_func:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGio.g_dbus_connection_register_subtree(to_unsafe, object_path, vtable, flags, user_data, user_data_free_func, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def remove_filter(filter_id : UInt32) : Nil
      # g_dbus_connection_remove_filter: (Method)
      # @filter_id:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_connection_remove_filter(to_unsafe, filter_id)

      # Return value handling
    end

    def send_message(message : Gio::DBusMessage, flags : Gio::DBusSendMessageFlags) : Bool
      # g_dbus_connection_send_message: (Method | Throws)
      # @message:
      # @flags:
      # @out_serial: (out) (transfer full) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      out_serial = Pointer(UInt32).null
      # C call
      _retval = LibGio.g_dbus_connection_send_message(to_unsafe, message, flags, out_serial, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def send_message_with_reply(message : Gio::DBusMessage, flags : Gio::DBusSendMessageFlags, timeout_msec : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dbus_connection_send_message_with_reply: (Method)
      # @message:
      # @flags:
      # @timeout_msec:
      # @out_serial: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      out_serial = Pointer(UInt32).null # Generator::NullableArrayPlan
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
      LibGio.g_dbus_connection_send_message_with_reply(to_unsafe, message, flags, timeout_msec, out_serial, cancellable, callback, user_data)

      # Return value handling
    end

    def send_message_with_reply_finish(res : Gio::AsyncResult) : Gio::DBusMessage
      # g_dbus_connection_send_message_with_reply_finish: (Method | Throws)
      # @res:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dbus_connection_send_message_with_reply_finish(to_unsafe, res, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def send_message_with_reply_sync(message : Gio::DBusMessage, flags : Gio::DBusSendMessageFlags, timeout_msec : Int32, cancellable : Gio::Cancellable?) : Gio::DBusMessage
      # g_dbus_connection_send_message_with_reply_sync: (Method | Throws)
      # @message:
      # @flags:
      # @timeout_msec:
      # @out_serial: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      out_serial = Pointer(UInt32).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dbus_connection_send_message_with_reply_sync(to_unsafe, message, flags, timeout_msec, out_serial, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::DBusMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def exit_on_close=(exit_on_close : Bool) : Nil
      # g_dbus_connection_set_exit_on_close: (Method | Setter)
      # @exit_on_close:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_connection_set_exit_on_close(to_unsafe, exit_on_close)

      # Return value handling
    end

    def signal_subscribe(sender : ::String?, interface_name : ::String?, member : ::String?, object_path : ::String?, arg0 : ::String?, flags : Gio::DBusSignalFlags, callback : Gio::DBusSignalCallback) : UInt32
      # g_dbus_connection_signal_subscribe: (Method)
      # @sender: (nullable)
      # @interface_name: (nullable)
      # @member: (nullable)
      # @object_path: (nullable)
      # @arg0: (nullable)
      # @flags:
      # @callback:
      # @user_data: (nullable)
      # @user_data_free_func: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sender = if sender.nil?
                 Pointer(LibC::Char).null
               else
                 sender.to_unsafe
               end
      # Generator::NullableArrayPlan
      interface_name = if interface_name.nil?
                         Pointer(LibC::Char).null
                       else
                         interface_name.to_unsafe
                       end
      # Generator::NullableArrayPlan
      member = if member.nil?
                 Pointer(LibC::Char).null
               else
                 member.to_unsafe
               end
      # Generator::NullableArrayPlan
      object_path = if object_path.nil?
                      Pointer(LibC::Char).null
                    else
                      object_path.to_unsafe
                    end
      # Generator::NullableArrayPlan
      arg0 = if arg0.nil?
               Pointer(LibC::Char).null
             else
               arg0.to_unsafe
             end
      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_connection : Pointer(Void), lib_sender_name : Pointer(LibC::Char), lib_object_path : Pointer(LibC::Char), lib_interface_name : Pointer(LibC::Char), lib_signal_name : Pointer(LibC::Char), lib_parameters : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          connection = Gio::DBusConnection.new(lib_connection, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          sender_name = (lib_sender_name.null? ? nil : ::String.new(lib_sender_name))
          # Generator::BuiltInTypeArgPlan
          sender_name = ::String.new(lib_sender_name) unless lib_sender_name.null?
          # Generator::BuiltInTypeArgPlan
          object_path = ::String.new(lib_object_path)
          # Generator::BuiltInTypeArgPlan
          interface_name = ::String.new(lib_interface_name)
          # Generator::BuiltInTypeArgPlan
          signal_name = ::String.new(lib_signal_name)
          # Generator::HandmadeArgPlan
          parameters = GLib::Variant.new(lib_parameters, :none)
          ::Box(Proc(Gio::DBusConnection, ::String?, ::String, ::String, ::String, GLib::Variant, Nil)).unbox(lib_user_data).call(connection, sender_name, object_path, interface_name, signal_name, parameters)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_data_free_func = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = user_data_free_func = Pointer(Void).null
      end

      # C call
      _retval = LibGio.g_dbus_connection_signal_subscribe(to_unsafe, sender, interface_name, member, object_path, arg0, flags, callback, user_data, user_data_free_func)

      # Return value handling
      _retval
    end

    def signal_unsubscribe(subscription_id : UInt32) : Nil
      # g_dbus_connection_signal_unsubscribe: (Method)
      # @subscription_id:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_connection_signal_unsubscribe(to_unsafe, subscription_id)

      # Return value handling
    end

    def start_message_processing : Nil
      # g_dbus_connection_start_message_processing: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_connection_start_message_processing(to_unsafe)

      # Return value handling
    end

    def unexport_action_group(export_id : UInt32) : Nil
      # g_dbus_connection_unexport_action_group: (Method)
      # @export_id:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_connection_unexport_action_group(to_unsafe, export_id)

      # Return value handling
    end

    def unexport_menu_model(export_id : UInt32) : Nil
      # g_dbus_connection_unexport_menu_model: (Method)
      # @export_id:
      # Returns: (transfer none)

      # C call
      LibGio.g_dbus_connection_unexport_menu_model(to_unsafe, export_id)

      # Return value handling
    end

    def unregister_object(registration_id : UInt32) : Bool
      # g_dbus_connection_unregister_object: (Method)
      # @registration_id:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_unregister_object(to_unsafe, registration_id)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def unregister_subtree(registration_id : UInt32) : Bool
      # g_dbus_connection_unregister_subtree: (Method)
      # @registration_id:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dbus_connection_unregister_subtree(to_unsafe, registration_id)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ClosedSignal < GObject::Signal
      def name : String
        @detail ? "closed::#{@detail}" : "closed"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool, GLib::Error?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool, GLib::Error?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_remote_peer_vanished : LibC::Int, lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          remote_peer_vanished = GICrystal.to_bool(lib_remote_peer_vanished)
          # Generator::NullableArrayPlan
          error = (lib_error.null? ? nil : Gio.gerror_to_crystal(lib_error, GICrystal::Transfer::None))
          # Generator::GErrorArgPlan
          error = Gio.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(Bool, GLib::Error?, Nil)).unbox(_lib_box).call(remote_peer_vanished, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DBusConnection, Bool, GLib::Error?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_remote_peer_vanished : LibC::Int, lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = Gio::DBusConnection.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          remote_peer_vanished = GICrystal.to_bool(lib_remote_peer_vanished)
          # Generator::NullableArrayPlan
          error = (lib_error.null? ? nil : Gio.gerror_to_crystal(lib_error, GICrystal::Transfer::None))
          # Generator::GErrorArgPlan
          error = Gio.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(Gio::DBusConnection, Bool, GLib::Error?, Nil)).unbox(_lib_box).call(_sender, remote_peer_vanished, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(remote_peer_vanished : Bool, error : GLib::Error?) : Nil
        # Generator::NullableArrayPlan
        error = if error.nil?
                  Pointer(LibGLib::Error).null
                else
                  error.to_unsafe
                end

        LibGObject.g_signal_emit_by_name(@source, "closed", remote_peer_vanished, error)
      end
    end

    def closed_signal
      ClosedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
