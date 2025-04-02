module Gio
  module DtlsClientConnection
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DtlsClientConnection
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DtlsClientConnection(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDtlsClientConnection.g_type
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

    def new(base_socket : Gio::DatagramBased, server_identity : Gio::SocketConnectable?) : Gio::DtlsClientConnection
      # g_dtls_client_connection_new: (Throws)
      # @base_socket:
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
      _retval = LibGio.g_dtls_client_connection_new(base_socket, server_identity, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractDtlsClientConnection.new(_retval, GICrystal::Transfer::Full)
    end

    def accepted_cas : GLib::List
      # g_dtls_client_connection_get_accepted_cas: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_dtls_client_connection_get_accepted_cas(to_unsafe)

      # Return value handling
      GLib::List(::Bytes).new(_retval, GICrystal::Transfer::Full)
    end

    def server_identity : Gio::SocketConnectable
      # g_dtls_client_connection_get_server_identity: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dtls_client_connection_get_server_identity(to_unsafe)

      # Return value handling
      Gio::AbstractSocketConnectable.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def validation_flags : Gio::TlsCertificateFlags
      # g_dtls_client_connection_get_validation_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dtls_client_connection_get_validation_flags(to_unsafe)

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    def server_identity=(identity : Gio::SocketConnectable) : Nil
      # g_dtls_client_connection_set_server_identity: (Method | Setter)
      # @identity:
      # Returns: (transfer none)

      # C call
      LibGio.g_dtls_client_connection_set_server_identity(to_unsafe, identity)

      # Return value handling
    end

    @[Deprecated]
    def validation_flags=(flags : Gio::TlsCertificateFlags) : Nil
      # g_dtls_client_connection_set_validation_flags: (Method | Setter)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_dtls_client_connection_set_validation_flags(to_unsafe, flags)

      # Return value handling
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDtlsClientConnection.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDtlsClientConnection < GObject::Object
    include DtlsClientConnection

    GICrystal.declare_new_method(Gio::AbstractDtlsClientConnection, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_dtls_client_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDtlsClientConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
