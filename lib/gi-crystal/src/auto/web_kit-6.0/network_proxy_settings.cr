module WebKit
  class NetworkProxySettings
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(NetworkProxySettings.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(NetworkProxySettings.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_network_proxy_settings_get_type
    end

    def self.new(default_proxy_uri : ::String?, ignore_hosts : Enumerable(::String)?) : self
      # webkit_network_proxy_settings_new: (Constructor)
      # @default_proxy_uri: (nullable)
      # @ignore_hosts: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      default_proxy_uri = if default_proxy_uri.nil?
                            Pointer(LibC::Char).null
                          else
                            default_proxy_uri.to_unsafe
                          end
      # Generator::NullableArrayPlan
      ignore_hosts = if ignore_hosts.nil?
                       Pointer(Pointer(LibC::Char)).null
                     else
                       ignore_hosts.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                     end

      # C call
      _retval = LibWebKit.webkit_network_proxy_settings_new(default_proxy_uri, ignore_hosts)

      # Return value handling
      WebKit::NetworkProxySettings.new(_retval, GICrystal::Transfer::Full)
    end

    def add_proxy_for_scheme(scheme : ::String, proxy_uri : ::String) : Nil
      # webkit_network_proxy_settings_add_proxy_for_scheme: (Method)
      # @scheme:
      # @proxy_uri:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_proxy_settings_add_proxy_for_scheme(to_unsafe, scheme, proxy_uri)

      # Return value handling
    end

    def copy : WebKit::NetworkProxySettings
      # webkit_network_proxy_settings_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_network_proxy_settings_copy(to_unsafe)

      # Return value handling
      WebKit::NetworkProxySettings.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # webkit_network_proxy_settings_free: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_proxy_settings_free(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
