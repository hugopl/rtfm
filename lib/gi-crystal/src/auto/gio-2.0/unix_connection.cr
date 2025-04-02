require "./socket_connection"

module Gio
  @[GICrystal::GeneratedWrapper]
  class UnixConnection < SocketConnection
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::UnixConnectionClass), class_init,
        sizeof(LibGio::UnixConnection), instance_init, 0)
    end

    GICrystal.declare_new_method(UnixConnection, g_object_get_qdata)

    # Initialize a new `UnixConnection`.
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

    def initialize(*, closed : Bool? = nil, input_stream : Gio::InputStream? = nil, output_stream : Gio::OutputStream? = nil, socket : Gio::Socket? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !closed.nil?
        (_names.to_unsafe + _n).value = "closed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, closed)
        _n += 1
      end
      if !input_stream.nil?
        (_names.to_unsafe + _n).value = "input-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, input_stream)
        _n += 1
      end
      if !output_stream.nil?
        (_names.to_unsafe + _n).value = "output-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, output_stream)
        _n += 1
      end
      if !socket.nil?
        (_names.to_unsafe + _n).value = "socket".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, socket)
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
      @@g_type ||= LibGio.g_unix_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::UnixConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def receive_credentials(cancellable : Gio::Cancellable?) : Gio::Credentials
      # g_unix_connection_receive_credentials: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_unix_connection_receive_credentials(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Credentials.new(_retval, GICrystal::Transfer::Full)
    end

    def receive_credentials_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_unix_connection_receive_credentials_async: (Method)
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
      LibGio.g_unix_connection_receive_credentials_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def receive_credentials_finish(result : Gio::AsyncResult) : Gio::Credentials
      # g_unix_connection_receive_credentials_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_unix_connection_receive_credentials_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Credentials.new(_retval, GICrystal::Transfer::Full)
    end

    def receive_fd(cancellable : Gio::Cancellable?) : Int32
      # g_unix_connection_receive_fd: (Method | Throws)
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
      _retval = LibGio.g_unix_connection_receive_fd(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_credentials(cancellable : Gio::Cancellable?) : Bool
      # g_unix_connection_send_credentials: (Method | Throws)
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
      _retval = LibGio.g_unix_connection_send_credentials(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def send_credentials_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_unix_connection_send_credentials_async: (Method)
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
      LibGio.g_unix_connection_send_credentials_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def send_credentials_finish(result : Gio::AsyncResult) : Bool
      # g_unix_connection_send_credentials_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_unix_connection_send_credentials_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def send_fd(fd : Int32, cancellable : Gio::Cancellable?) : Bool
      # g_unix_connection_send_fd: (Method | Throws)
      # @fd:
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
      _retval = LibGio.g_unix_connection_send_fd(to_unsafe, fd, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
