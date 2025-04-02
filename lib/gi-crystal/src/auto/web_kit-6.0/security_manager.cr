require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class SecurityManager < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SecurityManager, g_object_get_qdata)

    # Initialize a new `SecurityManager`.
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
      @@g_type ||= LibWebKit.webkit_security_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::SecurityManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def register_uri_scheme_as_cors_enabled(scheme : ::String) : Nil
      # webkit_security_manager_register_uri_scheme_as_cors_enabled: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_security_manager_register_uri_scheme_as_cors_enabled(to_unsafe, scheme)

      # Return value handling
    end

    def register_uri_scheme_as_display_isolated(scheme : ::String) : Nil
      # webkit_security_manager_register_uri_scheme_as_display_isolated: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_security_manager_register_uri_scheme_as_display_isolated(to_unsafe, scheme)

      # Return value handling
    end

    def register_uri_scheme_as_empty_document(scheme : ::String) : Nil
      # webkit_security_manager_register_uri_scheme_as_empty_document: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_security_manager_register_uri_scheme_as_empty_document(to_unsafe, scheme)

      # Return value handling
    end

    def register_uri_scheme_as_local(scheme : ::String) : Nil
      # webkit_security_manager_register_uri_scheme_as_local: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_security_manager_register_uri_scheme_as_local(to_unsafe, scheme)

      # Return value handling
    end

    def register_uri_scheme_as_no_access(scheme : ::String) : Nil
      # webkit_security_manager_register_uri_scheme_as_no_access: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_security_manager_register_uri_scheme_as_no_access(to_unsafe, scheme)

      # Return value handling
    end

    def register_uri_scheme_as_secure(scheme : ::String) : Nil
      # webkit_security_manager_register_uri_scheme_as_secure: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_security_manager_register_uri_scheme_as_secure(to_unsafe, scheme)

      # Return value handling
    end

    def uri_scheme_is_cors_enabled(scheme : ::String) : Bool
      # webkit_security_manager_uri_scheme_is_cors_enabled: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_security_manager_uri_scheme_is_cors_enabled(to_unsafe, scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri_scheme_is_display_isolated(scheme : ::String) : Bool
      # webkit_security_manager_uri_scheme_is_display_isolated: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_security_manager_uri_scheme_is_display_isolated(to_unsafe, scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri_scheme_is_empty_document(scheme : ::String) : Bool
      # webkit_security_manager_uri_scheme_is_empty_document: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_security_manager_uri_scheme_is_empty_document(to_unsafe, scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri_scheme_is_local(scheme : ::String) : Bool
      # webkit_security_manager_uri_scheme_is_local: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_security_manager_uri_scheme_is_local(to_unsafe, scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri_scheme_is_no_access(scheme : ::String) : Bool
      # webkit_security_manager_uri_scheme_is_no_access: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_security_manager_uri_scheme_is_no_access(to_unsafe, scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri_scheme_is_secure(scheme : ::String) : Bool
      # webkit_security_manager_uri_scheme_is_secure: (Method)
      # @scheme:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_security_manager_uri_scheme_is_secure(to_unsafe, scheme)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
