module Gio
  module DtlsConnection
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::DtlsConnection
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__DtlsConnection(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractDtlsConnection.g_type
    end

    def advertised_protocols=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "advertised-protocols", unsafe_value, Pointer(Void).null)
      value
    end

    def advertised_protocols : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "advertised-protocols", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def base_socket=(value : Gio::DatagramBased?) : Gio::DatagramBased?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "base-socket", unsafe_value, Pointer(Void).null)
      value
    end

    def base_socket : Gio::DatagramBased?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "base-socket", pointerof(value), Pointer(Void).null)
      Gio::AbstractDatagramBased.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def certificate=(value : Gio::TlsCertificate?) : Gio::TlsCertificate?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "certificate", unsafe_value, Pointer(Void).null)
      value
    end

    def certificate : Gio::TlsCertificate?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "certificate", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificate.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def ciphersuite_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "ciphersuite-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#ciphersuite_name`, but can return nil.
    def ciphersuite_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "ciphersuite-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def database=(value : Gio::TlsDatabase?) : Gio::TlsDatabase?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "database", unsafe_value, Pointer(Void).null)
      value
    end

    def database : Gio::TlsDatabase?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "database", pointerof(value), Pointer(Void).null)
      Gio::TlsDatabase.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def interaction=(value : Gio::TlsInteraction?) : Gio::TlsInteraction?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "interaction", unsafe_value, Pointer(Void).null)
      value
    end

    def interaction : Gio::TlsInteraction?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "interaction", pointerof(value), Pointer(Void).null)
      Gio::TlsInteraction.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def negotiated_protocol : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "negotiated-protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#negotiated_protocol`, but can return nil.
    def negotiated_protocol? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "negotiated-protocol", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def peer_certificate : Gio::TlsCertificate?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "peer-certificate", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificate.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def peer_certificate_errors : Gio::TlsCertificateFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "peer-certificate-errors", pointerof(value), Pointer(Void).null)
      Gio::TlsCertificateFlags.new(value)
    end

    def protocol_version : Gio::TlsProtocolVersion
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "protocol-version", pointerof(value), Pointer(Void).null)
      Gio::TlsProtocolVersion.new(value)
    end

    def rehandshake_mode=(value : Gio::TlsRehandshakeMode) : Gio::TlsRehandshakeMode
      unsafe_value = value

      LibGObject.g_object_set(self, "rehandshake-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def rehandshake_mode : Gio::TlsRehandshakeMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "rehandshake-mode", pointerof(value), Pointer(Void).null)
      Gio::TlsRehandshakeMode.new(value)
    end

    def require_close_notify=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "require-close-notify", unsafe_value, Pointer(Void).null)
      value
    end

    def require_close_notify? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "require-close-notify", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def close(cancellable : Gio::Cancellable?) : Bool
      # g_dtls_connection_close: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dtls_connection_close(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def close_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dtls_connection_close_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_dtls_connection_close_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def close_finish(result : Gio::AsyncResult) : Bool
      # g_dtls_connection_close_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dtls_connection_close_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def emit_accept_certificate(peer_cert : Gio::TlsCertificate, errors : Gio::TlsCertificateFlags) : Bool
      # g_dtls_connection_emit_accept_certificate: (Method)
      # @peer_cert:
      # @errors:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dtls_connection_emit_accept_certificate(to_unsafe, peer_cert, errors)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def certificate : Gio::TlsCertificate?
      # g_dtls_connection_get_certificate: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dtls_connection_get_certificate(to_unsafe)

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def channel_binding_data(type : Gio::TlsChannelBindingType) : Bool
      # g_dtls_connection_get_channel_binding_data: (Method | Throws)
      # @type:
      # @data: (out) (optional) (array element-type UInt8)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      data = Pointer(Pointer(UInt8)).null # Generator::ArrayArgPlan
      data = data.to_a.to_unsafe.as(Pointer(UInt8))

      # C call
      _retval = LibGio.g_dtls_connection_get_channel_binding_data(to_unsafe, type, data, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ciphersuite_name : ::String?
      # g_dtls_connection_get_ciphersuite_name: (Method | Getter)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_dtls_connection_get_ciphersuite_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def database : Gio::TlsDatabase?
      # g_dtls_connection_get_database: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dtls_connection_get_database(to_unsafe)

      # Return value handling
      Gio::TlsDatabase.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def interaction : Gio::TlsInteraction?
      # g_dtls_connection_get_interaction: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dtls_connection_get_interaction(to_unsafe)

      # Return value handling
      Gio::TlsInteraction.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def negotiated_protocol : ::String?
      # g_dtls_connection_get_negotiated_protocol: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dtls_connection_get_negotiated_protocol(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def peer_certificate : Gio::TlsCertificate?
      # g_dtls_connection_get_peer_certificate: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_dtls_connection_get_peer_certificate(to_unsafe)

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def peer_certificate_errors : Gio::TlsCertificateFlags
      # g_dtls_connection_get_peer_certificate_errors: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dtls_connection_get_peer_certificate_errors(to_unsafe)

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    def protocol_version : Gio::TlsProtocolVersion
      # g_dtls_connection_get_protocol_version: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dtls_connection_get_protocol_version(to_unsafe)

      # Return value handling
      Gio::TlsProtocolVersion.new(_retval)
    end

    @[Deprecated]
    def rehandshake_mode : Gio::TlsRehandshakeMode
      # g_dtls_connection_get_rehandshake_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dtls_connection_get_rehandshake_mode(to_unsafe)

      # Return value handling
      Gio::TlsRehandshakeMode.new(_retval)
    end

    def require_close_notify : Bool
      # g_dtls_connection_get_require_close_notify: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_dtls_connection_get_require_close_notify(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def handshake(cancellable : Gio::Cancellable?) : Bool
      # g_dtls_connection_handshake: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dtls_connection_handshake(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def handshake_async(io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dtls_connection_handshake_async: (Method)
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_dtls_connection_handshake_async(to_unsafe, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def handshake_finish(result : Gio::AsyncResult) : Bool
      # g_dtls_connection_handshake_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dtls_connection_handshake_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def advertised_protocols=(protocols : Enumerable(::String)?) : Nil
      # g_dtls_connection_set_advertised_protocols: (Method | Setter)
      # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      protocols = if protocols.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    protocols.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end

      # C call
      LibGio.g_dtls_connection_set_advertised_protocols(to_unsafe, protocols)

      # Return value handling
    end

    def certificate=(certificate : Gio::TlsCertificate) : Nil
      # g_dtls_connection_set_certificate: (Method | Setter)
      # @certificate:
      # Returns: (transfer none)

      # C call
      LibGio.g_dtls_connection_set_certificate(to_unsafe, certificate)

      # Return value handling
    end

    def database=(database : Gio::TlsDatabase?) : Nil
      # g_dtls_connection_set_database: (Method | Setter)
      # @database: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      database = if database.nil?
                   Pointer(Void).null
                 else
                   database.to_unsafe
                 end

      # C call
      LibGio.g_dtls_connection_set_database(to_unsafe, database)

      # Return value handling
    end

    def interaction=(interaction : Gio::TlsInteraction?) : Nil
      # g_dtls_connection_set_interaction: (Method | Setter)
      # @interaction: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end

      # C call
      LibGio.g_dtls_connection_set_interaction(to_unsafe, interaction)

      # Return value handling
    end

    @[Deprecated]
    def rehandshake_mode=(mode : Gio::TlsRehandshakeMode) : Nil
      # g_dtls_connection_set_rehandshake_mode: (Method | Setter)
      # @mode:
      # Returns: (transfer none)

      # C call
      LibGio.g_dtls_connection_set_rehandshake_mode(to_unsafe, mode)

      # Return value handling
    end

    def require_close_notify=(require_close_notify : Bool) : Nil
      # g_dtls_connection_set_require_close_notify: (Method | Setter)
      # @require_close_notify:
      # Returns: (transfer none)

      # C call
      LibGio.g_dtls_connection_set_require_close_notify(to_unsafe, require_close_notify)

      # Return value handling
    end

    def shutdown(shutdown_read : Bool, shutdown_write : Bool, cancellable : Gio::Cancellable?) : Bool
      # g_dtls_connection_shutdown: (Method | Throws)
      # @shutdown_read:
      # @shutdown_write:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_dtls_connection_shutdown(to_unsafe, shutdown_read, shutdown_write, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def shutdown_async(shutdown_read : Bool, shutdown_write : Bool, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_dtls_connection_shutdown_async: (Method)
      # @shutdown_read:
      # @shutdown_write:
      # @io_priority:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      LibGio.g_dtls_connection_shutdown_async(to_unsafe, shutdown_read, shutdown_write, io_priority, cancellable, callback, user_data)

      # Return value handling
    end

    def shutdown_finish(result : Gio::AsyncResult) : Bool
      # g_dtls_connection_shutdown_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_dtls_connection_shutdown_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # accept_certificate: (None)
    # @peer_cert:
    # @errors:
    # Returns: (transfer none)
    private macro _register_accept_certificate_vfunc(impl_method_name)
      private def self._vfunc_accept_certificate(%this : Pointer(Void), lib_peer_cert :  Pointer(Void), lib_errors :  UInt32, ) : LibC::Int
        # @peer_cert: 
# @errors: 

# Generator::BuiltInTypeArgPlan
peer_cert=Gio::TlsCertificate.new(lib_peer_cert, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
errors=Gio::TlsCertificateFlags.new(lib_errors)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(peer_cert, errors)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_accept_certificate(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # accept_certificate: (None)
    # @peer_cert:
    # @errors:
    # Returns: (transfer none)
    private macro _register_unsafe_accept_certificate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_accept_certificate(%this : Pointer(Void), lib_peer_cert :  Pointer(Void), lib_errors :  UInt32, ) : LibC::Int
# @peer_cert: 
# @errors: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_peer_cert, lib_errors)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_accept_certificate = Proc(Pointer(Void), Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_accept_certificate(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_accept_certificate : Proc(Pointer(Void), Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # get_binding_data: (Throws)
    # @type:
    # @data: (array element-type UInt8)
    # Returns: (transfer none)
    private macro _register_get_binding_data_vfunc(impl_method_name)
      private def self._vfunc_get_binding_data(%this : Pointer(Void), lib_type :  UInt32, lib_data :  Pointer(UInt8), ) : LibC::Int
        # @type: 
# @data: (array element-type UInt8)

# Generator::BuiltInTypeArgPlan
type=Gio::TlsChannelBindingType.new(lib_type)
# Generator::ArrayArgPlan
raise NotImplementedError.new


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(type, data)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_binding_data(Pointer(Void), UInt32, Pointer(UInt8))).pointer
        previous_def
      end
    end

    # get_binding_data: (Throws)
    # @type:
    # @data: (array element-type UInt8)
    # Returns: (transfer none)
    private macro _register_unsafe_get_binding_data_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_binding_data(%this : Pointer(Void), lib_type :  UInt32, lib_data :  Pointer(UInt8), ) : LibC::Int
# @type: 
# @data: (array element-type UInt8)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_type, lib_data)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_binding_data = Proc(Pointer(Void), UInt32, Pointer(UInt8), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_binding_data(Pointer(Void), UInt32, Pointer(UInt8))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_binding_data : Proc(Pointer(Void), UInt32, Pointer(UInt8), LibC::Int)? = nil
    end

    # get_negotiated_protocol: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_negotiated_protocol_vfunc(impl_method_name)
      private def self._vfunc_get_negotiated_protocol(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_negotiated_protocol(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_negotiated_protocol: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_negotiated_protocol_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_negotiated_protocol(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_negotiated_protocol = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_negotiated_protocol(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_negotiated_protocol : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # handshake: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_handshake_vfunc(impl_method_name)
      private def self._vfunc_handshake(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_handshake(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # handshake: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_handshake_vfunc(impl_method_name)
      private def self._vfunc_unsafe_handshake(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : LibC::Int
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_handshake = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_handshake(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_handshake : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # handshake_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_handshake_async_vfunc(impl_method_name)
      private def self._vfunc_handshake_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_handshake_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # handshake_async: (None)
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_handshake_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_handshake_async(%this : Pointer(Void), lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_handshake_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_handshake_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_handshake_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # handshake_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_handshake_finish_vfunc(impl_method_name)
      private def self._vfunc_handshake_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_handshake_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # handshake_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_handshake_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_handshake_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_handshake_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_handshake_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_handshake_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # set_advertised_protocols: (None)
    # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_set_advertised_protocols_vfunc(impl_method_name)
      private def self._vfunc_set_advertised_protocols(%this : Pointer(Void), lib_protocols :  Pointer(Pointer(LibC::Char)), ) : Void
        # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)

# Generator::NullableArrayPlan
protocols=(lib_protocols.null? ? nil : GICrystal.transfer_null_ended_array(lib_protocols, GICrystal::Transfer::None))


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(protocols)
        
        %retval
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_advertised_protocols(Pointer(Void), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end
    end

    # set_advertised_protocols: (None)
    # @protocols: (nullable) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_unsafe_set_advertised_protocols_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_advertised_protocols(%this : Pointer(Void), lib_protocols :  Pointer(Pointer(LibC::Char)), ) : Void
# @protocols: (nullable) (array zero-terminated=1 element-type Utf8)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_protocols)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_advertised_protocols = Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_advertised_protocols(Pointer(Void), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_advertised_protocols : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Void)? = nil
    end

    # shutdown: (Throws)
    # @shutdown_read:
    # @shutdown_write:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_shutdown_vfunc(impl_method_name)
      private def self._vfunc_shutdown(%this : Pointer(Void), lib_shutdown_read :  LibC::Int, lib_shutdown_write :  LibC::Int, lib_cancellable :  Pointer(Void), ) : LibC::Int
        # @shutdown_read: 
# @shutdown_write: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
shutdown_read=GICrystal.to_bool(lib_shutdown_read)
# Generator::BuiltInTypeArgPlan
shutdown_write=GICrystal.to_bool(lib_shutdown_write)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(shutdown_read, shutdown_write, cancellable)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_shutdown(Pointer(Void), LibC::Int, LibC::Int, Pointer(Void))).pointer
        previous_def
      end
    end

    # shutdown: (Throws)
    # @shutdown_read:
    # @shutdown_write:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_shutdown_vfunc(impl_method_name)
      private def self._vfunc_unsafe_shutdown(%this : Pointer(Void), lib_shutdown_read :  LibC::Int, lib_shutdown_write :  LibC::Int, lib_cancellable :  Pointer(Void), ) : LibC::Int
# @shutdown_read: 
# @shutdown_write: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_shutdown_read, lib_shutdown_write, lib_cancellable)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_shutdown = Proc(Pointer(Void), LibC::Int, LibC::Int, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_shutdown(Pointer(Void), LibC::Int, LibC::Int, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_shutdown : Proc(Pointer(Void), LibC::Int, LibC::Int, Pointer(Void), LibC::Int)? = nil
    end

    # shutdown_async: (None)
    # @shutdown_read:
    # @shutdown_write:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_shutdown_async_vfunc(impl_method_name)
      private def self._vfunc_shutdown_async(%this : Pointer(Void), lib_shutdown_read :  LibC::Int, lib_shutdown_write :  LibC::Int, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @shutdown_read: 
# @shutdown_write: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
shutdown_read=GICrystal.to_bool(lib_shutdown_read)
# Generator::BuiltInTypeArgPlan
shutdown_write=GICrystal.to_bool(lib_shutdown_write)
io_priority=lib_io_priority
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(shutdown_read, shutdown_write, io_priority, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_shutdown_async(Pointer(Void), LibC::Int, LibC::Int, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # shutdown_async: (None)
    # @shutdown_read:
    # @shutdown_write:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_shutdown_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_shutdown_async(%this : Pointer(Void), lib_shutdown_read :  LibC::Int, lib_shutdown_write :  LibC::Int, lib_io_priority :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @shutdown_read: 
# @shutdown_write: 
# @io_priority: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_shutdown_read, lib_shutdown_write, lib_io_priority, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_shutdown_async = Proc(Pointer(Void), LibC::Int, LibC::Int, Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_shutdown_async(Pointer(Void), LibC::Int, LibC::Int, Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_shutdown_async : Proc(Pointer(Void), LibC::Int, LibC::Int, Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # shutdown_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_shutdown_finish_vfunc(impl_method_name)
      private def self._vfunc_shutdown_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_shutdown_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # shutdown_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_shutdown_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_shutdown_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__DtlsConnection(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_shutdown_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_shutdown_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_shutdown_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    struct AcceptCertificateSignal < GObject::Signal
      def name : String
        @detail ? "accept-certificate::#{@detail}" : "accept-certificate"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_peer_cert : Pointer(Void), lib_errors : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          peer_cert = Gio::TlsCertificate.new(lib_peer_cert, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          errors = Gio::TlsCertificateFlags.new(lib_errors)
          ::Box(Proc(Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)).unbox(_lib_box).call(peer_cert, errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::DtlsConnection, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_peer_cert : Pointer(Void), lib_errors : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractDtlsConnection.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          peer_cert = Gio::TlsCertificate.new(lib_peer_cert, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          errors = Gio::TlsCertificateFlags.new(lib_errors)
          ::Box(Proc(Gio::DtlsConnection, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)).unbox(_lib_box).call(_sender, peer_cert, errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(peer_cert : Gio::TlsCertificate, errors : Gio::TlsCertificateFlags) : Nil
        LibGObject.g_signal_emit_by_name(@source, "accept-certificate", peer_cert, errors)
      end
    end

    def accept_certificate_signal
      AcceptCertificateSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDtlsConnection.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDtlsConnection < GObject::Object
    include DtlsConnection

    GICrystal.declare_new_method(Gio::AbstractDtlsConnection, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_dtls_connection_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractDtlsConnection.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
