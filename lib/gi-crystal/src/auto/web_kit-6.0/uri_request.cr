require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class URIRequest < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(URIRequest, g_object_get_qdata)

    # Initialize a new `URIRequest`.
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

    def initialize(*, uri : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

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
      @@g_type ||= LibWebKit.webkit_uri_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::URIRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def uri=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "uri", unsafe_value, Pointer(Void).null)
      value
    end

    def uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#uri` property to nil.
    def uri=(value : Nil) : Nil
      LibGObject.g_object_set(self, "uri", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#uri`, but can return nil.
    def uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(uri : ::String) : self
      # webkit_uri_request_new: (Constructor)
      # @uri:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_uri_request_new(uri)

      # Return value handling
      WebKit::URIRequest.new(_retval, GICrystal::Transfer::Full)
    end

    def http_headers : Soup::MessageHeaders
      # webkit_uri_request_get_http_headers: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_request_get_http_headers(to_unsafe)

      # Return value handling
      Soup::MessageHeaders.new(_retval, GICrystal::Transfer::None)
    end

    def http_method : ::String
      # webkit_uri_request_get_http_method: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_request_get_http_method(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def uri : ::String
      # webkit_uri_request_get_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_uri_request_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def uri=(uri : ::String) : Nil
      # webkit_uri_request_set_uri: (Method | Setter)
      # @uri:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_uri_request_set_uri(to_unsafe, uri)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
