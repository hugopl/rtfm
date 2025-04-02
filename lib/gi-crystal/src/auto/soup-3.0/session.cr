require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class Session < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::SessionClass), class_init,
        sizeof(LibSoup::Session), instance_init, 0)
    end

    GICrystal.declare_new_method(Session, g_object_get_qdata)

    # Initialize a new `Session`.
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

    def initialize(*, accept_language : ::String? = nil, accept_language_auto : Bool? = nil, idle_timeout : UInt32? = nil, local_address : Gio::InetSocketAddress? = nil, max_conns : Int32? = nil, max_conns_per_host : Int32? = nil, proxy_resolver : Gio::ProxyResolver? = nil, remote_connectable : Gio::SocketConnectable? = nil, timeout : UInt32? = nil, tls_database : Gio::TlsDatabase? = nil, tls_interaction : Gio::TlsInteraction? = nil, user_agent : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[12]
      _values = StaticArray(LibGObject::Value, 12).new(LibGObject::Value.new)
      _n = 0

      if !accept_language.nil?
        (_names.to_unsafe + _n).value = "accept-language".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_language)
        _n += 1
      end
      if !accept_language_auto.nil?
        (_names.to_unsafe + _n).value = "accept-language-auto".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_language_auto)
        _n += 1
      end
      if !idle_timeout.nil?
        (_names.to_unsafe + _n).value = "idle-timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, idle_timeout)
        _n += 1
      end
      if !local_address.nil?
        (_names.to_unsafe + _n).value = "local-address".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, local_address)
        _n += 1
      end
      if !max_conns.nil?
        (_names.to_unsafe + _n).value = "max-conns".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_conns)
        _n += 1
      end
      if !max_conns_per_host.nil?
        (_names.to_unsafe + _n).value = "max-conns-per-host".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, max_conns_per_host)
        _n += 1
      end
      if !proxy_resolver.nil?
        (_names.to_unsafe + _n).value = "proxy-resolver".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, proxy_resolver)
        _n += 1
      end
      if !remote_connectable.nil?
        (_names.to_unsafe + _n).value = "remote-connectable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, remote_connectable)
        _n += 1
      end
      if !timeout.nil?
        (_names.to_unsafe + _n).value = "timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, timeout)
        _n += 1
      end
      if !tls_database.nil?
        (_names.to_unsafe + _n).value = "tls-database".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_database)
        _n += 1
      end
      if !tls_interaction.nil?
        (_names.to_unsafe + _n).value = "tls-interaction".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tls_interaction)
        _n += 1
      end
      if !user_agent.nil?
        (_names.to_unsafe + _n).value = "user-agent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, user_agent)
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
      @@g_type ||= LibSoup.soup_session_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::Session.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accept_language=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "accept-language", unsafe_value, Pointer(Void).null)
      value
    end

    def accept_language : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "accept-language", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#accept_language` property to nil.
    def accept_language=(value : Nil) : Nil
      LibGObject.g_object_set(self, "accept-language", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#accept_language`, but can return nil.
    def accept_language? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "accept-language", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def accept_language_auto=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "accept-language-auto", unsafe_value, Pointer(Void).null)
      value
    end

    def accept_language_auto? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "accept-language-auto", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def idle_timeout=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "idle-timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def idle_timeout : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "idle-timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def local_address=(value : Gio::InetSocketAddress?) : Gio::InetSocketAddress?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "local-address", unsafe_value, Pointer(Void).null)
      value
    end

    def local_address : Gio::InetSocketAddress?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "local-address", pointerof(value), Pointer(Void).null)
      Gio::InetSocketAddress.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def max_conns=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-conns", unsafe_value, Pointer(Void).null)
      value
    end

    def max_conns : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-conns", pointerof(value), Pointer(Void).null)
      value
    end

    def max_conns_per_host=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-conns-per-host", unsafe_value, Pointer(Void).null)
      value
    end

    def max_conns_per_host : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-conns-per-host", pointerof(value), Pointer(Void).null)
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

    def remote_connectable=(value : Gio::SocketConnectable?) : Gio::SocketConnectable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "remote-connectable", unsafe_value, Pointer(Void).null)
      value
    end

    def remote_connectable : Gio::SocketConnectable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "remote-connectable", pointerof(value), Pointer(Void).null)
      Gio::AbstractSocketConnectable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def timeout=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def timeout : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def tls_database=(value : Gio::TlsDatabase?) : Gio::TlsDatabase?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tls-database", unsafe_value, Pointer(Void).null)
      value
    end

    def tls_database : Gio::TlsDatabase?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tls-database", pointerof(value), Pointer(Void).null)
      Gio::TlsDatabase.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def tls_interaction=(value : Gio::TlsInteraction?) : Gio::TlsInteraction?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "tls-interaction", unsafe_value, Pointer(Void).null)
      value
    end

    def tls_interaction : Gio::TlsInteraction?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "tls-interaction", pointerof(value), Pointer(Void).null)
      Gio::TlsInteraction.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def user_agent=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "user-agent", unsafe_value, Pointer(Void).null)
      value
    end

    def user_agent : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "user-agent", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#user_agent` property to nil.
    def user_agent=(value : Nil) : Nil
      LibGObject.g_object_set(self, "user-agent", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#user_agent`, but can return nil.
    def user_agent? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "user-agent", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # soup_session_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_session_new

      # Return value handling
      Soup::Session.new(_retval, GICrystal::Transfer::Full)
    end

    def abort : Nil
      # soup_session_abort: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_abort(to_unsafe)

      # Return value handling
    end

    def add_feature(feature : Soup::SessionFeature) : Nil
      # soup_session_add_feature: (Method)
      # @feature:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_add_feature(to_unsafe, feature)

      # Return value handling
    end

    def add_feature_by_type(feature_type : UInt64) : Nil
      # soup_session_add_feature_by_type: (Method)
      # @feature_type:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_add_feature_by_type(to_unsafe, feature_type)

      # Return value handling
    end

    def accept_language : ::String?
      # soup_session_get_accept_language: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_accept_language(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def accept_language_auto : Bool
      # soup_session_get_accept_language_auto: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_session_get_accept_language_auto(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def async_result_message(result : Gio::AsyncResult) : Soup::Message?
      # soup_session_get_async_result_message: (Method)
      # @result:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_async_result_message(to_unsafe, result)

      # Return value handling
      Soup::Message.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def feature(feature_type : UInt64) : Soup::SessionFeature?
      # soup_session_get_feature: (Method)
      # @feature_type:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_feature(to_unsafe, feature_type)

      # Return value handling
      Soup::AbstractSessionFeature.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def feature_for_message(feature_type : UInt64, msg : Soup::Message) : Soup::SessionFeature?
      # soup_session_get_feature_for_message: (Method)
      # @feature_type:
      # @msg:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_feature_for_message(to_unsafe, feature_type, msg)

      # Return value handling
      Soup::AbstractSessionFeature.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def idle_timeout : UInt32
      # soup_session_get_idle_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_session_get_idle_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def local_address : Gio::InetSocketAddress?
      # soup_session_get_local_address: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_local_address(to_unsafe)

      # Return value handling
      Gio::InetSocketAddress.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def max_conns : UInt32
      # soup_session_get_max_conns: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_session_get_max_conns(to_unsafe)

      # Return value handling
      _retval
    end

    def max_conns_per_host : UInt32
      # soup_session_get_max_conns_per_host: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_session_get_max_conns_per_host(to_unsafe)

      # Return value handling
      _retval
    end

    def proxy_resolver : Gio::ProxyResolver?
      # soup_session_get_proxy_resolver: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_proxy_resolver(to_unsafe)

      # Return value handling
      Gio::AbstractProxyResolver.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def remote_connectable : Gio::SocketConnectable?
      # soup_session_get_remote_connectable: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_remote_connectable(to_unsafe)

      # Return value handling
      Gio::AbstractSocketConnectable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def timeout : UInt32
      # soup_session_get_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_session_get_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def tls_database : Gio::TlsDatabase?
      # soup_session_get_tls_database: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_tls_database(to_unsafe)

      # Return value handling
      Gio::TlsDatabase.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def tls_interaction : Gio::TlsInteraction?
      # soup_session_get_tls_interaction: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_tls_interaction(to_unsafe)

      # Return value handling
      Gio::TlsInteraction.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def user_agent : ::String?
      # soup_session_get_user_agent: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_session_get_user_agent(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def has_feature(feature_type : UInt64) : Bool
      # soup_session_has_feature: (Method)
      # @feature_type:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_session_has_feature(to_unsafe, feature_type)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def preconnect_async(msg : Soup::Message, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # soup_session_preconnect_async: (Method)
      # @msg:
      # @io_priority:
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
      LibSoup.soup_session_preconnect_async(to_unsafe, msg, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def preconnect_finish(result : Gio::AsyncResult) : Bool
      # soup_session_preconnect_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_session_preconnect_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove_feature(feature : Soup::SessionFeature) : Nil
      # soup_session_remove_feature: (Method)
      # @feature:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_remove_feature(to_unsafe, feature)

      # Return value handling
    end

    def remove_feature_by_type(feature_type : UInt64) : Nil
      # soup_session_remove_feature_by_type: (Method)
      # @feature_type:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_remove_feature_by_type(to_unsafe, feature_type)

      # Return value handling
    end

    def send(msg : Soup::Message, cancellable : Gio::Cancellable?) : Gio::InputStream
      # soup_session_send: (Method | Throws)
      # @msg:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibSoup.soup_session_send(to_unsafe, msg, cancellable, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def send_and_read(msg : Soup::Message, cancellable : Gio::Cancellable?) : GLib::Bytes
      # soup_session_send_and_read: (Method | Throws)
      # @msg:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibSoup.soup_session_send_and_read(to_unsafe, msg, cancellable, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def send_and_read_async(msg : Soup::Message, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # soup_session_send_and_read_async: (Method)
      # @msg:
      # @io_priority:
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
      LibSoup.soup_session_send_and_read_async(to_unsafe, msg, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def send_and_read_finish(result : Gio::AsyncResult) : GLib::Bytes
      # soup_session_send_and_read_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_session_send_and_read_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def send_and_splice(msg : Soup::Message, out_stream : Gio::OutputStream, flags : Gio::OutputStreamSpliceFlags, cancellable : Gio::Cancellable?) : Int64
      # soup_session_send_and_splice: (Method | Throws)
      # @msg:
      # @out_stream:
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibSoup.soup_session_send_and_splice(to_unsafe, msg, out_stream, flags, cancellable, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_and_splice_async(msg : Soup::Message, out_stream : Gio::OutputStream, flags : Gio::OutputStreamSpliceFlags, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # soup_session_send_and_splice_async: (Method)
      # @msg:
      # @out_stream:
      # @flags:
      # @io_priority:
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
      LibSoup.soup_session_send_and_splice_async(to_unsafe, msg, out_stream, flags, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def send_and_splice_finish(result : Gio::AsyncResult) : Int64
      # soup_session_send_and_splice_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_session_send_and_splice_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def send_async(msg : Soup::Message, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # soup_session_send_async: (Method)
      # @msg:
      # @io_priority:
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
      LibSoup.soup_session_send_async(to_unsafe, msg, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def send_finish(result : Gio::AsyncResult) : Gio::InputStream
      # soup_session_send_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_session_send_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def accept_language=(accept_language : ::String) : Nil
      # soup_session_set_accept_language: (Method | Setter)
      # @accept_language:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_set_accept_language(to_unsafe, accept_language)

      # Return value handling
    end

    def accept_language_auto=(accept_language_auto : Bool) : Nil
      # soup_session_set_accept_language_auto: (Method | Setter)
      # @accept_language_auto:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_set_accept_language_auto(to_unsafe, accept_language_auto)

      # Return value handling
    end

    def idle_timeout=(timeout : UInt32) : Nil
      # soup_session_set_idle_timeout: (Method | Setter)
      # @timeout:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_set_idle_timeout(to_unsafe, timeout)

      # Return value handling
    end

    def proxy_resolver=(proxy_resolver : Gio::ProxyResolver?) : Nil
      # soup_session_set_proxy_resolver: (Method | Setter)
      # @proxy_resolver: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      proxy_resolver = if proxy_resolver.nil?
                         Pointer(Void).null
                       else
                         proxy_resolver.to_unsafe
                       end

      # C call
      LibSoup.soup_session_set_proxy_resolver(to_unsafe, proxy_resolver)

      # Return value handling
    end

    def timeout=(timeout : UInt32) : Nil
      # soup_session_set_timeout: (Method | Setter)
      # @timeout:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_set_timeout(to_unsafe, timeout)

      # Return value handling
    end

    def tls_database=(tls_database : Gio::TlsDatabase?) : Nil
      # soup_session_set_tls_database: (Method | Setter)
      # @tls_database: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tls_database = if tls_database.nil?
                       Pointer(Void).null
                     else
                       tls_database.to_unsafe
                     end

      # C call
      LibSoup.soup_session_set_tls_database(to_unsafe, tls_database)

      # Return value handling
    end

    def tls_interaction=(tls_interaction : Gio::TlsInteraction?) : Nil
      # soup_session_set_tls_interaction: (Method | Setter)
      # @tls_interaction: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      tls_interaction = if tls_interaction.nil?
                          Pointer(Void).null
                        else
                          tls_interaction.to_unsafe
                        end

      # C call
      LibSoup.soup_session_set_tls_interaction(to_unsafe, tls_interaction)

      # Return value handling
    end

    def user_agent=(user_agent : ::String) : Nil
      # soup_session_set_user_agent: (Method | Setter)
      # @user_agent:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_session_set_user_agent(to_unsafe, user_agent)

      # Return value handling
    end

    def websocket_connect_async(msg : Soup::Message, origin : ::String?, protocols : Enumerable(::String)?, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # soup_session_websocket_connect_async: (Method)
      # @msg:
      # @origin: (nullable)
      # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      origin = if origin.nil?
                 Pointer(LibC::Char).null
               else
                 origin.to_unsafe
               end
      # Generator::NullableArrayPlan
      protocols = if protocols.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    protocols.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end
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
      LibSoup.soup_session_websocket_connect_async(to_unsafe, msg, origin, protocols, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def websocket_connect_finish(result : Gio::AsyncResult) : Soup::WebsocketConnection
      # soup_session_websocket_connect_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibSoup.soup_session_websocket_connect_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Soup.raise_gerror(_error) unless _error.null?

      # Return value handling
      Soup::WebsocketConnection.new(_retval, GICrystal::Transfer::Full)
    end

    struct RequestQueuedSignal < GObject::Signal
      def name : String
        @detail ? "request-queued::#{@detail}" : "request-queued"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::Message, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_msg : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          msg = Soup::Message.new(lib_msg, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(msg)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Session, Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_msg : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Session.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::Message.new(lib_msg, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Session, Soup::Message, Nil)).unbox(_lib_box).call(_sender, msg)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(msg : Soup::Message) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-queued", msg)
      end
    end

    def request_queued_signal
      RequestQueuedSignal.new(self)
    end

    struct RequestUnqueuedSignal < GObject::Signal
      def name : String
        @detail ? "request-unqueued::#{@detail}" : "request-unqueued"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::Message, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_msg : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          msg = Soup::Message.new(lib_msg, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Message, Nil)).unbox(_lib_box).call(msg)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::Session, Soup::Message, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_msg : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::Session.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::Message.new(lib_msg, GICrystal::Transfer::None)
          ::Box(Proc(Soup::Session, Soup::Message, Nil)).unbox(_lib_box).call(_sender, msg)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(msg : Soup::Message) : Nil
        LibGObject.g_signal_emit_by_name(@source, "request-unqueued", msg)
      end
    end

    def request_unqueued_signal
      RequestUnqueuedSignal.new(self)
    end

    # request_queued: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_request_queued_vfunc(impl_method_name)
      private def self._vfunc_request_queued(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::Message.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_queued(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # request_queued: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_request_queued_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_queued(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_queued = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_queued(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_queued : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # request_unqueued: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_request_unqueued_vfunc(impl_method_name)
      private def self._vfunc_request_unqueued(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::Message.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_unqueued(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # request_unqueued: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_request_unqueued_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_unqueued(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Void
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_unqueued = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_unqueued(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_unqueued : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
