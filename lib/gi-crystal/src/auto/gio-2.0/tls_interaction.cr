require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class TlsInteraction < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::TlsInteractionClass), class_init,
        sizeof(LibGio::TlsInteraction), instance_init, 0)
    end

    GICrystal.declare_new_method(TlsInteraction, g_object_get_qdata)

    # Initialize a new `TlsInteraction`.
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
      @@g_type ||= LibGio.g_tls_interaction_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::TlsInteraction.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def ask_password(password : Gio::TlsPassword, cancellable : Gio::Cancellable?) : Gio::TlsInteractionResult
      # g_tls_interaction_ask_password: (Method | Throws)
      # @password:
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
      _retval = LibGio.g_tls_interaction_ask_password(to_unsafe, password, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsInteractionResult.new(_retval)
    end

    def ask_password_async(password : Gio::TlsPassword, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_tls_interaction_ask_password_async: (Method)
      # @password:
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
      LibGio.g_tls_interaction_ask_password_async(to_unsafe, password, cancellable, callback, user_data)

      # Return value handling
    end

    def ask_password_finish(result : Gio::AsyncResult) : Gio::TlsInteractionResult
      # g_tls_interaction_ask_password_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_interaction_ask_password_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsInteractionResult.new(_retval)
    end

    def invoke_ask_password(password : Gio::TlsPassword, cancellable : Gio::Cancellable?) : Gio::TlsInteractionResult
      # g_tls_interaction_invoke_ask_password: (Method | Throws)
      # @password:
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
      _retval = LibGio.g_tls_interaction_invoke_ask_password(to_unsafe, password, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsInteractionResult.new(_retval)
    end

    def invoke_request_certificate(connection : Gio::TlsConnection, flags : Gio::TlsCertificateRequestFlags, cancellable : Gio::Cancellable?) : Gio::TlsInteractionResult
      # g_tls_interaction_invoke_request_certificate: (Method | Throws)
      # @connection:
      # @flags:
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
      _retval = LibGio.g_tls_interaction_invoke_request_certificate(to_unsafe, connection, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsInteractionResult.new(_retval)
    end

    def request_certificate(connection : Gio::TlsConnection, flags : Gio::TlsCertificateRequestFlags, cancellable : Gio::Cancellable?) : Gio::TlsInteractionResult
      # g_tls_interaction_request_certificate: (Method | Throws)
      # @connection:
      # @flags:
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
      _retval = LibGio.g_tls_interaction_request_certificate(to_unsafe, connection, flags, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsInteractionResult.new(_retval)
    end

    def request_certificate_async(connection : Gio::TlsConnection, flags : Gio::TlsCertificateRequestFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_tls_interaction_request_certificate_async: (Method)
      # @connection:
      # @flags:
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
      LibGio.g_tls_interaction_request_certificate_async(to_unsafe, connection, flags, cancellable, callback, user_data)

      # Return value handling
    end

    def request_certificate_finish(result : Gio::AsyncResult) : Gio::TlsInteractionResult
      # g_tls_interaction_request_certificate_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_tls_interaction_request_certificate_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::TlsInteractionResult.new(_retval)
    end

    # ask_password: (Throws)
    # @password:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_ask_password_vfunc(impl_method_name)
      private def self._vfunc_ask_password(%this : Pointer(Void), lib_password :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : UInt32
        # @password: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
password=Gio::TlsPassword.new(lib_password, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(password, cancellable)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ask_password(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # ask_password: (Throws)
    # @password:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_ask_password_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ask_password(%this : Pointer(Void), lib_password :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : UInt32
# @password: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_password, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ask_password = Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ask_password(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ask_password : Proc(Pointer(Void), Pointer(Void), Pointer(Void), UInt32)? = nil
    end

    # ask_password_async: (None)
    # @password:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_ask_password_async_vfunc(impl_method_name)
      private def self._vfunc_ask_password_async(%this : Pointer(Void), lib_password :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @password: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
password=Gio::TlsPassword.new(lib_password, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(password, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ask_password_async(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # ask_password_async: (None)
    # @password:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_ask_password_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ask_password_async(%this : Pointer(Void), lib_password :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @password: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_password, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ask_password_async = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ask_password_async(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ask_password_async : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # ask_password_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_ask_password_finish_vfunc(impl_method_name)
      private def self._vfunc_ask_password_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : UInt32
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
        vfunc_ptr.value = (->_vfunc_ask_password_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # ask_password_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_ask_password_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ask_password_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : UInt32
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ask_password_finish = Proc(Pointer(Void), Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ask_password_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ask_password_finish : Proc(Pointer(Void), Pointer(Void), UInt32)? = nil
    end

    # request_certificate: (Throws)
    # @connection:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_request_certificate_vfunc(impl_method_name)
      private def self._vfunc_request_certificate(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : UInt32
        # @connection: 
# @flags: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
connection=Gio::TlsConnection.new(lib_connection, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsCertificateRequestFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection, flags, cancellable)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_certificate(Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # request_certificate: (Throws)
    # @connection:
    # @flags:
    # @cancellable: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_request_certificate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_certificate(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), ) : UInt32
# @connection: 
# @flags: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection, lib_flags, lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_certificate = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_certificate(Pointer(Void), Pointer(Void), UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_certificate : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), UInt32)? = nil
    end

    # request_certificate_async: (None)
    # @connection:
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_request_certificate_async_vfunc(impl_method_name)
      private def self._vfunc_request_certificate_async(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @connection: 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
connection=Gio::TlsConnection.new(lib_connection, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
flags=Gio::TlsCertificateRequestFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection, flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_certificate_async(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # request_certificate_async: (None)
    # @connection:
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_request_certificate_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_certificate_async(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @connection: 
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection, lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_certificate_async = Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_certificate_async(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_certificate_async : Proc(Pointer(Void), Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # request_certificate_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_request_certificate_finish_vfunc(impl_method_name)
      private def self._vfunc_request_certificate_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : UInt32
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_request_certificate_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # request_certificate_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_request_certificate_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_request_certificate_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : UInt32
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_request_certificate_finish = Proc(Pointer(Void), Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_request_certificate_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_request_certificate_finish : Proc(Pointer(Void), Pointer(Void), UInt32)? = nil
    end

    def_equals_and_hash @pointer
  end
end
