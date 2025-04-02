module Gio
  module Proxy
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::Proxy
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__Proxy(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractProxy.g_type
    end

    def self.default_for_protocol(protocol : ::String) : Gio::Proxy?
      # g_proxy_get_default_for_protocol: (None)
      # @protocol:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_proxy_get_default_for_protocol(protocol)

      # Return value handling
      Gio::AbstractProxy.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def connect(connection : Gio::IOStream, proxy_address : Gio::ProxyAddress, cancellable : Gio::Cancellable?) : Gio::IOStream
      # g_proxy_connect: (Method | Throws)
      # @connection:
      # @proxy_address:
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_proxy_connect(to_unsafe, connection, proxy_address, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::IOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def connect_async(connection : Gio::IOStream, proxy_address : Gio::ProxyAddress, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_proxy_connect_async: (Method)
      # @connection:
      # @proxy_address:
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
      LibGio.g_proxy_connect_async(to_unsafe, connection, proxy_address, cancellable, callback, user_data)

      # Return value handling
    end

    def connect_finish(result : Gio::AsyncResult) : Gio::IOStream
      # g_proxy_connect_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_proxy_connect_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::IOStream.new(_retval, GICrystal::Transfer::Full)
    end

    def supports_hostname : Bool
      # g_proxy_supports_hostname: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_proxy_supports_hostname(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # connect: (Throws)
    # @connection:
    # @proxy_address:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_connect_vfunc(impl_method_name)
      private def self._vfunc_connect(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_proxy_address :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @connection: 
# @proxy_address: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
connection=Gio::IOStream.new(lib_connection, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
proxy_address=Gio::ProxyAddress.new(lib_proxy_address, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection, proxy_address, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_connect(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # connect: (Throws)
    # @connection:
    # @proxy_address:
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_connect_vfunc(impl_method_name)
      private def self._vfunc_unsafe_connect(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_proxy_address :  Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @connection: 
# @proxy_address: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection, lib_proxy_address, lib_cancellable)
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_connect = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_connect(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_connect : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # connect_async: (None)
    # @connection:
    # @proxy_address:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_connect_async_vfunc(impl_method_name)
      private def self._vfunc_connect_async(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_proxy_address :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @connection: 
# @proxy_address: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
connection=Gio::IOStream.new(lib_connection, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
proxy_address=Gio::ProxyAddress.new(lib_proxy_address, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection, proxy_address, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_connect_async(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # connect_async: (None)
    # @connection:
    # @proxy_address:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_connect_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_connect_async(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_proxy_address :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @connection: 
# @proxy_address: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection, lib_proxy_address, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_connect_async = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_connect_async(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_connect_async : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # connect_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_connect_finish_vfunc(impl_method_name)
      private def self._vfunc_connect_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_connect_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # connect_finish: (Throws)
    # @result:
    # Returns: (transfer full)
    private macro _register_unsafe_connect_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_connect_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_connect_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_connect_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_connect_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # supports_hostname: (None)
    # Returns: (transfer none)
    private macro _register_supports_hostname_vfunc(impl_method_name)
      private def self._vfunc_supports_hostname(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_supports_hostname(Pointer(Void))).pointer
        previous_def
      end
    end

    # supports_hostname: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_supports_hostname_vfunc(impl_method_name)
      private def self._vfunc_unsafe_supports_hostname(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Proxy(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_supports_hostname = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_supports_hostname(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_supports_hostname : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractProxy.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractProxy < GObject::Object
    include Proxy

    GICrystal.declare_new_method(Gio::AbstractProxy, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_proxy_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractProxy.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
