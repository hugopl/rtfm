require "./tcp_connection"

module Gio
  @[GICrystal::GeneratedWrapper]
  class TcpWrapperConnection < TcpConnection
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::TcpWrapperConnectionClass), class_init,
        sizeof(LibGio::TcpWrapperConnection), instance_init, 0)
    end

    GICrystal.declare_new_method(TcpWrapperConnection, g_object_get_qdata)

    # Initialize a new `TcpWrapperConnection`.
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

    def initialize(*, base_io_stream : Gio::IOStream? = nil, closed : Bool? = nil, graceful_disconnect : Bool? = nil, input_stream : Gio::InputStream? = nil, output_stream : Gio::OutputStream? = nil, socket : Gio::Socket? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !base_io_stream.nil?
        (_names.to_unsafe + _n).value = "base-io-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, base_io_stream)
        _n += 1
      end
      if !closed.nil?
        (_names.to_unsafe + _n).value = "closed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, closed)
        _n += 1
      end
      if !graceful_disconnect.nil?
        (_names.to_unsafe + _n).value = "graceful-disconnect".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, graceful_disconnect)
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
      @@g_type ||= LibGio.g_tcp_wrapper_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::TcpWrapperConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def base_io_stream=(value : Gio::IOStream?) : Gio::IOStream?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "base-io-stream", unsafe_value, Pointer(Void).null)
      value
    end

    def base_io_stream : Gio::IOStream?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "base-io-stream", pointerof(value), Pointer(Void).null)
      Gio::IOStream.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(base_io_stream : Gio::IOStream, socket : Gio::Socket) : self
      # g_tcp_wrapper_connection_new: (Constructor)
      # @base_io_stream:
      # @socket:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_tcp_wrapper_connection_new(base_io_stream, socket)

      # Return value handling
      Gio::TcpWrapperConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def base_io_stream : Gio::IOStream
      # g_tcp_wrapper_connection_get_base_io_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tcp_wrapper_connection_get_base_io_stream(to_unsafe)

      # Return value handling
      Gio::IOStream.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
