require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class PolicyDecision < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibWebKit::PolicyDecisionClass), class_init,
        sizeof(LibWebKit::PolicyDecision), instance_init, 0)
    end

    GICrystal.declare_new_method(PolicyDecision, g_object_get_qdata)

    # Initialize a new `PolicyDecision`.
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
      @@g_type ||= LibWebKit.webkit_policy_decision_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::PolicyDecision.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def download : Nil
      # webkit_policy_decision_download: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_policy_decision_download(to_unsafe)

      # Return value handling
    end

    def ignore : Nil
      # webkit_policy_decision_ignore: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_policy_decision_ignore(to_unsafe)

      # Return value handling
    end

    def use : Nil
      # webkit_policy_decision_use: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_policy_decision_use(to_unsafe)

      # Return value handling
    end

    def use_with_policies(policies : WebKit::WebsitePolicies) : Nil
      # webkit_policy_decision_use_with_policies: (Method)
      # @policies:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_policy_decision_use_with_policies(to_unsafe, policies)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
