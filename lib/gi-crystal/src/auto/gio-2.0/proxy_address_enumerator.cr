require "./socket_address_enumerator"

module Gio
  @[GICrystal::GeneratedWrapper]
  class ProxyAddressEnumerator < SocketAddressEnumerator
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ProxyAddressEnumeratorClass), class_init,
        sizeof(LibGio::ProxyAddressEnumerator), instance_init, 0)
    end

    GICrystal.declare_new_method(ProxyAddressEnumerator, g_object_get_qdata)

    # Initialize a new `ProxyAddressEnumerator`.
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

    def initialize(*, connectable : Gio::SocketConnectable? = nil, default_port : UInt32? = nil, proxy_resolver : Gio::ProxyResolver? = nil, uri : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !connectable.nil?
        (_names.to_unsafe + _n).value = "connectable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, connectable)
        _n += 1
      end
      if !default_port.nil?
        (_names.to_unsafe + _n).value = "default-port".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_port)
        _n += 1
      end
      if !proxy_resolver.nil?
        (_names.to_unsafe + _n).value = "proxy-resolver".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, proxy_resolver)
        _n += 1
      end
      if !uri.nil?
        (_names.to_unsafe + _n).value = "uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, uri)
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
      @@g_type ||= LibGio.g_proxy_address_enumerator_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::ProxyAddressEnumerator.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def connectable=(value : Gio::SocketConnectable?) : Gio::SocketConnectable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "connectable", unsafe_value, Pointer(Void).null)
      value
    end

    def connectable : Gio::SocketConnectable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "connectable", pointerof(value), Pointer(Void).null)
      Gio::AbstractSocketConnectable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def default_port=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "default-port", unsafe_value, Pointer(Void).null)
      value
    end

    def default_port : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "default-port", pointerof(value), Pointer(Void).null)
      value
    end

    def proxy_resolver=(value : Gio::ProxyResolver?) : Gio::ProxyResolver?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "proxy-resolver", unsafe_value, Pointer(Void).null)
      value
    end

    def proxy_resolver : Gio::ProxyResolver?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "proxy-resolver", pointerof(value), Pointer(Void).null)
      Gio::AbstractProxyResolver.new(value, GICrystal::Transfer::None) unless value.null?
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

    def_equals_and_hash @pointer
  end
end
