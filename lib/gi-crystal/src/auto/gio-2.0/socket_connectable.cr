module Gio
  module SocketConnectable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::SocketConnectable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__SocketConnectable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractSocketConnectable.g_type
    end

    def enumerate : Gio::SocketAddressEnumerator
      # g_socket_connectable_enumerate: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_connectable_enumerate(to_unsafe)

      # Return value handling
      Gio::SocketAddressEnumerator.new(_retval, GICrystal::Transfer::Full)
    end

    def proxy_enumerate : Gio::SocketAddressEnumerator
      # g_socket_connectable_proxy_enumerate: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_connectable_proxy_enumerate(to_unsafe)

      # Return value handling
      Gio::SocketAddressEnumerator.new(_retval, GICrystal::Transfer::Full)
    end

    def to_string : ::String
      # g_socket_connectable_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_socket_connectable_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    # enumerate: (None)
    # Returns: (transfer full)
    private macro _register_enumerate_vfunc(impl_method_name)
      private def self._vfunc_enumerate(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__SocketConnectable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_enumerate(Pointer(Void))).pointer
        previous_def
      end
    end

    # enumerate: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_enumerate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_enumerate(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__SocketConnectable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_enumerate = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_enumerate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_enumerate : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # proxy_enumerate: (None)
    # Returns: (transfer full)
    private macro _register_proxy_enumerate_vfunc(impl_method_name)
      private def self._vfunc_proxy_enumerate(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__SocketConnectable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_proxy_enumerate(Pointer(Void))).pointer
        previous_def
      end
    end

    # proxy_enumerate: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_proxy_enumerate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_proxy_enumerate(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__SocketConnectable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_proxy_enumerate = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_proxy_enumerate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_proxy_enumerate : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # to_string: (None)
    # Returns: (transfer full)
    private macro _register_to_string_vfunc(impl_method_name)
      private def self._vfunc_to_string(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__SocketConnectable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_to_string(Pointer(Void))).pointer
        previous_def
      end
    end

    # to_string: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_to_string_vfunc(impl_method_name)
      private def self._vfunc_unsafe_to_string(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__SocketConnectable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_to_string = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_to_string(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_to_string : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractSocketConnectable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractSocketConnectable < GObject::Object
    include SocketConnectable

    GICrystal.declare_new_method(Gio::AbstractSocketConnectable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_socket_connectable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractSocketConnectable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
