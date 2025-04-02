@[Link("soup-3.0", pkg_config: "soup-3.0")]
lib LibSoup
  # Flags
  type Cacheability = UInt32
  type Expectation = UInt32
  type MessageFlags = UInt32
  type ServerListenOptions = UInt32

  # Enums
  type CacheType = UInt32
  type CookieJarAcceptPolicy = UInt32
  type DateFormat = UInt32
  type Encoding = UInt32
  type HTTPVersion = UInt32
  type LoggerLogLevel = UInt32
  type MemoryUse = UInt32
  type MessageHeadersType = UInt32
  type MessagePriority = UInt32
  type SameSitePolicy = UInt32
  type SessionError = UInt32
  type Status = UInt32
  type TLDError = UInt32
  type URIComponent = UInt32
  type WebsocketCloseCode = UInt32
  type WebsocketConnectionType = UInt32
  type WebsocketDataType = UInt32
  type WebsocketError = UInt32
  type WebsocketState = UInt32

  # Callbacks
  alias AuthDomainBasicAuthCallback = Pointer(LibSoup::AuthDomainBasic), Pointer(LibSoup::ServerMessage), Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void) -> LibC::Int
  alias AuthDomainDigestAuthCallback = Pointer(LibSoup::AuthDomainDigest), Pointer(LibSoup::ServerMessage), Pointer(LibC::Char), Pointer(Void) -> Pointer(LibC::Char)
  alias AuthDomainFilter = Pointer(LibSoup::AuthDomain), Pointer(LibSoup::ServerMessage), Pointer(Void) -> LibC::Int
  alias AuthDomainGenericAuthCallback = Pointer(LibSoup::AuthDomain), Pointer(LibSoup::ServerMessage), Pointer(LibC::Char), Pointer(Void) -> LibC::Int
  alias LoggerFilter = Pointer(LibSoup::Logger), Pointer(LibSoup::Message), Pointer(Void) -> UInt32
  alias LoggerPrinter = Pointer(LibSoup::Logger), UInt32, Int8, Pointer(LibC::Char), Pointer(Void) -> Void
  alias MessageHeadersForeachFunc = Pointer(LibC::Char), Pointer(LibC::Char), Pointer(Void) -> Void
  alias ServerCallback = Pointer(LibSoup::Server), Pointer(LibSoup::ServerMessage), Pointer(LibC::Char), Pointer(Void), Pointer(Void) -> Void
  alias ServerWebsocketCallback = Pointer(LibSoup::Server), Pointer(LibSoup::ServerMessage), Pointer(LibC::Char), Pointer(LibSoup::WebsocketConnection), Pointer(Void) -> Void

  # Interface types
  type SessionFeature = Void

  # Structs

  struct AuthClass # 256 bytes long
    parent_class : LibGObject::ObjectClass
    scheme_name : Pointer(LibC::Char)
    strength : UInt32
    update : Void*
    get_protection_space : Void*
    authenticate : Void*
    is_authenticated : Void*
    get_authorization : Void*
    is_ready : Void*
    can_authenticate : Void*
    padding : Pointer(Void)[6]
  end

  struct AuthDomainBasicClass # 208 bytes long
    parent_class : LibSoup::AuthDomainClass
  end

  struct AuthDomainClass # 208 bytes long
    parent_class : LibGObject::ObjectClass
    accepts : Void*
    challenge : Void*
    check_password : Void*
    padding : Pointer(Void)[6]
  end

  struct AuthDomainDigestClass # 208 bytes long
    parent_class : LibSoup::AuthDomainClass
  end

  struct AuthManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct CacheClass # 176 bytes long
    parent_class : LibGObject::ObjectClass
    get_cacheability : Void*
    padding : Pointer(Void)[4]
  end

  struct ContentDecoderClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ContentSnifferClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type Cookie = Void # Struct with zero bytes

  struct CookieJarClass # 208 bytes long
    parent_class : LibGObject::ObjectClass
    save : Void*
    is_persistent : Void*
    changed : Void*
    padding : Pointer(Void)[6]
  end

  struct CookieJarDBClass # 208 bytes long
    parent_class : LibSoup::CookieJarClass
  end

  struct CookieJarTextClass # 208 bytes long
    parent_class : LibSoup::CookieJarClass
  end

  struct HSTSEnforcerClass # 192 bytes long
    parent_class : LibGObject::ObjectClass
    is_persistent : Void*
    has_valid_policy : Void*
    changed : Void*
    padding : Pointer(Void)[4]
  end

  struct HSTSEnforcerDBClass # 192 bytes long
    parent_class : LibSoup::HSTSEnforcerClass
  end

  type HSTSPolicy = Void # Struct with zero bytes

  struct LoggerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct MessageBody # 16 bytes long
    data : Pointer(UInt8)
    length : Int64
  end

  struct MessageClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type MessageHeaders = Void # Struct with zero bytes

  struct MessageHeadersIter # 24 bytes long
    dummy : Pointer(Void)[3]
  end

  type MessageMetrics = Void # Struct with zero bytes

  type Multipart = Void # Struct with zero bytes

  struct MultipartInputStreamClass # 272 bytes long
    parent_class : LibGio::FilterInputStreamClass
  end

  struct Range # 16 bytes long
    start : Int64
    _end : Int64
  end

  struct ServerClass # 216 bytes long
    parent_class : LibGObject::ObjectClass
    request_started : Void*
    request_read : Void*
    request_finished : Void*
    request_aborted : Void*
    padding : Pointer(Void)[6]
  end

  struct ServerMessageClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct SessionClass # 216 bytes long
    parent_class : LibGObject::ObjectClass
    request_queued : Void*
    request_unqueued : Void*
    _soup_reserved1 : Pointer(Void)
    _soup_reserved2 : Pointer(Void)
    _soup_reserved3 : Pointer(Void)
    _soup_reserved4 : Pointer(Void)
    _soup_reserved5 : Pointer(Void)
    _soup_reserved6 : Pointer(Void)
    _soup_reserved7 : Pointer(Void)
    _soup_reserved8 : Pointer(Void)
  end

  type SessionFeatureInterface = Void # Struct with zero bytes

  struct WebsocketConnectionClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct WebsocketExtensionClass # 232 bytes long
    parent_class : LibGObject::ObjectClass
    name : Pointer(LibC::Char)
    configure : Void*
    get_request_params : Void*
    get_response_params : Void*
    process_outgoing_message : Void*
    process_incoming_message : Void*
    padding : Pointer(Void)[6]
  end

  struct WebsocketExtensionDeflateClass # 232 bytes long
    parent_class : LibSoup::WebsocketExtensionClass
  end

  struct WebsocketExtensionManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  # Unions

  # Objects

  struct Auth
    parent_instance : LibGObject::Object
  end

  type AuthBasic = Void # Object struct with no fields

  type AuthDigest = Void # Object struct with no fields

  struct AuthDomain
    parent_instance : LibGObject::Object
  end

  type AuthDomainBasic = Void # Object struct with no fields

  type AuthDomainDigest = Void # Object struct with no fields

  type AuthManager = Void # Object struct with no fields

  type AuthNTLM = Void # Object struct with no fields

  type AuthNegotiate = Void # Object struct with no fields

  struct Cache
    parent_instance : LibGObject::Object
  end

  type ContentDecoder = Void # Object struct with no fields

  type ContentSniffer = Void # Object struct with no fields

  struct CookieJar
    parent_instance : LibGObject::Object
  end

  type CookieJarDB = Void # Object struct with no fields

  type CookieJarText = Void # Object struct with no fields

  struct HSTSEnforcer
    parent_instance : LibGObject::Object
  end

  type HSTSEnforcerDB = Void # Object struct with no fields

  type Logger = Void # Object struct with no fields

  type Message = Void # Object struct with no fields

  type MultipartInputStream = Void # Object struct with no fields

  struct Server
    parent_instance : LibGObject::Object
  end

  type ServerMessage = Void # Object struct with no fields

  struct Session
    parent_instance : LibGObject::Object
  end

  type WebsocketConnection = Void # Object struct with no fields

  struct WebsocketExtension
    parent_instance : LibGObject::Object
  end

  type WebsocketExtensionDeflate = Void # Object struct with no fields

  type WebsocketExtensionManager = Void # Object struct with no fields

  # All C Functions
  fun soup_auth_authenticate(this : Void*, username : Pointer(LibC::Char), password : Pointer(LibC::Char)) : Void
  fun soup_auth_basic_get_type : UInt64
  fun soup_auth_can_authenticate(this : Void*) : LibC::Int
  fun soup_auth_cancel(this : Void*) : Void
  fun soup_auth_digest_get_type : UInt64
  fun soup_auth_domain_accepts(this : Void*, msg : Pointer(Void)) : Pointer(LibC::Char)
  fun soup_auth_domain_add_path(this : Void*, path : Pointer(LibC::Char)) : Void
  fun soup_auth_domain_basic_get_type : UInt64
  fun soup_auth_domain_basic_set_auth_callback(this : Void*, callback : Void*, user_data : Pointer(Void), dnotify : Void*) : Void
  fun soup_auth_domain_challenge(this : Void*, msg : Pointer(Void)) : Void
  fun soup_auth_domain_check_password(this : Void*, msg : Pointer(Void), username : Pointer(LibC::Char), password : Pointer(LibC::Char)) : LibC::Int
  fun soup_auth_domain_covers(this : Void*, msg : Pointer(Void)) : LibC::Int
  fun soup_auth_domain_digest_encode_password(username : Pointer(LibC::Char), realm : Pointer(LibC::Char), password : Pointer(LibC::Char)) : Pointer(LibC::Char)
  fun soup_auth_domain_digest_get_type : UInt64
  fun soup_auth_domain_digest_set_auth_callback(this : Void*, callback : Void*, user_data : Pointer(Void), dnotify : Void*) : Void
  fun soup_auth_domain_get_realm(this : Void*) : Pointer(LibC::Char)
  fun soup_auth_domain_get_type : UInt64
  fun soup_auth_domain_remove_path(this : Void*, path : Pointer(LibC::Char)) : Void
  fun soup_auth_domain_set_filter(this : Void*, filter : Void*, filter_data : Pointer(Void), dnotify : Void*) : Void
  fun soup_auth_domain_set_generic_auth_callback(this : Void*, auth_callback : Void*, auth_data : Pointer(Void), dnotify : Void*) : Void
  fun soup_auth_get_authority(this : Void*) : Pointer(LibC::Char)
  fun soup_auth_get_authorization(this : Void*, msg : Pointer(Void)) : Pointer(LibC::Char)
  fun soup_auth_get_info(this : Void*) : Pointer(LibC::Char)
  fun soup_auth_get_protection_space(this : Void*, source_uri : Pointer(Void)) : Pointer(LibGLib::SList)
  fun soup_auth_get_realm(this : Void*) : Pointer(LibC::Char)
  fun soup_auth_get_scheme_name(this : Void*) : Pointer(LibC::Char)
  fun soup_auth_get_type : UInt64
  fun soup_auth_is_authenticated(this : Void*) : LibC::Int
  fun soup_auth_is_cancelled(this : Void*) : LibC::Int
  fun soup_auth_is_for_proxy(this : Void*) : LibC::Int
  fun soup_auth_is_ready(this : Void*, msg : Pointer(Void)) : LibC::Int
  fun soup_auth_manager_clear_cached_credentials(this : Void*) : Void
  fun soup_auth_manager_get_type : UInt64
  fun soup_auth_manager_use_auth(this : Void*, uri : Pointer(Void), auth : Pointer(Void)) : Void
  fun soup_auth_negotiate_get_type : UInt64
  fun soup_auth_negotiate_supported : LibC::Int
  fun soup_auth_new(type : UInt64, msg : Pointer(Void), auth_header : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_auth_ntlm_get_type : UInt64
  fun soup_auth_update(this : Void*, msg : Pointer(Void), auth_header : Pointer(LibC::Char)) : LibC::Int
  fun soup_cache_clear(this : Void*) : Void
  fun soup_cache_dump(this : Void*) : Void
  fun soup_cache_flush(this : Void*) : Void
  fun soup_cache_get_max_size(this : Void*) : UInt32
  fun soup_cache_get_type : UInt64
  fun soup_cache_load(this : Void*) : Void
  fun soup_cache_new(cache_dir : Pointer(LibC::Char), cache_type : UInt32) : Pointer(Void)
  fun soup_cache_set_max_size(this : Void*, max_size : UInt32) : Void
  fun soup_cache_type_get_type : UInt64
  fun soup_cacheability_get_type : UInt64
  fun soup_check_version(major : UInt32, minor : UInt32, micro : UInt32) : LibC::Int
  fun soup_content_decoder_get_type : UInt64
  fun soup_content_sniffer_get_type : UInt64
  fun soup_content_sniffer_new : Pointer(Void)
  fun soup_content_sniffer_sniff(this : Void*, msg : Pointer(Void), buffer : Pointer(Void), params : Pointer(Pointer(Void))) : Pointer(LibC::Char)
  fun soup_cookie_applies_to_uri(this : Void*, uri : Pointer(Void)) : LibC::Int
  fun soup_cookie_copy(this : Void*) : Pointer(Void)
  fun soup_cookie_domain_matches(this : Void*, host : Pointer(LibC::Char)) : LibC::Int
  fun soup_cookie_equal(this : Void*, cookie2 : Pointer(Void)) : LibC::Int
  fun soup_cookie_free(this : Void*) : Void
  fun soup_cookie_get_domain(this : Void*) : Pointer(LibC::Char)
  fun soup_cookie_get_expires(this : Void*) : Pointer(Void)
  fun soup_cookie_get_http_only(this : Void*) : LibC::Int
  fun soup_cookie_get_name(this : Void*) : Pointer(LibC::Char)
  fun soup_cookie_get_path(this : Void*) : Pointer(LibC::Char)
  fun soup_cookie_get_same_site_policy(this : Void*) : UInt32
  fun soup_cookie_get_secure(this : Void*) : LibC::Int
  fun soup_cookie_get_type : UInt64
  fun soup_cookie_get_value(this : Void*) : Pointer(LibC::Char)
  fun soup_cookie_jar_accept_policy_get_type : UInt64
  fun soup_cookie_jar_add_cookie(this : Void*, cookie : Pointer(Void)) : Void
  fun soup_cookie_jar_add_cookie_full(this : Void*, cookie : Pointer(Void), uri : Pointer(Void), first_party : Pointer(Void)) : Void
  fun soup_cookie_jar_add_cookie_with_first_party(this : Void*, first_party : Pointer(Void), cookie : Pointer(Void)) : Void
  fun soup_cookie_jar_all_cookies(this : Void*) : Pointer(LibGLib::SList)
  fun soup_cookie_jar_db_get_type : UInt64
  fun soup_cookie_jar_db_new(filename : Pointer(LibC::Char), read_only : LibC::Int) : Pointer(Void)
  fun soup_cookie_jar_delete_cookie(this : Void*, cookie : Pointer(Void)) : Void
  fun soup_cookie_jar_get_accept_policy(this : Void*) : UInt32
  fun soup_cookie_jar_get_cookie_list(this : Void*, uri : Pointer(Void), for_http : LibC::Int) : Pointer(LibGLib::SList)
  fun soup_cookie_jar_get_cookie_list_with_same_site_info(this : Void*, uri : Pointer(Void), top_level : Pointer(Void), site_for_cookies : Pointer(Void), for_http : LibC::Int, is_safe_method : LibC::Int, is_top_level_navigation : LibC::Int) : Pointer(LibGLib::SList)
  fun soup_cookie_jar_get_cookies(this : Void*, uri : Pointer(Void), for_http : LibC::Int) : Pointer(LibC::Char)
  fun soup_cookie_jar_get_type : UInt64
  fun soup_cookie_jar_is_persistent(this : Void*) : LibC::Int
  fun soup_cookie_jar_new : Pointer(Void)
  fun soup_cookie_jar_set_accept_policy(this : Void*, policy : UInt32) : Void
  fun soup_cookie_jar_set_cookie(this : Void*, uri : Pointer(Void), cookie : Pointer(LibC::Char)) : Void
  fun soup_cookie_jar_set_cookie_with_first_party(this : Void*, uri : Pointer(Void), first_party : Pointer(Void), cookie : Pointer(LibC::Char)) : Void
  fun soup_cookie_jar_text_get_type : UInt64
  fun soup_cookie_jar_text_new(filename : Pointer(LibC::Char), read_only : LibC::Int) : Pointer(Void)
  fun soup_cookie_new(name : Pointer(LibC::Char), value : Pointer(LibC::Char), domain : Pointer(LibC::Char), path : Pointer(LibC::Char), max_age : Int32) : Pointer(Void)
  fun soup_cookie_parse(header : Pointer(LibC::Char), origin : Pointer(Void)) : Pointer(Void)
  fun soup_cookie_parse(header : Pointer(LibC::Char), origin : Pointer(Void)) : Pointer(Void)
  fun soup_cookie_set_domain(this : Void*, domain : Pointer(LibC::Char)) : Void
  fun soup_cookie_set_expires(this : Void*, expires : Pointer(Void)) : Void
  fun soup_cookie_set_http_only(this : Void*, http_only : LibC::Int) : Void
  fun soup_cookie_set_max_age(this : Void*, max_age : Int32) : Void
  fun soup_cookie_set_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun soup_cookie_set_path(this : Void*, path : Pointer(LibC::Char)) : Void
  fun soup_cookie_set_same_site_policy(this : Void*, policy : UInt32) : Void
  fun soup_cookie_set_secure(this : Void*, secure : LibC::Int) : Void
  fun soup_cookie_set_value(this : Void*, value : Pointer(LibC::Char)) : Void
  fun soup_cookie_to_cookie_header(this : Void*) : Pointer(LibC::Char)
  fun soup_cookie_to_set_cookie_header(this : Void*) : Pointer(LibC::Char)
  fun soup_cookies_from_request(msg : Pointer(Void)) : Pointer(LibGLib::SList)
  fun soup_cookies_from_response(msg : Pointer(Void)) : Pointer(LibGLib::SList)
  fun soup_cookies_to_cookie_header(cookies : Pointer(LibGLib::SList)) : Pointer(LibC::Char)
  fun soup_cookies_to_request(cookies : Pointer(LibGLib::SList), msg : Pointer(Void)) : Void
  fun soup_cookies_to_response(cookies : Pointer(LibGLib::SList), msg : Pointer(Void)) : Void
  fun soup_date_format_get_type : UInt64
  fun soup_date_time_new_from_http_string(date_string : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_date_time_to_string(date : Pointer(Void), format : UInt32) : Pointer(LibC::Char)
  fun soup_encoding_get_type : UInt64
  fun soup_expectation_get_type : UInt64
  fun soup_form_decode(encoded_form : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_form_decode_multipart(multipart : Pointer(Void), file_control_name : Pointer(LibC::Char), filename : Pointer(Pointer(LibC::Char)), content_type : Pointer(Pointer(LibC::Char)), file : Pointer(Pointer(Void))) : Pointer(Void)
  fun soup_form_encode_datalist(form_data_set : Pointer(Void)) : Pointer(LibC::Char)
  fun soup_form_encode_hash(form_data_set : Pointer(Void)) : Pointer(LibC::Char)
  fun soup_get_major_version : UInt32
  fun soup_get_micro_version : UInt32
  fun soup_get_minor_version : UInt32
  fun soup_header_contains(header : Pointer(LibC::Char), token : Pointer(LibC::Char)) : LibC::Int
  fun soup_header_free_param_list(param_list : Pointer(Void)) : Void
  fun soup_header_g_string_append_param(string : Pointer(Void), name : Pointer(LibC::Char), value : Pointer(LibC::Char)) : Void
  fun soup_header_g_string_append_param_quoted(string : Pointer(Void), name : Pointer(LibC::Char), value : Pointer(LibC::Char)) : Void
  fun soup_header_parse_list(header : Pointer(LibC::Char)) : Pointer(LibGLib::SList)
  fun soup_header_parse_param_list(header : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_header_parse_param_list_strict(header : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_header_parse_quality_list(header : Pointer(LibC::Char), unacceptable : Pointer(Pointer(LibGLib::SList))) : Pointer(LibGLib::SList)
  fun soup_header_parse_semi_param_list(header : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_header_parse_semi_param_list_strict(header : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_headers_parse(str : Pointer(LibC::Char), len : Int32, dest : Pointer(Void)) : LibC::Int
  fun soup_headers_parse_request(str : Pointer(LibC::Char), len : Int32, req_headers : Pointer(Void), req_method : Pointer(Pointer(LibC::Char)), req_path : Pointer(Pointer(LibC::Char)), ver : Pointer(UInt32)) : UInt32
  fun soup_headers_parse_response(str : Pointer(LibC::Char), len : Int32, headers : Pointer(Void), ver : Pointer(UInt32), status_code : Pointer(UInt32), reason_phrase : Pointer(Pointer(LibC::Char))) : LibC::Int
  fun soup_headers_parse_status_line(status_line : Pointer(LibC::Char), ver : Pointer(UInt32), status_code : Pointer(UInt32), reason_phrase : Pointer(Pointer(LibC::Char))) : LibC::Int
  fun soup_hsts_enforcer_db_get_type : UInt64
  fun soup_hsts_enforcer_db_new(filename : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_hsts_enforcer_get_domains(this : Void*, session_policies : LibC::Int) : Pointer(LibGLib::List)
  fun soup_hsts_enforcer_get_policies(this : Void*, session_policies : LibC::Int) : Pointer(LibGLib::List)
  fun soup_hsts_enforcer_get_type : UInt64
  fun soup_hsts_enforcer_has_valid_policy(this : Void*, domain : Pointer(LibC::Char)) : LibC::Int
  fun soup_hsts_enforcer_is_persistent(this : Void*) : LibC::Int
  fun soup_hsts_enforcer_new : Pointer(Void)
  fun soup_hsts_enforcer_set_policy(this : Void*, policy : Pointer(Void)) : Void
  fun soup_hsts_enforcer_set_session_policy(this : Void*, domain : Pointer(LibC::Char), include_subdomains : LibC::Int) : Void
  fun soup_hsts_policy_copy(this : Void*) : Pointer(Void)
  fun soup_hsts_policy_equal(this : Void*, policy2 : Pointer(Void)) : LibC::Int
  fun soup_hsts_policy_free(this : Void*) : Void
  fun soup_hsts_policy_get_domain(this : Void*) : Pointer(LibC::Char)
  fun soup_hsts_policy_get_expires(this : Void*) : Pointer(Void)
  fun soup_hsts_policy_get_max_age(this : Void*) : UInt64
  fun soup_hsts_policy_get_type : UInt64
  fun soup_hsts_policy_includes_subdomains(this : Void*) : LibC::Int
  fun soup_hsts_policy_is_expired(this : Void*) : LibC::Int
  fun soup_hsts_policy_is_session_policy(this : Void*) : LibC::Int
  fun soup_hsts_policy_new(domain : Pointer(LibC::Char), max_age : UInt64, include_subdomains : LibC::Int) : Pointer(Void)
  fun soup_hsts_policy_new_from_response(msg : Pointer(Void)) : Pointer(Void)
  fun soup_hsts_policy_new_full(domain : Pointer(LibC::Char), max_age : UInt64, expires : Pointer(Void), include_subdomains : LibC::Int) : Pointer(Void)
  fun soup_hsts_policy_new_session_policy(domain : Pointer(LibC::Char), include_subdomains : LibC::Int) : Pointer(Void)
  fun soup_http_version_get_type : UInt64
  fun soup_logger_get_max_body_size(this : Void*) : Int32
  fun soup_logger_get_type : UInt64
  fun soup_logger_log_level_get_type : UInt64
  fun soup_logger_new(level : UInt32) : Pointer(Void)
  fun soup_logger_set_max_body_size(this : Void*, max_body_size : Int32) : Void
  fun soup_logger_set_printer(this : Void*, printer : Void*, printer_data : Pointer(Void), destroy : Void*) : Void
  fun soup_logger_set_request_filter(this : Void*, request_filter : Void*, filter_data : Pointer(Void), destroy : Void*) : Void
  fun soup_logger_set_response_filter(this : Void*, response_filter : Void*, filter_data : Pointer(Void), destroy : Void*) : Void
  fun soup_memory_use_get_type : UInt64
  fun soup_message_add_flags(this : Void*, flags : UInt32) : Void
  fun soup_message_body_append_bytes(this : Void*, buffer : Pointer(Void)) : Void
  fun soup_message_body_append_take(this : Void*, data : Pointer(UInt8), length : UInt64) : Void
  fun soup_message_body_complete(this : Void*) : Void
  fun soup_message_body_flatten(this : Void*) : Pointer(Void)
  fun soup_message_body_get_accumulate(this : Void*) : LibC::Int
  fun soup_message_body_get_chunk(this : Void*, offset : Int64) : Pointer(Void)
  fun soup_message_body_get_type : UInt64
  fun soup_message_body_got_chunk(this : Void*, chunk : Pointer(Void)) : Void
  fun soup_message_body_new : Pointer(Void)
  fun soup_message_body_ref(this : Void*) : Pointer(Void)
  fun soup_message_body_set_accumulate(this : Void*, accumulate : LibC::Int) : Void
  fun soup_message_body_truncate(this : Void*) : Void
  fun soup_message_body_unref(this : Void*) : Void
  fun soup_message_body_wrote_chunk(this : Void*, chunk : Pointer(Void)) : Void
  fun soup_message_disable_feature(this : Void*, feature_type : UInt64) : Void
  fun soup_message_flags_get_type : UInt64
  fun soup_message_get_connection_id(this : Void*) : UInt64
  fun soup_message_get_first_party(this : Void*) : Pointer(Void)
  fun soup_message_get_flags(this : Void*) : UInt32
  fun soup_message_get_force_http1(this : Void*) : LibC::Int
  fun soup_message_get_http_version(this : Void*) : UInt32
  fun soup_message_get_is_options_ping(this : Void*) : LibC::Int
  fun soup_message_get_is_top_level_navigation(this : Void*) : LibC::Int
  fun soup_message_get_method(this : Void*) : Pointer(LibC::Char)
  fun soup_message_get_metrics(this : Void*) : Pointer(Void)
  fun soup_message_get_priority(this : Void*) : UInt32
  fun soup_message_get_reason_phrase(this : Void*) : Pointer(LibC::Char)
  fun soup_message_get_remote_address(this : Void*) : Pointer(Void)
  fun soup_message_get_request_headers(this : Void*) : Pointer(Void)
  fun soup_message_get_response_headers(this : Void*) : Pointer(Void)
  fun soup_message_get_site_for_cookies(this : Void*) : Pointer(Void)
  fun soup_message_get_status(this : Void*) : UInt32
  fun soup_message_get_tls_ciphersuite_name(this : Void*) : Pointer(LibC::Char)
  fun soup_message_get_tls_peer_certificate(this : Void*) : Pointer(Void)
  fun soup_message_get_tls_peer_certificate_errors(this : Void*) : UInt32
  fun soup_message_get_tls_protocol_version(this : Void*) : UInt32
  fun soup_message_get_type : UInt64
  fun soup_message_get_uri(this : Void*) : Pointer(Void)
  fun soup_message_headers_append(this : Void*, name : Pointer(LibC::Char), value : Pointer(LibC::Char)) : Void
  fun soup_message_headers_clean_connection_headers(this : Void*) : Void
  fun soup_message_headers_clear(this : Void*) : Void
  fun soup_message_headers_foreach(this : Void*, func : Void*, user_data : Pointer(Void)) : Void
  fun soup_message_headers_free_ranges(this : Void*, ranges : Pointer(Void)) : Void
  fun soup_message_headers_get_content_disposition(this : Void*, disposition : Pointer(Pointer(LibC::Char)), params : Pointer(Pointer(Void))) : LibC::Int
  fun soup_message_headers_get_content_length(this : Void*) : Int64
  fun soup_message_headers_get_content_range(this : Void*, start : Pointer(Int64), _end : Pointer(Int64), total_length : Pointer(Int64)) : LibC::Int
  fun soup_message_headers_get_content_type(this : Void*, params : Pointer(Pointer(Void))) : Pointer(LibC::Char)
  fun soup_message_headers_get_encoding(this : Void*) : UInt32
  fun soup_message_headers_get_expectations(this : Void*) : UInt32
  fun soup_message_headers_get_headers_type(this : Void*) : UInt32
  fun soup_message_headers_get_list(this : Void*, name : Pointer(LibC::Char)) : Pointer(LibC::Char)
  fun soup_message_headers_get_one(this : Void*, name : Pointer(LibC::Char)) : Pointer(LibC::Char)
  fun soup_message_headers_get_ranges(this : Void*, total_length : Int64, ranges : Pointer(Pointer(LibSoup::Range)), length : Pointer(Int32)) : LibC::Int
  fun soup_message_headers_get_type : UInt64
  fun soup_message_headers_header_contains(this : Void*, name : Pointer(LibC::Char), token : Pointer(LibC::Char)) : LibC::Int
  fun soup_message_headers_header_equals(this : Void*, name : Pointer(LibC::Char), value : Pointer(LibC::Char)) : LibC::Int
  fun soup_message_headers_iter_init(iter : Pointer(Void), hdrs : Pointer(Void)) : Void
  fun soup_message_headers_iter_init(iter : Pointer(Void), hdrs : Pointer(Void)) : Void
  fun soup_message_headers_iter_next(iter : Pointer(Void), name : Pointer(Pointer(LibC::Char)), value : Pointer(Pointer(LibC::Char))) : LibC::Int
  fun soup_message_headers_iter_next(iter : Pointer(Void), name : Pointer(Pointer(LibC::Char)), value : Pointer(Pointer(LibC::Char))) : LibC::Int
  fun soup_message_headers_new(type : UInt32) : Pointer(Void)
  fun soup_message_headers_ref(this : Void*) : Pointer(Void)
  fun soup_message_headers_remove(this : Void*, name : Pointer(LibC::Char)) : Void
  fun soup_message_headers_replace(this : Void*, name : Pointer(LibC::Char), value : Pointer(LibC::Char)) : Void
  fun soup_message_headers_set_content_disposition(this : Void*, disposition : Pointer(LibC::Char), params : Pointer(Void)) : Void
  fun soup_message_headers_set_content_length(this : Void*, content_length : Int64) : Void
  fun soup_message_headers_set_content_range(this : Void*, start : Int64, _end : Int64, total_length : Int64) : Void
  fun soup_message_headers_set_content_type(this : Void*, content_type : Pointer(LibC::Char), params : Pointer(Void)) : Void
  fun soup_message_headers_set_encoding(this : Void*, encoding : UInt32) : Void
  fun soup_message_headers_set_expectations(this : Void*, expectations : UInt32) : Void
  fun soup_message_headers_set_range(this : Void*, start : Int64, _end : Int64) : Void
  fun soup_message_headers_set_ranges(this : Void*, ranges : Pointer(Void), length : Int32) : Void
  fun soup_message_headers_type_get_type : UInt64
  fun soup_message_headers_unref(this : Void*) : Void
  fun soup_message_is_feature_disabled(this : Void*, feature_type : UInt64) : LibC::Int
  fun soup_message_is_keepalive(this : Void*) : LibC::Int
  fun soup_message_metrics_copy(this : Void*) : Pointer(Void)
  fun soup_message_metrics_free(this : Void*) : Void
  fun soup_message_metrics_get_connect_end(this : Void*) : UInt64
  fun soup_message_metrics_get_connect_start(this : Void*) : UInt64
  fun soup_message_metrics_get_dns_end(this : Void*) : UInt64
  fun soup_message_metrics_get_dns_start(this : Void*) : UInt64
  fun soup_message_metrics_get_fetch_start(this : Void*) : UInt64
  fun soup_message_metrics_get_request_body_bytes_sent(this : Void*) : UInt64
  fun soup_message_metrics_get_request_body_size(this : Void*) : UInt64
  fun soup_message_metrics_get_request_header_bytes_sent(this : Void*) : UInt64
  fun soup_message_metrics_get_request_start(this : Void*) : UInt64
  fun soup_message_metrics_get_response_body_bytes_received(this : Void*) : UInt64
  fun soup_message_metrics_get_response_body_size(this : Void*) : UInt64
  fun soup_message_metrics_get_response_end(this : Void*) : UInt64
  fun soup_message_metrics_get_response_header_bytes_received(this : Void*) : UInt64
  fun soup_message_metrics_get_response_start(this : Void*) : UInt64
  fun soup_message_metrics_get_tls_start(this : Void*) : UInt64
  fun soup_message_metrics_get_type : UInt64
  fun soup_message_new(method : Pointer(LibC::Char), uri_string : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_message_new_from_encoded_form(method : Pointer(LibC::Char), uri_string : Pointer(LibC::Char), encoded_form : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_message_new_from_multipart(uri_string : Pointer(LibC::Char), multipart : Pointer(Void)) : Pointer(Void)
  fun soup_message_new_from_uri(method : Pointer(LibC::Char), uri : Pointer(Void)) : Pointer(Void)
  fun soup_message_new_options_ping(base_uri : Pointer(Void)) : Pointer(Void)
  fun soup_message_priority_get_type : UInt64
  fun soup_message_query_flags(this : Void*, flags : UInt32) : LibC::Int
  fun soup_message_remove_flags(this : Void*, flags : UInt32) : Void
  fun soup_message_set_first_party(this : Void*, first_party : Pointer(Void)) : Void
  fun soup_message_set_flags(this : Void*, flags : UInt32) : Void
  fun soup_message_set_force_http1(this : Void*, value : LibC::Int) : Void
  fun soup_message_set_is_options_ping(this : Void*, is_options_ping : LibC::Int) : Void
  fun soup_message_set_is_top_level_navigation(this : Void*, is_top_level_navigation : LibC::Int) : Void
  fun soup_message_set_method(this : Void*, method : Pointer(LibC::Char)) : Void
  fun soup_message_set_priority(this : Void*, priority : UInt32) : Void
  fun soup_message_set_request_body(this : Void*, content_type : Pointer(LibC::Char), stream : Pointer(Void), content_length : Int64) : Void
  fun soup_message_set_request_body_from_bytes(this : Void*, content_type : Pointer(LibC::Char), bytes : Pointer(Void)) : Void
  fun soup_message_set_site_for_cookies(this : Void*, site_for_cookies : Pointer(Void)) : Void
  fun soup_message_set_tls_client_certificate(this : Void*, certificate : Pointer(Void)) : Void
  fun soup_message_set_uri(this : Void*, uri : Pointer(Void)) : Void
  fun soup_message_tls_client_certificate_password_request_complete(this : Void*) : Void
  fun soup_multipart_append_form_file(this : Void*, control_name : Pointer(LibC::Char), filename : Pointer(LibC::Char), content_type : Pointer(LibC::Char), body : Pointer(Void)) : Void
  fun soup_multipart_append_form_string(this : Void*, control_name : Pointer(LibC::Char), data : Pointer(LibC::Char)) : Void
  fun soup_multipart_append_part(this : Void*, headers : Pointer(Void), body : Pointer(Void)) : Void
  fun soup_multipart_free(this : Void*) : Void
  fun soup_multipart_get_length(this : Void*) : Int32
  fun soup_multipart_get_part(this : Void*, part : Int32, headers : Pointer(Pointer(Void)), body : Pointer(Pointer(Void))) : LibC::Int
  fun soup_multipart_get_type : UInt64
  fun soup_multipart_input_stream_get_headers(this : Void*) : Pointer(Void)
  fun soup_multipart_input_stream_get_type : UInt64
  fun soup_multipart_input_stream_new(msg : Pointer(Void), base_stream : Pointer(Void)) : Pointer(Void)
  fun soup_multipart_input_stream_next_part(this : Void*, cancellable : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_multipart_input_stream_next_part_async(this : Void*, io_priority : Int32, cancellable : Pointer(Void), callback : Void*, data : Pointer(Void)) : Void
  fun soup_multipart_input_stream_next_part_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_multipart_new(mime_type : Pointer(LibC::Char)) : Pointer(Void)
  fun soup_multipart_new_from_message(headers : Pointer(Void), body : Pointer(Void)) : Pointer(Void)
  fun soup_multipart_to_message(this : Void*, dest_headers : Pointer(Void), dest_body : Pointer(Pointer(Void))) : Void
  fun soup_same_site_policy_get_type : UInt64
  fun soup_server_accept_iostream(this : Void*, stream : Pointer(Void), local_addr : Pointer(Void), remote_addr : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun soup_server_add_auth_domain(this : Void*, auth_domain : Pointer(Void)) : Void
  fun soup_server_add_early_handler(this : Void*, path : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy : Void*) : Void
  fun soup_server_add_handler(this : Void*, path : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy : Void*) : Void
  fun soup_server_add_websocket_extension(this : Void*, extension_type : UInt64) : Void
  fun soup_server_add_websocket_handler(this : Void*, path : Pointer(LibC::Char), origin : Pointer(LibC::Char), protocols : Pointer(Pointer(LibC::Char)), callback : Void*, user_data : Pointer(Void), destroy : Void*) : Void
  fun soup_server_disconnect(this : Void*) : Void
  fun soup_server_get_listeners(this : Void*) : Pointer(LibGLib::SList)
  fun soup_server_get_tls_auth_mode(this : Void*) : UInt32
  fun soup_server_get_tls_certificate(this : Void*) : Pointer(Void)
  fun soup_server_get_tls_database(this : Void*) : Pointer(Void)
  fun soup_server_get_type : UInt64
  fun soup_server_get_uris(this : Void*) : Pointer(LibGLib::SList)
  fun soup_server_is_https(this : Void*) : LibC::Int
  fun soup_server_listen(this : Void*, address : Pointer(Void), options : UInt32, error : LibGLib::Error**) : LibC::Int
  fun soup_server_listen_all(this : Void*, port : UInt32, options : UInt32, error : LibGLib::Error**) : LibC::Int
  fun soup_server_listen_local(this : Void*, port : UInt32, options : UInt32, error : LibGLib::Error**) : LibC::Int
  fun soup_server_listen_options_get_type : UInt64
  fun soup_server_listen_socket(this : Void*, socket : Pointer(Void), options : UInt32, error : LibGLib::Error**) : LibC::Int
  fun soup_server_message_get_http_version(this : Void*) : UInt32
  fun soup_server_message_get_local_address(this : Void*) : Pointer(Void)
  fun soup_server_message_get_method(this : Void*) : Pointer(LibC::Char)
  fun soup_server_message_get_reason_phrase(this : Void*) : Pointer(LibC::Char)
  fun soup_server_message_get_remote_address(this : Void*) : Pointer(Void)
  fun soup_server_message_get_remote_host(this : Void*) : Pointer(LibC::Char)
  fun soup_server_message_get_request_body(this : Void*) : Pointer(Void)
  fun soup_server_message_get_request_headers(this : Void*) : Pointer(Void)
  fun soup_server_message_get_response_body(this : Void*) : Pointer(Void)
  fun soup_server_message_get_response_headers(this : Void*) : Pointer(Void)
  fun soup_server_message_get_socket(this : Void*) : Pointer(Void)
  fun soup_server_message_get_status(this : Void*) : UInt32
  fun soup_server_message_get_tls_peer_certificate(this : Void*) : Pointer(Void)
  fun soup_server_message_get_tls_peer_certificate_errors(this : Void*) : UInt32
  fun soup_server_message_get_type : UInt64
  fun soup_server_message_get_uri(this : Void*) : Pointer(Void)
  fun soup_server_message_is_options_ping(this : Void*) : LibC::Int
  fun soup_server_message_pause(this : Void*) : Void
  fun soup_server_message_set_http_version(this : Void*, version : UInt32) : Void
  fun soup_server_message_set_redirect(this : Void*, status_code : UInt32, redirect_uri : Pointer(LibC::Char)) : Void
  fun soup_server_message_set_response(this : Void*, content_type : Pointer(LibC::Char), resp_use : UInt32, resp_body : Pointer(UInt8), resp_length : UInt64) : Void
  fun soup_server_message_set_status(this : Void*, status_code : UInt32, reason_phrase : Pointer(LibC::Char)) : Void
  fun soup_server_message_steal_connection(this : Void*) : Pointer(Void)
  fun soup_server_message_unpause(this : Void*) : Void
  fun soup_server_pause_message(this : Void*, msg : Pointer(Void)) : Void
  fun soup_server_remove_auth_domain(this : Void*, auth_domain : Pointer(Void)) : Void
  fun soup_server_remove_handler(this : Void*, path : Pointer(LibC::Char)) : Void
  fun soup_server_remove_websocket_extension(this : Void*, extension_type : UInt64) : Void
  fun soup_server_set_tls_auth_mode(this : Void*, mode : UInt32) : Void
  fun soup_server_set_tls_certificate(this : Void*, certificate : Pointer(Void)) : Void
  fun soup_server_set_tls_database(this : Void*, tls_database : Pointer(Void)) : Void
  fun soup_server_unpause_message(this : Void*, msg : Pointer(Void)) : Void
  fun soup_session_abort(this : Void*) : Void
  fun soup_session_add_feature(this : Void*, feature : Pointer(Void)) : Void
  fun soup_session_add_feature_by_type(this : Void*, feature_type : UInt64) : Void
  fun soup_session_error_get_type : UInt64
  fun soup_session_error_quark : UInt32
  fun soup_session_feature_get_type : UInt64
  fun soup_session_get_accept_language(this : Void*) : Pointer(LibC::Char)
  fun soup_session_get_accept_language_auto(this : Void*) : LibC::Int
  fun soup_session_get_async_result_message(this : Void*, result : Pointer(Void)) : Pointer(Void)
  fun soup_session_get_feature(this : Void*, feature_type : UInt64) : Pointer(Void)
  fun soup_session_get_feature_for_message(this : Void*, feature_type : UInt64, msg : Pointer(Void)) : Pointer(Void)
  fun soup_session_get_idle_timeout(this : Void*) : UInt32
  fun soup_session_get_local_address(this : Void*) : Pointer(Void)
  fun soup_session_get_max_conns(this : Void*) : UInt32
  fun soup_session_get_max_conns_per_host(this : Void*) : UInt32
  fun soup_session_get_proxy_resolver(this : Void*) : Pointer(Void)
  fun soup_session_get_remote_connectable(this : Void*) : Pointer(Void)
  fun soup_session_get_timeout(this : Void*) : UInt32
  fun soup_session_get_tls_database(this : Void*) : Pointer(Void)
  fun soup_session_get_tls_interaction(this : Void*) : Pointer(Void)
  fun soup_session_get_type : UInt64
  fun soup_session_get_user_agent(this : Void*) : Pointer(LibC::Char)
  fun soup_session_has_feature(this : Void*, feature_type : UInt64) : LibC::Int
  fun soup_session_new : Pointer(Void)
  fun soup_session_preconnect_async(this : Void*, msg : Pointer(Void), io_priority : Int32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun soup_session_preconnect_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun soup_session_remove_feature(this : Void*, feature : Pointer(Void)) : Void
  fun soup_session_remove_feature_by_type(this : Void*, feature_type : UInt64) : Void
  fun soup_session_send(this : Void*, msg : Pointer(Void), cancellable : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_session_send_and_read(this : Void*, msg : Pointer(Void), cancellable : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_session_send_and_read_async(this : Void*, msg : Pointer(Void), io_priority : Int32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun soup_session_send_and_read_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_session_send_and_splice(this : Void*, msg : Pointer(Void), out_stream : Pointer(Void), flags : UInt32, cancellable : Pointer(Void), error : LibGLib::Error**) : Int64
  fun soup_session_send_and_splice_async(this : Void*, msg : Pointer(Void), out_stream : Pointer(Void), flags : UInt32, io_priority : Int32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun soup_session_send_and_splice_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Int64
  fun soup_session_send_async(this : Void*, msg : Pointer(Void), io_priority : Int32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun soup_session_send_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_session_set_accept_language(this : Void*, accept_language : Pointer(LibC::Char)) : Void
  fun soup_session_set_accept_language_auto(this : Void*, accept_language_auto : LibC::Int) : Void
  fun soup_session_set_idle_timeout(this : Void*, timeout : UInt32) : Void
  fun soup_session_set_proxy_resolver(this : Void*, proxy_resolver : Pointer(Void)) : Void
  fun soup_session_set_timeout(this : Void*, timeout : UInt32) : Void
  fun soup_session_set_tls_database(this : Void*, tls_database : Pointer(Void)) : Void
  fun soup_session_set_tls_interaction(this : Void*, tls_interaction : Pointer(Void)) : Void
  fun soup_session_set_user_agent(this : Void*, user_agent : Pointer(LibC::Char)) : Void
  fun soup_session_websocket_connect_async(this : Void*, msg : Pointer(Void), origin : Pointer(LibC::Char), protocols : Pointer(Pointer(LibC::Char)), io_priority : Int32, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun soup_session_websocket_connect_finish(this : Void*, result : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_status_get_phrase(status_code : UInt32) : Pointer(LibC::Char)
  fun soup_status_get_type : UInt64
  fun soup_tld_domain_is_public_suffix(domain : Pointer(LibC::Char)) : LibC::Int
  fun soup_tld_error_get_type : UInt64
  fun soup_tld_error_quark : UInt32
  fun soup_tld_get_base_domain(hostname : Pointer(LibC::Char), error : LibGLib::Error**) : Pointer(LibC::Char)
  fun soup_uri_component_get_type : UInt64
  fun soup_uri_decode_data_uri(uri : Pointer(LibC::Char), content_type : Pointer(Pointer(LibC::Char))) : Pointer(Void)
  fun soup_uri_equal(uri1 : Pointer(Void), uri2 : Pointer(Void)) : LibC::Int
  fun soup_websocket_client_prepare_handshake(msg : Pointer(Void), origin : Pointer(LibC::Char), protocols : Pointer(Pointer(LibC::Char)), supported_extensions : Pointer(LibGObject::TypeClass)) : Void
  fun soup_websocket_client_verify_handshake(msg : Pointer(Void), supported_extensions : Pointer(LibGObject::TypeClass), accepted_extensions : Pointer(Pointer(LibGLib::List)), error : LibGLib::Error**) : LibC::Int
  fun soup_websocket_close_code_get_type : UInt64
  fun soup_websocket_connection_close(this : Void*, code : UInt16, data : Pointer(LibC::Char)) : Void
  fun soup_websocket_connection_get_close_code(this : Void*) : UInt16
  fun soup_websocket_connection_get_close_data(this : Void*) : Pointer(LibC::Char)
  fun soup_websocket_connection_get_connection_type(this : Void*) : UInt32
  fun soup_websocket_connection_get_extensions(this : Void*) : Pointer(LibGLib::List)
  fun soup_websocket_connection_get_io_stream(this : Void*) : Pointer(Void)
  fun soup_websocket_connection_get_keepalive_interval(this : Void*) : UInt32
  fun soup_websocket_connection_get_keepalive_pong_timeout(this : Void*) : UInt32
  fun soup_websocket_connection_get_max_incoming_payload_size(this : Void*) : UInt64
  fun soup_websocket_connection_get_origin(this : Void*) : Pointer(LibC::Char)
  fun soup_websocket_connection_get_protocol(this : Void*) : Pointer(LibC::Char)
  fun soup_websocket_connection_get_state(this : Void*) : UInt32
  fun soup_websocket_connection_get_type : UInt64
  fun soup_websocket_connection_get_uri(this : Void*) : Pointer(Void)
  fun soup_websocket_connection_new(stream : Pointer(Void), uri : Pointer(Void), type : UInt32, origin : Pointer(LibC::Char), protocol : Pointer(LibC::Char), extensions : Pointer(LibGLib::List)) : Pointer(Void)
  fun soup_websocket_connection_send_binary(this : Void*, data : Pointer(UInt8), length : UInt64) : Void
  fun soup_websocket_connection_send_message(this : Void*, type : UInt32, message : Pointer(Void)) : Void
  fun soup_websocket_connection_send_text(this : Void*, text : Pointer(LibC::Char)) : Void
  fun soup_websocket_connection_set_keepalive_interval(this : Void*, interval : UInt32) : Void
  fun soup_websocket_connection_set_keepalive_pong_timeout(this : Void*, pong_timeout : UInt32) : Void
  fun soup_websocket_connection_set_max_incoming_payload_size(this : Void*, max_incoming_payload_size : UInt64) : Void
  fun soup_websocket_connection_type_get_type : UInt64
  fun soup_websocket_data_type_get_type : UInt64
  fun soup_websocket_error_get_type : UInt64
  fun soup_websocket_error_quark : UInt32
  fun soup_websocket_extension_configure(this : Void*, connection_type : UInt32, params : Pointer(Void), error : LibGLib::Error**) : LibC::Int
  fun soup_websocket_extension_deflate_get_type : UInt64
  fun soup_websocket_extension_get_request_params(this : Void*) : Pointer(LibC::Char)
  fun soup_websocket_extension_get_response_params(this : Void*) : Pointer(LibC::Char)
  fun soup_websocket_extension_get_type : UInt64
  fun soup_websocket_extension_manager_get_type : UInt64
  fun soup_websocket_extension_process_incoming_message(this : Void*, header : Pointer(UInt8), payload : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_websocket_extension_process_outgoing_message(this : Void*, header : Pointer(UInt8), payload : Pointer(Void), error : LibGLib::Error**) : Pointer(Void)
  fun soup_websocket_server_check_handshake(msg : Pointer(Void), origin : Pointer(LibC::Char), protocols : Pointer(Pointer(LibC::Char)), supported_extensions : Pointer(LibGObject::TypeClass), error : LibGLib::Error**) : LibC::Int
  fun soup_websocket_server_process_handshake(msg : Pointer(Void), expected_origin : Pointer(LibC::Char), protocols : Pointer(Pointer(LibC::Char)), supported_extensions : Pointer(LibGObject::TypeClass), accepted_extensions : Pointer(Pointer(LibGLib::List))) : LibC::Int
  fun soup_websocket_state_get_type : UInt64
end
