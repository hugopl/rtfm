module Gio
  module ProxyResolver
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::ProxyResolver
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__ProxyResolver(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractProxyResolver.g_type
    end

    def self.default : Gio::ProxyResolver
      # g_proxy_resolver_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_proxy_resolver_get_default

      # Return value handling
      Gio::AbstractProxyResolver.new(_retval, GICrystal::Transfer::None)
    end

    def is_supported : Bool
      # g_proxy_resolver_is_supported: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_proxy_resolver_is_supported(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def lookup(uri : ::String, cancellable : Gio::Cancellable?) : Enumerable(::String)
      # g_proxy_resolver_lookup: (Method | Throws)
      # @uri:
      # @cancellable: (nullable)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_proxy_resolver_lookup(to_unsafe, uri, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def lookup_async(uri : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_proxy_resolver_lookup_async: (Method)
      # @uri:
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
      LibGio.g_proxy_resolver_lookup_async(to_unsafe, uri, cancellable, callback, user_data)

      # Return value handling
    end

    def lookup_finish(result : Gio::AsyncResult) : Enumerable(::String)
      # g_proxy_resolver_lookup_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_proxy_resolver_lookup_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    # is_supported: (None)
    # Returns: (transfer none)
    private macro _register_is_supported_vfunc(impl_method_name)
      private def self._vfunc_is_supported(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_supported(Pointer(Void))).pointer
        previous_def
      end
    end

    # is_supported: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_is_supported_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_supported(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_supported = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_supported(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_supported : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # lookup: (Throws)
    # @uri:
    # @cancellable: (nullable)
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_lookup_vfunc(impl_method_name)
      private def self._vfunc_lookup(%this : Pointer(Void), lib_uri :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Pointer(LibC::Char))
        # @uri: 
# @cancellable: (nullable) 

# Generator::BuiltInTypeArgPlan
uri=::String.new(lib_uri)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uri, cancellable)
        
        %retval
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup: (Throws)
    # @uri:
    # @cancellable: (nullable)
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_unsafe_lookup_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup(%this : Pointer(Void), lib_uri :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Pointer(LibC::Char))
# @uri: 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uri, lib_cancellable)
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Pointer(LibC::Char))).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup(Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Pointer(Pointer(LibC::Char)))? = nil
    end

    # lookup_async: (None)
    # @uri:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_lookup_async_vfunc(impl_method_name)
      private def self._vfunc_lookup_async(%this : Pointer(Void), lib_uri :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @uri: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
uri=::String.new(lib_uri)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uri, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_async: (None)
    # @uri:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_lookup_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_async(%this : Pointer(Void), lib_uri :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @uri: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uri, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_async = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_async(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_async : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # lookup_finish: (Throws)
    # @result:
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_lookup_finish_vfunc(impl_method_name)
      private def self._vfunc_lookup_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Pointer(LibC::Char))
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        %retval
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_lookup_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # lookup_finish: (Throws)
    # @result:
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_unsafe_lookup_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_lookup_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Pointer(LibC::Char))
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__ProxyResolver(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_lookup_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Pointer(LibC::Char))).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_lookup_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_lookup_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Pointer(LibC::Char)))? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractProxyResolver.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractProxyResolver < GObject::Object
    include ProxyResolver

    GICrystal.declare_new_method(Gio::AbstractProxyResolver, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_proxy_resolver_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractProxyResolver.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
