module Gio
  module TlsClientConnection
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::TlsClientConnection
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__TlsClientConnection(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractTlsClientConnection.g_type
    end

    def accepted_cas : GLib::List
      # Returns: None

      value = uninitialized Pointer(LibGLib::List)
      LibGObject.g_object_get(self, "accepted-cas", pointerof(value), Pointer(Void).null)
      GLib::List(Pointer(Void)).new(value, GICrystal::Transfer::None)
    end

    def server_identity=(value : Gio::SocketConnectable?) : Gio::SocketConnectable?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "server-identity", unsafe_value, Pointer(Void).null)
      value
    end

    def server_identity : Gio::SocketConnectable?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "server-identity", pointerof(value), Pointer(Void).null)
      Gio::AbstractSocketConnectable.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def use_ssl3=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "use-ssl3", unsafe_value, Pointer(Void).null)
      value
    end

    def use_ssl3? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "use-ssl3", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def validation_flags=(value : Gio::TlsCertificateFlags) : Gio::TlsCertificateFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "validation-flags", unsafe_value, Pointer(Void).null)
      value
    end

    def validation_flags : Gio::TlsCertificateFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "validation-flags", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificateFlags.new(value)
    end

    def new(base_io_stream : Gio::IOStream, server_identity : Gio::SocketConnectable?) : Gio::TlsClientConnection
      # g_tls_client_connection_new: (Throws)
      # @base_io_stream:
      # @server_identity: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      server_identity = if server_identity.nil?
                          Pointer(Void).null
                        else
                          server_identity.to_unsafe
                        end

      # C call
      _retval = LibGio.g_tls_client_connection_new(base_io_stream, server_identity, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractTlsClientConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def copy_session_state(source : Gio::TlsClientConnection) : Nil
      # g_tls_client_connection_copy_session_state: (Method)
      # @source:
      # Returns: (transfer none)

      # C call
      LibGio.g_tls_client_connection_copy_session_state(to_unsafe, source)

      # Return value handling
    end

    def accepted_cas : GLib::List
      # g_tls_client_connection_get_accepted_cas: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_tls_client_connection_get_accepted_cas(to_unsafe)

      # Return value handling
      GLib::List(::Bytes).new(_retval, GICrystal::Transfer::Full)
    end

    def server_identity : Gio::SocketConnectable?
      # g_tls_client_connection_get_server_identity: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_tls_client_connection_get_server_identity(to_unsafe)

      # Return value handling
      Gio::AbstractSocketConnectable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def use_ssl3 : Bool
      # g_tls_client_connection_get_use_ssl3: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_client_connection_get_use_ssl3(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def validation_flags : Gio::TlsCertificateFlags
      # g_tls_client_connection_get_validation_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_tls_client_connection_get_validation_flags(to_unsafe)

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    def server_identity=(identity : Gio::SocketConnectable) : Nil
      # g_tls_client_connection_set_server_identity: (Method | Setter)
      # @identity:
      # Returns: (transfer none)

      # C call
      LibGio.g_tls_client_connection_set_server_identity(to_unsafe, identity)

      # Return value handling
    end

    @[Deprecated]
    def use_ssl3=(use_ssl3 : Bool) : Nil
      # g_tls_client_connection_set_use_ssl3: (Method | Setter)
      # @use_ssl3:
      # Returns: (transfer none)

      # C call
      LibGio.g_tls_client_connection_set_use_ssl3(to_unsafe, use_ssl3)

      # Return value handling
    end

    @[Deprecated]
    def validation_flags=(flags : Gio::TlsCertificateFlags) : Nil
      # g_tls_client_connection_set_validation_flags: (Method | Setter)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_tls_client_connection_set_validation_flags(to_unsafe, flags)

      # Return value handling
    end

    # copy_session_state: (None)
    # @source:
    # Returns: (transfer none)
    private macro _register_copy_session_state_vfunc(impl_method_name)
      private def self._vfunc_copy_session_state(%this : Pointer(Void), lib_source :  Pointer(Void), ) : Void
        # @source: 

# Generator::BuiltInTypeArgPlan
source=Gio::AbstractTlsClientConnection.new(lib_source, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(source)
        
        %retval
      end

      def self._install_iface_Gio__TlsClientConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_copy_session_state(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # copy_session_state: (None)
    # @source:
    # Returns: (transfer none)
    private macro _register_unsafe_copy_session_state_vfunc(impl_method_name)
      private def self._vfunc_unsafe_copy_session_state(%this : Pointer(Void), lib_source :  Pointer(Void), ) : Void
# @source: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_source)
      end

      def self._install_iface_Gio__TlsClientConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_copy_session_state = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_copy_session_state(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_copy_session_state : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTlsClientConnection.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTlsClientConnection < GObject::Object
    include TlsClientConnection

    GICrystal.declare_new_method(Gio::AbstractTlsClientConnection, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_tls_client_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractTlsClientConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
