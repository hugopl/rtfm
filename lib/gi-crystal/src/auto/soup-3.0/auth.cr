require "../g_object-2.0/object"

module Soup
  @[GICrystal::GeneratedWrapper]
  class Auth < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::AuthClass), class_init,
        sizeof(LibSoup::Auth), instance_init, 0)
    end

    GICrystal.declare_new_method(Auth, g_object_get_qdata)

    # Initialize a new `Auth`.
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
      @@g_type ||= LibSoup.soup_auth_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::Auth.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def authority=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "authority", unsafe_value, Pointer(Void).null)
      value
    end

    def authority : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "authority", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#authority` property to nil.
    def authority=(value : Nil) : Nil
      LibGObject.g_object_set(self, "authority", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#authority`, but can return nil.
    def authority? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "authority", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def is_authenticated? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-authenticated", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_cancelled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-cancelled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_for_proxy=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-for-proxy", unsafe_value, Pointer(Void).null)
      value
    end

    def is_for_proxy? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-for-proxy", pointerof(value), Pointer(Void).null)
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

    def scheme_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "scheme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#scheme_name`, but can return nil.
    def scheme_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "scheme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(type : UInt64, msg : Soup::Message, auth_header : ::String) : self?
      # soup_auth_new: (Constructor)
      # @type:
      # @msg:
      # @auth_header:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_auth_new(type, msg, auth_header)

      # Return value handling
      Soup::Auth.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def authenticate(username : ::String, password : ::String) : Nil
      # soup_auth_authenticate: (Method)
      # @username:
      # @password:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_auth_authenticate(to_unsafe, username, password)

      # Return value handling
    end

    def can_authenticate : Bool
      # soup_auth_can_authenticate: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_can_authenticate(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def cancel : Nil
      # soup_auth_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_auth_cancel(to_unsafe)

      # Return value handling
    end

    def authority : ::String
      # soup_auth_get_authority: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_get_authority(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def authorization(msg : Soup::Message) : ::String
      # soup_auth_get_authorization: (Method)
      # @msg:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_auth_get_authorization(to_unsafe, msg)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def info : ::String
      # soup_auth_get_info: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_auth_get_info(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def protection_space(source_uri : GLib::Uri) : GLib::SList
      # soup_auth_get_protection_space: (Method)
      # @source_uri:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_auth_get_protection_space(to_unsafe, source_uri)

      # Return value handling
      GLib::SList(::String).new(_retval, GICrystal::Transfer::Full)
    end

    def realm : ::String
      # soup_auth_get_realm: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_get_realm(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def scheme_name : ::String
      # soup_auth_get_scheme_name: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_get_scheme_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def is_authenticated? : Bool
      # soup_auth_is_authenticated: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_is_authenticated(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_cancelled? : Bool
      # soup_auth_is_cancelled: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_is_cancelled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_for_proxy : Bool
      # soup_auth_is_for_proxy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_is_for_proxy(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_ready(msg : Soup::Message) : Bool
      # soup_auth_is_ready: (Method)
      # @msg:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_is_ready(to_unsafe, msg)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def update(msg : Soup::Message, auth_header : ::String) : Bool
      # soup_auth_update: (Method)
      # @msg:
      # @auth_header:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_auth_update(to_unsafe, msg, auth_header)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # authenticate: (None)
    # @username:
    # @password:
    # Returns: (transfer none)
    private macro _register_authenticate_vfunc(impl_method_name)
      private def self._vfunc_authenticate(%this : Pointer(Void), lib_username :  Pointer(LibC::Char), lib_password :  Pointer(LibC::Char), ) : Void
        # @username: 
# @password: 

# Generator::BuiltInTypeArgPlan
username=::String.new(lib_username)
# Generator::BuiltInTypeArgPlan
password=::String.new(lib_password)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(username, password)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_authenticate(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # authenticate: (None)
    # @username:
    # @password:
    # Returns: (transfer none)
    private macro _register_unsafe_authenticate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_authenticate(%this : Pointer(Void), lib_username :  Pointer(LibC::Char), lib_password :  Pointer(LibC::Char), ) : Void
# @username: 
# @password: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_username, lib_password)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_authenticate = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_authenticate(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_authenticate : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char), Void)? = nil
    end

    # can_authenticate: (None)
    # Returns: (transfer none)
    private macro _register_can_authenticate_vfunc(impl_method_name)
      private def self._vfunc_can_authenticate(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_authenticate(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_authenticate: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_authenticate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_authenticate(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_authenticate = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_authenticate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_authenticate : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # get_authorization: (None)
    # @msg:
    # Returns: (transfer full)
    private macro _register_get_authorization_vfunc(impl_method_name)
      private def self._vfunc_get_authorization(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Pointer(LibC::Char)
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::Message.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_authorization(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_authorization: (None)
    # @msg:
    # Returns: (transfer full)
    private macro _register_unsafe_get_authorization_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_authorization(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : Pointer(LibC::Char)
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_authorization = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_authorization(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_authorization : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_protection_space: (None)
    # @source_uri:
    # Returns: (transfer full)
    private macro _register_get_protection_space_vfunc(impl_method_name)
      private def self._vfunc_get_protection_space(%this : Pointer(Void), lib_source_uri :  Pointer(Void), ) : Pointer(LibGLib::SList)
        # @source_uri: 

# Generator::BuiltInTypeArgPlan
source_uri=GLib::Uri.new(lib_source_uri, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(source_uri)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_protection_space(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_protection_space: (None)
    # @source_uri:
    # Returns: (transfer full)
    private macro _register_unsafe_get_protection_space_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_protection_space(%this : Pointer(Void), lib_source_uri :  Pointer(Void), ) : Pointer(LibGLib::SList)
# @source_uri: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_source_uri)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_protection_space = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::SList)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_protection_space(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_protection_space : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::SList))? = nil
    end

    # is_authenticated: (None)
    # Returns: (transfer none)
    private macro _register_is_authenticated_vfunc(impl_method_name)
      private def self._vfunc_is_authenticated(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_authenticated(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_authenticated: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_authenticated_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_authenticated(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_authenticated = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_authenticated(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_authenticated : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # is_ready: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_is_ready_vfunc(impl_method_name)
      private def self._vfunc_is_ready(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : LibC::Int
        # @msg: 

# Generator::BuiltInTypeArgPlan
msg=Soup::Message.new(lib_msg, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_ready(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # is_ready: (None)
    # @msg:
    # Returns: (transfer none)
    private macro _register_unsafe_is_ready_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_ready(%this : Pointer(Void), lib_msg :  Pointer(Void), ) : LibC::Int
# @msg: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_ready = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_ready(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_ready : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # update: (None)
    # @msg:
    # @auth_header:
    # Returns: (transfer none)
    private macro _register_update_vfunc(impl_method_name)
      private def self._vfunc_update(%this : Pointer(Void), lib_msg :  Pointer(Void), lib_auth_header :  Pointer(Void), ) : LibC::Int
        # @msg: 
# @auth_header: 

# Generator::BuiltInTypeArgPlan
msg=Soup::Message.new(lib_msg, GICrystal::Transfer::None)
auth_header=lib_auth_header


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(msg, auth_header)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_update(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # update: (None)
    # @msg:
    # @auth_header:
    # Returns: (transfer none)
    private macro _register_unsafe_update_vfunc(impl_method_name)
      private def self._vfunc_unsafe_update(%this : Pointer(Void), lib_msg :  Pointer(Void), lib_auth_header :  Pointer(Void), ) : LibC::Int
# @msg: 
# @auth_header: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_msg, lib_auth_header)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_update = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_update(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_update : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
