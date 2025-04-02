require "./inet_socket_address"
require "./socket_connectable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ProxyAddress < InetSocketAddress
    include SocketConnectable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ProxyAddressClass), class_init,
        sizeof(LibGio::ProxyAddress), instance_init, 0)
    end

    GICrystal.declare_new_method(ProxyAddress, g_object_get_qdata)

    # Initialize a new `ProxyAddress`.
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

    def initialize(*, address : Gio::InetAddress? = nil, destination_hostname : ::String? = nil, destination_port : UInt32? = nil, destination_protocol : ::String? = nil, family : Gio::SocketFamily? = nil, flowinfo : UInt32? = nil, password : ::String? = nil, port : UInt32? = nil, protocol : ::String? = nil, scope_id : UInt32? = nil, uri : ::String? = nil, username : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[12]
      _values = StaticArray(LibGObject::Value, 12).new(LibGObject::Value.new)
      _n = 0

      if !address.nil?
        (_names.to_unsafe + _n).value = "address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, address)
        _n += 1
      end
      if !destination_hostname.nil?
        (_names.to_unsafe + _n).value = "destination-hostname".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, destination_hostname)
        _n += 1
      end
      if !destination_port.nil?
        (_names.to_unsafe + _n).value = "destination-port".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, destination_port)
        _n += 1
      end
      if !destination_protocol.nil?
        (_names.to_unsafe + _n).value = "destination-protocol".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, destination_protocol)
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
      if !password.nil?
        (_names.to_unsafe + _n).value = "password".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, password)
        _n += 1
      end
      if !port.nil?
        (_names.to_unsafe + _n).value = "port".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, port)
        _n += 1
      end
      if !protocol.nil?
        (_names.to_unsafe + _n).value = "protocol".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, protocol)
        _n += 1
      end
      if !scope_id.nil?
        (_names.to_unsafe + _n).value = "scope-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scope_id)
        _n += 1
      end
      if !uri.nil?
        (_names.to_unsafe + _n).value = "uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, uri)
        _n += 1
      end
      if !username.nil?
        (_names.to_unsafe + _n).value = "username".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, username)
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
      @@g_type ||= LibGio.g_proxy_address_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ProxyAddress.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def destination_hostname=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "destination-hostname", unsafe_value, Pointer(Void).null)
      value
    end

    def destination_hostname : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "destination-hostname", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#destination_hostname` property to nil.
    def destination_hostname=(value : Nil) : Nil
      LibGObject.g_object_set(self, "destination-hostname", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#destination_hostname`, but can return nil.
    def destination_hostname? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "destination-hostname", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def destination_port=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "destination-port", unsafe_value, Pointer(Void).null)
      value
    end

    def destination_port : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "destination-port", pointerof(value), Pointer(Void).null)
      value
    end

    def destination_protocol=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "destination-protocol", unsafe_value, Pointer(Void).null)
      value
    end

    def destination_protocol : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "destination-protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#destination_protocol` property to nil.
    def destination_protocol=(value : Nil) : Nil
      LibGObject.g_object_set(self, "destination-protocol", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#destination_protocol`, but can return nil.
    def destination_protocol? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "destination-protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def password=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "password", unsafe_value, Pointer(Void).null)
      value
    end

    def password : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "password", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#password` property to nil.
    def password=(value : Nil) : Nil
      LibGObject.g_object_set(self, "password", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#password`, but can return nil.
    def password? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "password", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def protocol=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "protocol", unsafe_value, Pointer(Void).null)
      value
    end

    def protocol : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#protocol` property to nil.
    def protocol=(value : Nil) : Nil
      LibGObject.g_object_set(self, "protocol", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#protocol`, but can return nil.
    def protocol? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "uri", unsafe_value, Pointer(Void).null)
      value
    end

    def uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#uri` property to nil.
    def uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#uri`, but can return nil.
    def uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def username=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "username", unsafe_value, Pointer(Void).null)
      value
    end

    def username : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "username", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#username` property to nil.
    def username=(value : Nil) : Nil
      LibGObject.g_object_set(self, "username", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#username`, but can return nil.
    def username? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "username", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(inetaddr : Gio::InetAddress, port : UInt16, protocol : ::String, dest_hostname : ::String, dest_port : UInt16, username : ::String?, password : ::String?) : self
      # g_proxy_address_new: (Constructor)
      # @inetaddr:
      # @port:
      # @protocol:
      # @dest_hostname:
      # @dest_port:
      # @username: (nullable)
      # @password: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      username = if username.nil?
                   Pointer(LibC::Char).null
                 else
                   username.to_unsafe
                 end
      # Generator::NullableArrayPlan
      password = if password.nil?
                   Pointer(LibC::Char).null
                 else
                   password.to_unsafe
                 end

      # C call
      _retval = LibGio.g_proxy_address_new(inetaddr, port, protocol, dest_hostname, dest_port, username, password)

      # Return value handling
      Gio::ProxyAddress.new(_retval, GICrystal::Transfer::Full)
    end

    def destination_hostname : ::String
      # g_proxy_address_get_destination_hostname: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_proxy_address_get_destination_hostname(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def destination_port : UInt16
      # g_proxy_address_get_destination_port: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_proxy_address_get_destination_port(to_unsafe)

      # Return value handling
      _retval
    end

    def destination_protocol : ::String
      # g_proxy_address_get_destination_protocol: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_proxy_address_get_destination_protocol(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def password : ::String?
      # g_proxy_address_get_password: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_proxy_address_get_password(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def protocol : ::String
      # g_proxy_address_get_protocol: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_proxy_address_get_protocol(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def uri : ::String?
      # g_proxy_address_get_uri: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_proxy_address_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def username : ::String?
      # g_proxy_address_get_username: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_proxy_address_get_username(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
