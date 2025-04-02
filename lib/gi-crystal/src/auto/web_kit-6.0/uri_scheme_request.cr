require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class URISchemeRequest < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(URISchemeRequest, g_object_get_qdata)

    # Initialize a new `URISchemeRequest`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibWebKit.webkit_uri_scheme_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::URISchemeRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def finish(stream : Gio::InputStream, stream_length : Int64, content_type : ::String?) : Nil
      # webkit_uri_scheme_request_finish: (Method)
      # @stream:
      # @stream_length:
      # @content_type: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content_type = if content_type.nil?
                       Pointer(LibC::Char).null
                     else
                       content_type.to_unsafe
                     end

      # C call
      LibWebKit.webkit_uri_scheme_request_finish(to_unsafe, stream, stream_length, content_type)

      # Return value handling
    end

    def finish_error(error : GLib::Error) : Nil
      # webkit_uri_scheme_request_finish_error: (Method)
      # @error:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_uri_scheme_request_finish_error(to_unsafe, error)

      # Return value handling
    end

    def finish_with_response(response : WebKit::URISchemeResponse) : Nil
      # webkit_uri_scheme_request_finish_with_response: (Method)
      # @response:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_uri_scheme_request_finish_with_response(to_unsafe, response)

      # Return value handling
    end

    def http_body : Gio::InputStream
      # webkit_uri_scheme_request_get_http_body: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_request_get_http_body(to_unsafe)

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def http_headers : Soup::MessageHeaders
      # webkit_uri_scheme_request_get_http_headers: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_request_get_http_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None)
    end

    def http_method : ::String
      # webkit_uri_scheme_request_get_http_method: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_request_get_http_method(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def path : ::String
      # webkit_uri_scheme_request_get_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_request_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def scheme : ::String
      # webkit_uri_scheme_request_get_scheme: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_request_get_scheme(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def uri : ::String
      # webkit_uri_scheme_request_get_uri: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_request_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def web_view : WebKit::WebView
      # webkit_uri_scheme_request_get_web_view: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_request_get_web_view(to_unsafe)

      # Return value handling
      WebKit::WebView.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
