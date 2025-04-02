require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class NetworkSession < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(NetworkSession, g_object_get_qdata)

    # Initialize a new `NetworkSession`.
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

    def initialize(*, cache_directory : ::String? = nil, data_directory : ::String? = nil, is_ephemeral : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[3]
      _values = StaticArray(LibGObject::Value, 3).new(LibGObject::Value.new)
      _n = 0

      if !cache_directory.nil?
        (_names.to_unsafe + _n).value = "cache-directory".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cache_directory)
        _n += 1
      end
      if !data_directory.nil?
        (_names.to_unsafe + _n).value = "data-directory".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, data_directory)
        _n += 1
      end
      if !is_ephemeral.nil?
        (_names.to_unsafe + _n).value = "is-ephemeral".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_ephemeral)
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
      @@g_type ||= LibWebKit.webkit_network_session_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::NetworkSession.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def cache_directory=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "cache-directory", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#cache_directory` property to nil.
    def cache_directory=(value : Nil) : Nil
      LibGObject.g_object_set(self, "cache-directory", Pointer(Void).null, Pointer(Void).null)
    end

    def data_directory=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "data-directory", unsafe_value, Pointer(Void).null)
      value
    end

    # Set `#data_directory` property to nil.
    def data_directory=(value : Nil) : Nil
      LibGObject.g_object_set(self, "data-directory", Pointer(Void).null, Pointer(Void).null)
    end

    def is_ephemeral=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-ephemeral", unsafe_value, Pointer(Void).null)
      value
    end

    def is_ephemeral? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-ephemeral", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(data_directory : ::String?, cache_directory : ::String?) : self
      # webkit_network_session_new: (Constructor)
      # @data_directory: (nullable)
      # @cache_directory: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      data_directory = if data_directory.nil?
                         Pointer(LibC::Char).null
                       else
                         data_directory.to_unsafe
                       end
      # Generator::NullableArrayPlan
      cache_directory = if cache_directory.nil?
                          Pointer(LibC::Char).null
                        else
                          cache_directory.to_unsafe
                        end

      # C call
      _retval = LibWebKit.webkit_network_session_new(data_directory, cache_directory)

      # Return value handling
      WebKit::NetworkSession.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_ephemeral : self
      # webkit_network_session_new_ephemeral: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_network_session_new_ephemeral

      # Return value handling
      WebKit::NetworkSession.new(_retval, GICrystal::Transfer::Full)
    end

    def self.default : WebKit::NetworkSession
      # webkit_network_session_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_network_session_get_default

      # Return value handling
      WebKit::NetworkSession.new(_retval, GICrystal::Transfer::None)
    end

    def self.memory_pressure_settings=(settings : WebKit::MemoryPressureSettings) : Nil
      # webkit_network_session_set_memory_pressure_settings: (None)
      # @settings:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_session_set_memory_pressure_settings(settings)

      # Return value handling
    end

    def allow_tls_certificate_for_host(certificate : Gio::TlsCertificate, host : ::String) : Nil
      # webkit_network_session_allow_tls_certificate_for_host: (Method)
      # @certificate:
      # @host:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_session_allow_tls_certificate_for_host(to_unsafe, certificate, host)

      # Return value handling
    end

    def download_uri(uri : ::String) : WebKit::Download
      # webkit_network_session_download_uri: (Method)
      # @uri:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_network_session_download_uri(to_unsafe, uri)

      # Return value handling
      WebKit::Download.new(_retval, GICrystal::Transfer::Full)
    end

    def cookie_manager : WebKit::CookieManager
      # webkit_network_session_get_cookie_manager: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_network_session_get_cookie_manager(to_unsafe)

      # Return value handling
      WebKit::CookieManager.new(_retval, GICrystal::Transfer::None)
    end

    def itp_enabled : Bool
      # webkit_network_session_get_itp_enabled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_network_session_get_itp_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def itp_summary(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_network_session_get_itp_summary: (Method)
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
      LibWebKit.webkit_network_session_get_itp_summary(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def itp_summary_finish(result : Gio::AsyncResult) : GLib::List
      # webkit_network_session_get_itp_summary_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_network_session_get_itp_summary_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(WebKit::ITPThirdParty).new(_retval, GICrystal::Transfer::Full)
    end

    def persistent_credential_storage_enabled : Bool
      # webkit_network_session_get_persistent_credential_storage_enabled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_network_session_get_persistent_credential_storage_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def tls_errors_policy : WebKit::TLSErrorsPolicy
      # webkit_network_session_get_tls_errors_policy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_network_session_get_tls_errors_policy(to_unsafe)

      # Return value handling
      WebKit::TLSErrorsPolicy.new(_retval)
    end

    def website_data_manager : WebKit::WebsiteDataManager
      # webkit_network_session_get_website_data_manager: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_network_session_get_website_data_manager(to_unsafe)

      # Return value handling
      WebKit::WebsiteDataManager.new(_retval, GICrystal::Transfer::None)
    end

    def is_ephemeral : Bool
      # webkit_network_session_is_ephemeral: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_network_session_is_ephemeral(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def prefetch_dns(hostname : ::String) : Nil
      # webkit_network_session_prefetch_dns: (Method)
      # @hostname:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_session_prefetch_dns(to_unsafe, hostname)

      # Return value handling
    end

    def itp_enabled=(enabled : Bool) : Nil
      # webkit_network_session_set_itp_enabled: (Method)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_session_set_itp_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def persistent_credential_storage_enabled=(enabled : Bool) : Nil
      # webkit_network_session_set_persistent_credential_storage_enabled: (Method)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_session_set_persistent_credential_storage_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def set_proxy_settings(proxy_mode : WebKit::NetworkProxyMode, proxy_settings : WebKit::NetworkProxySettings?) : Nil
      # webkit_network_session_set_proxy_settings: (Method)
      # @proxy_mode:
      # @proxy_settings: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      proxy_settings = if proxy_settings.nil?
                         Pointer(Void).null
                       else
                         proxy_settings.to_unsafe
                       end

      # C call
      LibWebKit.webkit_network_session_set_proxy_settings(to_unsafe, proxy_mode, proxy_settings)

      # Return value handling
    end

    def tls_errors_policy=(policy : WebKit::TLSErrorsPolicy) : Nil
      # webkit_network_session_set_tls_errors_policy: (Method)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_network_session_set_tls_errors_policy(to_unsafe, policy)

      # Return value handling
    end

    struct DownloadStartedSignal < GObject::Signal
      def name : String
        @detail ? "download-started::#{@detail}" : "download-started"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::Download, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::Download, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_download : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          download = WebKit::Download.new(lib_download, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::Download, Nil)).unbox(_lib_box).call(download)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::NetworkSession, WebKit::Download, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_download : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::NetworkSession.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          download = WebKit::Download.new(lib_download, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::NetworkSession, WebKit::Download, Nil)).unbox(_lib_box).call(_sender, download)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(download : WebKit::Download) : Nil
        LibGObject.g_signal_emit_by_name(@source, "download-started", download)
      end
    end

    def download_started_signal
      DownloadStartedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
