module WebKit
  module PermissionRequest
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include WebKit::PermissionRequest
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_WebKit__PermissionRequest(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      WebKit::AbstractPermissionRequest.g_type
    end

    def allow : Nil
      # webkit_permission_request_allow: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_permission_request_allow(to_unsafe)

      # Return value handling
    end

    def deny : Nil
      # webkit_permission_request_deny: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_permission_request_deny(to_unsafe)

      # Return value handling
    end

    # allow: (None)
    # Returns: (transfer none)
    private macro _register_allow_vfunc(impl_method_name)
      private def self._vfunc_allow(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_WebKit__PermissionRequest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_allow(Pointer(Void))).pointer
        previous_def
      end
    end

    # allow: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_allow_vfunc(impl_method_name)
      private def self._vfunc_unsafe_allow(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_WebKit__PermissionRequest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_allow = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_allow(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_allow : Proc(Pointer(Void), Void)? = nil
    end

    # deny: (None)
    # Returns: (transfer none)
    private macro _register_deny_vfunc(impl_method_name)
      private def self._vfunc_deny(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_WebKit__PermissionRequest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_deny(Pointer(Void))).pointer
        previous_def
      end
    end

    # deny: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_deny_vfunc(impl_method_name)
      private def self._vfunc_unsafe_deny(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_WebKit__PermissionRequest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_deny = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_deny(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_deny : Proc(Pointer(Void), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractPermissionRequest.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractPermissionRequest < GObject::Object
    include PermissionRequest

    GICrystal.declare_new_method(WebKit::AbstractPermissionRequest, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibWebKit.webkit_permission_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::AbstractPermissionRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
