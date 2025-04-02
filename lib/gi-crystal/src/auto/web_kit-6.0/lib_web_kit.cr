@[Link("webkitgtk-6.0", pkg_config: "webkitgtk-6.0")]
@[Link("javascriptcoregtk-6.0", pkg_config: "javascriptcoregtk-6.0")]
lib LibWebKit
  # Flags
  type EditorTypingAttributes = UInt32
  type FindOptions = UInt32
  type HitTestResultContext = UInt32
  type InputHints = UInt32
  type SnapshotOptions = UInt32
  type WebExtensionMatchPatternOptions = UInt32
  type WebsiteDataTypes = UInt32

  # Enums
  type AuthenticationScheme = UInt32
  type AutomationBrowsingContextPresentation = UInt32
  type AutoplayPolicy = UInt32
  type CacheModel = UInt32
  type ContextMenuAction = UInt32
  type CookieAcceptPolicy = UInt32
  type CookiePersistentStorage = UInt32
  type CredentialPersistence = UInt32
  type DownloadError = UInt32
  type FaviconDatabaseError = UInt32
  type FeatureStatus = UInt32
  type HardwareAccelerationPolicy = UInt32
  type InputPurpose = UInt32
  type InsecureContentEvent = UInt32
  type JavascriptError = UInt32
  type LoadEvent = UInt32
  type MediaCaptureState = UInt32
  type MediaError = UInt32
  type NavigationType = UInt32
  type NetworkError = UInt32
  type NetworkProxyMode = UInt32
  type PermissionState = UInt32
  type PolicyDecisionType = UInt32
  type PolicyError = UInt32
  type PrintError = UInt32
  type PrintOperationResponse = UInt32
  type SaveMode = UInt32
  type ScriptDialogType = UInt32
  type SnapshotError = UInt32
  type SnapshotRegion = UInt32
  type TLSErrorsPolicy = UInt32
  type UserContentFilterError = UInt32
  type UserContentInjectedFrames = UInt32
  type UserMessageError = UInt32
  type UserScriptInjectionTime = UInt32
  type UserStyleLevel = UInt32
  type WebExtensionMatchPatternError = UInt32
  type WebExtensionMode = UInt32
  type WebProcessTerminationReason = UInt32

  # Callbacks
  alias URISchemeRequestCallback = Pointer(LibWebKit::URISchemeRequest), Pointer(Void) -> Void

  # Interface types
  type PermissionRequest = Void

  # Structs
  type ApplicationInfo = Void # Struct with zero bytes

  struct AuthenticationRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct AutomationSessionClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct BackForwardListClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct BackForwardListItemClass # 136 bytes long
    parent_class : LibGObject::InitiallyUnownedClass
  end

  struct ClipboardPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ColorChooserRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ContextMenuClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ContextMenuItemClass # 136 bytes long
    parent_class : LibGObject::InitiallyUnownedClass
  end

  struct CookieManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type Credential = Void # Struct with zero bytes

  struct DeviceInfoPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct DownloadClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct EditorStateClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct FaviconDatabaseClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type Feature = Void # Struct with zero bytes

  type FeatureList = Void # Struct with zero bytes

  struct FileChooserRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct FindControllerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct FormSubmissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct GeolocationManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct GeolocationPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type GeolocationPosition = Void # Struct with zero bytes

  struct HitTestResultClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type ITPFirstParty = Void # Struct with zero bytes

  type ITPThirdParty = Void # Struct with zero bytes

  struct InputMethodContextClass # 368 bytes long
    parent_class : LibGObject::ObjectClass
    preedit_started : Void*
    preedit_changed : Void*
    preedit_finished : Void*
    committed : Void*
    delete_surrounding : Void*
    set_enable_preedit : Void*
    get_preedit : Void*
    filter_key_event : Void*
    notify_focus_in : Void*
    notify_focus_out : Void*
    notify_cursor_area : Void*
    notify_surrounding : Void*
    reset : Void*
    _webkit_reserved0 : Pointer(Void)
    _webkit_reserved1 : Pointer(Void)
    _webkit_reserved2 : Pointer(Void)
    _webkit_reserved3 : Pointer(Void)
    _webkit_reserved4 : Pointer(Void)
    _webkit_reserved5 : Pointer(Void)
    _webkit_reserved6 : Pointer(Void)
    _webkit_reserved7 : Pointer(Void)
    _webkit_reserved8 : Pointer(Void)
    _webkit_reserved9 : Pointer(Void)
    _webkit_reserved10 : Pointer(Void)
    _webkit_reserved11 : Pointer(Void)
    _webkit_reserved12 : Pointer(Void)
    _webkit_reserved13 : Pointer(Void)
    _webkit_reserved14 : Pointer(Void)
    _webkit_reserved15 : Pointer(Void)
  end

  type InputMethodContextPrivate = Void # Struct with zero bytes

  type InputMethodUnderline = Void # Struct with zero bytes

  struct MediaKeySystemPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type MemoryPressureSettings = Void # Struct with zero bytes

  type NavigationAction = Void # Struct with zero bytes

  struct NavigationPolicyDecisionClass # 200 bytes long
    parent_class : LibWebKit::PolicyDecisionClass
  end

  type NetworkProxySettings = Void # Struct with zero bytes

  struct NetworkSessionClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct NotificationClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct NotificationPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct OptionMenuClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type OptionMenuItem = Void # Struct with zero bytes

  struct PermissionRequestInterface # 32 bytes long
    parent_interface : LibGObject::TypeInterface
    allow : Void*
    deny : Void*
  end

  type PermissionStateQuery = Void # Struct with zero bytes

  struct PointerLockPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct PolicyDecisionClass # 200 bytes long
    parent_class : LibGObject::ObjectClass
    _webkit_reserved0 : Pointer(Void)
    _webkit_reserved1 : Pointer(Void)
    _webkit_reserved2 : Pointer(Void)
    _webkit_reserved3 : Pointer(Void)
    _webkit_reserved4 : Pointer(Void)
    _webkit_reserved5 : Pointer(Void)
    _webkit_reserved6 : Pointer(Void)
    _webkit_reserved7 : Pointer(Void)
  end

  type PolicyDecisionPrivate = Void # Struct with zero bytes

  struct PrintOperationClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ResponsePolicyDecisionClass # 200 bytes long
    parent_class : LibWebKit::PolicyDecisionClass
  end

  type ScriptDialog = Void # Struct with zero bytes

  type ScriptMessageReply = Void # Struct with zero bytes

  struct SecurityManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type SecurityOrigin = Void # Struct with zero bytes

  struct SettingsClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct URIRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct URIResponseClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct URISchemeRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct URISchemeResponseClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type UserContentFilter = Void # Struct with zero bytes

  struct UserContentFilterStoreClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct UserContentManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct UserMediaPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct UserMessageClass # 136 bytes long
    parent_class : LibGObject::InitiallyUnownedClass
  end

  type UserScript = Void # Struct with zero bytes

  type UserStyleSheet = Void # Struct with zero bytes

  struct WebContextClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type WebExtensionMatchPattern = Void # Struct with zero bytes

  struct WebInspectorClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct WebResourceClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct WebViewBaseClass # 440 bytes long
    parentClass : LibGtk::WidgetClass
    _webkit_reserved0 : Pointer(Void)
    _webkit_reserved1 : Pointer(Void)
    _webkit_reserved2 : Pointer(Void)
    _webkit_reserved3 : Pointer(Void)
  end

  type WebViewBasePrivate = Void # Struct with zero bytes

  struct WebViewClass # 912 bytes long
    parent : LibWebKit::WebViewBaseClass
    load_changed : Void*
    load_failed : Void*
    create : Pointer(Void)
    ready_to_show : Void*
    run_as_modal : Void*
    close : Void*
    script_dialog : Void*
    decide_policy : Void*
    permission_request : Void*
    mouse_target_changed : Void*
    print : Void*
    resource_load_started : Void*
    enter_fullscreen : Void*
    leave_fullscreen : Void*
    run_file_chooser : Void*
    context_menu : Void*
    context_menu_dismissed : Void*
    submit_form : Void*
    insecure_content_detected : Void*
    web_process_crashed : Void*
    authenticate : Void*
    load_failed_with_tls_errors : Void*
    show_notification : Void*
    run_color_chooser : Void*
    show_option_menu : Void*
    web_process_terminated : Void*
    user_message_received : Void*
    query_permission_state : Void*
    _webkit_reserved0 : Pointer(Void)
    _webkit_reserved1 : Pointer(Void)
    _webkit_reserved2 : Pointer(Void)
    _webkit_reserved3 : Pointer(Void)
    _webkit_reserved4 : Pointer(Void)
    _webkit_reserved5 : Pointer(Void)
    _webkit_reserved6 : Pointer(Void)
    _webkit_reserved7 : Pointer(Void)
    _webkit_reserved8 : Pointer(Void)
    _webkit_reserved9 : Pointer(Void)
    _webkit_reserved10 : Pointer(Void)
    _webkit_reserved11 : Pointer(Void)
    _webkit_reserved12 : Pointer(Void)
    _webkit_reserved13 : Pointer(Void)
    _webkit_reserved14 : Pointer(Void)
    _webkit_reserved15 : Pointer(Void)
    _webkit_reserved16 : Pointer(Void)
    _webkit_reserved17 : Pointer(Void)
    _webkit_reserved18 : Pointer(Void)
    _webkit_reserved19 : Pointer(Void)
    _webkit_reserved20 : Pointer(Void)
    _webkit_reserved21 : Pointer(Void)
    _webkit_reserved22 : Pointer(Void)
    _webkit_reserved23 : Pointer(Void)
    _webkit_reserved24 : Pointer(Void)
    _webkit_reserved25 : Pointer(Void)
    _webkit_reserved26 : Pointer(Void)
    _webkit_reserved27 : Pointer(Void)
    _webkit_reserved28 : Pointer(Void)
    _webkit_reserved29 : Pointer(Void)
    _webkit_reserved30 : Pointer(Void)
  end

  type WebViewPrivate = Void # Struct with zero bytes

  type WebViewSessionState = Void # Struct with zero bytes

  type WebsiteData = Void # Struct with zero bytes

  struct WebsiteDataAccessPermissionRequestClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct WebsiteDataManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct WebsitePoliciesClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct WindowPropertiesClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  # Unions

  # Objects
  type AuthenticationRequest = Void # Object struct with no fields

  type AutomationSession = Void # Object struct with no fields

  type BackForwardList = Void # Object struct with no fields

  type BackForwardListItem = Void # Object struct with no fields

  type ClipboardPermissionRequest = Void # Object struct with no fields

  type ColorChooserRequest = Void # Object struct with no fields

  type ContextMenu = Void # Object struct with no fields

  type ContextMenuItem = Void # Object struct with no fields

  type CookieManager = Void # Object struct with no fields

  type DeviceInfoPermissionRequest = Void # Object struct with no fields

  type Download = Void # Object struct with no fields

  type EditorState = Void # Object struct with no fields

  type FaviconDatabase = Void # Object struct with no fields

  type FileChooserRequest = Void # Object struct with no fields

  type FindController = Void # Object struct with no fields

  type FormSubmissionRequest = Void # Object struct with no fields

  type GeolocationManager = Void # Object struct with no fields

  type GeolocationPermissionRequest = Void # Object struct with no fields

  type HitTestResult = Void # Object struct with no fields

  struct InputMethodContext
    parent_instance : LibGObject::Object
    priv : Pointer(LibWebKit::InputMethodContextPrivate)
  end

  type MediaKeySystemPermissionRequest = Void # Object struct with no fields

  type NavigationPolicyDecision = Void # Object struct with no fields

  type NetworkSession = Void # Object struct with no fields

  type Notification = Void # Object struct with no fields

  type NotificationPermissionRequest = Void # Object struct with no fields

  type OptionMenu = Void # Object struct with no fields

  type PointerLockPermissionRequest = Void # Object struct with no fields

  struct PolicyDecision
    parent_instance : LibGObject::Object
    priv : Pointer(LibWebKit::PolicyDecisionPrivate)
  end

  type PrintOperation = Void # Object struct with no fields

  type ResponsePolicyDecision = Void # Object struct with no fields

  type SecurityManager = Void # Object struct with no fields

  type Settings = Void # Object struct with no fields

  type URIRequest = Void # Object struct with no fields

  type URIResponse = Void # Object struct with no fields

  type URISchemeRequest = Void # Object struct with no fields

  type URISchemeResponse = Void # Object struct with no fields

  type UserContentFilterStore = Void # Object struct with no fields

  type UserContentManager = Void # Object struct with no fields

  type UserMediaPermissionRequest = Void # Object struct with no fields

  type UserMessage = Void # Object struct with no fields

  type WebContext = Void # Object struct with no fields

  type WebInspector = Void # Object struct with no fields

  type WebResource = Void # Object struct with no fields

  struct WebView
    parent_instance : LibWebKit::WebViewBase
    priv : Pointer(LibWebKit::WebViewPrivate)
  end

  struct WebViewBase
    parent_instance : LibGtk::Widget
    priv : Pointer(LibWebKit::WebViewBasePrivate)
  end

  type WebsiteDataAccessPermissionRequest = Void # Object struct with no fields

  type WebsiteDataManager = Void # Object struct with no fields

  type WebsitePolicies = Void # Object struct with no fields

  type WindowProperties = Void # Object struct with no fields

  # All C Functions
  fun webkit_application_info_get_name(this : Void*) : Pointer(LibC::Char)
  fun webkit_application_info_get_type : UInt64
  fun webkit_application_info_get_version(this : Void*, major : Pointer(UInt64), minor : Pointer(UInt64), micro : Pointer(UInt64)) : Void
  fun webkit_application_info_new : Pointer(Void)
  fun webkit_application_info_ref(this : Void*) : Pointer(Void)
  fun webkit_application_info_set_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun webkit_application_info_set_version(this : Void*, major : UInt64, minor : UInt64, micro : UInt64) : Void
  fun webkit_application_info_unref(this : Void*) : Void
  fun webkit_authentication_request_authenticate(this : Void*, credential : Pointer(Void)) : Void
  fun webkit_authentication_request_can_save_credentials(this : Void*) : LibC::Int
  fun webkit_authentication_request_cancel(this : Void*) : Void
  fun webkit_authentication_request_get_certificate_pin_flags(this : Void*) : UInt32
  fun webkit_authentication_request_get_host(this : Void*) : Pointer(LibC::Char)
  fun webkit_authentication_request_get_port(this : Void*) : UInt32
  fun webkit_authentication_request_get_proposed_credential(this : Void*) : Pointer(Void)
  fun webkit_authentication_request_get_realm(this : Void*) : Pointer(LibC::Char)
  fun webkit_authentication_request_get_scheme(this : Void*) : UInt32
  fun webkit_authentication_request_get_security_origin(this : Void*) : Pointer(Void)
  fun webkit_authentication_request_get_type : UInt64
  fun webkit_authentication_request_is_for_proxy(this : Void*) : LibC::Int
  fun webkit_authentication_request_is_retry(this : Void*) : LibC::Int
  fun webkit_authentication_request_set_can_save_credentials(this : Void*, enabled : LibC::Int) : Void
  fun webkit_authentication_request_set_proposed_credential(this : Void*, credential : Pointer(Void)) : Void
  fun webkit_authentication_scheme_get_type : UInt64
  fun webkit_automation_browsing_context_presentation_get_type : UInt64
  fun webkit_automation_session_get_application_info(this : Void*) : Pointer(Void)
  fun webkit_automation_session_get_id(this : Void*) : Pointer(LibC::Char)
  fun webkit_automation_session_get_type : UInt64
  fun webkit_automation_session_set_application_info(this : Void*, info : Pointer(Void)) : Void
  fun webkit_autoplay_policy_get_type : UInt64
  fun webkit_back_forward_list_get_back_item(this : Void*) : Pointer(Void)
  fun webkit_back_forward_list_get_back_list(this : Void*) : Pointer(LibGLib::List)
  fun webkit_back_forward_list_get_back_list_with_limit(this : Void*, limit : UInt32) : Pointer(LibGLib::List)
  fun webkit_back_forward_list_get_current_item(this : Void*) : Pointer(Void)
  fun webkit_back_forward_list_get_forward_item(this : Void*) : Pointer(Void)
  fun webkit_back_forward_list_get_forward_list(this : Void*) : Pointer(LibGLib::List)
  fun webkit_back_forward_list_get_forward_list_with_limit(this : Void*, limit : UInt32) : Pointer(LibGLib::List)
  fun webkit_back_forward_list_get_length(this : Void*) : UInt32
  fun webkit_back_forward_list_get_nth_item(this : Void*, index : Int32) : Pointer(Void)
  fun webkit_back_forward_list_get_type : UInt64
  fun webkit_back_forward_list_item_get_original_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_back_forward_list_item_get_title(this : Void*) : Pointer(LibC::Char)
  fun webkit_back_forward_list_item_get_type : UInt64
  fun webkit_back_forward_list_item_get_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_cache_model_get_type : UInt64
  fun webkit_clipboard_permission_request_get_type : UInt64
  fun webkit_color_chooser_request_cancel(this : Void*) : Void
  fun webkit_color_chooser_request_finish(this : Void*) : Void
  fun webkit_color_chooser_request_get_element_rectangle(this : Void*, rect : Pointer(Void)) : Void
  fun webkit_color_chooser_request_get_rgba(this : Void*, rgba : Pointer(Void)) : Void
  fun webkit_color_chooser_request_get_type : UInt64
  fun webkit_color_chooser_request_set_rgba(this : Void*, rgba : Pointer(Void)) : Void
  fun webkit_context_menu_action_get_type : UInt64
  fun webkit_context_menu_append(this : Void*, item : Pointer(Void)) : Void
  fun webkit_context_menu_first(this : Void*) : Pointer(Void)
  fun webkit_context_menu_get_event(this : Void*) : Pointer(Void)
  fun webkit_context_menu_get_item_at_position(this : Void*, position : UInt32) : Pointer(Void)
  fun webkit_context_menu_get_items(this : Void*) : Pointer(LibGLib::List)
  fun webkit_context_menu_get_n_items(this : Void*) : UInt32
  fun webkit_context_menu_get_type : UInt64
  fun webkit_context_menu_get_user_data(this : Void*) : Pointer(Void)
  fun webkit_context_menu_insert(this : Void*, item : Pointer(Void), position : Int32) : Void
  fun webkit_context_menu_item_get_gaction(this : Void*) : Pointer(Void)
  fun webkit_context_menu_item_get_stock_action(this : Void*) : UInt32
  fun webkit_context_menu_item_get_submenu(this : Void*) : Pointer(Void)
  fun webkit_context_menu_item_get_type : UInt64
  fun webkit_context_menu_item_is_separator(this : Void*) : LibC::Int
  fun webkit_context_menu_item_new_from_gaction(action : Pointer(Void), label : Pointer(LibC::Char), target : Pointer(Void)) : Pointer(Void)
  fun webkit_context_menu_item_new_from_stock_action(action : UInt32) : Pointer(Void)
  fun webkit_context_menu_item_new_from_stock_action_with_label(action : UInt32, label : Pointer(LibC::Char)) : Pointer(Void)
  fun webkit_context_menu_item_new_separator : Pointer(Void)
  fun webkit_context_menu_item_new_with_submenu(label : Pointer(LibC::Char), submenu : Pointer(Void)) : Pointer(Void)
  fun webkit_context_menu_item_set_submenu(this : Void*, submenu : Pointer(Void)) : Void
  fun webkit_context_menu_last(this : Void*) : Pointer(Void)
  fun webkit_context_menu_move_item(this : Void*, item : Pointer(Void), position : Int32) : Void
  fun webkit_context_menu_new : Pointer(Void)
  fun webkit_context_menu_new_with_items(items : Pointer(LibGLib::List)) : Pointer(Void)
  fun webkit_context_menu_prepend(this : Void*, item : Pointer(Void)) : Void
  fun webkit_context_menu_remove(this : Void*, item : Pointer(Void)) : Void
  fun webkit_context_menu_remove_all(this : Void*) : Void
  fun webkit_context_menu_set_user_data(this : Void*, user_data : Pointer(Void)) : Void
  fun webkit_cookie_accept_policy_get_type : UInt64
  fun webkit_cookie_manager_add_cookie(this : Void*, cookie : Pointer(Void), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_cookie_manager_add_cookie_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_cookie_manager_delete_cookie(this : Void*, cookie : Pointer(Void), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_cookie_manager_delete_cookie_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_cookie_manager_get_accept_policy(this : Void*, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_cookie_manager_get_accept_policy_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : UInt32
  fun webkit_cookie_manager_get_all_cookies(this : Void*, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_cookie_manager_get_all_cookies_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(LibGLib::List)
  fun webkit_cookie_manager_get_cookies(this : Void*, uri : Pointer(LibC::Char), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_cookie_manager_get_cookies_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(LibGLib::List)
  fun webkit_cookie_manager_get_type : UInt64
  fun webkit_cookie_manager_replace_cookies(this : Void*, cookies : Pointer(LibGLib::List), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_cookie_manager_replace_cookies_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_cookie_manager_set_accept_policy(this : Void*, policy : UInt32) : Void
  fun webkit_cookie_manager_set_persistent_storage(this : Void*, filename : Pointer(LibC::Char), storage : UInt32) : Void
  fun webkit_cookie_persistent_storage_get_type : UInt64
  fun webkit_credential_copy(this : Void*) : Pointer(Void)
  fun webkit_credential_free(this : Void*) : Void
  fun webkit_credential_get_certificate(this : Void*) : Pointer(Void)
  fun webkit_credential_get_password(this : Void*) : Pointer(LibC::Char)
  fun webkit_credential_get_persistence(this : Void*) : UInt32
  fun webkit_credential_get_type : UInt64
  fun webkit_credential_get_username(this : Void*) : Pointer(LibC::Char)
  fun webkit_credential_has_password(this : Void*) : LibC::Int
  fun webkit_credential_new(username : Pointer(LibC::Char), password : Pointer(LibC::Char), persistence : UInt32) : Pointer(Void)
  fun webkit_credential_new_for_certificate(certificate : Pointer(Void), persistence : UInt32) : Pointer(Void)
  fun webkit_credential_new_for_certificate_pin(pin : Pointer(LibC::Char), persistence : UInt32) : Pointer(Void)
  fun webkit_credential_persistence_get_type : UInt64
  fun webkit_device_info_permission_request_get_type : UInt64
  fun webkit_download_cancel(this : Void*) : Void
  fun webkit_download_error_get_type : UInt64
  fun webkit_download_error_quark : UInt32
  fun webkit_download_get_allow_overwrite(this : Void*) : LibC::Int
  fun webkit_download_get_destination(this : Void*) : Pointer(LibC::Char)
  fun webkit_download_get_elapsed_time(this : Void*) : Float64
  fun webkit_download_get_estimated_progress(this : Void*) : Float64
  fun webkit_download_get_received_data_length(this : Void*) : UInt64
  fun webkit_download_get_request(this : Void*) : Pointer(Void)
  fun webkit_download_get_response(this : Void*) : Pointer(Void)
  fun webkit_download_get_type : UInt64
  fun webkit_download_get_web_view(this : Void*) : Pointer(Void)
  fun webkit_download_set_allow_overwrite(this : Void*, allowed : LibC::Int) : Void
  fun webkit_download_set_destination(this : Void*, destination : Pointer(LibC::Char)) : Void
  fun webkit_editor_state_get_type : UInt64
  fun webkit_editor_state_get_typing_attributes(this : Void*) : UInt32
  fun webkit_editor_state_is_copy_available(this : Void*) : LibC::Int
  fun webkit_editor_state_is_cut_available(this : Void*) : LibC::Int
  fun webkit_editor_state_is_paste_available(this : Void*) : LibC::Int
  fun webkit_editor_state_is_redo_available(this : Void*) : LibC::Int
  fun webkit_editor_state_is_undo_available(this : Void*) : LibC::Int
  fun webkit_editor_typing_attributes_get_type : UInt64
  fun webkit_favicon_database_clear(this : Void*) : Void
  fun webkit_favicon_database_error_get_type : UInt64
  fun webkit_favicon_database_error_quark : UInt32
  fun webkit_favicon_database_get_favicon(this : Void*, page_uri : Pointer(LibC::Char), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_favicon_database_get_favicon_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_favicon_database_get_favicon_uri(this : Void*, page_uri : Pointer(LibC::Char)) : Pointer(LibC::Char)
  fun webkit_favicon_database_get_type : UInt64
  fun webkit_feature_get_category(this : Void*) : Pointer(LibC::Char)
  fun webkit_feature_get_default_value(this : Void*) : LibC::Int
  fun webkit_feature_get_details(this : Void*) : Pointer(LibC::Char)
  fun webkit_feature_get_identifier(this : Void*) : Pointer(LibC::Char)
  fun webkit_feature_get_name(this : Void*) : Pointer(LibC::Char)
  fun webkit_feature_get_status(this : Void*) : UInt32
  fun webkit_feature_get_type : UInt64
  fun webkit_feature_list_get(this : Void*, index : UInt64) : Pointer(Void)
  fun webkit_feature_list_get_length(this : Void*) : UInt64
  fun webkit_feature_list_get_type : UInt64
  fun webkit_feature_list_ref(this : Void*) : Pointer(Void)
  fun webkit_feature_list_unref(this : Void*) : Void
  fun webkit_feature_ref(this : Void*) : Pointer(Void)
  fun webkit_feature_status_get_type : UInt64
  fun webkit_feature_unref(this : Void*) : Void
  fun webkit_file_chooser_request_cancel(this : Void*) : Void
  fun webkit_file_chooser_request_get_mime_types(this : Void*) : Pointer(Pointer(LibC::Char))
  fun webkit_file_chooser_request_get_mime_types_filter(this : Void*) : Pointer(Void)
  fun webkit_file_chooser_request_get_select_multiple(this : Void*) : LibC::Int
  fun webkit_file_chooser_request_get_selected_files(this : Void*) : Pointer(Pointer(LibC::Char))
  fun webkit_file_chooser_request_get_type : UInt64
  fun webkit_file_chooser_request_select_files(this : Void*, files : Pointer(Pointer(LibC::Char))) : Void
  fun webkit_find_controller_count_matches(this : Void*, search_text : Pointer(LibC::Char), find_options : UInt32, max_match_count : UInt32) : Void
  fun webkit_find_controller_get_max_match_count(this : Void*) : UInt32
  fun webkit_find_controller_get_options(this : Void*) : UInt32
  fun webkit_find_controller_get_search_text(this : Void*) : Pointer(LibC::Char)
  fun webkit_find_controller_get_type : UInt64
  fun webkit_find_controller_get_web_view(this : Void*) : Pointer(Void)
  fun webkit_find_controller_search(this : Void*, search_text : Pointer(LibC::Char), find_options : UInt32, max_match_count : UInt32) : Void
  fun webkit_find_controller_search_finish(this : Void*) : Void
  fun webkit_find_controller_search_next(this : Void*) : Void
  fun webkit_find_controller_search_previous(this : Void*) : Void
  fun webkit_find_options_get_type : UInt64
  fun webkit_form_submission_request_get_type : UInt64
  fun webkit_form_submission_request_list_text_fields(this : Void*, field_names : Pointer(Pointer(Pointer(LibC::Char))), field_values : Pointer(Pointer(Pointer(LibC::Char)))) : LibC::Int
  fun webkit_form_submission_request_submit(this : Void*) : Void
  fun webkit_geolocation_manager_failed(this : Void*, error_message : Pointer(LibC::Char)) : Void
  fun webkit_geolocation_manager_get_enable_high_accuracy(this : Void*) : LibC::Int
  fun webkit_geolocation_manager_get_type : UInt64
  fun webkit_geolocation_manager_update_position(this : Void*, position : Pointer(Void)) : Void
  fun webkit_geolocation_permission_request_get_type : UInt64
  fun webkit_geolocation_position_copy(this : Void*) : Pointer(Void)
  fun webkit_geolocation_position_free(this : Void*) : Void
  fun webkit_geolocation_position_get_type : UInt64
  fun webkit_geolocation_position_new(latitude : Float64, longitude : Float64, accuracy : Float64) : Pointer(Void)
  fun webkit_geolocation_position_set_altitude(this : Void*, altitude : Float64) : Void
  fun webkit_geolocation_position_set_altitude_accuracy(this : Void*, altitude_accuracy : Float64) : Void
  fun webkit_geolocation_position_set_heading(this : Void*, heading : Float64) : Void
  fun webkit_geolocation_position_set_speed(this : Void*, speed : Float64) : Void
  fun webkit_geolocation_position_set_timestamp(this : Void*, timestamp : UInt64) : Void
  fun webkit_get_major_version : UInt32
  fun webkit_get_micro_version : UInt32
  fun webkit_get_minor_version : UInt32
  fun webkit_hardware_acceleration_policy_get_type : UInt64
  fun webkit_hit_test_result_context_get_type : UInt64
  fun webkit_hit_test_result_context_is_editable(this : Void*) : LibC::Int
  fun webkit_hit_test_result_context_is_image(this : Void*) : LibC::Int
  fun webkit_hit_test_result_context_is_link(this : Void*) : LibC::Int
  fun webkit_hit_test_result_context_is_media(this : Void*) : LibC::Int
  fun webkit_hit_test_result_context_is_scrollbar(this : Void*) : LibC::Int
  fun webkit_hit_test_result_context_is_selection(this : Void*) : LibC::Int
  fun webkit_hit_test_result_get_context(this : Void*) : UInt32
  fun webkit_hit_test_result_get_image_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_hit_test_result_get_link_label(this : Void*) : Pointer(LibC::Char)
  fun webkit_hit_test_result_get_link_title(this : Void*) : Pointer(LibC::Char)
  fun webkit_hit_test_result_get_link_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_hit_test_result_get_media_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_hit_test_result_get_type : UInt64
  fun webkit_input_hints_get_type : UInt64
  fun webkit_input_method_context_filter_key_event(this : Void*, key_event : Pointer(Void)) : LibC::Int
  fun webkit_input_method_context_get_input_hints(this : Void*) : UInt32
  fun webkit_input_method_context_get_input_purpose(this : Void*) : UInt32
  fun webkit_input_method_context_get_preedit(this : Void*, text : Pointer(Pointer(LibC::Char)), underlines : Pointer(Pointer(LibGLib::List)), cursor_offset : Pointer(UInt32)) : Void
  fun webkit_input_method_context_get_type : UInt64
  fun webkit_input_method_context_notify_cursor_area(this : Void*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun webkit_input_method_context_notify_focus_in(this : Void*) : Void
  fun webkit_input_method_context_notify_focus_out(this : Void*) : Void
  fun webkit_input_method_context_notify_surrounding(this : Void*, text : Pointer(LibC::Char), length : Int32, cursor_index : UInt32, selection_index : UInt32) : Void
  fun webkit_input_method_context_reset(this : Void*) : Void
  fun webkit_input_method_context_set_enable_preedit(this : Void*, enabled : LibC::Int) : Void
  fun webkit_input_method_context_set_input_hints(this : Void*, hints : UInt32) : Void
  fun webkit_input_method_context_set_input_purpose(this : Void*, purpose : UInt32) : Void
  fun webkit_input_method_underline_copy(this : Void*) : Pointer(Void)
  fun webkit_input_method_underline_free(this : Void*) : Void
  fun webkit_input_method_underline_get_type : UInt64
  fun webkit_input_method_underline_new(start_offset : UInt32, end_offset : UInt32) : Pointer(Void)
  fun webkit_input_method_underline_set_color(this : Void*, rgba : Pointer(Void)) : Void
  fun webkit_input_purpose_get_type : UInt64
  fun webkit_insecure_content_event_get_type : UInt64
  fun webkit_itp_first_party_get_domain(this : Void*) : Pointer(LibC::Char)
  fun webkit_itp_first_party_get_last_update_time(this : Void*) : Pointer(Void)
  fun webkit_itp_first_party_get_type : UInt64
  fun webkit_itp_first_party_get_website_data_access_allowed(this : Void*) : LibC::Int
  fun webkit_itp_first_party_ref(this : Void*) : Pointer(Void)
  fun webkit_itp_first_party_unref(this : Void*) : Void
  fun webkit_itp_third_party_get_domain(this : Void*) : Pointer(LibC::Char)
  fun webkit_itp_third_party_get_first_parties(this : Void*) : Pointer(LibGLib::List)
  fun webkit_itp_third_party_get_type : UInt64
  fun webkit_itp_third_party_ref(this : Void*) : Pointer(Void)
  fun webkit_itp_third_party_unref(this : Void*) : Void
  fun webkit_javascript_error_get_type : UInt64
  fun webkit_javascript_error_quark : UInt32
  fun webkit_load_event_get_type : UInt64
  fun webkit_media_capture_state_get_type : UInt64
  fun webkit_media_error_get_type : UInt64
  fun webkit_media_error_quark : UInt32
  fun webkit_media_key_system_permission_get_name(request : Pointer(Void)) : Pointer(LibC::Char)
  fun webkit_media_key_system_permission_request_get_type : UInt64
  fun webkit_memory_pressure_settings_copy(this : Void*) : Pointer(Void)
  fun webkit_memory_pressure_settings_free(this : Void*) : Void
  fun webkit_memory_pressure_settings_get_conservative_threshold(this : Void*) : Float64
  fun webkit_memory_pressure_settings_get_kill_threshold(this : Void*) : Float64
  fun webkit_memory_pressure_settings_get_memory_limit(this : Void*) : UInt32
  fun webkit_memory_pressure_settings_get_poll_interval(this : Void*) : Float64
  fun webkit_memory_pressure_settings_get_strict_threshold(this : Void*) : Float64
  fun webkit_memory_pressure_settings_get_type : UInt64
  fun webkit_memory_pressure_settings_new : Pointer(Void)
  fun webkit_memory_pressure_settings_set_conservative_threshold(this : Void*, value : Float64) : Void
  fun webkit_memory_pressure_settings_set_kill_threshold(this : Void*, value : Float64) : Void
  fun webkit_memory_pressure_settings_set_memory_limit(this : Void*, memory_limit : UInt32) : Void
  fun webkit_memory_pressure_settings_set_poll_interval(this : Void*, value : Float64) : Void
  fun webkit_memory_pressure_settings_set_strict_threshold(this : Void*, value : Float64) : Void
  fun webkit_navigation_action_copy(this : Void*) : Pointer(Void)
  fun webkit_navigation_action_free(this : Void*) : Void
  fun webkit_navigation_action_get_frame_name(this : Void*) : Pointer(LibC::Char)
  fun webkit_navigation_action_get_modifiers(this : Void*) : UInt32
  fun webkit_navigation_action_get_mouse_button(this : Void*) : UInt32
  fun webkit_navigation_action_get_navigation_type(this : Void*) : UInt32
  fun webkit_navigation_action_get_request(this : Void*) : Pointer(Void)
  fun webkit_navigation_action_get_type : UInt64
  fun webkit_navigation_action_is_redirect(this : Void*) : LibC::Int
  fun webkit_navigation_action_is_user_gesture(this : Void*) : LibC::Int
  fun webkit_navigation_policy_decision_get_navigation_action(this : Void*) : Pointer(Void)
  fun webkit_navigation_policy_decision_get_type : UInt64
  fun webkit_navigation_type_get_type : UInt64
  fun webkit_network_error_get_type : UInt64
  fun webkit_network_error_quark : UInt32
  fun webkit_network_proxy_mode_get_type : UInt64
  fun webkit_network_proxy_settings_add_proxy_for_scheme(this : Void*, scheme : Pointer(LibC::Char), proxy_uri : Pointer(LibC::Char)) : Void
  fun webkit_network_proxy_settings_copy(this : Void*) : Pointer(Void)
  fun webkit_network_proxy_settings_free(this : Void*) : Void
  fun webkit_network_proxy_settings_get_type : UInt64
  fun webkit_network_proxy_settings_new(default_proxy_uri : Pointer(LibC::Char), ignore_hosts : Pointer(Pointer(LibC::Char))) : Pointer(Void)
  fun webkit_network_session_allow_tls_certificate_for_host(this : Void*, certificate : Pointer(Void), host : Pointer(LibC::Char)) : Void
  fun webkit_network_session_download_uri(this : Void*, uri : Pointer(LibC::Char)) : Pointer(Void)
  fun webkit_network_session_get_cookie_manager(this : Void*) : Pointer(Void)
  fun webkit_network_session_get_default : Pointer(Void)
  fun webkit_network_session_get_itp_enabled(this : Void*) : LibC::Int
  fun webkit_network_session_get_itp_summary(this : Void*, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_network_session_get_itp_summary_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(LibGLib::List)
  fun webkit_network_session_get_persistent_credential_storage_enabled(this : Void*) : LibC::Int
  fun webkit_network_session_get_tls_errors_policy(this : Void*) : UInt32
  fun webkit_network_session_get_type : UInt64
  fun webkit_network_session_get_website_data_manager(this : Void*) : Pointer(Void)
  fun webkit_network_session_is_ephemeral(this : Void*) : LibC::Int
  fun webkit_network_session_new(data_directory : Pointer(LibC::Char), cache_directory : Pointer(LibC::Char)) : Pointer(Void)
  fun webkit_network_session_new_ephemeral : Pointer(Void)
  fun webkit_network_session_prefetch_dns(this : Void*, hostname : Pointer(LibC::Char)) : Void
  fun webkit_network_session_set_itp_enabled(this : Void*, enabled : LibC::Int) : Void
  fun webkit_network_session_set_memory_pressure_settings(settings : Pointer(Void)) : Void
  fun webkit_network_session_set_persistent_credential_storage_enabled(this : Void*, enabled : LibC::Int) : Void
  fun webkit_network_session_set_proxy_settings(this : Void*, proxy_mode : UInt32, proxy_settings : Pointer(Void)) : Void
  fun webkit_network_session_set_tls_errors_policy(this : Void*, policy : UInt32) : Void
  fun webkit_notification_clicked(this : Void*) : Void
  fun webkit_notification_close(this : Void*) : Void
  fun webkit_notification_get_body(this : Void*) : Pointer(LibC::Char)
  fun webkit_notification_get_id(this : Void*) : UInt64
  fun webkit_notification_get_tag(this : Void*) : Pointer(LibC::Char)
  fun webkit_notification_get_title(this : Void*) : Pointer(LibC::Char)
  fun webkit_notification_get_type : UInt64
  fun webkit_notification_permission_request_get_type : UInt64
  fun webkit_option_menu_activate_item(this : Void*, index : UInt32) : Void
  fun webkit_option_menu_close(this : Void*) : Void
  fun webkit_option_menu_get_event(this : Void*) : Pointer(Void)
  fun webkit_option_menu_get_item(this : Void*, index : UInt32) : Pointer(Void)
  fun webkit_option_menu_get_n_items(this : Void*) : UInt32
  fun webkit_option_menu_get_type : UInt64
  fun webkit_option_menu_item_copy(this : Void*) : Pointer(Void)
  fun webkit_option_menu_item_free(this : Void*) : Void
  fun webkit_option_menu_item_get_label(this : Void*) : Pointer(LibC::Char)
  fun webkit_option_menu_item_get_tooltip(this : Void*) : Pointer(LibC::Char)
  fun webkit_option_menu_item_get_type : UInt64
  fun webkit_option_menu_item_is_enabled(this : Void*) : LibC::Int
  fun webkit_option_menu_item_is_group_child(this : Void*) : LibC::Int
  fun webkit_option_menu_item_is_group_label(this : Void*) : LibC::Int
  fun webkit_option_menu_item_is_selected(this : Void*) : LibC::Int
  fun webkit_option_menu_select_item(this : Void*, index : UInt32) : Void
  fun webkit_permission_request_allow(this : Void*) : Void
  fun webkit_permission_request_deny(this : Void*) : Void
  fun webkit_permission_request_get_type : UInt64
  fun webkit_permission_state_get_type : UInt64
  fun webkit_permission_state_query_finish(this : Void*, state : UInt32) : Void
  fun webkit_permission_state_query_get_name(this : Void*) : Pointer(LibC::Char)
  fun webkit_permission_state_query_get_security_origin(this : Void*) : Pointer(Void)
  fun webkit_permission_state_query_get_type : UInt64
  fun webkit_permission_state_query_ref(this : Void*) : Pointer(Void)
  fun webkit_permission_state_query_unref(this : Void*) : Void
  fun webkit_pointer_lock_permission_request_get_type : UInt64
  fun webkit_policy_decision_download(this : Void*) : Void
  fun webkit_policy_decision_get_type : UInt64
  fun webkit_policy_decision_ignore(this : Void*) : Void
  fun webkit_policy_decision_type_get_type : UInt64
  fun webkit_policy_decision_use(this : Void*) : Void
  fun webkit_policy_decision_use_with_policies(this : Void*, policies : Pointer(Void)) : Void
  fun webkit_policy_error_get_type : UInt64
  fun webkit_policy_error_quark : UInt32
  fun webkit_print_error_get_type : UInt64
  fun webkit_print_error_quark : UInt32
  fun webkit_print_operation_get_page_setup(this : Void*) : Pointer(Void)
  fun webkit_print_operation_get_print_settings(this : Void*) : Pointer(Void)
  fun webkit_print_operation_get_type : UInt64
  fun webkit_print_operation_new(web_view : Pointer(Void)) : Pointer(Void)
  fun webkit_print_operation_print(this : Void*) : Void
  fun webkit_print_operation_response_get_type : UInt64
  fun webkit_print_operation_run_dialog(this : Void*, parent : Pointer(Void)) : UInt32
  fun webkit_print_operation_set_page_setup(this : Void*, page_setup : Pointer(Void)) : Void
  fun webkit_print_operation_set_print_settings(this : Void*, print_settings : Pointer(Void)) : Void
  fun webkit_response_policy_decision_get_request(this : Void*) : Pointer(Void)
  fun webkit_response_policy_decision_get_response(this : Void*) : Pointer(Void)
  fun webkit_response_policy_decision_get_type : UInt64
  fun webkit_response_policy_decision_is_main_frame_main_resource(this : Void*) : LibC::Int
  fun webkit_response_policy_decision_is_mime_type_supported(this : Void*) : LibC::Int
  fun webkit_save_mode_get_type : UInt64
  fun webkit_script_dialog_close(this : Void*) : Void
  fun webkit_script_dialog_confirm_set_confirmed(this : Void*, confirmed : LibC::Int) : Void
  fun webkit_script_dialog_get_dialog_type(this : Void*) : UInt32
  fun webkit_script_dialog_get_message(this : Void*) : Pointer(LibC::Char)
  fun webkit_script_dialog_get_type : UInt64
  fun webkit_script_dialog_prompt_get_default_text(this : Void*) : Pointer(LibC::Char)
  fun webkit_script_dialog_prompt_set_text(this : Void*, text : Pointer(LibC::Char)) : Void
  fun webkit_script_dialog_ref(this : Void*) : Pointer(Void)
  fun webkit_script_dialog_type_get_type : UInt64
  fun webkit_script_dialog_unref(this : Void*) : Void
  fun webkit_script_message_reply_get_type : UInt64
  fun webkit_script_message_reply_ref(this : Void*) : Pointer(Void)
  fun webkit_script_message_reply_return_error_message(this : Void*, error_message : Pointer(LibC::Char)) : Void
  fun webkit_script_message_reply_return_value(this : Void*, reply_value : Pointer(Void)) : Void
  fun webkit_script_message_reply_unref(this : Void*) : Void
  fun webkit_security_manager_get_type : UInt64
  fun webkit_security_manager_register_uri_scheme_as_cors_enabled(this : Void*, scheme : Pointer(LibC::Char)) : Void
  fun webkit_security_manager_register_uri_scheme_as_display_isolated(this : Void*, scheme : Pointer(LibC::Char)) : Void
  fun webkit_security_manager_register_uri_scheme_as_empty_document(this : Void*, scheme : Pointer(LibC::Char)) : Void
  fun webkit_security_manager_register_uri_scheme_as_local(this : Void*, scheme : Pointer(LibC::Char)) : Void
  fun webkit_security_manager_register_uri_scheme_as_no_access(this : Void*, scheme : Pointer(LibC::Char)) : Void
  fun webkit_security_manager_register_uri_scheme_as_secure(this : Void*, scheme : Pointer(LibC::Char)) : Void
  fun webkit_security_manager_uri_scheme_is_cors_enabled(this : Void*, scheme : Pointer(LibC::Char)) : LibC::Int
  fun webkit_security_manager_uri_scheme_is_display_isolated(this : Void*, scheme : Pointer(LibC::Char)) : LibC::Int
  fun webkit_security_manager_uri_scheme_is_empty_document(this : Void*, scheme : Pointer(LibC::Char)) : LibC::Int
  fun webkit_security_manager_uri_scheme_is_local(this : Void*, scheme : Pointer(LibC::Char)) : LibC::Int
  fun webkit_security_manager_uri_scheme_is_no_access(this : Void*, scheme : Pointer(LibC::Char)) : LibC::Int
  fun webkit_security_manager_uri_scheme_is_secure(this : Void*, scheme : Pointer(LibC::Char)) : LibC::Int
  fun webkit_security_origin_get_host(this : Void*) : Pointer(LibC::Char)
  fun webkit_security_origin_get_port(this : Void*) : UInt16
  fun webkit_security_origin_get_protocol(this : Void*) : Pointer(LibC::Char)
  fun webkit_security_origin_get_type : UInt64
  fun webkit_security_origin_new(protocol : Pointer(LibC::Char), host : Pointer(LibC::Char), port : UInt16) : Pointer(Void)
  fun webkit_security_origin_new_for_uri(uri : Pointer(LibC::Char)) : Pointer(Void)
  fun webkit_security_origin_ref(this : Void*) : Pointer(Void)
  fun webkit_security_origin_to_string(this : Void*) : Pointer(LibC::Char)
  fun webkit_security_origin_unref(this : Void*) : Void
  fun webkit_settings_apply_from_key_file(this : Void*, key_file : Pointer(Void), group_name : Pointer(LibC::Char), error : LibGLib::Error**) : LibC::Int
  fun webkit_settings_font_size_to_pixels(points : UInt32) : UInt32
  fun webkit_settings_font_size_to_points(pixels : UInt32) : UInt32
  fun webkit_settings_get_all_features : Pointer(Void)
  fun webkit_settings_get_allow_file_access_from_file_urls(this : Void*) : LibC::Int
  fun webkit_settings_get_allow_modal_dialogs(this : Void*) : LibC::Int
  fun webkit_settings_get_allow_top_navigation_to_data_urls(this : Void*) : LibC::Int
  fun webkit_settings_get_allow_universal_access_from_file_urls(this : Void*) : LibC::Int
  fun webkit_settings_get_auto_load_images(this : Void*) : LibC::Int
  fun webkit_settings_get_cursive_font_family(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_default_charset(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_default_font_family(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_default_font_size(this : Void*) : UInt32
  fun webkit_settings_get_default_monospace_font_size(this : Void*) : UInt32
  fun webkit_settings_get_development_features : Pointer(Void)
  fun webkit_settings_get_disable_web_security(this : Void*) : LibC::Int
  fun webkit_settings_get_draw_compositing_indicators(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_2d_canvas_acceleration(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_back_forward_navigation_gestures(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_caret_browsing(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_developer_extras(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_dns_prefetching(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_encrypted_media(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_fullscreen(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_html5_database(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_html5_local_storage(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_hyperlink_auditing(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_javascript(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_javascript_markup(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_media(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_media_capabilities(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_media_stream(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_mediasource(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_mock_capture_devices(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_offline_web_application_cache(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_page_cache(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_resizable_text_areas(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_site_specific_quirks(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_smooth_scrolling(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_spatial_navigation(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_tabs_to_links(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_webaudio(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_webgl(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_webrtc(this : Void*) : LibC::Int
  fun webkit_settings_get_enable_write_console_messages_to_stdout(this : Void*) : LibC::Int
  fun webkit_settings_get_experimental_features : Pointer(Void)
  fun webkit_settings_get_fantasy_font_family(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_feature_enabled(this : Void*, feature : Pointer(Void)) : LibC::Int
  fun webkit_settings_get_hardware_acceleration_policy(this : Void*) : UInt32
  fun webkit_settings_get_javascript_can_access_clipboard(this : Void*) : LibC::Int
  fun webkit_settings_get_javascript_can_open_windows_automatically(this : Void*) : LibC::Int
  fun webkit_settings_get_load_icons_ignoring_image_load_setting(this : Void*) : LibC::Int
  fun webkit_settings_get_media_content_types_requiring_hardware_support(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_media_playback_allows_inline(this : Void*) : LibC::Int
  fun webkit_settings_get_media_playback_requires_user_gesture(this : Void*) : LibC::Int
  fun webkit_settings_get_minimum_font_size(this : Void*) : UInt32
  fun webkit_settings_get_monospace_font_family(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_pictograph_font_family(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_print_backgrounds(this : Void*) : LibC::Int
  fun webkit_settings_get_sans_serif_font_family(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_serif_font_family(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_type : UInt64
  fun webkit_settings_get_user_agent(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_webrtc_udp_ports_range(this : Void*) : Pointer(LibC::Char)
  fun webkit_settings_get_zoom_text_only(this : Void*) : LibC::Int
  fun webkit_settings_new : Pointer(Void)
  fun webkit_settings_set_allow_file_access_from_file_urls(this : Void*, allowed : LibC::Int) : Void
  fun webkit_settings_set_allow_modal_dialogs(this : Void*, allowed : LibC::Int) : Void
  fun webkit_settings_set_allow_top_navigation_to_data_urls(this : Void*, allowed : LibC::Int) : Void
  fun webkit_settings_set_allow_universal_access_from_file_urls(this : Void*, allowed : LibC::Int) : Void
  fun webkit_settings_set_auto_load_images(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_cursive_font_family(this : Void*, cursive_font_family : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_default_charset(this : Void*, default_charset : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_default_font_family(this : Void*, default_font_family : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_default_font_size(this : Void*, font_size : UInt32) : Void
  fun webkit_settings_set_default_monospace_font_size(this : Void*, font_size : UInt32) : Void
  fun webkit_settings_set_disable_web_security(this : Void*, disabled : LibC::Int) : Void
  fun webkit_settings_set_draw_compositing_indicators(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_2d_canvas_acceleration(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_back_forward_navigation_gestures(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_caret_browsing(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_developer_extras(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_dns_prefetching(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_encrypted_media(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_fullscreen(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_html5_database(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_html5_local_storage(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_hyperlink_auditing(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_javascript(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_javascript_markup(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_media(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_media_capabilities(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_media_stream(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_mediasource(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_mock_capture_devices(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_offline_web_application_cache(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_page_cache(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_resizable_text_areas(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_site_specific_quirks(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_smooth_scrolling(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_spatial_navigation(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_tabs_to_links(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_webaudio(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_webgl(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_webrtc(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_enable_write_console_messages_to_stdout(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_fantasy_font_family(this : Void*, fantasy_font_family : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_feature_enabled(this : Void*, feature : Pointer(Void), enabled : LibC::Int) : Void
  fun webkit_settings_set_hardware_acceleration_policy(this : Void*, policy : UInt32) : Void
  fun webkit_settings_set_javascript_can_access_clipboard(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_javascript_can_open_windows_automatically(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_load_icons_ignoring_image_load_setting(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_media_content_types_requiring_hardware_support(this : Void*, content_types : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_media_playback_allows_inline(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_media_playback_requires_user_gesture(this : Void*, enabled : LibC::Int) : Void
  fun webkit_settings_set_minimum_font_size(this : Void*, font_size : UInt32) : Void
  fun webkit_settings_set_monospace_font_family(this : Void*, monospace_font_family : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_pictograph_font_family(this : Void*, pictograph_font_family : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_print_backgrounds(this : Void*, print_backgrounds : LibC::Int) : Void
  fun webkit_settings_set_sans_serif_font_family(this : Void*, sans_serif_font_family : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_serif_font_family(this : Void*, serif_font_family : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_user_agent(this : Void*, user_agent : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_user_agent_with_application_details(this : Void*, application_name : Pointer(LibC::Char), application_version : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_webrtc_udp_ports_range(this : Void*, udp_port_range : Pointer(LibC::Char)) : Void
  fun webkit_settings_set_zoom_text_only(this : Void*, zoom_text_only : LibC::Int) : Void
  fun webkit_snapshot_error_get_type : UInt64
  fun webkit_snapshot_error_quark : UInt32
  fun webkit_snapshot_options_get_type : UInt64
  fun webkit_snapshot_region_get_type : UInt64
  fun webkit_tls_errors_policy_get_type : UInt64
  fun webkit_uri_for_display(uri : Pointer(LibC::Char)) : Pointer(LibC::Char)
  fun webkit_uri_request_get_http_headers(this : Void*) : Pointer(Void)
  fun webkit_uri_request_get_http_method(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_request_get_type : UInt64
  fun webkit_uri_request_get_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_request_new(uri : Pointer(LibC::Char)) : Pointer(Void)
  fun webkit_uri_request_set_uri(this : Void*, uri : Pointer(LibC::Char)) : Void
  fun webkit_uri_response_get_content_length(this : Void*) : UInt64
  fun webkit_uri_response_get_http_headers(this : Void*) : Pointer(Void)
  fun webkit_uri_response_get_mime_type(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_response_get_status_code(this : Void*) : UInt32
  fun webkit_uri_response_get_suggested_filename(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_response_get_type : UInt64
  fun webkit_uri_response_get_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_scheme_request_finish(this : Void*, stream : Pointer(Void), stream_length : Int64, content_type : Pointer(LibC::Char)) : Void
  fun webkit_uri_scheme_request_finish_error(this : Void*, error : Pointer(LibGLib::Error)) : Void
  fun webkit_uri_scheme_request_finish_with_response(this : Void*, response : Pointer(Void)) : Void
  fun webkit_uri_scheme_request_get_http_body(this : Void*) : Pointer(Void)
  fun webkit_uri_scheme_request_get_http_headers(this : Void*) : Pointer(Void)
  fun webkit_uri_scheme_request_get_http_method(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_scheme_request_get_path(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_scheme_request_get_scheme(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_scheme_request_get_type : UInt64
  fun webkit_uri_scheme_request_get_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_uri_scheme_request_get_web_view(this : Void*) : Pointer(Void)
  fun webkit_uri_scheme_response_get_type : UInt64
  fun webkit_uri_scheme_response_new(input_stream : Pointer(Void), stream_length : Int64) : Pointer(Void)
  fun webkit_uri_scheme_response_set_content_type(this : Void*, content_type : Pointer(LibC::Char)) : Void
  fun webkit_uri_scheme_response_set_http_headers(this : Void*, headers : Pointer(Void)) : Void
  fun webkit_uri_scheme_response_set_status(this : Void*, status_code : UInt32, reason_phrase : Pointer(LibC::Char)) : Void
  fun webkit_user_content_filter_error_get_type : UInt64
  fun webkit_user_content_filter_error_quark : UInt32
  fun webkit_user_content_filter_get_identifier(this : Void*) : Pointer(LibC::Char)
  fun webkit_user_content_filter_get_type : UInt64
  fun webkit_user_content_filter_ref(this : Void*) : Pointer(Void)
  fun webkit_user_content_filter_store_fetch_identifiers(this : Void*, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_user_content_filter_store_fetch_identifiers_finish(this : Void*, result : Pointer(Void)) : Pointer(Pointer(LibC::Char))
  fun webkit_user_content_filter_store_get_path(this : Void*) : Pointer(LibC::Char)
  fun webkit_user_content_filter_store_get_type : UInt64
  fun webkit_user_content_filter_store_load(this : Void*, identifier : Pointer(LibC::Char), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_user_content_filter_store_load_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_user_content_filter_store_new(storage_path : Pointer(LibC::Char)) : Pointer(Void)
  fun webkit_user_content_filter_store_remove(this : Void*, identifier : Pointer(LibC::Char), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_user_content_filter_store_remove_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_user_content_filter_store_save(this : Void*, identifier : Pointer(LibC::Char), source : Pointer(Void), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_user_content_filter_store_save_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_user_content_filter_store_save_from_file(this : Void*, identifier : Pointer(LibC::Char), file : Pointer(Void), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_user_content_filter_store_save_from_file_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_user_content_filter_unref(this : Void*) : Void
  fun webkit_user_content_injected_frames_get_type : UInt64
  fun webkit_user_content_manager_add_filter(this : Void*, filter : Pointer(Void)) : Void
  fun webkit_user_content_manager_add_script(this : Void*, script : Pointer(Void)) : Void
  fun webkit_user_content_manager_add_style_sheet(this : Void*, stylesheet : Pointer(Void)) : Void
  fun webkit_user_content_manager_get_type : UInt64
  fun webkit_user_content_manager_new : Pointer(Void)
  fun webkit_user_content_manager_register_script_message_handler(this : Void*, name : Pointer(LibC::Char), world_name : Pointer(LibC::Char)) : LibC::Int
  fun webkit_user_content_manager_register_script_message_handler_with_reply(this : Void*, name : Pointer(LibC::Char), world_name : Pointer(LibC::Char)) : LibC::Int
  fun webkit_user_content_manager_remove_all_filters(this : Void*) : Void
  fun webkit_user_content_manager_remove_all_scripts(this : Void*) : Void
  fun webkit_user_content_manager_remove_all_style_sheets(this : Void*) : Void
  fun webkit_user_content_manager_remove_filter(this : Void*, filter : Pointer(Void)) : Void
  fun webkit_user_content_manager_remove_filter_by_id(this : Void*, filter_id : Pointer(LibC::Char)) : Void
  fun webkit_user_content_manager_remove_script(this : Void*, script : Pointer(Void)) : Void
  fun webkit_user_content_manager_remove_style_sheet(this : Void*, stylesheet : Pointer(Void)) : Void
  fun webkit_user_content_manager_unregister_script_message_handler(this : Void*, name : Pointer(LibC::Char), world_name : Pointer(LibC::Char)) : Void
  fun webkit_user_media_permission_is_for_audio_device(request : Pointer(Void)) : LibC::Int
  fun webkit_user_media_permission_is_for_display_device(request : Pointer(Void)) : LibC::Int
  fun webkit_user_media_permission_is_for_video_device(request : Pointer(Void)) : LibC::Int
  fun webkit_user_media_permission_request_get_type : UInt64
  fun webkit_user_message_error_get_type : UInt64
  fun webkit_user_message_error_quark : UInt32
  fun webkit_user_message_get_fd_list(this : Void*) : Pointer(Void)
  fun webkit_user_message_get_name(this : Void*) : Pointer(LibC::Char)
  fun webkit_user_message_get_parameters(this : Void*) : Pointer(Void)
  fun webkit_user_message_get_type : UInt64
  fun webkit_user_message_new(name : Pointer(LibC::Char), parameters : Pointer(Void)) : Pointer(Void)
  fun webkit_user_message_new_with_fd_list(name : Pointer(LibC::Char), parameters : Pointer(Void), fd_list : Pointer(Void)) : Pointer(Void)
  fun webkit_user_message_send_reply(this : Void*, reply : Pointer(Void)) : Void
  fun webkit_user_script_get_type : UInt64
  fun webkit_user_script_injection_time_get_type : UInt64
  fun webkit_user_script_new(source : Pointer(LibC::Char), injected_frames : UInt32, injection_time : UInt32, allow_list : Pointer(Pointer(LibC::Char)), block_list : Pointer(Pointer(LibC::Char))) : Pointer(Void)
  fun webkit_user_script_new_for_world(source : Pointer(LibC::Char), injected_frames : UInt32, injection_time : UInt32, world_name : Pointer(LibC::Char), allow_list : Pointer(Pointer(LibC::Char)), block_list : Pointer(Pointer(LibC::Char))) : Pointer(Void)
  fun webkit_user_script_ref(this : Void*) : Pointer(Void)
  fun webkit_user_script_unref(this : Void*) : Void
  fun webkit_user_style_level_get_type : UInt64
  fun webkit_user_style_sheet_get_type : UInt64
  fun webkit_user_style_sheet_new(source : Pointer(LibC::Char), injected_frames : UInt32, level : UInt32, allow_list : Pointer(Pointer(LibC::Char)), block_list : Pointer(Pointer(LibC::Char))) : Pointer(Void)
  fun webkit_user_style_sheet_new_for_world(source : Pointer(LibC::Char), injected_frames : UInt32, level : UInt32, world_name : Pointer(LibC::Char), allow_list : Pointer(Pointer(LibC::Char)), block_list : Pointer(Pointer(LibC::Char))) : Pointer(Void)
  fun webkit_user_style_sheet_ref(this : Void*) : Pointer(Void)
  fun webkit_user_style_sheet_unref(this : Void*) : Void
  fun webkit_web_context_add_path_to_sandbox(this : Void*, path : Pointer(LibC::Char), read_only : LibC::Int) : Void
  fun webkit_web_context_get_cache_model(this : Void*) : UInt32
  fun webkit_web_context_get_default : Pointer(Void)
  fun webkit_web_context_get_geolocation_manager(this : Void*) : Pointer(Void)
  fun webkit_web_context_get_network_session_for_automation(this : Void*) : Pointer(Void)
  fun webkit_web_context_get_security_manager(this : Void*) : Pointer(Void)
  fun webkit_web_context_get_spell_checking_enabled(this : Void*) : LibC::Int
  fun webkit_web_context_get_spell_checking_languages(this : Void*) : Pointer(Pointer(LibC::Char))
  fun webkit_web_context_get_time_zone_override(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_context_get_type : UInt64
  fun webkit_web_context_initialize_notification_permissions(this : Void*, allowed_origins : Pointer(LibGLib::List), disallowed_origins : Pointer(LibGLib::List)) : Void
  fun webkit_web_context_is_automation_allowed(this : Void*) : LibC::Int
  fun webkit_web_context_new : Pointer(Void)
  fun webkit_web_context_register_uri_scheme(this : Void*, scheme : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), user_data_destroy_func : Void*) : Void
  fun webkit_web_context_send_message_to_all_extensions(this : Void*, message : Pointer(Void)) : Void
  fun webkit_web_context_set_automation_allowed(this : Void*, allowed : LibC::Int) : Void
  fun webkit_web_context_set_cache_model(this : Void*, cache_model : UInt32) : Void
  fun webkit_web_context_set_preferred_languages(this : Void*, languages : Pointer(Pointer(LibC::Char))) : Void
  fun webkit_web_context_set_spell_checking_enabled(this : Void*, enabled : LibC::Int) : Void
  fun webkit_web_context_set_spell_checking_languages(this : Void*, languages : Pointer(Pointer(LibC::Char))) : Void
  fun webkit_web_context_set_web_process_extensions_directory(this : Void*, directory : Pointer(LibC::Char)) : Void
  fun webkit_web_context_set_web_process_extensions_initialization_user_data(this : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_extension_match_pattern_error_get_type : UInt64
  fun webkit_web_extension_match_pattern_error_quark : UInt32
  fun webkit_web_extension_match_pattern_get_host(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_extension_match_pattern_get_matches_all_hosts(this : Void*) : LibC::Int
  fun webkit_web_extension_match_pattern_get_matches_all_urls(this : Void*) : LibC::Int
  fun webkit_web_extension_match_pattern_get_path(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_extension_match_pattern_get_scheme(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_extension_match_pattern_get_string(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_extension_match_pattern_get_type : UInt64
  fun webkit_web_extension_match_pattern_matches_pattern(this : Void*, pattern : Pointer(Void), options : UInt32) : LibC::Int
  fun webkit_web_extension_match_pattern_matches_url(this : Void*, url : Pointer(LibC::Char), options : UInt32) : LibC::Int
  fun webkit_web_extension_match_pattern_new_all_hosts_and_schemes : Pointer(Void)
  fun webkit_web_extension_match_pattern_new_all_urls : Pointer(Void)
  fun webkit_web_extension_match_pattern_new_with_scheme(scheme : Pointer(LibC::Char), host : Pointer(LibC::Char), path : Pointer(LibC::Char), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_web_extension_match_pattern_new_with_string(string : Pointer(LibC::Char), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_web_extension_match_pattern_options_get_type : UInt64
  fun webkit_web_extension_match_pattern_ref(this : Void*) : Pointer(Void)
  fun webkit_web_extension_match_pattern_register_custom_URL_scheme(urlScheme : Pointer(LibC::Char)) : Void
  fun webkit_web_extension_match_pattern_register_custom_URL_scheme(urlScheme : Pointer(LibC::Char)) : Void
  fun webkit_web_extension_match_pattern_unref(this : Void*) : Void
  fun webkit_web_extension_mode_get_type : UInt64
  fun webkit_web_inspector_attach(this : Void*) : Void
  fun webkit_web_inspector_close(this : Void*) : Void
  fun webkit_web_inspector_detach(this : Void*) : Void
  fun webkit_web_inspector_get_attached_height(this : Void*) : UInt32
  fun webkit_web_inspector_get_can_attach(this : Void*) : LibC::Int
  fun webkit_web_inspector_get_inspected_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_inspector_get_type : UInt64
  fun webkit_web_inspector_get_web_view(this : Void*) : Pointer(Void)
  fun webkit_web_inspector_is_attached(this : Void*) : LibC::Int
  fun webkit_web_inspector_show(this : Void*) : Void
  fun webkit_web_process_termination_reason_get_type : UInt64
  fun webkit_web_resource_get_data(this : Void*, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_resource_get_data_finish(this : Void*, result : Pointer(Void), length : Pointer(UInt64), error : LibGLib::Error**) : Pointer(UInt8)
  fun webkit_web_resource_get_response(this : Void*) : Pointer(Void)
  fun webkit_web_resource_get_type : UInt64
  fun webkit_web_resource_get_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_view_base_get_type : UInt64
  fun webkit_web_view_call_async_javascript_function(this : Void*, body : Pointer(LibC::Char), length : Int64, arguments : Pointer(Void), world_name : Pointer(LibC::Char), source_uri : Pointer(LibC::Char), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_view_call_async_javascript_function_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_web_view_can_execute_editing_command(this : Void*, command : Pointer(LibC::Char), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_view_can_execute_editing_command_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_web_view_can_go_back(this : Void*) : LibC::Int
  fun webkit_web_view_can_go_forward(this : Void*) : LibC::Int
  fun webkit_web_view_can_show_mime_type(this : Void*, mime_type : Pointer(LibC::Char)) : LibC::Int
  fun webkit_web_view_download_uri(this : Void*, uri : Pointer(LibC::Char)) : Pointer(Void)
  fun webkit_web_view_evaluate_javascript(this : Void*, script : Pointer(LibC::Char), length : Int64, world_name : Pointer(LibC::Char), source_uri : Pointer(LibC::Char), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_view_evaluate_javascript_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_web_view_execute_editing_command(this : Void*, command : Pointer(LibC::Char)) : Void
  fun webkit_web_view_execute_editing_command_with_argument(this : Void*, command : Pointer(LibC::Char), argument : Pointer(LibC::Char)) : Void
  fun webkit_web_view_get_automation_presentation_type(this : Void*) : UInt32
  fun webkit_web_view_get_back_forward_list(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_background_color(this : Void*, rgba : Pointer(Void)) : Void
  fun webkit_web_view_get_camera_capture_state(this : Void*) : UInt32
  fun webkit_web_view_get_context(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_custom_charset(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_view_get_default_content_security_policy(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_view_get_display_capture_state(this : Void*) : UInt32
  fun webkit_web_view_get_editor_state(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_estimated_load_progress(this : Void*) : Float64
  fun webkit_web_view_get_favicon(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_find_controller(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_input_method_context(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_inspector(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_is_muted(this : Void*) : LibC::Int
  fun webkit_web_view_get_is_web_process_responsive(this : Void*) : LibC::Int
  fun webkit_web_view_get_main_resource(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_microphone_capture_state(this : Void*) : UInt32
  fun webkit_web_view_get_network_session(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_page_id(this : Void*) : UInt64
  fun webkit_web_view_get_session_state(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_settings(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_snapshot(this : Void*, region : UInt32, options : UInt32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_view_get_snapshot_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_web_view_get_title(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_view_get_tls_info(this : Void*, certificate : Pointer(Pointer(Void)), errors : Pointer(UInt32)) : LibC::Int
  fun webkit_web_view_get_type : UInt64
  fun webkit_web_view_get_uri(this : Void*) : Pointer(LibC::Char)
  fun webkit_web_view_get_user_content_manager(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_web_extension_mode(this : Void*) : UInt32
  fun webkit_web_view_get_website_policies(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_window_properties(this : Void*) : Pointer(Void)
  fun webkit_web_view_get_zoom_level(this : Void*) : Float64
  fun webkit_web_view_go_back(this : Void*) : Void
  fun webkit_web_view_go_forward(this : Void*) : Void
  fun webkit_web_view_go_to_back_forward_list_item(this : Void*, list_item : Pointer(Void)) : Void
  fun webkit_web_view_is_controlled_by_automation(this : Void*) : LibC::Int
  fun webkit_web_view_is_editable(this : Void*) : LibC::Int
  fun webkit_web_view_is_loading(this : Void*) : LibC::Int
  fun webkit_web_view_is_playing_audio(this : Void*) : LibC::Int
  fun webkit_web_view_load_alternate_html(this : Void*, content : Pointer(LibC::Char), content_uri : Pointer(LibC::Char), base_uri : Pointer(LibC::Char)) : Void
  fun webkit_web_view_load_bytes(this : Void*, bytes : Pointer(Void), mime_type : Pointer(LibC::Char), encoding : Pointer(LibC::Char), base_uri : Pointer(LibC::Char)) : Void
  fun webkit_web_view_load_html(this : Void*, content : Pointer(LibC::Char), base_uri : Pointer(LibC::Char)) : Void
  fun webkit_web_view_load_plain_text(this : Void*, plain_text : Pointer(LibC::Char)) : Void
  fun webkit_web_view_load_request(this : Void*, request : Pointer(Void)) : Void
  fun webkit_web_view_load_uri(this : Void*, uri : Pointer(LibC::Char)) : Void
  fun webkit_web_view_new : Pointer(Void)
  fun webkit_web_view_reload(this : Void*) : Void
  fun webkit_web_view_reload_bypass_cache(this : Void*) : Void
  fun webkit_web_view_restore_session_state(this : Void*, state : Pointer(Void)) : Void
  fun webkit_web_view_save(this : Void*, save_mode : UInt32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_view_save_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_web_view_save_to_file(this : Void*, file : Pointer(Void), save_mode : UInt32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_view_save_to_file_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_web_view_send_message_to_page(this : Void*, message : Pointer(Void), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_web_view_send_message_to_page_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun webkit_web_view_session_state_get_type : UInt64
  fun webkit_web_view_session_state_new(data : Pointer(Void)) : Pointer(Void)
  fun webkit_web_view_session_state_ref(this : Void*) : Pointer(Void)
  fun webkit_web_view_session_state_serialize(this : Void*) : Pointer(Void)
  fun webkit_web_view_session_state_unref(this : Void*) : Void
  fun webkit_web_view_set_background_color(this : Void*, rgba : Pointer(Void)) : Void
  fun webkit_web_view_set_camera_capture_state(this : Void*, state : UInt32) : Void
  fun webkit_web_view_set_cors_allowlist(this : Void*, allowlist : Pointer(Pointer(LibC::Char))) : Void
  fun webkit_web_view_set_custom_charset(this : Void*, charset : Pointer(LibC::Char)) : Void
  fun webkit_web_view_set_display_capture_state(this : Void*, state : UInt32) : Void
  fun webkit_web_view_set_editable(this : Void*, editable : LibC::Int) : Void
  fun webkit_web_view_set_input_method_context(this : Void*, context : Pointer(Void)) : Void
  fun webkit_web_view_set_is_muted(this : Void*, muted : LibC::Int) : Void
  fun webkit_web_view_set_microphone_capture_state(this : Void*, state : UInt32) : Void
  fun webkit_web_view_set_settings(this : Void*, settings : Pointer(Void)) : Void
  fun webkit_web_view_set_zoom_level(this : Void*, zoom_level : Float64) : Void
  fun webkit_web_view_stop_loading(this : Void*) : Void
  fun webkit_web_view_terminate_web_process(this : Void*) : Void
  fun webkit_web_view_try_close(this : Void*) : Void
  fun webkit_website_data_access_permission_request_get_current_domain(this : Void*) : Pointer(LibC::Char)
  fun webkit_website_data_access_permission_request_get_requesting_domain(this : Void*) : Pointer(LibC::Char)
  fun webkit_website_data_access_permission_request_get_type : UInt64
  fun webkit_website_data_get_name(this : Void*) : Pointer(LibC::Char)
  fun webkit_website_data_get_size(this : Void*, types : UInt32) : UInt64
  fun webkit_website_data_get_type : UInt64
  fun webkit_website_data_get_types(this : Void*) : UInt32
  fun webkit_website_data_manager_clear(this : Void*, types : UInt32, timespan : Int64, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_website_data_manager_clear_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_website_data_manager_fetch(this : Void*, types : UInt32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_website_data_manager_fetch_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(LibGLib::List)
  fun webkit_website_data_manager_get_base_cache_directory(this : Void*) : Pointer(LibC::Char)
  fun webkit_website_data_manager_get_base_data_directory(this : Void*) : Pointer(LibC::Char)
  fun webkit_website_data_manager_get_favicon_database(this : Void*) : Pointer(Void)
  fun webkit_website_data_manager_get_favicons_enabled(this : Void*) : LibC::Int
  fun webkit_website_data_manager_get_itp_summary(this : Void*, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_website_data_manager_get_itp_summary_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(LibGLib::List)
  fun webkit_website_data_manager_get_type : UInt64
  fun webkit_website_data_manager_is_ephemeral(this : Void*) : LibC::Int
  fun webkit_website_data_manager_remove(this : Void*, types : UInt32, website_data : Pointer(LibGLib::List), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun webkit_website_data_manager_remove_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun webkit_website_data_manager_set_favicons_enabled(this : Void*, enabled : LibC::Int) : Void
  fun webkit_website_data_ref(this : Void*) : Pointer(Void)
  fun webkit_website_data_types_get_type : UInt64
  fun webkit_website_data_unref(this : Void*) : Void
  fun webkit_website_policies_get_autoplay_policy(this : Void*) : UInt32
  fun webkit_website_policies_get_type : UInt64
  fun webkit_website_policies_new : Pointer(Void)
  fun webkit_window_properties_get_fullscreen(this : Void*) : LibC::Int
  fun webkit_window_properties_get_geometry(this : Void*, geometry : Pointer(Void)) : Void
  fun webkit_window_properties_get_locationbar_visible(this : Void*) : LibC::Int
  fun webkit_window_properties_get_menubar_visible(this : Void*) : LibC::Int
  fun webkit_window_properties_get_resizable(this : Void*) : LibC::Int
  fun webkit_window_properties_get_scrollbars_visible(this : Void*) : LibC::Int
  fun webkit_window_properties_get_statusbar_visible(this : Void*) : LibC::Int
  fun webkit_window_properties_get_toolbar_visible(this : Void*) : LibC::Int
  fun webkit_window_properties_get_type : UInt64
end
