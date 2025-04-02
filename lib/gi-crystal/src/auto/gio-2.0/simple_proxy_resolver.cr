require "../g_object-2.0/object"
require "./proxy_resolver"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SimpleProxyResolver < GObject::Object
    include ProxyResolver

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SimpleProxyResolverClass), class_init,
        sizeof(LibGio::SimpleProxyResolver), instance_init, 0)
    end

    GICrystal.declare_new_method(SimpleProxyResolver, g_object_get_qdata)

    # Initialize a new `SimpleProxyResolver`.
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

    def initialize(*, default_proxy : ::String? = nil, ignore_hosts : Enumerable(::String)? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !default_proxy.nil?
        (_names.to_unsafe + _n).value = "default-proxy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_proxy)
        _n += 1
      end
      if !ignore_hosts.nil?
        (_names.to_unsafe + _n).value = "ignore-hosts".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, ignore_hosts)
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
      @@g_type ||= LibGio.g_simple_proxy_resolver_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SimpleProxyResolver.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def default_proxy=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "default-proxy", unsafe_value, Pointer(Void).null)
      value
    end

    def default_proxy : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-proxy", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#default_proxy` property to nil.
    def default_proxy=(value : Nil) : Nil
      LibGObject.g_object_set(self, "default-proxy", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#default_proxy`, but can return nil.
    def default_proxy? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-proxy", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def ignore_hosts=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "ignore-hosts", unsafe_value, Pointer(Void).null)
      value
    end

    def ignore_hosts : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "ignore-hosts", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def self.new(default_proxy : ::String?, ignore_hosts : Enumerable(::String)?) : Gio::ProxyResolver
      # g_simple_proxy_resolver_new: (None)
      # @default_proxy: (nullable)
      # @ignore_hosts: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      default_proxy = if default_proxy.nil?
                        Pointer(LibC::Char).null
                      else
                        default_proxy.to_unsafe
                      end
      # Generator::NullableArrayPlan
      ignore_hosts = if ignore_hosts.nil?
                       Pointer(Pointer(LibC::Char)).null
                     else
                       ignore_hosts.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                     end

      # C call
      _retval = LibGio.g_simple_proxy_resolver_new(default_proxy, ignore_hosts)

      # Return value handling
      Gio::AbstractProxyResolver.new(_retval, GICrystal::Transfer::Full)
    end

    def default_proxy=(default_proxy : ::String?) : Nil
      # g_simple_proxy_resolver_set_default_proxy: (Method | Setter)
      # @default_proxy: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      default_proxy = if default_proxy.nil?
                        Pointer(LibC::Char).null
                      else
                        default_proxy.to_unsafe
                      end

      # C call
      LibGio.g_simple_proxy_resolver_set_default_proxy(to_unsafe, default_proxy)

      # Return value handling
    end

    def ignore_hosts=(ignore_hosts : Enumerable(::String)) : Nil
      # g_simple_proxy_resolver_set_ignore_hosts: (Method | Setter)
      # @ignore_hosts: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      ignore_hosts = ignore_hosts.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibGio.g_simple_proxy_resolver_set_ignore_hosts(to_unsafe, ignore_hosts)

      # Return value handling
    end

    def set_uri_proxy(uri_scheme : ::String, proxy : ::String) : Nil
      # g_simple_proxy_resolver_set_uri_proxy: (Method)
      # @uri_scheme:
      # @proxy:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_proxy_resolver_set_uri_proxy(to_unsafe, uri_scheme, proxy)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
