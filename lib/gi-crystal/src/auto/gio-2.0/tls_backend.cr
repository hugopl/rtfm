module Gio
  module TlsBackend
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::TlsBackend
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__TlsBackend(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractTlsBackend.g_type
    end

    def self.default : Gio::TlsBackend
      # g_tls_backend_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_get_default

      # Return value handling
      Gio::AbstractTlsBackend.new(_retval, GICrystal::Transfer::None)
    end

    def certificate_type : UInt64
      # g_tls_backend_get_certificate_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_get_certificate_type(to_unsafe)

      # Return value handling
      _retval
    end

    def client_connection_type : UInt64
      # g_tls_backend_get_client_connection_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_get_client_connection_type(to_unsafe)

      # Return value handling
      _retval
    end

    def default_database : Gio::TlsDatabase
      # g_tls_backend_get_default_database: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_tls_backend_get_default_database(to_unsafe)

      # Return value handling
      Gio::TlsDatabase.new(_retval, GICrystal::Transfer::Full)
    end

    def dtls_client_connection_type : UInt64
      # g_tls_backend_get_dtls_client_connection_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_get_dtls_client_connection_type(to_unsafe)

      # Return value handling
      _retval
    end

    def dtls_server_connection_type : UInt64
      # g_tls_backend_get_dtls_server_connection_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_get_dtls_server_connection_type(to_unsafe)

      # Return value handling
      _retval
    end

    def file_database_type : UInt64
      # g_tls_backend_get_file_database_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_get_file_database_type(to_unsafe)

      # Return value handling
      _retval
    end

    def server_connection_type : UInt64
      # g_tls_backend_get_server_connection_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_get_server_connection_type(to_unsafe)

      # Return value handling
      _retval
    end

    def default_database=(database : Gio::TlsDatabase?) : Nil
      # g_tls_backend_set_default_database: (Method)
      # @database: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      database = if database.nil?
                   Pointer(Void).null
                 else
                   database.to_unsafe
                 end

      # C call
      LibGio.g_tls_backend_set_default_database(to_unsafe, database)

      # Return value handling
    end

    def supports_dtls : Bool
      # g_tls_backend_supports_dtls: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_supports_dtls(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def supports_tls : Bool
      # g_tls_backend_supports_tls: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_backend_supports_tls(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # get_default_database: (None)
    # Returns: (transfer full)
    private macro _register_get_default_database_vfunc(impl_method_name)
      private def self._vfunc_get_default_database(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__TlsBackend(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_default_database(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_default_database: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_default_database_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_default_database(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__TlsBackend(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_default_database = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_default_database(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_default_database : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # supports_dtls: (None)
    # Returns: (transfer none)
    private macro _register_supports_dtls_vfunc(impl_method_name)
      private def self._vfunc_supports_dtls(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__TlsBackend(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_supports_dtls(Pointer(Void))).pointer
        previous_def
      end
    end

    # supports_dtls: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_supports_dtls_vfunc(impl_method_name)
      private def self._vfunc_unsafe_supports_dtls(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__TlsBackend(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_supports_dtls = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_supports_dtls(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_supports_dtls : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # supports_tls: (None)
    # Returns: (transfer none)
    private macro _register_supports_tls_vfunc(impl_method_name)
      private def self._vfunc_supports_tls(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__TlsBackend(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_supports_tls(Pointer(Void))).pointer
        previous_def
      end
    end

    # supports_tls: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_supports_tls_vfunc(impl_method_name)
      private def self._vfunc_unsafe_supports_tls(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__TlsBackend(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_supports_tls = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_supports_tls(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_supports_tls : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTlsBackend.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTlsBackend < GObject::Object
    include TlsBackend

    GICrystal.declare_new_method(Gio::AbstractTlsBackend, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_tls_backend_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractTlsBackend.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
