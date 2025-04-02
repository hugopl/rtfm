require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class URIResponse < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(URIResponse, g_object_get_qdata)

    # Initialize a new `URIResponse`.
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

    def initialize(*, content_length : UInt64? = nil, http_headers : Soup::MessageHeaders? = nil, mime_type : ::String? = nil, status_code : UInt32? = nil, suggested_filename : ::String? = nil, uri : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !content_length.nil?
        (_names.to_unsafe + _n).value = "content-length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, content_length)
        _n += 1
      end
      if !http_headers.nil?
        (_names.to_unsafe + _n).value = "http-headers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, http_headers)
        _n += 1
      end
      if !mime_type.nil?
        (_names.to_unsafe + _n).value = "mime-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, mime_type)
        _n += 1
      end
      if !status_code.nil?
        (_names.to_unsafe + _n).value = "status-code".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, status_code)
        _n += 1
      end
      if !suggested_filename.nil?
        (_names.to_unsafe + _n).value = "suggested-filename".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, suggested_filename)
        _n += 1
      end
      if !uri.nil?
        (_names.to_unsafe + _n).value = "uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, uri)
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
      @@g_type ||= LibWebKit.webkit_uri_response_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::URIResponse.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def content_length : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "content-length", pointerof(value), Pointer(Void).null)
      value
    end

    def http_headers : Soup::MessageHeaders?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "http-headers", pointerof(value), Pointer(Void).null)
      Soup::MessageHeaders.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def mime_type : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "mime-type", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#mime_type`, but can return nil.
    def mime_type? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "mime-type", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def status_code : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "status-code", pointerof(value), Pointer(Void).null)
      value
    end

    def suggested_filename : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "suggested-filename", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#suggested_filename`, but can return nil.
    def suggested_filename? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "suggested-filename", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#uri`, but can return nil.
    def uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def content_length : UInt64
      # webkit_uri_response_get_content_length: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_response_get_content_length(to_unsafe)

      # Return value handling
      _retval
    end

    def http_headers : Soup::MessageHeaders
      # webkit_uri_response_get_http_headers: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_response_get_http_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None)
    end

    def mime_type : ::String
      # webkit_uri_response_get_mime_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_response_get_mime_type(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def status_code : UInt32
      # webkit_uri_response_get_status_code: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_response_get_status_code(to_unsafe)

      # Return value handling
      _retval
    end

    def suggested_filename : ::String
      # webkit_uri_response_get_suggested_filename: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_response_get_suggested_filename(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def uri : ::String
      # webkit_uri_response_get_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_response_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
