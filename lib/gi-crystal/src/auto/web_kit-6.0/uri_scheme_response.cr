require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class URISchemeResponse < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(URISchemeResponse, g_object_get_qdata)

    # Initialize a new `URISchemeResponse`.
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

    def initialize(*, stream : Gio::InputStream? = nil, stream_length : Int64? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !stream.nil?
        (_names.to_unsafe + _n).value = "stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, stream)
        _n += 1
      end
      if !stream_length.nil?
        (_names.to_unsafe + _n).value = "stream-length".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, stream_length)
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
      @@g_type ||= LibWebKit.webkit_uri_scheme_response_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::URISchemeResponse.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def stream=(value : Gio::InputStream?) : Gio::InputStream?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "stream", unsafe_value, Pointer(Void).null)
      value
    end

    def stream_length=(value : Int64) : Int64
      unsafe_value = value

      LibGObject.g_object_set(self, "stream-length", unsafe_value, Pointer(Void).null)
      value
    end

    def self.new(input_stream : Gio::InputStream, stream_length : Int64) : self
      # webkit_uri_scheme_response_new: (Constructor)
      # @input_stream:
      # @stream_length:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_uri_scheme_response_new(input_stream, stream_length)

      # Return value handling
      WebKit::URISchemeResponse.new(_retval, GICrystal::Transfer::Full)
    end

    def content_type=(content_type : ::String) : Nil
      # webkit_uri_scheme_response_set_content_type: (Method)
      # @content_type:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_uri_scheme_response_set_content_type(to_unsafe, content_type)

      # Return value handling
    end

    def http_headers=(headers : Soup::MessageHeaders) : Nil
      # webkit_uri_scheme_response_set_http_headers: (Method)
      # @headers: (transfer full)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_uri_scheme_response_set_http_headers(to_unsafe, headers)

      # Return value handling
    end

    def set_status(status_code : UInt32, reason_phrase : ::String?) : Nil
      # webkit_uri_scheme_response_set_status: (Method)
      # @status_code:
      # @reason_phrase: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      reason_phrase = if reason_phrase.nil?
                        Pointer(LibC::Char).null
                      else
                        reason_phrase.to_unsafe
                      end

      # C call
      LibWebKit.webkit_uri_scheme_response_set_status(to_unsafe, status_code, reason_phrase)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
