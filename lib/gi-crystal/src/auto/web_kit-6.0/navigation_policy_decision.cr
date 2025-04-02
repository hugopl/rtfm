require "./policy_decision"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class NavigationPolicyDecision < PolicyDecision
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(NavigationPolicyDecision, g_object_get_qdata)

    # Initialize a new `NavigationPolicyDecision`.
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

    def initialize(*, navigation_action : WebKit::NavigationAction? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !navigation_action.nil?
        (_names.to_unsafe + _n).value = "navigation-action".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, navigation_action)
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
      @@g_type ||= LibWebKit.webkit_navigation_policy_decision_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::NavigationPolicyDecision.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def navigation_action : WebKit::NavigationAction?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "navigation-action", pointerof(value), Pointer(Void).null)
      WebKit::NavigationAction.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def navigation_action : WebKit::NavigationAction
      # webkit_navigation_policy_decision_get_navigation_action: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_navigation_policy_decision_get_navigation_action(to_unsafe)

      # Return value handling
      WebKit::NavigationAction.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
