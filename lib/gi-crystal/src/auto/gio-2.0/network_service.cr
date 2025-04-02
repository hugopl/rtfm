require "../g_object-2.0/object"
require "./socket_connectable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class NetworkService < GObject::Object
    include SocketConnectable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::NetworkServiceClass), class_init,
        sizeof(LibGio::NetworkService), instance_init, 0)
    end

    GICrystal.declare_new_method(NetworkService, g_object_get_qdata)

    # Initialize a new `NetworkService`.
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

    def initialize(*, domain : ::String? = nil, protocol : ::String? = nil, scheme : ::String? = nil, service : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[4]
      _values = StaticArray(LibGObject::Value, 4).new(LibGObject::Value.new)
      _n = 0

      if !domain.nil?
        (_names.to_unsafe + _n).value = "domain".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, domain)
        _n += 1
      end
      if !protocol.nil?
        (_names.to_unsafe + _n).value = "protocol".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, protocol)
        _n += 1
      end
      if !scheme.nil?
        (_names.to_unsafe + _n).value = "scheme".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scheme)
        _n += 1
      end
      if !service.nil?
        (_names.to_unsafe + _n).value = "service".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, service)
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
      @@g_type ||= LibGio.g_network_service_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::NetworkService.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def domain=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "domain", unsafe_value, Pointer(Void).null)
      value
    end

    def domain : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "domain", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#domain` property to nil.
    def domain=(value : Nil) : Nil
      LibGObject.g_object_set(self, "domain", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#domain`, but can return nil.
    def domain? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "domain", pointerof(value), Pointer(Void).null)
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

    def service=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "service", unsafe_value, Pointer(Void).null)
      value
    end

    def service : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "service", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#service` property to nil.
    def service=(value : Nil) : Nil
      LibGObject.g_object_set(self, "service", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#service`, but can return nil.
    def service? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "service", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(service : ::String, protocol : ::String, domain : ::String) : self
      # g_network_service_new: (Constructor)
      # @service:
      # @protocol:
      # @domain:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_network_service_new(service, protocol, domain)

      # Return value handling
      Gio::NetworkService.new(_retval, GICrystal::Transfer::Full)
    end

    def domain : ::String
      # g_network_service_get_domain: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_service_get_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def protocol : ::String
      # g_network_service_get_protocol: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_service_get_protocol(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def scheme : ::String
      # g_network_service_get_scheme: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_service_get_scheme(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def service : ::String
      # g_network_service_get_service: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_network_service_get_service(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def scheme=(scheme : ::String) : Nil
      # g_network_service_set_scheme: (Method | Setter)
      # @scheme:
      # Returns: (transfer none)

      # C call
      LibGio.g_network_service_set_scheme(to_unsafe, scheme)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
