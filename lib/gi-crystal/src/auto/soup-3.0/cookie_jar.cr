require "../g_object-2.0/object"
require "./session_feature"

module Soup
  @[GICrystal::GeneratedWrapper]
  class CookieJar < GObject::Object
    include SessionFeature

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::CookieJarClass), class_init,
        sizeof(LibSoup::CookieJar), instance_init, 0)
    end

    GICrystal.declare_new_method(CookieJar, g_object_get_qdata)

    # Initialize a new `CookieJar`.
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

    def initialize(*, accept_policy : Soup::CookieJarAcceptPolicy? = nil, read_only : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !accept_policy.nil?
        (_names.to_unsafe + _n).value = "accept-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accept_policy)
        _n += 1
      end
      if !read_only.nil?
        (_names.to_unsafe + _n).value = "read-only".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, read_only)
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
      @@g_type ||= LibSoup.soup_cookie_jar_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::CookieJar.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def accept_policy=(value : Soup::CookieJarAcceptPolicy) : Soup::CookieJarAcceptPolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "accept-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def accept_policy : Soup::CookieJarAcceptPolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "accept-policy", pointerof(value), Pointer(Void).null)
      Soup::CookieJarAcceptPolicy.new(value)
    end

    def read_only=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "read-only", unsafe_value, Pointer(Void).null)
      value
    end

    def read_only? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "read-only", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # soup_cookie_jar_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_jar_new

      # Return value handling
      Soup::CookieJar.new(_retval, GICrystal::Transfer::Full)
    end

    def add_cookie(cookie : Soup::Cookie) : Nil
      # soup_cookie_jar_add_cookie: (Method)
      # @cookie: (transfer full)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_jar_add_cookie(to_unsafe, cookie)

      # Return value handling
    end

    def add_cookie_full(cookie : Soup::Cookie, uri : GLib::Uri?, first_party : GLib::Uri?) : Nil
      # soup_cookie_jar_add_cookie_full: (Method)
      # @cookie: (transfer full)
      # @uri: (nullable)
      # @first_party: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      uri = if uri.nil?
              Pointer(Void).null
            else
              uri.to_unsafe
            end
      # Generator::NullableArrayPlan
      first_party = if first_party.nil?
                      Pointer(Void).null
                    else
                      first_party.to_unsafe
                    end

      # C call
      LibSoup.soup_cookie_jar_add_cookie_full(to_unsafe, cookie, uri, first_party)

      # Return value handling
    end

    def add_cookie_with_first_party(first_party : GLib::Uri, cookie : Soup::Cookie) : Nil
      # soup_cookie_jar_add_cookie_with_first_party: (Method)
      # @first_party:
      # @cookie: (transfer full)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_jar_add_cookie_with_first_party(to_unsafe, first_party, cookie)

      # Return value handling
    end

    def all_cookies : GLib::SList
      # soup_cookie_jar_all_cookies: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_jar_all_cookies(to_unsafe)

      # Return value handling
      GLib::SList(Soup::Cookie).new(_retval, GICrystal::Transfer::Full)
    end

    def delete_cookie(cookie : Soup::Cookie) : Nil
      # soup_cookie_jar_delete_cookie: (Method)
      # @cookie:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_jar_delete_cookie(to_unsafe, cookie)

      # Return value handling
    end

    def accept_policy : Soup::CookieJarAcceptPolicy
      # soup_cookie_jar_get_accept_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_jar_get_accept_policy(to_unsafe)

      # Return value handling
      Soup::CookieJarAcceptPolicy.new(_retval)
    end

    def cookie_list(uri : GLib::Uri, for_http : Bool) : GLib::SList
      # soup_cookie_jar_get_cookie_list: (Method)
      # @uri:
      # @for_http:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_jar_get_cookie_list(to_unsafe, uri, for_http)

      # Return value handling
      GLib::SList(Soup::Cookie).new(_retval, GICrystal::Transfer::Full)
    end

    def cookie_list_with_same_site_info(uri : GLib::Uri, top_level : GLib::Uri?, site_for_cookies : GLib::Uri?, for_http : Bool, is_safe_method : Bool, is_top_level_navigation : Bool) : GLib::SList
      # soup_cookie_jar_get_cookie_list_with_same_site_info: (Method)
      # @uri:
      # @top_level: (nullable)
      # @site_for_cookies: (nullable)
      # @for_http:
      # @is_safe_method:
      # @is_top_level_navigation:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      top_level = if top_level.nil?
                    Pointer(Void).null
                  else
                    top_level.to_unsafe
                  end
      # Generator::NullableArrayPlan
      site_for_cookies = if site_for_cookies.nil?
                           Pointer(Void).null
                         else
                           site_for_cookies.to_unsafe
                         end

      # C call
      _retval = LibSoup.soup_cookie_jar_get_cookie_list_with_same_site_info(to_unsafe, uri, top_level, site_for_cookies, for_http, is_safe_method, is_top_level_navigation)

      # Return value handling
      GLib::SList(Soup::Cookie).new(_retval, GICrystal::Transfer::Full)
    end

    def cookies(uri : GLib::Uri, for_http : Bool) : ::String?
      # soup_cookie_jar_get_cookies: (Method)
      # @uri:
      # @for_http:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_cookie_jar_get_cookies(to_unsafe, uri, for_http)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def is_persistent : Bool
      # soup_cookie_jar_is_persistent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_jar_is_persistent(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def accept_policy=(policy : Soup::CookieJarAcceptPolicy) : Nil
      # soup_cookie_jar_set_accept_policy: (Method | Setter)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_jar_set_accept_policy(to_unsafe, policy)

      # Return value handling
    end

    def set_cookie(uri : GLib::Uri, cookie : ::String) : Nil
      # soup_cookie_jar_set_cookie: (Method)
      # @uri:
      # @cookie:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_jar_set_cookie(to_unsafe, uri, cookie)

      # Return value handling
    end

    def set_cookie_with_first_party(uri : GLib::Uri, first_party : GLib::Uri, cookie : ::String) : Nil
      # soup_cookie_jar_set_cookie_with_first_party: (Method)
      # @uri:
      # @first_party:
      # @cookie:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_jar_set_cookie_with_first_party(to_unsafe, uri, first_party, cookie)

      # Return value handling
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::Cookie?, Soup::Cookie?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::Cookie?, Soup::Cookie?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_old_cookie : Pointer(Void), lib_new_cookie : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::NullableArrayPlan
          old_cookie = (lib_old_cookie.null? ? nil : Soup::Cookie.new(lib_old_cookie, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          old_cookie = Soup::Cookie.new(lib_old_cookie, GICrystal::Transfer::None) unless lib_old_cookie.null?
          # Generator::NullableArrayPlan
          new_cookie = (lib_new_cookie.null? ? nil : Soup::Cookie.new(lib_new_cookie, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          new_cookie = Soup::Cookie.new(lib_new_cookie, GICrystal::Transfer::None) unless lib_new_cookie.null?
          ::Box(Proc(Soup::Cookie?, Soup::Cookie?, Nil)).unbox(_lib_box).call(old_cookie, new_cookie)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::CookieJar, Soup::Cookie?, Soup::Cookie?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_old_cookie : Pointer(Void), lib_new_cookie : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::CookieJar.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::NullableArrayPlan
          old_cookie = (lib_old_cookie.null? ? nil : Soup::Cookie.new(lib_old_cookie, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          old_cookie = Soup::Cookie.new(lib_old_cookie, GICrystal::Transfer::None) unless lib_old_cookie.null?
          # Generator::NullableArrayPlan
          new_cookie = (lib_new_cookie.null? ? nil : Soup::Cookie.new(lib_new_cookie, GICrystal::Transfer::None))
          # Generator::BuiltInTypeArgPlan
          new_cookie = Soup::Cookie.new(lib_new_cookie, GICrystal::Transfer::None) unless lib_new_cookie.null?
          ::Box(Proc(Soup::CookieJar, Soup::Cookie?, Soup::Cookie?, Nil)).unbox(_lib_box).call(_sender, old_cookie, new_cookie)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(old_cookie : Soup::Cookie?, new_cookie : Soup::Cookie?) : Nil
        # Generator::NullableArrayPlan
        old_cookie = if old_cookie.nil?
                       Void.null
                     else
                       old_cookie.to_unsafe
                     end
        # Generator::NullableArrayPlan
        new_cookie = if new_cookie.nil?
                       Void.null
                     else
                       new_cookie.to_unsafe
                     end

        LibGObject.g_signal_emit_by_name(@source, "changed", old_cookie, new_cookie)
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    # changed: (None)
    # @old_cookie:
    # @new_cookie:
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), lib_old_cookie :  Pointer(Void), lib_new_cookie :  Pointer(Void), ) : Void
        # @old_cookie: 
# @new_cookie: 

# Generator::BuiltInTypeArgPlan
old_cookie=Soup::Cookie.new(lib_old_cookie, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
new_cookie=Soup::Cookie.new(lib_new_cookie, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(old_cookie, new_cookie)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # @old_cookie:
    # @new_cookie:
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), lib_old_cookie :  Pointer(Void), lib_new_cookie :  Pointer(Void), ) : Void
# @old_cookie: 
# @new_cookie: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_old_cookie, lib_new_cookie)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # is_persistent: (None)
    # Returns: (transfer none)
    private macro _register_is_persistent_vfunc(impl_method_name)
      private def self._vfunc_is_persistent(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_persistent(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_persistent: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_persistent_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_persistent(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_persistent = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_persistent(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_persistent : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # save: (None)
    # Returns: (transfer none)
    private macro _register_save_vfunc(impl_method_name)
      private def self._vfunc_save(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_save(Pointer(Void))).pointer
        previous_def
      end
    end

    # save: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_save_vfunc(impl_method_name)
      private def self._vfunc_unsafe_save(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_save = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_save(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_save : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
