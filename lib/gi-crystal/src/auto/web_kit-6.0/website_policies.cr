require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebsitePolicies < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebsitePolicies, g_object_get_qdata)

    # Initialize a new `WebsitePolicies`.
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

    def initialize(*, autoplay : WebKit::AutoplayPolicy? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !autoplay.nil?
        (_names.to_unsafe + _n).value = "autoplay".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, autoplay)
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
      @@g_type ||= LibWebKit.webkit_website_policies_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebsitePolicies.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def autoplay=(value : WebKit::AutoplayPolicy) : WebKit::AutoplayPolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "autoplay", unsafe_value, Pointer(Void).null)
      value
    end

    def autoplay : WebKit::AutoplayPolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "autoplay", pointerof(value), Pointer(Void).null)
      WebKit::AutoplayPolicy.new(value)
    end

    def self.new : self
      # webkit_website_policies_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_website_policies_new

      # Return value handling
      WebKit::WebsitePolicies.new(_retval, GICrystal::Transfer::Full)
    end

    def autoplay_policy : WebKit::AutoplayPolicy
      # webkit_website_policies_get_autoplay_policy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_website_policies_get_autoplay_policy(to_unsafe)

      # Return value handling
      WebKit::AutoplayPolicy.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
