require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class TlsDatabase < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::TlsDatabaseClass), class_init,
        sizeof(LibGio::TlsDatabase), instance_init, 0)
    end

    GICrystal.declare_new_method(TlsDatabase, g_object_get_qdata)

    # Initialize a new `TlsDatabase`.
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
      @@g_type ||= LibGio.g_tls_database_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::TlsDatabase.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def create_certificate_handle(certificate : Gio::TlsCertificate) : ::String?
      # g_tls_database_create_certificate_handle: (Method)
      # @certificate:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_tls_database_create_certificate_handle(to_unsafe, certificate)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def lookup_certificate_for_handle(handle : ::String, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseLookupFlags, cancellable : Gio::Cancellable?) : Gio::TlsCertificate?
      # g_tls_database_lookup_certificate_for_handle: (Method | Throws)
      # @handle:
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_tls_database_lookup_certificate_for_handle(to_unsafe, handle, interaction, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def lookup_certificate_for_handle_async(handle : ::String, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseLookupFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_tls_database_lookup_certificate_for_handle_async: (Method)
      # @handle:
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
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
      LibGio.g_tls_database_lookup_certificate_for_handle_async(to_unsafe, handle, interaction, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_certificate_for_handle_finish(result : Gio::AsyncResult) : Gio::TlsCertificate
      # g_tls_database_lookup_certificate_for_handle_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_database_lookup_certificate_for_handle_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_certificate_issuer(certificate : Gio::TlsCertificate, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseLookupFlags, cancellable : Gio::Cancellable?) : Gio::TlsCertificate
      # g_tls_database_lookup_certificate_issuer: (Method | Throws)
      # @certificate:
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_tls_database_lookup_certificate_issuer(to_unsafe, certificate, interaction, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_certificate_issuer_async(certificate : Gio::TlsCertificate, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseLookupFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_tls_database_lookup_certificate_issuer_async: (Method)
      # @certificate:
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
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
      LibGio.g_tls_database_lookup_certificate_issuer_async(to_unsafe, certificate, interaction, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_certificate_issuer_finish(result : Gio::AsyncResult) : Gio::TlsCertificate
      # g_tls_database_lookup_certificate_issuer_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_database_lookup_certificate_issuer_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificate.new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_certificates_issued_by(issuer_raw_dn : ::Bytes, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseLookupFlags, cancellable : Gio::Cancellable?) : GLib::List
      # g_tls_database_lookup_certificates_issued_by: (Method | Throws)
      # @issuer_raw_dn: (array element-type UInt8)
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayArgPlan
      issuer_raw_dn = issuer_raw_dn.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_tls_database_lookup_certificates_issued_by(to_unsafe, issuer_raw_dn, interaction, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::TlsCertificate).new(_retval, GICrystal::Transfer::Full)
    end

    def lookup_certificates_issued_by_async(issuer_raw_dn : ::Bytes, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseLookupFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_tls_database_lookup_certificates_issued_by_async: (Method)
      # @issuer_raw_dn: (array element-type UInt8)
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      issuer_raw_dn = issuer_raw_dn.to_a.to_unsafe.as(Pointer(UInt8))
      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
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
      LibGio.g_tls_database_lookup_certificates_issued_by_async(to_unsafe, issuer_raw_dn, interaction, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_certificates_issued_by_finish(result : Gio::AsyncResult) : GLib::List
      # g_tls_database_lookup_certificates_issued_by_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_database_lookup_certificates_issued_by_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GLib::List(Gio::TlsCertificate).new(_retval, GICrystal::Transfer::Full)
    end

    def verify_chain(chain : Gio::TlsCertificate, purpose : ::String, identity : Gio::SocketConnectable?, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseVerifyFlags, cancellable : Gio::Cancellable?) : Gio::TlsCertificateFlags
      # g_tls_database_verify_chain: (Method | Throws)
      # @chain:
      # @purpose:
      # @identity: (nullable)
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      identity = if identity.nil?
                   Pointer(Void).null
                 else
                   identity.to_unsafe
                 end
      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_tls_database_verify_chain(to_unsafe, chain, purpose, identity, interaction, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    def verify_chain_async(chain : Gio::TlsCertificate, purpose : ::String, identity : Gio::SocketConnectable?, interaction : Gio::TlsInteraction?, flags : Gio::TlsDatabaseVerifyFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_tls_database_verify_chain_async: (Method)
      # @chain:
      # @purpose:
      # @identity: (nullable)
      # @interaction: (nullable)
      # @flags:
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      identity = if identity.nil?
                   Pointer(Void).null
                 else
                   identity.to_unsafe
                 end
      # Generator::NullableArrayPlan
      interaction = if interaction.nil?
                      Pointer(Void).null
                    else
                      interaction.to_unsafe
                    end
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
      LibGio.g_tls_database_verify_chain_async(to_unsafe, chain, purpose, identity, interaction, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def verify_chain_finish(result : Gio::AsyncResult) : Gio::TlsCertificateFlags
      # g_tls_database_verify_chain_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_database_verify_chain_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsCertificateFlags.new(_retval)
    end

    # create_certificate_handle: (None)
    # @certificate:
    # Returns: (transfer full) (nullable)
    private macro _register_create_certificate_handle_vfunc(impl_method_name)
      private def self._vfunc_create_certificate_handle(%this : Pointer(Void), lib_certificate :  Pointer(Void), ) : Pointer(LibC::Char)
        # @certificate: 

# Generator::BuiltInTypeArgPlan
certificate=Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(certificate)
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_certificate_handle(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # create_certificate_handle: (None)
    # @certificate:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_create_certificate_handle_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_certificate_handle(%this : Pointer(Void), lib_certificate :  Pointer(Void), ) : Pointer(LibC::Char)
# @certificate: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_certificate)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_certificate_handle = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_certificate_handle(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_certificate_handle : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # lookup_certificate_for_handle: (Throws)
    # @handle:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_lookup_certificate_for_handle_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificate_for_handle(%this : Pointer(Void), lib_handle :  Pointer(LibC::Char), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @handle: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
handle=::String.new(lib_handle)
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(handle, interaction, flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificate_for_handle(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificate_for_handle: (Throws)
    # @handle:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_lookup_certificate_for_handle_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificate_for_handle(%this : Pointer(Void), lib_handle :  Pointer(LibC::Char), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @handle: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_handle, lib_interaction, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificate_for_handle = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificate_for_handle(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificate_for_handle : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # lookup_certificate_for_handle_async: (None)
    # @handle:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_certificate_for_handle_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificate_for_handle_async(%this : Pointer(Void), lib_handle :  Pointer(LibC::Char), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @handle: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
handle=::String.new(lib_handle)
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(handle, interaction, flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificate_for_handle_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificate_for_handle_async: (None)
    # @handle:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_certificate_for_handle_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificate_for_handle_async(%this : Pointer(Void), lib_handle :  Pointer(LibC::Char), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @handle: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_handle, lib_interaction, lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificate_for_handle_async = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificate_for_handle_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificate_for_handle_async : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_certificate_for_handle_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_certificate_for_handle_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificate_for_handle_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificate_for_handle_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificate_for_handle_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_certificate_for_handle_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificate_for_handle_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificate_for_handle_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificate_for_handle_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificate_for_handle_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # lookup_certificate_issuer: (Throws)
    # @certificate:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_lookup_certificate_issuer_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificate_issuer(%this : Pointer(Void), lib_certificate :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @certificate: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
certificate=Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(certificate, interaction, flags, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificate_issuer(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificate_issuer: (Throws)
    # @certificate:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_certificate_issuer_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificate_issuer(%this : Pointer(Void), lib_certificate :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @certificate: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_certificate, lib_interaction, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificate_issuer = Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificate_issuer(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificate_issuer : Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Pointer(Void))? = nil
    end

    # lookup_certificate_issuer_async: (None)
    # @certificate:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_certificate_issuer_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificate_issuer_async(%this : Pointer(Void), lib_certificate :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @certificate: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
certificate=Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(certificate, interaction, flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificate_issuer_async(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificate_issuer_async: (None)
    # @certificate:
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_certificate_issuer_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificate_issuer_async(%this : Pointer(Void), lib_certificate :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @certificate: 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_certificate, lib_interaction, lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificate_issuer_async = Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificate_issuer_async(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificate_issuer_async : Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_certificate_issuer_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_certificate_issuer_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificate_issuer_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificate_issuer_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificate_issuer_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_certificate_issuer_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificate_issuer_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificate_issuer_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificate_issuer_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificate_issuer_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # lookup_certificates_issued_by: (Throws)
    # @issuer_raw_dn: (array element-type UInt8)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_lookup_certificates_issued_by_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificates_issued_by(%this : Pointer(Void), lib_issuer_raw_dn :  Pointer(UInt8), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @issuer_raw_dn: (array element-type UInt8)
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

# Generator::ArrayArgPlan
raise NotImplementedError.new
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(issuer_raw_dn, interaction, flags, cancellable)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificates_issued_by(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificates_issued_by: (Throws)
    # @issuer_raw_dn: (array element-type UInt8)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_certificates_issued_by_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificates_issued_by(%this : Pointer(Void), lib_issuer_raw_dn :  Pointer(UInt8), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : Pointer(LibGLib::List)
# @issuer_raw_dn: (array element-type UInt8)
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_issuer_raw_dn, lib_interaction, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificates_issued_by = Proc(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificates_issued_by(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificates_issued_by : Proc(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # lookup_certificates_issued_by_async: (None)
    # @issuer_raw_dn: (array element-type UInt8)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_certificates_issued_by_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificates_issued_by_async(%this : Pointer(Void), lib_issuer_raw_dn :  Pointer(UInt8), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @issuer_raw_dn: (array element-type UInt8)
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::ArrayArgPlan
raise NotImplementedError.new
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseLookupFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(issuer_raw_dn, interaction, flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificates_issued_by_async(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificates_issued_by_async: (None)
    # @issuer_raw_dn: (array element-type UInt8)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_certificates_issued_by_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificates_issued_by_async(%this : Pointer(Void), lib_issuer_raw_dn :  Pointer(UInt8), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @issuer_raw_dn: (array element-type UInt8)
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_issuer_raw_dn, lib_interaction, lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificates_issued_by_async = Proc(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificates_issued_by_async(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificates_issued_by_async : Proc(Pointer(Void), Pointer(UInt8), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_certificates_issued_by_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_lookup_certificates_issued_by_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_certificates_issued_by_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_certificates_issued_by_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_certificates_issued_by_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_lookup_certificates_issued_by_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_certificates_issued_by_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(LibGLib::List)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_certificates_issued_by_finish = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_certificates_issued_by_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_certificates_issued_by_finish : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # verify_chain: (Throws)
    # @chain:
    # @purpose:
    # @identity: (nullable)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_verify_chain_vfunc(impl_method_name)
      private def self._vfunc_verify_chain(%this : Pointer(Void), lib_chain :  Pointer(Void), lib_purpose :  Pointer(LibC::Char), lib_identity :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : UInt32
        # @chain: 
# @purpose: 
# @identity: (nullable) 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
chain=Gio::TlsCertificate.new(lib_chain, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
purpose=::String.new(lib_purpose)
# Generator::NullableArrayPlan
identity=(lib_identity.null? ? nil : Gio::AbstractSocketConnectable.new(lib_identity, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
identity=Gio::AbstractSocketConnectable.new(lib_identity, GICrystal::Transfer::None) unless lib_identity.null?
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseVerifyFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(chain, purpose, identity, interaction, flags, cancellable)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_verify_chain(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # verify_chain: (Throws)
    # @chain:
    # @purpose:
    # @identity: (nullable)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_verify_chain_vfunc(impl_method_name)
      private def self._vfunc_unsafe_verify_chain(%this : Pointer(Void), lib_chain :  Pointer(Void), lib_purpose :  Pointer(LibC::Char), lib_identity :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : UInt32
# @chain: 
# @purpose: 
# @identity: (nullable) 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_chain, lib_purpose, lib_identity, lib_interaction, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_verify_chain = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_verify_chain(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_verify_chain : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), UInt32)? = nil
    end

    # verify_chain_async: (None)
    # @chain:
    # @purpose:
    # @identity: (nullable)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_verify_chain_async_vfunc(impl_method_name)
      private def self._vfunc_verify_chain_async(%this : Pointer(Void), lib_chain :  Pointer(Void), lib_purpose :  Pointer(LibC::Char), lib_identity :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @chain: 
# @purpose: 
# @identity: (nullable) 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
chain=Gio::TlsCertificate.new(lib_chain, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
purpose=::String.new(lib_purpose)
# Generator::NullableArrayPlan
identity=(lib_identity.null? ? nil : Gio::AbstractSocketConnectable.new(lib_identity, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
identity=Gio::AbstractSocketConnectable.new(lib_identity, GICrystal::Transfer::None) unless lib_identity.null?
# Generator::NullableArrayPlan
interaction=(lib_interaction.null? ? nil : Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
interaction=Gio::TlsInteraction.new(lib_interaction, GICrystal::Transfer::None) unless lib_interaction.null?
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsDatabaseVerifyFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(chain, purpose, identity, interaction, flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_verify_chain_async(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # verify_chain_async: (None)
    # @chain:
    # @purpose:
    # @identity: (nullable)
    # @interaction: (nullable)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_verify_chain_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_verify_chain_async(%this : Pointer(Void), lib_chain :  Pointer(Void), lib_purpose :  Pointer(LibC::Char), lib_identity :  Pointer(Void), lib_interaction :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @chain: 
# @purpose: 
# @identity: (nullable) 
# @interaction: (nullable) 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_chain, lib_purpose, lib_identity, lib_interaction, lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_verify_chain_async = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_verify_chain_async(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_verify_chain_async : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # verify_chain_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_verify_chain_finish_vfunc(impl_method_name)
      private def self._vfunc_verify_chain_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : UInt32
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_verify_chain_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # verify_chain_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_verify_chain_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_verify_chain_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : UInt32
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_verify_chain_finish = Proc(Pointer(Void), Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_verify_chain_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_verify_chain_finish : Proc(Pointer(Void), Pointer(Void), UInt32)? = nil
    end

    def_equals_and_hash @pointer
  end
end
