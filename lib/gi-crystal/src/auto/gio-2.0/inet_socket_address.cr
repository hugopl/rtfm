require "./socket_address"
require "./socket_connectable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class InetSocketAddress < SocketAddress
    include SocketConnectable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::InetSocketAddressClass), class_init,
        sizeof(LibGio::InetSocketAddress), instance_init, 0)
    end

    GICrystal.declare_new_method(InetSocketAddress, g_object_get_qdata)

    # Initialize a new `InetSocketAddress`.
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

    def initialize(*, address : Gio::InetAddress? = nil, family : Gio::SocketFamily? = nil, flowinfo : UInt32? = nil, port : UInt32? = nil, scope_id : UInt32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !address.nil?
        (_names.to_unsafe + _n).value = "address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, address)
        _n += 1
      end
      if !family.nil?
        (_names.to_unsafe + _n).value = "family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, family)
        _n += 1
      end
      if !flowinfo.nil?
        (_names.to_unsafe + _n).value = "flowinfo".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flowinfo)
        _n += 1
      end
      if !port.nil?
        (_names.to_unsafe + _n).value = "port".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, port)
        _n += 1
      end
      if !scope_id.nil?
        (_names.to_unsafe + _n).value = "scope-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scope_id)
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
      @@g_type ||= LibGio.g_inet_socket_address_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::InetSocketAddress.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def address=(value : Gio::InetAddress?) : Gio::InetAddress?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "address", unsafe_value, Pointer(Void).null)
      value
    end

    def address : Gio::InetAddress?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "address", pointerof(value), Pointer(Void).null)
      Gio::InetAddress.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def flowinfo=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "flowinfo", unsafe_value, Pointer(Void).null)
      value
    end

    def flowinfo : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flowinfo", pointerof(value), Pointer(Void).null)
      value
    end

    def port=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "port", unsafe_value, Pointer(Void).null)
      value
    end

    def port : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "port", pointerof(value), Pointer(Void).null)
      value
    end

    def scope_id=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "scope-id", unsafe_value, Pointer(Void).null)
      value
    end

    def scope_id : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "scope-id", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new(address : Gio::InetAddress, port : UInt16) : self
      # g_inet_socket_address_new: (Constructor)
      # @address:
      # @port:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_inet_socket_address_new(address, port)

      # Return value handling
      Gio::InetSocketAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_string(address : ::String, port : UInt32) : self?
      # g_inet_socket_address_new_from_string: (Constructor)
      # @address:
      # @port:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_inet_socket_address_new_from_string(address, port)

      # Return value handling
      Gio::InetSocketAddress.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def address : Gio::InetAddress
      # g_inet_socket_address_get_address: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_socket_address_get_address(to_unsafe)

      # Return value handling
      Gio::InetAddress.new(_retval, GICrystal::Transfer::None)
    end

    def flowinfo : UInt32
      # g_inet_socket_address_get_flowinfo: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_socket_address_get_flowinfo(to_unsafe)

      # Return value handling
      _retval
    end

    def port : UInt16
      # g_inet_socket_address_get_port: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_socket_address_get_port(to_unsafe)

      # Return value handling
      _retval
    end

    def scope_id : UInt32
      # g_inet_socket_address_get_scope_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_inet_socket_address_get_scope_id(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
