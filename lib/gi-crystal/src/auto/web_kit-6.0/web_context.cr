require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebContext < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebContext, g_object_get_qdata)

    # Initialize a new `WebContext`.
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

    def initialize(*, memory_pressure_settings : WebKit::MemoryPressureSettings? = nil, time_zone_override : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !memory_pressure_settings.nil?
        (_names.to_unsafe + _n).value = "memory-pressure-settings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, memory_pressure_settings)
        _n += 1
      end
      if !time_zone_override.nil?
        (_names.to_unsafe + _n).value = "time-zone-override".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, time_zone_override)
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
      @@g_type ||= LibWebKit.webkit_web_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def memory_pressure_settings=(value : WebKit::MemoryPressureSettings?) : WebKit::MemoryPressureSettings?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "memory-pressure-settings", unsafe_value, Pointer(Void).null)
      value
    end

    def time_zone_override=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "time-zone-override", unsafe_value, Pointer(Void).null)
      value
    end

    def time_zone_override : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "time-zone-override", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#time_zone_override` property to nil.
    def time_zone_override=(value : Nil) : Nil
      LibGObject.g_object_set(self, "time-zone-override", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#time_zone_override`, but can return nil.
    def time_zone_override? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "time-zone-override", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new : self
      # webkit_web_context_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_web_context_new

      # Return value handling
      WebKit::WebContext.new(_retval, GICrystal::Transfer::Full)
    end

    def self.default : WebKit::WebContext
      # webkit_web_context_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_context_get_default

      # Return value handling
      WebKit::WebContext.new(_retval, GICrystal::Transfer::None)
    end

    def add_path_to_sandbox(path : ::String, read_only : Bool) : Nil
      # webkit_web_context_add_path_to_sandbox: (Method)
      # @path:
      # @read_only:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_context_add_path_to_sandbox(to_unsafe, path, read_only)

      # Return value handling
    end

    def cache_model : WebKit::CacheModel
      # webkit_web_context_get_cache_model: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_context_get_cache_model(to_unsafe)

      # Return value handling
      WebKit::CacheModel.new(_retval)
    end

    def geolocation_manager : WebKit::GeolocationManager
      # webkit_web_context_get_geolocation_manager: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_context_get_geolocation_manager(to_unsafe)

      # Return value handling
      WebKit::GeolocationManager.new(_retval, GICrystal::Transfer::None)
    end

    def network_session_for_automation : WebKit::NetworkSession?
      # webkit_web_context_get_network_session_for_automation: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_context_get_network_session_for_automation(to_unsafe)

      # Return value handling
      WebKit::NetworkSession.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def security_manager : WebKit::SecurityManager
      # webkit_web_context_get_security_manager: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_context_get_security_manager(to_unsafe)

      # Return value handling
      WebKit::SecurityManager.new(_retval, GICrystal::Transfer::None)
    end

    def spell_checking_enabled : Bool
      # webkit_web_context_get_spell_checking_enabled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_context_get_spell_checking_enabled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def spell_checking_languages : Enumerable(::String)
      # webkit_web_context_get_spell_checking_languages: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibWebKit.webkit_web_context_get_spell_checking_languages(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def time_zone_override : ::String
      # webkit_web_context_get_time_zone_override: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_context_get_time_zone_override(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def initialize_notification_permissions(allowed_origins : GLib::List, disallowed_origins : GLib::List) : Nil
      # webkit_web_context_initialize_notification_permissions: (Method)
      # @allowed_origins:
      # @disallowed_origins:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_context_initialize_notification_permissions(to_unsafe, allowed_origins, disallowed_origins)

      # Return value handling
    end

    def is_automation_allowed : Bool
      # webkit_web_context_is_automation_allowed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_context_is_automation_allowed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def register_uri_scheme(scheme : ::String, callback : WebKit::URISchemeRequestCallback) : Nil
      # webkit_web_context_register_uri_scheme: (Method)
      # @scheme:
      # @callback:
      # @user_data: (nullable)
      # @user_data_destroy_func:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_request : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          request = WebKit::URISchemeRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::URISchemeRequest, Nil)).unbox(lib_user_data).call(request)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_data_destroy_func = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = user_data_destroy_func = Pointer(Void).null
      end

      # C call
      LibWebKit.webkit_web_context_register_uri_scheme(to_unsafe, scheme, callback, user_data, user_data_destroy_func)

      # Return value handling
    end

    def send_message_to_all_extensions(message : WebKit::UserMessage) : Nil
      # webkit_web_context_send_message_to_all_extensions: (Method)
      # @message:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_context_send_message_to_all_extensions(to_unsafe, message)

      # Return value handling
    end

    def automation_allowed=(allowed : Bool) : Nil
      # webkit_web_context_set_automation_allowed: (Method)
      # @allowed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_context_set_automation_allowed(to_unsafe, allowed)

      # Return value handling
    end

    def cache_model=(cache_model : WebKit::CacheModel) : Nil
      # webkit_web_context_set_cache_model: (Method)
      # @cache_model:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_context_set_cache_model(to_unsafe, cache_model)

      # Return value handling
    end

    def preferred_languages=(languages : Enumerable(::String)?) : Nil
      # webkit_web_context_set_preferred_languages: (Method)
      # @languages: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      languages = if languages.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    languages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end

      # C call
      LibWebKit.webkit_web_context_set_preferred_languages(to_unsafe, languages)

      # Return value handling
    end

    def spell_checking_enabled=(enabled : Bool) : Nil
      # webkit_web_context_set_spell_checking_enabled: (Method)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_context_set_spell_checking_enabled(to_unsafe, enabled)

      # Return value handling
    end

    def spell_checking_languages=(languages : Enumerable(::String)) : Nil
      # webkit_web_context_set_spell_checking_languages: (Method)
      # @languages: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      languages = languages.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibWebKit.webkit_web_context_set_spell_checking_languages(to_unsafe, languages)

      # Return value handling
    end

    def web_process_extensions_directory=(directory : ::String) : Nil
      # webkit_web_context_set_web_process_extensions_directory: (Method)
      # @directory:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_context_set_web_process_extensions_directory(to_unsafe, directory)

      # Return value handling
    end

    def web_process_extensions_initialization_user_data=(user_data : _) : Nil
      # webkit_web_context_set_web_process_extensions_initialization_user_data: (Method)
      # @user_data:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      user_data = if !user_data.is_a?(GLib::Variant)
                    GLib::Variant.new(user_data).to_unsafe
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibWebKit.webkit_web_context_set_web_process_extensions_initialization_user_data(to_unsafe, user_data)

      # Return value handling
    end

    struct AutomationStartedSignal < GObject::Signal
      def name : String
        @detail ? "automation-started::#{@detail}" : "automation-started"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::AutomationSession, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::AutomationSession, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_session : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          session = WebKit::AutomationSession.new(lib_session, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::AutomationSession, Nil)).unbox(_lib_box).call(session)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebContext, WebKit::AutomationSession, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_session : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebContext.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          session = WebKit::AutomationSession.new(lib_session, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebContext, WebKit::AutomationSession, Nil)).unbox(_lib_box).call(_sender, session)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(session : WebKit::AutomationSession) : Nil
        LibGObject.g_signal_emit_by_name(@source, "automation-started", session)
      end
    end

    def automation_started_signal
      AutomationStartedSignal.new(self)
    end

    struct InitializeNotificationPermissionsSignal < GObject::Signal
      def name : String
        @detail ? "initialize-notification-permissions::#{@detail}" : "initialize-notification-permissions"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "initialize-notification-permissions")
      end
    end

    def initialize_notification_permissions_signal
      InitializeNotificationPermissionsSignal.new(self)
    end

    struct InitializeWebProcessExtensionsSignal < GObject::Signal
      def name : String
        @detail ? "initialize-web-process-extensions::#{@detail}" : "initialize-web-process-extensions"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebContext, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebContext.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebContext, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "initialize-web-process-extensions")
      end
    end

    def initialize_web_process_extensions_signal
      InitializeWebProcessExtensionsSignal.new(self)
    end

    struct UserMessageReceivedSignal < GObject::Signal
      def name : String
        @detail ? "user-message-received::#{@detail}" : "user-message-received"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::UserMessage, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::UserMessage, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = WebKit::UserMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::UserMessage, Bool)).unbox(_lib_box).call(message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebContext, WebKit::UserMessage, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebContext.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = WebKit::UserMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebContext, WebKit::UserMessage, Bool)).unbox(_lib_box).call(_sender, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : WebKit::UserMessage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "user-message-received", message)
      end
    end

    def user_message_received_signal
      UserMessageReceivedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
