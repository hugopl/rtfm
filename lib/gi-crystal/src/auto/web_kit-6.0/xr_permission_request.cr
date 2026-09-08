require "../g_object-2.0/object"
require "./permission_request"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class XRPermissionRequest < GObject::Object
    include PermissionRequest

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(XRPermissionRequest, g_object_get_qdata)

    # Initialize a new `XRPermissionRequest`.
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
      @@g_type ||= LibWebKit.webkit_xr_permission_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::XRPermissionRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def consent_optional_features : WebKit::XRSessionFeatures
      # webkit_xr_permission_request_get_consent_optional_features: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_xr_permission_request_get_consent_optional_features(to_unsafe)

      # Return value handling
      WebKit::XRSessionFeatures.new(_retval)
    end

    def consent_required_features : WebKit::XRSessionFeatures
      # webkit_xr_permission_request_get_consent_required_features: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_xr_permission_request_get_consent_required_features(to_unsafe)

      # Return value handling
      WebKit::XRSessionFeatures.new(_retval)
    end

    def granted_features : WebKit::XRSessionFeatures
      # webkit_xr_permission_request_get_granted_features: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_xr_permission_request_get_granted_features(to_unsafe)

      # Return value handling
      WebKit::XRSessionFeatures.new(_retval)
    end

    def optional_features_requested : WebKit::XRSessionFeatures
      # webkit_xr_permission_request_get_optional_features_requested: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_xr_permission_request_get_optional_features_requested(to_unsafe)

      # Return value handling
      WebKit::XRSessionFeatures.new(_retval)
    end

    def required_features_requested : WebKit::XRSessionFeatures
      # webkit_xr_permission_request_get_required_features_requested: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_xr_permission_request_get_required_features_requested(to_unsafe)

      # Return value handling
      WebKit::XRSessionFeatures.new(_retval)
    end

    def security_origin : WebKit::SecurityOrigin
      # webkit_xr_permission_request_get_security_origin: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_xr_permission_request_get_security_origin(to_unsafe)

      # Return value handling
      WebKit::SecurityOrigin.new(_retval, GICrystal::Transfer::None)
    end

    def session_mode : WebKit::XRSessionMode
      # webkit_xr_permission_request_get_session_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_xr_permission_request_get_session_mode(to_unsafe)

      # Return value handling
      WebKit::XRSessionMode.new(_retval)
    end

    def granted_optional_features=(granted : WebKit::XRSessionFeatures) : Nil
      # webkit_xr_permission_request_set_granted_optional_features: (Method)
      # @granted:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_xr_permission_request_set_granted_optional_features(to_unsafe, granted)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
