# Dependencies
require "../soup-3.0/soup.cr"
require "../java_script_core-6.0/java_script_core.cr"
require "../gtk-4.0/gtk.cr"

# C lib declaration
require "./lib_web_kit.cr"

# Wrappers
require "./application_info.cr"
require "./authentication_request.cr"
require "./automation_session.cr"
require "./back_forward_list.cr"
require "./back_forward_list_item.cr"
require "./clipboard_permission_request.cr"
require "./color_chooser_request.cr"
require "./context_menu.cr"
require "./context_menu_item.cr"
require "./cookie_manager.cr"
require "./credential.cr"
require "./device_info_permission_request.cr"
require "./download.cr"
require "./editor_state.cr"
require "./favicon_database.cr"
require "./feature.cr"
require "./feature_list.cr"
require "./file_chooser_request.cr"
require "./find_controller.cr"
require "./form_submission_request.cr"
require "./geolocation_manager.cr"
require "./geolocation_permission_request.cr"
require "./geolocation_position.cr"
require "./hit_test_result.cr"
require "./input_method_context.cr"
require "./input_method_context_private.cr"
require "./input_method_underline.cr"
require "./itp_first_party.cr"
require "./itp_third_party.cr"
require "./media_key_system_permission_request.cr"
require "./memory_pressure_settings.cr"
require "./navigation_action.cr"
require "./navigation_policy_decision.cr"
require "./network_proxy_settings.cr"
require "./network_session.cr"
require "./notification.cr"
require "./notification_permission_request.cr"
require "./option_menu.cr"
require "./option_menu_item.cr"
require "./permission_request.cr"
require "./permission_state_query.cr"
require "./pointer_lock_permission_request.cr"
require "./policy_decision.cr"
require "./policy_decision_private.cr"
require "./print_operation.cr"
require "./response_policy_decision.cr"
require "./script_dialog.cr"
require "./script_message_reply.cr"
require "./security_manager.cr"
require "./security_origin.cr"
require "./settings.cr"
require "./uri_request.cr"
require "./uri_response.cr"
require "./uri_scheme_request.cr"
require "./uri_scheme_response.cr"
require "./user_content_filter.cr"
require "./user_content_filter_store.cr"
require "./user_content_manager.cr"
require "./user_media_permission_request.cr"
require "./user_message.cr"
require "./user_script.cr"
require "./user_style_sheet.cr"
require "./web_context.cr"
require "./web_extension_match_pattern.cr"
require "./web_inspector.cr"
require "./web_resource.cr"
require "./web_view.cr"
require "./web_view_base.cr"
require "./web_view_base_private.cr"
require "./web_view_private.cr"
require "./web_view_session_state.cr"
require "./website_data.cr"
require "./website_data_access_permission_request.cr"
require "./website_data_manager.cr"
require "./website_policies.cr"
require "./window_properties.cr"

module WebKit
  EDITING_COMMAND_COPY                = "Copy"
  EDITING_COMMAND_CREATE_LINK         = "CreateLink"
  EDITING_COMMAND_CUT                 = "Cut"
  EDITING_COMMAND_INSERT_IMAGE        = "InsertImage"
  EDITING_COMMAND_PASTE               = "Paste"
  EDITING_COMMAND_PASTE_AS_PLAIN_TEXT = "PasteAsPlainText"
  EDITING_COMMAND_REDO                = "Redo"
  EDITING_COMMAND_SELECT_ALL          = "SelectAll"
  EDITING_COMMAND_UNDO                = "Undo"
  MAJOR_VERSION                       =  2
  MICRO_VERSION                       =  0
  MINOR_VERSION                       = 48

  # Callbacks

  alias URISchemeRequestCallback = Proc(WebKit::URISchemeRequest, Nil)

  # Base class for all errors in this module.
  class WebKitError < GLib::Error
  end

  # Enums

  enum AuthenticationScheme : UInt32
    Default                        =   1
    HttpBasic                      =   2
    HttpDigest                     =   3
    HtmlForm                       =   4
    Ntlm                           =   5
    Negotiate                      =   6
    ClientCertificateRequested     =   7
    ServerTrustEvaluationRequested =   8
    ClientCertificatePinRequested  =   9
    Unknown                        = 100

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_authentication_scheme_get_type
    end
  end

  enum AutomationBrowsingContextPresentation : UInt32
    Window = 0
    Tab    = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_automation_browsing_context_presentation_get_type
    end
  end

  enum AutoplayPolicy : UInt32
    Allow             = 0
    AllowWithoutSound = 1
    Deny              = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_autoplay_policy_get_type
    end
  end

  enum CacheModel : UInt32
    DocumentViewer  = 0
    WebBrowser      = 1
    DocumentBrowser = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_cache_model_get_type
    end
  end

  enum ContextMenuAction : UInt32
    NoAction                 =     0
    OpenLink                 =     1
    OpenLinkInNewWindow      =     2
    DownloadLinkToDisk       =     3
    CopyLinkToClipboard      =     4
    OpenImageInNewWindow     =     5
    DownloadImageToDisk      =     6
    CopyImageToClipboard     =     7
    CopyImageUrlToClipboard  =     8
    OpenFrameInNewWindow     =     9
    GoBack                   =    10
    GoForward                =    11
    Stop                     =    12
    Reload                   =    13
    Copy                     =    14
    Cut                      =    15
    Paste                    =    16
    Delete                   =    17
    SelectAll                =    18
    InputMethods             =    19
    Unicode                  =    20
    SpellingGuess            =    21
    NoGuessesFound           =    22
    IgnoreSpelling           =    23
    LearnSpelling            =    24
    IgnoreGrammar            =    25
    FontMenu                 =    26
    Bold                     =    27
    Italic                   =    28
    Underline                =    29
    Outline                  =    30
    InspectElement           =    31
    OpenVideoInNewWindow     =    32
    OpenAudioInNewWindow     =    33
    CopyVideoLinkToClipboard =    34
    CopyAudioLinkToClipboard =    35
    ToggleMediaControls      =    36
    ToggleMediaLoop          =    37
    EnterVideoFullscreen     =    38
    MediaPlay                =    39
    MediaPause               =    40
    MediaMute                =    41
    DownloadVideoToDisk      =    42
    DownloadAudioToDisk      =    43
    InsertEmoji              =    44
    PasteAsPlainText         =    45
    Custom                   = 10000

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_context_menu_action_get_type
    end
  end

  enum CookieAcceptPolicy : UInt32
    Always       = 0
    Never        = 1
    NoThirdParty = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_cookie_accept_policy_get_type
    end
  end

  enum CookiePersistentStorage : UInt32
    Text   = 0
    Sqlite = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_cookie_persistent_storage_get_type
    end
  end

  enum CredentialPersistence : UInt32
    None       = 0
    ForSession = 1
    Permanent  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_credential_persistence_get_type
    end
  end

  enum FeatureStatus : UInt32
    Embedder  = 0
    Unstable  = 1
    Internal  = 2
    Developer = 3
    Testable  = 4
    Preview   = 5
    Stable    = 6
    Mature    = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_feature_status_get_type
    end
  end

  enum HardwareAccelerationPolicy : UInt32
    Always = 0
    Never  = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_hardware_acceleration_policy_get_type
    end
  end

  enum InputPurpose : UInt32
    FreeForm = 0
    Digits   = 1
    Number   = 2
    Phone    = 3
    Url      = 4
    Email    = 5
    Password = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_input_purpose_get_type
    end
  end

  enum InsecureContentEvent : UInt32
    Run       = 0
    Displayed = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_insecure_content_event_get_type
    end
  end

  enum LoadEvent : UInt32
    Started    = 0
    Redirected = 1
    Committed  = 2
    Finished   = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_load_event_get_type
    end
  end

  enum MediaCaptureState : UInt32
    None   = 0
    Active = 1
    Muted  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_media_capture_state_get_type
    end
  end

  enum NavigationType : UInt32
    LinkClicked     = 0
    FormSubmitted   = 1
    BackForward     = 2
    Reload          = 3
    FormResubmitted = 4
    Other           = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_navigation_type_get_type
    end
  end

  enum NetworkProxyMode : UInt32
    Default = 0
    NoProxy = 1
    Custom  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_network_proxy_mode_get_type
    end
  end

  enum PermissionState : UInt32
    Granted = 0
    Denied  = 1
    Prompt  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_permission_state_get_type
    end
  end

  enum PolicyDecisionType : UInt32
    NavigationAction = 0
    NewWindowAction  = 1
    Response         = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_policy_decision_type_get_type
    end
  end

  enum PrintOperationResponse : UInt32
    Print  = 0
    Cancel = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_print_operation_response_get_type
    end
  end

  enum SaveMode : UInt32
    Mhtml = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_save_mode_get_type
    end
  end

  enum ScriptDialogType : UInt32
    Alert               = 0
    Confirm             = 1
    Prompt              = 2
    BeforeUnloadConfirm = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_script_dialog_type_get_type
    end
  end

  enum SnapshotRegion : UInt32
    Visible      = 0
    FullDocument = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_snapshot_region_get_type
    end
  end

  enum TLSErrorsPolicy : UInt32
    Ignore = 0
    Fail   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_tls_errors_policy_get_type
    end
  end

  enum UserContentInjectedFrames : UInt32
    AllFrames = 0
    TopFrame  = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_user_content_injected_frames_get_type
    end
  end

  enum UserScriptInjectionTime : UInt32
    Start = 0
    End   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_user_script_injection_time_get_type
    end
  end

  enum UserStyleLevel : UInt32
    User   = 0
    Author = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_user_style_level_get_type
    end
  end

  enum WebExtensionMode : UInt32
    None       = 0
    Manifestv2 = 1
    Manifestv3 = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_web_extension_mode_get_type
    end
  end

  enum WebProcessTerminationReason : UInt32
    Crashed             = 0
    ExceededMemoryLimit = 1
    TerminatedByApi     = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_web_process_termination_reason_get_type
    end
  end

  # Flags

  @[Flags]
  enum FindOptions : UInt32
    CaseInsensitive               =  1
    AtWordStarts                  =  2
    TreatMedialCapitalAsWordStart =  4
    Backwards                     =  8
    WrapAround                    = 16

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_find_options_get_type
    end
  end

  @[Flags]
  enum HitTestResultContext : UInt32
    Document  =   2
    Link      =   4
    Image     =   8
    Media     =  16
    Editable  =  32
    Scrollbar =  64
    Selection = 128

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_hit_test_result_context_get_type
    end
  end

  @[Flags]
  enum InputHints : UInt32
    Spellcheck         =  1
    Lowercase          =  2
    UppercaseChars     =  4
    UppercaseWords     =  8
    UppercaseSentences = 16
    InhibitOsk         = 32

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_input_hints_get_type
    end
  end

  @[Flags]
  enum SnapshotOptions : UInt32
    IncludeSelectionHighlighting = 1
    TransparentBackground        = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_snapshot_options_get_type
    end
  end

  @[Flags]
  enum WebExtensionMatchPatternOptions : UInt32
    None                 = 1
    IgnoreSchemes        = 2
    IgnorePaths          = 4
    MatchBidirectionally = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_web_extension_match_pattern_options_get_type
    end
  end

  @[Flags]
  enum WebsiteDataTypes : UInt32
    MemoryCache                =    1
    DiskCache                  =    2
    OfflineApplicationCache    =    4
    SessionStorage             =    8
    LocalStorage               =   16
    IndexeddbDatabases         =   32
    Cookies                    =   64
    DeviceIdHashSalt           =  128
    HstsCache                  =  256
    Itp                        =  512
    ServiceWorkerRegistrations = 1024
    DomCache                   = 2048

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_website_data_types_get_type
    end
  end

  def self.download_error_quark : UInt32
    # webkit_download_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_download_error_quark

    # Return value handling
    _retval
  end

  def self.favicon_database_error_quark : UInt32
    # webkit_favicon_database_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_favicon_database_error_quark

    # Return value handling
    _retval
  end

  def self.major_version : UInt32
    # webkit_get_major_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_get_major_version

    # Return value handling
    _retval
  end

  def self.micro_version : UInt32
    # webkit_get_micro_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_get_micro_version

    # Return value handling
    _retval
  end

  def self.minor_version : UInt32
    # webkit_get_minor_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_get_minor_version

    # Return value handling
    _retval
  end

  def self.javascript_error_quark : UInt32
    # webkit_javascript_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_javascript_error_quark

    # Return value handling
    _retval
  end

  def self.media_error_quark : UInt32
    # webkit_media_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_media_error_quark

    # Return value handling
    _retval
  end

  def self.media_key_system_permission_get_name(request : WebKit::MediaKeySystemPermissionRequest) : ::String
    # webkit_media_key_system_permission_get_name: (None)
    # @request:
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_media_key_system_permission_get_name(request)

    # Return value handling
    ::String.new(_retval)
  end

  def self.network_error_quark : UInt32
    # webkit_network_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_network_error_quark

    # Return value handling
    _retval
  end

  def self.policy_error_quark : UInt32
    # webkit_policy_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_policy_error_quark

    # Return value handling
    _retval
  end

  def self.print_error_quark : UInt32
    # webkit_print_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_print_error_quark

    # Return value handling
    _retval
  end

  def self.snapshot_error_quark : UInt32
    # webkit_snapshot_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_snapshot_error_quark

    # Return value handling
    _retval
  end

  def self.uri_for_display(uri : ::String) : ::String?
    # webkit_uri_for_display: (None)
    # @uri:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibWebKit.webkit_uri_for_display(uri)

    # Return value handling
    GICrystal.transfer_full(_retval) unless _retval.null?
  end

  def self.user_content_filter_error_quark : UInt32
    # webkit_user_content_filter_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_user_content_filter_error_quark

    # Return value handling
    _retval
  end

  def self.user_media_permission_is_for_audio_device(request : WebKit::UserMediaPermissionRequest) : Bool
    # webkit_user_media_permission_is_for_audio_device: (None)
    # @request:
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_user_media_permission_is_for_audio_device(request)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.user_media_permission_is_for_display_device(request : WebKit::UserMediaPermissionRequest) : Bool
    # webkit_user_media_permission_is_for_display_device: (None)
    # @request:
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_user_media_permission_is_for_display_device(request)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.user_media_permission_is_for_video_device(request : WebKit::UserMediaPermissionRequest) : Bool
    # webkit_user_media_permission_is_for_video_device: (None)
    # @request:
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_user_media_permission_is_for_video_device(request)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.user_message_error_quark : UInt32
    # webkit_user_message_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_user_message_error_quark

    # Return value handling
    _retval
  end

  def self.web_extension_match_pattern_error_quark : UInt32
    # webkit_web_extension_match_pattern_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibWebKit.webkit_web_extension_match_pattern_error_quark

    # Return value handling
    _retval
  end

  def self.web_extension_match_pattern_register_custom_URL_scheme(urlScheme : ::String) : Nil
    # webkit_web_extension_match_pattern_register_custom_URL_scheme: (None)
    # @urlScheme:
    # Returns: (transfer none)

    # C call
    LibWebKit.webkit_web_extension_match_pattern_register_custom_URL_scheme(urlScheme)

    # Return value handling
  end

  # Errors

  class DownloadError < WebKitError
    class Network < DownloadError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitDownloadError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 499, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CancelledByUser < DownloadError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitDownloadError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 400, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Destination < DownloadError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitDownloadError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 401, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class FaviconDatabaseError < WebKitError
    class NotInitialized < FaviconDatabaseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitFaviconDatabaseError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FaviconNotFound < FaviconDatabaseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitFaviconDatabaseError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FaviconUnknown < FaviconDatabaseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitFaviconDatabaseError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class JavascriptError < WebKitError
    class ScriptFailed < JavascriptError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitJavascriptError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 699, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidParameter < JavascriptError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitJavascriptError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 600, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidResult < JavascriptError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitJavascriptError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 601, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class MediaError < WebKitError
    class Load < MediaError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitMediaError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 204, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class NetworkError < WebKitError
    class Failed < NetworkError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitNetworkError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 399, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Transport < NetworkError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitNetworkError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 300, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownProtocol < NetworkError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitNetworkError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 301, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Cancelled < NetworkError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitNetworkError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 302, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FileDoesNotExist < NetworkError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitNetworkError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 303, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class PolicyError < WebKitError
    class Failed < PolicyError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPolicyError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 199, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CannotShowMimeType < PolicyError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPolicyError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 100, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CannotShowUri < PolicyError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPolicyError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 101, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FrameLoadInterruptedByPolicyChange < PolicyError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPolicyError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 102, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CannotUseRestrictedPort < PolicyError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPolicyError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 103, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class PrintError < WebKitError
    class General < PrintError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPrintError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 599, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class PrinterNotFound < PrintError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPrintError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 500, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidPageRange < PrintError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitPrintError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 501, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class SnapshotError < WebKitError
    class Create < SnapshotError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitSnapshotError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 799, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class UserContentFilterError < WebKitError
    class InvalidSource < UserContentFilterError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitUserContentFilterError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotFound < UserContentFilterError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitUserContentFilterError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class UserMessageError < WebKitError
    class Message < UserMessageError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitUserMessageError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class WebExtensionMatchPatternError < WebKitError
    class Unknown < WebExtensionMatchPatternError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitWebExtensionMatchPatternError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 899, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidScheme < WebExtensionMatchPatternError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitWebExtensionMatchPatternError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 808, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidHost < WebExtensionMatchPatternError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitWebExtensionMatchPatternError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 809, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidPath < WebExtensionMatchPatternError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("WebKitWebExtensionMatchPatternError")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 810, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    error_domain = error.value.domain
    error_code = error.value.code

    if error_domain == LibGLib.g_quark_try_string("WebKitDownloadError")
      return DownloadError::Network.new(error, transfer) if error_code == 499
      return DownloadError::CancelledByUser.new(error, transfer) if error_code == 400
      return DownloadError::Destination.new(error, transfer) if error_code == 401
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitFaviconDatabaseError")
      return FaviconDatabaseError::NotInitialized.new(error, transfer) if error_code == 0
      return FaviconDatabaseError::FaviconNotFound.new(error, transfer) if error_code == 1
      return FaviconDatabaseError::FaviconUnknown.new(error, transfer) if error_code == 2
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitJavascriptError")
      return JavascriptError::ScriptFailed.new(error, transfer) if error_code == 699
      return JavascriptError::InvalidParameter.new(error, transfer) if error_code == 600
      return JavascriptError::InvalidResult.new(error, transfer) if error_code == 601
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitMediaError")
      return MediaError::Load.new(error, transfer) if error_code == 204
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitNetworkError")
      return NetworkError::Failed.new(error, transfer) if error_code == 399
      return NetworkError::Transport.new(error, transfer) if error_code == 300
      return NetworkError::UnknownProtocol.new(error, transfer) if error_code == 301
      return NetworkError::Cancelled.new(error, transfer) if error_code == 302
      return NetworkError::FileDoesNotExist.new(error, transfer) if error_code == 303
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitPolicyError")
      return PolicyError::Failed.new(error, transfer) if error_code == 199
      return PolicyError::CannotShowMimeType.new(error, transfer) if error_code == 100
      return PolicyError::CannotShowUri.new(error, transfer) if error_code == 101
      return PolicyError::FrameLoadInterruptedByPolicyChange.new(error, transfer) if error_code == 102
      return PolicyError::CannotUseRestrictedPort.new(error, transfer) if error_code == 103
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitPrintError")
      return PrintError::General.new(error, transfer) if error_code == 599
      return PrintError::PrinterNotFound.new(error, transfer) if error_code == 500
      return PrintError::InvalidPageRange.new(error, transfer) if error_code == 501
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitSnapshotError")
      return SnapshotError::Create.new(error, transfer) if error_code == 799
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitUserContentFilterError")
      return UserContentFilterError::InvalidSource.new(error, transfer) if error_code == 0
      return UserContentFilterError::NotFound.new(error, transfer) if error_code == 1
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitUserMessageError")
      return UserMessageError::Message.new(error, transfer) if error_code == 0
    end

    if error_domain == LibGLib.g_quark_try_string("WebKitWebExtensionMatchPatternError")
      return WebExtensionMatchPatternError::Unknown.new(error, transfer) if error_code == 899
      return WebExtensionMatchPatternError::InvalidScheme.new(error, transfer) if error_code == 808
      return WebExtensionMatchPatternError::InvalidHost.new(error, transfer) if error_code == 809
      return WebExtensionMatchPatternError::InvalidPath.new(error, transfer) if error_code == 810
    end

    Soup.gerror_to_crystal?(error, transfer)
    JavaScriptCore.gerror_to_crystal?(error, transfer)
    Gtk.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end
