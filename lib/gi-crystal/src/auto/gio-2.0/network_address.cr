require "../g_object-2.0/object"
require "./socket_connectable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class NetworkAddress < GObject::Object
    include SocketConnectable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::NetworkAddressClass), class_init,
        sizeof(LibGio::NetworkAddress), instance_init, 0)
    end

    GICrystal.declare_new_method(NetworkAddress, g_object_get_qdata)

    # Initialize a new `NetworkAddress`.
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

    def initialize(*, hostname : ::String? = nil, port : UInt32? = nil, scheme : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !hostname.nil?
        (_names.to_unsafe + _n).value = "hostname".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hostname)
        _n += 1
      end
      if !port.nil?
        (_names.to_unsafe + _n).value = "port".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, port)
        _n += 1
      end
      if !scheme.nil?
        (_names.to_unsafe + _n).value = "scheme".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scheme)
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
      @@g_type ||= LibGio.g_network_address_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::NetworkAddress.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def hostname=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "hostname", unsafe_value, Pointer(Void).null)
      value
    end

    def hostname : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "hostname", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#hostname` property to nil.
    def hostname=(value : Nil) : Nil
      LibGObject.g_object_set(self, "hostname", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#hostname`, but can return nil.
    def hostname? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "hostname", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
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

    def scheme=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "scheme", unsafe_value, Pointer(Void).null)
      value
    end

    def scheme : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "scheme", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#scheme` property to nil.
    def scheme=(value : Nil) : Nil
      LibGObject.g_object_set(self, "scheme", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#scheme`, but can return nil.
    def scheme? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "scheme", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(hostname : ::String, port : UInt16) : self
      # g_network_address_new: (Constructor)
      # @hostname:
      # @port:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_network_address_new(hostname, port)

      # Return value handling
      Gio::NetworkAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_loopback(port : UInt16) : self
      # g_network_address_new_loopback: (Constructor)
      # @port:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_network_address_new_loopback(port)

      # Return value handling
      Gio::NetworkAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def parse(host_and_port : ::String, default_port : UInt16) : Gio::NetworkAddress
      # g_network_address_parse: (Throws)
      # @host_and_port:
      # @default_port:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_network_address_parse(host_and_port, default_port, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::NetworkAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def parse_uri(uri : ::String, default_port : UInt16) : Gio::NetworkAddress
      # g_network_address_parse_uri: (Throws)
      # @uri:
      # @default_port:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_network_address_parse_uri(uri, default_port, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::NetworkAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def hostname : ::String
      # g_network_address_get_hostname: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_address_get_hostname(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def port : UInt16
      # g_network_address_get_port: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_address_get_port(to_unsafe)

      # Return value handling
      _retval
    end

    def scheme : ::String?
      # g_network_address_get_scheme: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_network_address_get_scheme(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
