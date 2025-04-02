require "./auth"

module Soup
  @[GICrystal::GeneratedWrapper]
  class AuthBasic < Auth
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AuthBasic, g_object_get_qdata)

    # Initialize a new `AuthBasic`.
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

    def initialize(*, authority : ::String? = nil, is_authenticated : Bool? = nil, is_cancelled : Bool? = nil, is_for_proxy : Bool? = nil, realm : ::String? = nil, scheme_name : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

      if !authority.nil?
        (_names.to_unsafe + _n).value = "authority".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, authority)
        _n += 1
      end
      if !is_authenticated.nil?
        (_names.to_unsafe + _n).value = "is-authenticated".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_authenticated)
        _n += 1
      end
      if !is_cancelled.nil?
        (_names.to_unsafe + _n).value = "is-cancelled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_cancelled)
        _n += 1
      end
      if !is_for_proxy.nil?
        (_names.to_unsafe + _n).value = "is-for-proxy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_for_proxy)
        _n += 1
      end
      if !realm.nil?
        (_names.to_unsafe + _n).value = "realm".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, realm)
        _n += 1
      end
      if !scheme_name.nil?
        (_names.to_unsafe + _n).value = "scheme-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scheme_name)
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
      @@g_type ||= LibSoup.soup_auth_basic_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::AuthBasic.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def_equals_and_hash @pointer
  end
end
