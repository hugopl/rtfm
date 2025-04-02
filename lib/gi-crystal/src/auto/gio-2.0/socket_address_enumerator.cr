require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SocketAddressEnumerator < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SocketAddressEnumeratorClass), class_init,
        sizeof(LibGio::SocketAddressEnumerator), instance_init, 0)
    end

    GICrystal.declare_new_method(SocketAddressEnumerator, g_object_get_qdata)

    # Initialize a new `SocketAddressEnumerator`.
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
      @@g_type ||= LibGio.g_socket_address_enumerator_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SocketAddressEnumerator.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def next(cancellable : Gio::Cancellable?) : Gio::SocketAddress?
      # g_socket_address_enumerator_next: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_socket_address_enumerator_next(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def next_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_socket_address_enumerator_next_async: (Method)
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
      LibGio.g_socket_address_enumerator_next_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def next_finish(result : Gio::AsyncResult) : Gio::SocketAddress?
      # g_socket_address_enumerator_next_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_socket_address_enumerator_next_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::SocketAddress.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    # next: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_next_vfunc(impl_method_name)
      private def self._vfunc_next(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @cancellable: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_next(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # next: (Throws)
    # @cancellable: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_next_vfunc(impl_method_name)
      private def self._vfunc_unsafe_next(%this : Pointer(Void), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_next = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_next(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_next : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # next_async: (None)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_next_async_vfunc(impl_method_name)
      private def self._vfunc_next_async(%this : Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cancellable, callback, user_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_next_async(Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # next_async: (None)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_next_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_next_async(%this : Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cancellable, lib_callback, lib_user_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_next_async = Proc(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_next_async(Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_next_async : Proc(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # next_finish: (Throws)
    # @result:
    # Returns: (transfer full) (nullable)
    private macro _register_next_finish_vfunc(impl_method_name)
      private def self._vfunc_next_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_next_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # next_finish: (Throws)
    # @result:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_next_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_next_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : Pointer(Void)
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_next_finish = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_next_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_next_finish : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    def_equals_and_hash @pointer
  end
end
