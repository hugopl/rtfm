require "../g_object-2.0/object"
require "./permission_request"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebsiteDataAccessPermissionRequest < GObject::Object
    include PermissionRequest

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebsiteDataAccessPermissionRequest, g_object_get_qdata)

    # Initialize a new `WebsiteDataAccessPermissionRequest`.
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
      @@g_type ||= LibWebKit.webkit_website_data_access_permission_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebsiteDataAccessPermissionRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def current_domain : ::String
      # webkit_website_data_access_permission_request_get_current_domain: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_data_access_permission_request_get_current_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def requesting_domain : ::String
      # webkit_website_data_access_permission_request_get_requesting_domain: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_data_access_permission_request_get_requesting_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
