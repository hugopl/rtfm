require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class AuthDomain < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::AuthDomainClass), class_init,
        sizeof(LibSoup::AuthDomain), instance_init, 0)
    end

    GICrystal.declare_new_method(AuthDomain, g_object_get_qdata)

    # Initialize a new `AuthDomain`.
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

    def initialize(*, filter : Soup::AuthDomainFilter? = nil, filter_data : Pointer(Void)? = nil, generic_auth_callback : Soup::AuthDomainGenericAuthCallback? = nil, generic_auth_data : Pointer(Void)? = nil, proxy : Bool? = nil, realm : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[6]
      _values = StaticArray(LibGObject::Value, 6).new(LibGObject::Value.new)
      _n = 0

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
      @@g_type ||= LibSoup.soup_auth_domain_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::AuthDomain.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def filter=(value : Soup::AuthDomainFilter?) : Soup::AuthDomainFilter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "filter", unsafe_value, Pointer(Void).null)
      value
    end

    def filter : Soup::AuthDomainFilter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filter", pointerof(value), Pointer(Void).null)
      Soup::AuthDomainFilter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def filter_data=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "filter-data", unsafe_value, Pointer(Void).null)
      value
    end

    def filter_data : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "filter-data", pointerof(value), Pointer(Void).null)
      value
    end

    def generic_auth_callback=(value : Soup::AuthDomainGenericAuthCallback?) : Soup::AuthDomainGenericAuthCallback?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "generic-auth-callback", unsafe_value, Pointer(Void).null)
      value
    end

    def generic_auth_callback : Soup::AuthDomainGenericAuthCallback?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "generic-auth-callback", pointerof(value), Pointer(Void).null)
      Soup::AuthDomainGenericAuthCallback.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def generic_auth_data=(value : Pointer(Void)) : Pointer(Void)
      unsafe_value = value

      LibGObject.g_object_set(self, "generic-auth-data", unsafe_value, Pointer(Void).null)
      value
    end

    def generic_auth_data : Pointer(Void)
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "generic-auth-data", pointerof(value), Pointer(Void).null)
      value
    end

    def proxy=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "proxy", unsafe_value, Pointer(Void).null)
      value
    end

    def proxy? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "proxy", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def realm=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "realm", unsafe_value, Pointer(Void).null)
      value
    end

    def realm : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "realm", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#realm` property to nil.
    def realm=(value : Nil) : Nil
      LibGObject.g_object_set(self, "realm", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#realm`, but can return nil.
    def realm? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "realm", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def accepts(msg : Soup::ServerMessage) : ::String?
      # soup_auth_domain_accepts: (Method)
      # @msg:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_auth_domain_accepts(to_unsafe, msg)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def add_path(path : ::String) : Nil
      # soup_auth_domain_add_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_auth_domain_add_path(to_unsafe, path)

      # Return value handling
    end

    def challenge(msg : Soup::ServerMessage) : Nil
      # soup_auth_domain_challenge: (Method)
      # @msg:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_auth_domain_challenge(to_unsafe, msg)

      # Return value handling
    end

    def check_password(msg : Soup::ServerMessage, username : ::String, password : ::String) : Bool
      # soup_auth_domain_check_password: (Method)
      # @msg:
      # @username:
      # @password:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_domain_check_password(to_unsafe, msg, username, password)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def covers(msg : Soup::ServerMessage) : Bool
      # soup_auth_domain_covers: (Method)
      # @msg:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_domain_covers(to_unsafe, msg)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def realm : ::String
      # soup_auth_domain_get_realm: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_domain_get_realm(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def remove_path(path : ::String) : Nil
      # soup_auth_domain_remove_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_auth_domain_remove_path(to_unsafe, path)

      # Return value handling
    end

    def filter=(filter : Soup::AuthDomainFilter) : Nil
      # soup_auth_domain_set_filter: (Method | Setter)
      # @filter:
      # @filter_data: (nullable)
      # @dnotify:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if filter
        _box = ::Box.box(filter)
        filter = ->(lib_domain : Pointer(Void), lib_msg : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          domain = Soup::AuthDomain.new(lib_domain, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
          ::Box(Proc(Soup::AuthDomain, Soup::ServerMessage, Bool)).unbox(lib_user_data).call(domain, msg)
        }.pointer
        filter_data = GICrystal::ClosureDataManager.register(_box)
        dnotify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        filter = filter_data = dnotify = Pointer(Void).null
      end

      # C call
      LibSoup.soup_auth_domain_set_filter(to_unsafe, filter, filter_data, dnotify)

      # Return value handling
    end

    def generic_auth_callback=(auth_callback : Soup::AuthDomainGenericAuthCallback) : Nil
      # soup_auth_domain_set_generic_auth_callback: (Method | Setter)
      # @auth_callback:
      # @auth_data: (nullable)
      # @dnotify:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if auth_callback
        _box = ::Box.box(auth_callback)
        auth_callback = ->(lib_domain : Pointer(Void), lib_msg : Pointer(Void), lib_username : Pointer(LibC::Char), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          domain = Soup::AuthDomain.new(lib_domain, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          msg = Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          username = ::String.new(lib_username)
          ::Box(Proc(Soup::AuthDomain, Soup::ServerMessage, ::String, Bool)).unbox(lib_user_data).call(domain, msg, username)
        }.pointer
        auth_data = GICrystal::ClosureDataManager.register(_box)
        dnotify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        auth_callback = auth_data = dnotify = Pointer(Void).null
      end

      # C call
      LibSoup.soup_auth_domain_set_generic_auth_callback(to_unsafe, auth_callback, auth_data, dnotify)

      # Return value handling
    end

    # accepts: (None)
    # @msg:
    # @header:
    # Returns: (transfer full)
    private macro _register_accepts_vfunc(impl_method_name)
      private def self._vfunc_accepts(%this : Pointer(Void), lib_msg :  Pointer(Void), lib_header :  Pointer(LibC::Char), ) : Pointer(LibC::Char)
        # @msg: 
# @header: 

# Generator::BuiltInTypeArgPlan
msg=Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
header=::String.new(lib_header)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg, header)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_accepts(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # accepts: (None)
    # @msg:
    # @header:
    # Returns: (transfer full)
    private macro _register_unsafe_accepts_vfunc(impl_method_name)
      private def self._vfunc_unsafe_accepts(%this : Pointer(Void), lib_msg :  Pointer(Void), lib_header :  Pointer(LibC::Char), ) : Pointer(LibC::Char)
# @msg: 
# @header: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg, lib_header)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_accepts = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_accepts(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_accepts : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))? = nil
    end

    # challenge: (None)
    # @msg:
    # Returns: (transfer full)
    private macro _register_challenge_vfunc(impl_method_name)
      private def self._vfunc_challenge(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Pointer(LibC::Char)
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_challenge(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # challenge: (None)
    # @msg:
    # Returns: (transfer full)
    private macro _register_unsafe_challenge_vfunc(impl_method_name)
      private def self._vfunc_unsafe_challenge(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Pointer(LibC::Char)
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_challenge = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_challenge(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_challenge : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # check_password: (None)
    # @msg:
    # @username:
    # @password:
    # Returns: (transfer none)
    private macro _register_check_password_vfunc(impl_method_name)
      private def self._vfunc_check_password(%this : Pointer(Void), lib_msg :  Pointer(Void), lib_username :  Pointer(LibC::Char), lib_password :  Pointer(LibC::Char), ) : LibC::Int
        # @msg: 
# @username: 
# @password: 

# Generator::BuiltInTypeArgPlan
msg=Soup::ServerMessage.new(lib_msg, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
username=::String.new(lib_username)
# Generator::BuiltInTypeArgPlan
password=::String.new(lib_password)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg, username, password)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_check_password(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # check_password: (None)
    # @msg:
    # @username:
    # @password:
    # Returns: (transfer none)
    private macro _register_unsafe_check_password_vfunc(impl_method_name)
      private def self._vfunc_unsafe_check_password(%this : Pointer(Void), lib_msg :  Pointer(Void), lib_username :  Pointer(LibC::Char), lib_password :  Pointer(LibC::Char), ) : LibC::Int
# @msg: 
# @username: 
# @password: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg, lib_username, lib_password)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_check_password = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_check_password(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_check_password : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
