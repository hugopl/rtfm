module Gio
  module DtlsServerConnection
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DtlsServerConnection
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DtlsServerConnection(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDtlsServerConnection.g_type
    end

    def authentication_mode=(value : Gio::TlsAuthenticationMode) : Gio::TlsAuthenticationMode
      unsafe_value = value

      LibGObject.g_object_set(self, "authentication-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def authentication_mode : Gio::TlsAuthenticationMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "authentication-mode", pointerof(value), Pointer(Void).null)
      Gio::TlsAuthenticationMode.new(value)
    end

    def new(base_socket : Gio::DatagramBased, certificate : Gio::TlsCertificate?) : Gio::DtlsServerConnection
      # g_dtls_server_connection_new: (Throws)
      # @base_socket:
      # @certificate: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      certificate = if certificate.nil?
                      Pointer(Void).null
                    else
                      certificate.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dtls_server_connection_new(base_socket, certificate, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractDtlsServerConnection.new(_retval, GICrystal::Transfer::Full)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDtlsServerConnection.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDtlsServerConnection < GObject::Object
    include DtlsServerConnection

    GICrystal.declare_new_method(Gio::AbstractDtlsServerConnection, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_dtls_server_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDtlsServerConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
