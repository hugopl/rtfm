module WebKit
  class WebExtensionMatchPattern
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(WebExtensionMatchPattern.g_type, pointer)
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
      LibGObject.g_boxed_free(WebExtensionMatchPattern.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_web_extension_match_pattern_get_type
    end

    def self.new_with_scheme(scheme : ::String, host : ::String, path : ::String) : self?
      # webkit_web_extension_match_pattern_new_with_scheme: (Constructor | Throws)
      # @scheme:
      # @host:
      # @path:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_new_with_scheme(scheme, host, path, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::WebExtensionMatchPattern.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_with_string(string : ::String) : self?
      # webkit_web_extension_match_pattern_new_with_string: (Constructor | Throws)
      # @string:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_new_with_string(string, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::WebExtensionMatchPattern.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def host : ::String
      # webkit_web_extension_match_pattern_get_host: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_get_host(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def matches_all_hosts : Bool
      # webkit_web_extension_match_pattern_get_matches_all_hosts: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_get_matches_all_hosts(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def matches_all_urls : Bool
      # webkit_web_extension_match_pattern_get_matches_all_urls: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_get_matches_all_urls(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def path : ::String
      # webkit_web_extension_match_pattern_get_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def scheme : ::String
      # webkit_web_extension_match_pattern_get_scheme: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_get_scheme(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def string : ::String
      # webkit_web_extension_match_pattern_get_string: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_get_string(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def matches_pattern(pattern : WebKit::WebExtensionMatchPattern, options : WebKit::WebExtensionMatchPatternOptions) : Bool
      # webkit_web_extension_match_pattern_matches_pattern: (Method)
      # @pattern:
      # @options:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_matches_pattern(to_unsafe, pattern, options)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def matches_url(url : ::String, options : WebKit::WebExtensionMatchPatternOptions) : Bool
      # webkit_web_extension_match_pattern_matches_url: (Method)
      # @url:
      # @options:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_matches_url(to_unsafe, url, options)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : WebKit::WebExtensionMatchPattern
      # webkit_web_extension_match_pattern_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_web_extension_match_pattern_ref(to_unsafe)

      # Return value handling
      WebKit::WebExtensionMatchPattern.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_web_extension_match_pattern_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_extension_match_pattern_unref(to_unsafe)

      # Return value handling
    end

    def self.register_custom_URL_scheme(urlScheme : ::String) : Nil
      # webkit_web_extension_match_pattern_register_custom_URL_scheme: (None)
      # @urlScheme:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_extension_match_pattern_register_custom_URL_scheme(urlScheme)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
