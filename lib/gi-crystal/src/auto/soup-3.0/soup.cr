# Dependencies
require "../gio-2.0/gio.cr"

# C lib declaration
require "./lib_soup.cr"

# Wrappers
require "./auth.cr"
require "./auth_basic.cr"
require "./auth_digest.cr"
require "./auth_domain.cr"
require "./auth_domain_basic.cr"
require "./auth_domain_digest.cr"
require "./auth_manager.cr"
require "./auth_negotiate.cr"
require "./auth_ntlm.cr"
require "./cache.cr"
require "./content_decoder.cr"
require "./content_sniffer.cr"
require "./cookie.cr"
require "./cookie_jar.cr"
require "./cookie_jar_db.cr"
require "./cookie_jar_text.cr"
require "./hsts_enforcer.cr"
require "./hsts_enforcer_db.cr"
require "./hsts_policy.cr"
require "./logger.cr"
require "./message.cr"
require "./message_body.cr"
require "./message_headers.cr"
require "./message_headers_iter.cr"
require "./message_metrics.cr"
require "./multipart.cr"
require "./multipart_input_stream.cr"
require "./range.cr"
require "./server.cr"
require "./server_message.cr"
require "./session.cr"
require "./session_feature.cr"
require "./websocket_connection.cr"
require "./websocket_extension.cr"
require "./websocket_extension_deflate.cr"
require "./websocket_extension_manager.cr"

module Soup
  COOKIE_MAX_AGE_ONE_DAY    =    0
  COOKIE_MAX_AGE_ONE_HOUR   = 3600
  COOKIE_MAX_AGE_ONE_WEEK   =    0
  COOKIE_MAX_AGE_ONE_YEAR   =    0
  FORM_MIME_TYPE_MULTIPART  = "multipart/form-data"
  FORM_MIME_TYPE_URLENCODED = "application/x-www-form-urlencoded"
  HSTS_POLICY_MAX_AGE_PAST  =   0
  HTTP_URI_FLAGS            = 482
  MAJOR_VERSION             =   3
  MICRO_VERSION             =   5
  MINOR_VERSION             =   6
  VERSION_MIN_REQUIRED      =   2

  # Callbacks

  alias AuthDomainBasicAuthCallback = Proc(Soup::AuthDomainBasic, Soup::ServerMessage, ::String, ::String, Bool)

  alias AuthDomainDigestAuthCallback = Proc(Soup::AuthDomainDigest, Soup::ServerMessage, ::String, ::String)

  alias AuthDomainFilter = Proc(Soup::AuthDomain, Soup::ServerMessage, Bool)

  alias AuthDomainGenericAuthCallback = Proc(Soup::AuthDomain, Soup::ServerMessage, ::String, Bool)

  alias LoggerFilter = Proc(Soup::Logger, Soup::Message, Soup::LoggerLogLevel)

  alias LoggerPrinter = Proc(Soup::Logger, Soup::LoggerLogLevel, Int8, ::String, Nil)

  alias MessageHeadersForeachFunc = Proc(::String, ::String, Nil)

  alias ServerCallback = Proc(Soup::Server, Soup::ServerMessage, ::String, Pointer(Void)?, Nil)

  alias ServerWebsocketCallback = Proc(Soup::Server, Soup::ServerMessage, ::String, Soup::WebsocketConnection, Nil)

  # Base class for all errors in this module.
  class SoupError < GLib::Error
  end

  # Enums

  enum CacheType : UInt32
    SingleUser = 0
    Shared     = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_cache_type_get_type
    end
  end

  enum CookieJarAcceptPolicy : UInt32
    Always                  = 0
    Never                   = 1
    NoThirdParty            = 2
    GrandfatheredThirdParty = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_cookie_jar_accept_policy_get_type
    end
  end

  enum DateFormat : UInt32
    Http   = 1
    Cookie = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_date_format_get_type
    end
  end

  enum Encoding : UInt32
    Unrecognized  = 0
    None          = 1
    ContentLength = 2
    Eof           = 3
    Chunked       = 4
    Byteranges    = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_encoding_get_type
    end
  end

  enum HTTPVersion : UInt32
    Http10 = 0
    Http11 = 1
    Http20 = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_http_version_get_type
    end
  end

  enum LoggerLogLevel : UInt32
    None    = 0
    Minimal = 1
    Headers = 2
    Body    = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_logger_log_level_get_type
    end
  end

  enum MemoryUse : UInt32
    Static = 0
    Take   = 1
    Copy   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_memory_use_get_type
    end
  end

  enum MessageHeadersType : UInt32
    Request   = 0
    Response  = 1
    Multipart = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_message_headers_type_get_type
    end
  end

  enum MessagePriority : UInt32
    VeryLow  = 0
    Low      = 1
    Normal   = 2
    High     = 3
    VeryHigh = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_message_priority_get_type
    end
  end

  enum SameSitePolicy : UInt32
    None   = 0
    Lax    = 1
    Strict = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_same_site_policy_get_type
    end
  end

  enum Status : UInt32
    None                         =   0
    Continue                     = 100
    SwitchingProtocols           = 101
    Processing                   = 102
    Ok                           = 200
    Created                      = 201
    Accepted                     = 202
    NonAuthoritative             = 203
    NoContent                    = 204
    ResetContent                 = 205
    PartialContent               = 206
    MultiStatus                  = 207
    MultipleChoices              = 300
    MovedPermanently             = 301
    Found                        = 302
    MovedTemporarily             = 302
    SeeOther                     = 303
    NotModified                  = 304
    UseProxy                     = 305
    NotAppearingInThisProtocol   = 306
    TemporaryRedirect            = 307
    PermanentRedirect            = 308
    BadRequest                   = 400
    Unauthorized                 = 401
    PaymentRequired              = 402
    Forbidden                    = 403
    NotFound                     = 404
    MethodNotAllowed             = 405
    NotAcceptable                = 406
    ProxyAuthenticationRequired  = 407
    ProxyUnauthorized            = 407
    RequestTimeout               = 408
    Conflict                     = 409
    Gone                         = 410
    LengthRequired               = 411
    PreconditionFailed           = 412
    RequestEntityTooLarge        = 413
    RequestUriTooLong            = 414
    UnsupportedMediaType         = 415
    RequestedRangeNotSatisfiable = 416
    InvalidRange                 = 416
    ExpectationFailed            = 417
    MisdirectedRequest           = 421
    UnprocessableEntity          = 422
    Locked                       = 423
    FailedDependency             = 424
    InternalServerError          = 500
    NotImplemented               = 501
    BadGateway                   = 502
    ServiceUnavailable           = 503
    GatewayTimeout               = 504
    HttpVersionNotSupported      = 505
    InsufficientStorage          = 507
    NotExtended                  = 510

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_status_get_type
    end
  end

  enum URIComponent : UInt32
    None       = 0
    Scheme     = 1
    User       = 2
    Password   = 3
    AuthParams = 4
    Host       = 5
    Port       = 6
    Path       = 7
    Query      = 8
    Fragment   = 9

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_uri_component_get_type
    end
  end

  enum WebsocketCloseCode : UInt32
    Normal          = 1000
    GoingAway       = 1001
    ProtocolError   = 1002
    UnsupportedData = 1003
    NoStatus        = 1005
    Abnormal        = 1006
    BadData         = 1007
    PolicyViolation = 1008
    TooBig          = 1009
    NoExtension     = 1010
    ServerError     = 1011
    TlsHandshake    = 1015

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_websocket_close_code_get_type
    end
  end

  enum WebsocketConnectionType : UInt32
    Unknown = 0
    Client  = 1
    Server  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_websocket_connection_type_get_type
    end
  end

  enum WebsocketDataType : UInt32
    Text   = 1
    Binary = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_websocket_data_type_get_type
    end
  end

  enum WebsocketState : UInt32
    Open    = 1
    Closing = 2
    Closed  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_websocket_state_get_type
    end
  end

  # Flags

  @[Flags]
  enum Cacheability : UInt32
    Cacheable   = 1
    Uncacheable = 2
    Invalidates = 4
    Validates   = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_cacheability_get_type
    end
  end

  @[Flags]
  enum Expectation : UInt32
    Unrecognized = 1
    Continue     = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_expectation_get_type
    end
  end

  @[Flags]
  enum MessageFlags : UInt32
    NoRedirect        =  2
    NewConnection     =  4
    Idempotent        =  8
    DoNotUseAuthCache = 16
    CollectMetrics    = 32

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_message_flags_get_type
    end
  end

  @[Flags]
  enum ServerListenOptions : UInt32
    Https    = 1
    Ipv4Only = 2
    Ipv6Only = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_server_listen_options_get_type
    end
  end

  def self.check_version(major : UInt32, minor : UInt32, micro : UInt32) : Bool
    # soup_check_version: (None)
    # @major:
    # @minor:
    # @micro:
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_check_version(major, minor, micro)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.cookie_parse(header : ::String, origin : GLib::Uri?) : Soup::Cookie?
    # soup_cookie_parse: (None)
    # @header:
    # @origin: (nullable)
    # Returns: (transfer full) (nullable)

    # Generator::NullableArrayPlan
    origin = if origin.nil?
               Pointer(Void).null
             else
               origin.to_unsafe
             end

    # C call
    _retval = LibSoup.soup_cookie_parse(header, origin)

    # Return value handling
    Soup::Cookie.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.cookies_from_request(msg : Soup::Message) : GLib::SList
    # soup_cookies_from_request: (None)
    # @msg:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_cookies_from_request(msg)

    # Return value handling
    GLib::SList(Soup::Cookie).new(_retval, GICrystal::Transfer::Full)
  end

  def self.cookies_from_response(msg : Soup::Message) : GLib::SList
    # soup_cookies_from_response: (None)
    # @msg:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_cookies_from_response(msg)

    # Return value handling
    GLib::SList(Soup::Cookie).new(_retval, GICrystal::Transfer::Full)
  end

  def self.cookies_to_cookie_header(cookies : GLib::SList) : ::String
    # soup_cookies_to_cookie_header: (None)
    # @cookies:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_cookies_to_cookie_header(cookies)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.cookies_to_request(cookies : GLib::SList, msg : Soup::Message) : Nil
    # soup_cookies_to_request: (None)
    # @cookies:
    # @msg:
    # Returns: (transfer none)

    # C call
    LibSoup.soup_cookies_to_request(cookies, msg)

    # Return value handling
  end

  def self.cookies_to_response(cookies : GLib::SList, msg : Soup::Message) : Nil
    # soup_cookies_to_response: (None)
    # @cookies:
    # @msg:
    # Returns: (transfer none)

    # C call
    LibSoup.soup_cookies_to_response(cookies, msg)

    # Return value handling
  end

  def self.date_time_new_from_http_string(date_string : ::String) : GLib::DateTime?
    # soup_date_time_new_from_http_string: (None)
    # @date_string:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibSoup.soup_date_time_new_from_http_string(date_string)

    # Return value handling
    GLib::DateTime.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.date_time_to_string(date : GLib::DateTime, format : Soup::DateFormat) : ::String
    # soup_date_time_to_string: (None)
    # @date:
    # @format:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_date_time_to_string(date, format)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.form_decode(encoded_form : ::String) : Pointer(Void)
    # soup_form_decode: (None)
    # @encoded_form:
    # Returns: (transfer container)

    # C call
    _retval = LibSoup.soup_form_decode(encoded_form)

    # Return value handling
    _retval
  end

  def self.form_decode_multipart(multipart : Soup::Multipart, file_control_name : ::String?) : Pointer(Void)?
    # soup_form_decode_multipart: (None)
    # @multipart: (transfer full)
    # @file_control_name: (nullable)
    # @filename: (out) (transfer full) (optional)
    # @content_type: (out) (transfer full) (optional)
    # @file: (out) (transfer full) (optional)
    # Returns: (transfer container) (nullable)

    # Generator::NullableArrayPlan
    file_control_name = if file_control_name.nil?
                          Pointer(LibC::Char).null
                        else
                          file_control_name.to_unsafe
                        end
    # Generator::OutArgUsedInReturnPlan
    filename = Pointer(Pointer(LibC::Char)).null     # Generator::OutArgUsedInReturnPlan
    content_type = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
    file = Pointer(Pointer(Void)).null
    # C call
    _retval = LibSoup.soup_form_decode_multipart(multipart, file_control_name, filename, content_type, file)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.form_encode_datalist(form_data_set : GLib::Data) : ::String
    # soup_form_encode_datalist: (None)
    # @form_data_set:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_form_encode_datalist(form_data_set)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.form_encode_hash(form_data_set : Pointer(Void)) : ::String
    # soup_form_encode_hash: (None)
    # @form_data_set:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_form_encode_hash(form_data_set)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.major_version : UInt32
    # soup_get_major_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_get_major_version

    # Return value handling
    _retval
  end

  def self.micro_version : UInt32
    # soup_get_micro_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_get_micro_version

    # Return value handling
    _retval
  end

  def self.minor_version : UInt32
    # soup_get_minor_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_get_minor_version

    # Return value handling
    _retval
  end

  def self.header_contains(header : ::String, token : ::String) : Bool
    # soup_header_contains: (None)
    # @header:
    # @token:
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_header_contains(header, token)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.header_free_param_list(param_list : Pointer(Void)) : Nil
    # soup_header_free_param_list: (None)
    # @param_list:
    # Returns: (transfer none)

    # C call
    LibSoup.soup_header_free_param_list(param_list)

    # Return value handling
  end

  def self.header_g_string_append_param(string : GLib::String, name : ::String, value : ::String?) : Nil
    # soup_header_g_string_append_param: (None)
    # @string:
    # @name:
    # @value: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    value = if value.nil?
              Pointer(LibC::Char).null
            else
              value.to_unsafe
            end

    # C call
    LibSoup.soup_header_g_string_append_param(string, name, value)

    # Return value handling
  end

  def self.header_g_string_append_param_quoted(string : GLib::String, name : ::String, value : ::String) : Nil
    # soup_header_g_string_append_param_quoted: (None)
    # @string:
    # @name:
    # @value:
    # Returns: (transfer none)

    # C call
    LibSoup.soup_header_g_string_append_param_quoted(string, name, value)

    # Return value handling
  end

  def self.header_parse_list(header : ::String) : GLib::SList
    # soup_header_parse_list: (None)
    # @header:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_header_parse_list(header)

    # Return value handling
    GLib::SList(::String).new(_retval, GICrystal::Transfer::Full)
  end

  def self.header_parse_param_list(header : ::String) : Pointer(Void)
    # soup_header_parse_param_list: (None)
    # @header:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_header_parse_param_list(header)

    # Return value handling
    _retval
  end

  def self.header_parse_param_list_strict(header : ::String) : Pointer(Void)?
    # soup_header_parse_param_list_strict: (None)
    # @header:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibSoup.soup_header_parse_param_list_strict(header)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.header_parse_quality_list(header : ::String) : GLib::SList
    # soup_header_parse_quality_list: (None)
    # @header:
    # @unacceptable: (out) (transfer full) (optional)
    # Returns: (transfer full)

    # Generator::OutArgUsedInReturnPlan
    unacceptable = Pointer(Pointer(LibGLib::SList)).null
    # C call
    _retval = LibSoup.soup_header_parse_quality_list(header, unacceptable)

    # Return value handling
    GLib::SList(::String).new(_retval, GICrystal::Transfer::Full)
  end

  def self.header_parse_semi_param_list(header : ::String) : Pointer(Void)
    # soup_header_parse_semi_param_list: (None)
    # @header:
    # Returns: (transfer full)

    # C call
    _retval = LibSoup.soup_header_parse_semi_param_list(header)

    # Return value handling
    _retval
  end

  def self.header_parse_semi_param_list_strict(header : ::String) : Pointer(Void)?
    # soup_header_parse_semi_param_list_strict: (None)
    # @header:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibSoup.soup_header_parse_semi_param_list_strict(header)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.headers_parse(str : ::String, len : Int32, dest : Soup::MessageHeaders) : Bool
    # soup_headers_parse: (None)
    # @str:
    # @len:
    # @dest:
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_headers_parse(str, len, dest)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.headers_parse_request(str : ::String, len : Int32, req_headers : Soup::MessageHeaders) : UInt32
    # soup_headers_parse_request: (None)
    # @str:
    # @len:
    # @req_headers:
    # @req_method: (out) (transfer full) (optional)
    # @req_path: (out) (transfer full) (optional)
    # @ver: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    req_method = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
    req_path = Pointer(Pointer(LibC::Char)).null   # Generator::OutArgUsedInReturnPlan
    ver = Pointer(UInt32).null
    # C call
    _retval = LibSoup.soup_headers_parse_request(str, len, req_headers, req_method, req_path, ver)

    # Return value handling
    _retval
  end

  def self.headers_parse_response(str : ::String, len : Int32, headers : Soup::MessageHeaders) : Bool
    # soup_headers_parse_response: (None)
    # @str:
    # @len:
    # @headers:
    # @ver: (out) (transfer full) (optional)
    # @status_code: (out) (transfer full) (optional)
    # @reason_phrase: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    ver = Pointer(UInt32).null         # Generator::OutArgUsedInReturnPlan
    status_code = Pointer(UInt32).null # Generator::OutArgUsedInReturnPlan
    reason_phrase = Pointer(Pointer(LibC::Char)).null
    # C call
    _retval = LibSoup.soup_headers_parse_response(str, len, headers, ver, status_code, reason_phrase)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.headers_parse_status_line(status_line : ::String) : Bool
    # soup_headers_parse_status_line: (None)
    # @status_line:
    # @ver: (out) (transfer full) (optional)
    # @status_code: (out) (transfer full) (optional)
    # @reason_phrase: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    ver = Pointer(UInt32).null         # Generator::OutArgUsedInReturnPlan
    status_code = Pointer(UInt32).null # Generator::OutArgUsedInReturnPlan
    reason_phrase = Pointer(Pointer(LibC::Char)).null
    # C call
    _retval = LibSoup.soup_headers_parse_status_line(status_line, ver, status_code, reason_phrase)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.message_headers_iter_init(hdrs : Soup::MessageHeaders) : Soup::MessageHeadersIter
    # soup_message_headers_iter_init: (None)
    # @iter: (out) (caller-allocates)
    # @hdrs:
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    iter = Soup::MessageHeadersIter.new
    # C call
    LibSoup.soup_message_headers_iter_init(iter, hdrs)

    # Return value handling
    iter
  end

  def self.message_headers_iter_next(iter : Soup::MessageHeadersIter, name : ::String, value : ::String) : Bool
    # soup_message_headers_iter_next: (None)
    # @iter: (inout)
    # @name: (out)
    # @value: (out)
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_message_headers_iter_next(iter, name, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.session_error_quark : UInt32
    # soup_session_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_session_error_quark

    # Return value handling
    _retval
  end

  def self.status_get_phrase(status_code : UInt32) : ::String
    # soup_status_get_phrase: (None)
    # @status_code:
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_status_get_phrase(status_code)

    # Return value handling
    ::String.new(_retval)
  end

  def self.tld_domain_is_public_suffix(domain : ::String) : Bool
    # soup_tld_domain_is_public_suffix: (None)
    # @domain:
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_tld_domain_is_public_suffix(domain)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.tld_error_quark : UInt32
    # soup_tld_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_tld_error_quark

    # Return value handling
    _retval
  end

  def tld_get_base_domain(hostname : ::String) : ::String
    # soup_tld_get_base_domain: (Throws)
    # @hostname:
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibSoup.soup_tld_get_base_domain(hostname, pointerof(_error))

    # Error check
    Soup.raise_gerror(_error) unless _error.null?

    # Return value handling
    ::String.new(_retval)
  end

  def self.uri_decode_data_uri(uri : ::String, content_type : ::String?) : GLib::Bytes
    # soup_uri_decode_data_uri: (None)
    # @uri:
    # @content_type: (out) (transfer full) (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    content_type = if content_type.nil?
                     Pointer(LibC::Char).null
                   else
                     content_type.to_unsafe
                   end

    # C call
    _retval = LibSoup.soup_uri_decode_data_uri(uri, content_type)

    # Return value handling
    GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
  end

  def self.uri_equal(uri1 : GLib::Uri, uri2 : GLib::Uri) : Bool
    # soup_uri_equal: (None)
    # @uri1:
    # @uri2:
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_uri_equal(uri1, uri2)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.websocket_client_prepare_handshake(msg : Soup::Message, origin : ::String?, protocols : Enumerable(::String)?, supported_extensions : Enumerable(GObject::TypeClass)?) : Nil
    # soup_websocket_client_prepare_handshake: (None)
    # @msg:
    # @origin: (nullable)
    # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
    # @supported_extensions: (nullable) (array element-type Interface)
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
    supported_extensions = if supported_extensions.nil?
                             Pointer(LibGObject::TypeClass).null
                           else
                             supported_extensions.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::TypeClass))
                           end

    # C call
    LibSoup.soup_websocket_client_prepare_handshake(msg, origin, protocols, supported_extensions)

    # Return value handling
  end

  def websocket_client_verify_handshake(msg : Soup::Message, supported_extensions : Enumerable(GObject::TypeClass)?) : Bool
    # soup_websocket_client_verify_handshake: (Throws)
    # @msg:
    # @supported_extensions: (nullable) (array element-type Interface)
    # @accepted_extensions: (out) (transfer full) (optional)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    supported_extensions = if supported_extensions.nil?
                             Pointer(LibGObject::TypeClass).null
                           else
                             supported_extensions.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::TypeClass))
                           end
    # Generator::OutArgUsedInReturnPlan
    accepted_extensions = Pointer(Pointer(LibGLib::List)).null
    # C call
    _retval = LibSoup.soup_websocket_client_verify_handshake(msg, supported_extensions, accepted_extensions, pointerof(_error))

    # Error check
    Soup.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.websocket_error_quark : UInt32
    # soup_websocket_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibSoup.soup_websocket_error_quark

    # Return value handling
    _retval
  end

  def websocket_server_check_handshake(msg : Soup::ServerMessage, origin : ::String?, protocols : Enumerable(::String)?, supported_extensions : Enumerable(GObject::TypeClass)?) : Bool
    # soup_websocket_server_check_handshake: (Throws)
    # @msg:
    # @origin: (nullable)
    # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
    # @supported_extensions: (nullable) (array element-type Interface)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

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
    supported_extensions = if supported_extensions.nil?
                             Pointer(LibGObject::TypeClass).null
                           else
                             supported_extensions.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::TypeClass))
                           end

    # C call
    _retval = LibSoup.soup_websocket_server_check_handshake(msg, origin, protocols, supported_extensions, pointerof(_error))

    # Error check
    Soup.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.websocket_server_process_handshake(msg : Soup::ServerMessage, expected_origin : ::String?, protocols : Enumerable(::String)?, supported_extensions : Enumerable(GObject::TypeClass)?) : Bool
    # soup_websocket_server_process_handshake: (None)
    # @msg:
    # @expected_origin: (nullable)
    # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
    # @supported_extensions: (nullable) (array element-type Interface)
    # @accepted_extensions: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    expected_origin = if expected_origin.nil?
                        Pointer(LibC::Char).null
                      else
                        expected_origin.to_unsafe
                      end
    # Generator::NullableArrayPlan
    protocols = if protocols.nil?
                  Pointer(Pointer(LibC::Char)).null
                else
                  protocols.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                end
    # Generator::NullableArrayPlan
    supported_extensions = if supported_extensions.nil?
                             Pointer(LibGObject::TypeClass).null
                           else
                             supported_extensions.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGObject::TypeClass))
                           end
    # Generator::OutArgUsedInReturnPlan
    accepted_extensions = Pointer(Pointer(LibGLib::List)).null
    # C call
    _retval = LibSoup.soup_websocket_server_process_handshake(msg, expected_origin, protocols, supported_extensions, accepted_extensions)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  # Errors

  class SessionError < SoupError
    class Parsing < SessionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-session-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Encoding < SessionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-session-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManyRedirects < SessionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-session-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManyRestarts < SessionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-session-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class RedirectNoLocation < SessionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-session-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class RedirectBadUri < SessionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-session-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MessageAlreadyInQueue < SessionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-session-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class TLDError < SoupError
    class InvalidHostname < TLDError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-tld-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class IsIpAddress < TLDError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-tld-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotEnoughDomains < TLDError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-tld-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoBaseDomain < TLDError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-tld-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoPslData < TLDError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-tld-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class WebsocketError < SoupError
    class Failed < WebsocketError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-websocket-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotWebsocket < WebsocketError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-websocket-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadHandshake < WebsocketError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-websocket-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadOrigin < WebsocketError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("soup-websocket-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
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

    if error_domain == LibGLib.g_quark_try_string("soup-session-error-quark")
      return SessionError::Parsing.new(error, transfer) if error_code == 0
      return SessionError::Encoding.new(error, transfer) if error_code == 1
      return SessionError::TooManyRedirects.new(error, transfer) if error_code == 2
      return SessionError::TooManyRestarts.new(error, transfer) if error_code == 3
      return SessionError::RedirectNoLocation.new(error, transfer) if error_code == 4
      return SessionError::RedirectBadUri.new(error, transfer) if error_code == 5
      return SessionError::MessageAlreadyInQueue.new(error, transfer) if error_code == 6
    end

    if error_domain == LibGLib.g_quark_try_string("soup-tld-error-quark")
      return TLDError::InvalidHostname.new(error, transfer) if error_code == 0
      return TLDError::IsIpAddress.new(error, transfer) if error_code == 1
      return TLDError::NotEnoughDomains.new(error, transfer) if error_code == 2
      return TLDError::NoBaseDomain.new(error, transfer) if error_code == 3
      return TLDError::NoPslData.new(error, transfer) if error_code == 4
    end

    if error_domain == LibGLib.g_quark_try_string("soup-websocket-error-quark")
      return WebsocketError::Failed.new(error, transfer) if error_code == 0
      return WebsocketError::NotWebsocket.new(error, transfer) if error_code == 1
      return WebsocketError::BadHandshake.new(error, transfer) if error_code == 2
      return WebsocketError::BadOrigin.new(error, transfer) if error_code == 3
    end

    Gio.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end
