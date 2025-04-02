require "./socket_connection"

module Gio
  @[GICrystal::GeneratedWrapper]
  class TcpConnection < SocketConnection
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::TcpConnectionClass), class_init,
        sizeof(LibGio::TcpConnection), instance_init, 0)
    end

    GICrystal.declare_new_method(TcpConnection, g_object_get_qdata)

    # Initialize a new `TcpConnection`.
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

    def initialize(*, closed : Bool? = nil, graceful_disconnect : Bool? = nil, input_stream : Gio::InputStream? = nil, output_stream : Gio::OutputStream? = nil, socket : Gio::Socket? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

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
      @@g_type ||= LibGio.g_tcp_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::TcpConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def graceful_disconnect=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "graceful-disconnect", unsafe_value, Pointer(Void).null)
      value
    end

    def graceful_disconnect? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "graceful-disconnect", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def graceful_disconnect : Bool
      # g_tcp_connection_get_graceful_disconnect: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tcp_connection_get_graceful_disconnect(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def graceful_disconnect=(graceful_disconnect : Bool) : Nil
      # g_tcp_connection_set_graceful_disconnect: (Method | Setter)
      # @graceful_disconnect:
      # Returns: (transfer none)

      # C call
      LibGio.g_tcp_connection_set_graceful_disconnect(to_unsafe, graceful_disconnect)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
