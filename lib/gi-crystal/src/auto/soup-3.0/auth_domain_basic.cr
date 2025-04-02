require "./auth_domain"

module Soup
  @[GICrystal::GeneratedWrapper]
  class AuthDomainBasic < AuthDomain
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(AuthDomainBasic, g_object_get_qdata)

    # Initialize a new `AuthDomainBasic`.
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

    def initialize(*, auth_callback : Soup::AuthDomainBasicAuthCallback? = nil, auth_data : Pointer(Void)? = nil, filter : Soup::AuthDomainFilter? = nil, filter_data : Pointer(Void)? = nil, generic_auth_callback : Soup::AuthDomainGenericAuthCallback? = nil, generic_auth_data : Pointer(Void)? = nil, proxy : Bool? = nil, realm : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[8]
      _values = StaticArray(LibGObject::Value, 8).new(LibGObject::Value.new)
      _n = 0

      if !auth_callback.nil?
        (_names.to_unsafe + _n).value = "auth-callback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, auth_callback)
        _n += 1
      end
      if !auth_data.nil?
        (_names.to_unsafe + _n).value = "auth-data".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, auth_data)
        _n += 1
      end
      if !filter.nil?
        (_names.to_unsafe + _n).value = "filter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filter)
        _n += 1
      end
      if !filter_data.nil?
        (_names.to_unsafe + _n).value = "filter-data".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filter_data)
        _n += 1
      end
      if !generic_auth_callback.nil?
        (_names.to_unsafe + _n).value = "generic-auth-callback".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, generic_auth_callback)
        _n += 1
      end
      if !generic_auth_data.nil?
        (_names.to_unsafe + _n).value = "generic-auth-data".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, generic_auth_data)
        _n += 1
      end
      if !proxy.nil?
        (_names.to_unsafe + _n).value = "proxy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, proxy)
        _n += 1
      end
      if !realm.nil?
        (_names.to_unsafe + _n).value = "realm".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, realm)
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
      @@g_type ||= LibSoup.soup_auth_domain_basic_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::AuthDomainBasic.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def auth_callback=(value : Soup::AuthDomainBasicAuthCallback?) : Soup::AuthDomainBasicAuthCallback?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "auth-callback", unsafe_value, Pointer(Void).null)
      value
    end

    def auth_callback : Soup::AuthDomainBasicAuthCallback?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "auth-callback", pointerof(value), Pointer(Void).null)
      Soup::AuthDomainBasicAuthCallback.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def auth_data=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "auth-data", unsafe_value, Pointer(Void).null)
      value
    end

    def auth_data : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "auth-data", pointerof(value), Pointer(Void).null)
      value
    end

    def auth_callback=(callback : Soup::AuthDomainBasicAuthCallback) : Nil
      # soup_auth_domain_basic_set_auth_callback: (Method | Setter)
      # @callback:
      # @user_data: (nullable)
      # @dnotify:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_domain : Pointer(Void), lib_msg : Pointer(Void), lib_username : Pointer(LibC::Char), lib_password : Pointer(LibC::Char), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          domain = Soup::AuthDomainBasic.new(lib_domain, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          username = ::String.new(lib_username)
          # Generator::BuiltInTypeArgPlan
          password = ::String.new(lib_password)
          ::Box(Proc(Soup::AuthDomainBasic, Soup::ServerMessage, ::String, ::String, Bool)).unbox(lib_user_data).call(domain, msg, username, password)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        dnotify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = user_data = dnotify = Pointer(Void).null
      end

      # C call
      LibSoup.soup_auth_domain_basic_set_auth_callback(to_unsafe, callback, user_data, dnotify)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
