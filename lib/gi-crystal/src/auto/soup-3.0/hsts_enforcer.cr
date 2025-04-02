require "../g_object-2.0/object"
require "./session_feature"

module Soup
  @[GICrystal::GeneratedWrapper]
  class HSTSEnforcer < GObject::Object
    include SessionFeature

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibSoup::HSTSEnforcerClass), class_init,
        sizeof(LibSoup::HSTSEnforcer), instance_init, 0)
    end

    GICrystal.declare_new_method(HSTSEnforcer, g_object_get_qdata)

    # Initialize a new `HSTSEnforcer`.
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
      @@g_type ||= LibSoup.soup_hsts_enforcer_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Soup::HSTSEnforcer.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # soup_hsts_enforcer_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_enforcer_new

      # Return value handling
      Soup::HSTSEnforcer.new(_retval, GICrystal::Transfer::Full)
    end

    def domains(session_policies : Bool) : GLib::List
      # soup_hsts_enforcer_get_domains: (Method)
      # @session_policies:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_enforcer_get_domains(to_unsafe, session_policies)

      # Return value handling
      GLib::List(::String).new(_retval, GICrystal::Transfer::Full)
    end

    def policies(session_policies : Bool) : GLib::List
      # soup_hsts_enforcer_get_policies: (Method)
      # @session_policies:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_enforcer_get_policies(to_unsafe, session_policies)

      # Return value handling
      GLib::List(Soup::HSTSPolicy).new(_retval, GICrystal::Transfer::Full)
    end

    def has_valid_policy(domain : ::String) : Bool
      # soup_hsts_enforcer_has_valid_policy: (Method)
      # @domain:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_enforcer_has_valid_policy(to_unsafe, domain)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_persistent : Bool
      # soup_hsts_enforcer_is_persistent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_enforcer_is_persistent(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def policy=(policy : Soup::HSTSPolicy) : Nil
      # soup_hsts_enforcer_set_policy: (Method)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_hsts_enforcer_set_policy(to_unsafe, policy)

      # Return value handling
    end

    def set_session_policy(domain : ::String, include_subdomains : Bool) : Nil
      # soup_hsts_enforcer_set_session_policy: (Method)
      # @domain:
      # @include_subdomains:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_hsts_enforcer_set_session_policy(to_unsafe, domain, include_subdomains)

      # Return value handling
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Soup::HSTSPolicy, Soup::HSTSPolicy, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Soup::HSTSPolicy, Soup::HSTSPolicy, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_old_policy : Pointer(Void), lib_new_policy : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          old_policy = Soup::HSTSPolicy.new(lib_old_policy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          new_policy = Soup::HSTSPolicy.new(lib_new_policy, GICrystal::Transfer::None)
          ::Box(Proc(Soup::HSTSPolicy, Soup::HSTSPolicy, Nil)).unbox(_lib_box).call(old_policy, new_policy)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Soup::HSTSEnforcer, Soup::HSTSPolicy, Soup::HSTSPolicy, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_old_policy : Pointer(Void), lib_new_policy : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Soup::HSTSEnforcer.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          old_policy = Soup::HSTSPolicy.new(lib_old_policy, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          new_policy = Soup::HSTSPolicy.new(lib_new_policy, GICrystal::Transfer::None)
          ::Box(Proc(Soup::HSTSEnforcer, Soup::HSTSPolicy, Soup::HSTSPolicy, Nil)).unbox(_lib_box).call(_sender, old_policy, new_policy)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(old_policy : Soup::HSTSPolicy, new_policy : Soup::HSTSPolicy) : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed", old_policy, new_policy)
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    # changed: (None)
    # @old_policy:
    # @new_policy:
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), lib_old_policy :  Pointer(Void), lib_new_policy :  Pointer(Void), ) : Void
        # @old_policy: 
# @new_policy: 

# Generator::BuiltInTypeArgPlan
old_policy=Soup::HSTSPolicy.new(lib_old_policy, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
new_policy=Soup::HSTSPolicy.new(lib_new_policy, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(old_policy, new_policy)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # @old_policy:
    # @new_policy:
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), lib_old_policy :  Pointer(Void), lib_new_policy :  Pointer(Void), ) : Void
# @old_policy: 
# @new_policy: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_old_policy, lib_new_policy)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # has_valid_policy: (None)
    # @domain:
    # Returns: (transfer none)
    private macro _register_has_valid_policy_vfunc(impl_method_name)
      private def self._vfunc_has_valid_policy(%this : Pointer(Void), lib_domain :  Pointer(LibC::Char), ) : LibC::Int
        # @domain: 

# Generator::BuiltInTypeArgPlan
domain=::String.new(lib_domain)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(domain)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_has_valid_policy(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # has_valid_policy: (None)
    # @domain:
    # Returns: (transfer none)
    private macro _register_unsafe_has_valid_policy_vfunc(impl_method_name)
      private def self._vfunc_unsafe_has_valid_policy(%this : Pointer(Void), lib_domain :  Pointer(LibC::Char), ) : LibC::Int
# @domain: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_domain)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_has_valid_policy = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_has_valid_policy(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_has_valid_policy : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
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
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_persistent = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_persistent(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_persistent : Proc(Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
