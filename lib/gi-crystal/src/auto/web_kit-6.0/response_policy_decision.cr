require "./policy_decision"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class ResponsePolicyDecision < PolicyDecision
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(ResponsePolicyDecision, g_object_get_qdata)

    # Initialize a new `ResponsePolicyDecision`.
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

    def initialize(*, request : WebKit::URIRequest? = nil, response : WebKit::URIResponse? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !request.nil?
        (_names.to_unsafe + _n).value = "request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, request)
        _n += 1
      end
      if !response.nil?
        (_names.to_unsafe + _n).value = "response".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, response)
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
      @@g_type ||= LibWebKit.webkit_response_policy_decision_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::ResponsePolicyDecision.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def request : WebKit::URIRequest?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "request", pointerof(value), Pointer(Void).null)
      WebKit::URIRequest.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def response : WebKit::URIResponse?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "response", pointerof(value), Pointer(Void).null)
      WebKit::URIResponse.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def request : WebKit::URIRequest
      # webkit_response_policy_decision_get_request: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_response_policy_decision_get_request(to_unsafe)

      # Return value handling
      WebKit::URIRequest.new(_retval, GICrystal::Transfer::None)
    end

    def response : WebKit::URIResponse
      # webkit_response_policy_decision_get_response: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_response_policy_decision_get_response(to_unsafe)

      # Return value handling
      WebKit::URIResponse.new(_retval, GICrystal::Transfer::None)
    end

    def is_main_frame_main_resource : Bool
      # webkit_response_policy_decision_is_main_frame_main_resource: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_response_policy_decision_is_main_frame_main_resource(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_mime_type_supported : Bool
      # webkit_response_policy_decision_is_mime_type_supported: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_response_policy_decision_is_mime_type_supported(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
