module Gio
  module LoadableIcon
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::LoadableIcon
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__LoadableIcon(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractLoadableIcon.g_type
    end

    def load(size : Int32, cancellable : Gio::Cancellable?) : Gio::InputStream
      # g_loadable_icon_load: (Method | Throws)
      # @size:
      # @type: (out) (transfer full) (optional)
      # @cancellable: (nullable)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      type = Pointer(Pointer(LibC::Char)).null # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_loadable_icon_load(to_unsafe, size, type, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def load_async(size : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_loadable_icon_load_async: (Method)
      # @size:
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
      LibGio.g_loadable_icon_load_async(to_unsafe, size, cancellable, callback, user_data)

      # Return value handling
    end

    def load_finish(res : Gio::AsyncResult) : Gio::InputStream
      # g_loadable_icon_load_finish: (Method | Throws)
      # @res:
      # @type: (out) (transfer full) (optional)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      type = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_loadable_icon_load_finish(to_unsafe, res, type, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
    end

    # load: (Throws)
    # @size:
    # @type: (out) (transfer full) (optional)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_load_vfunc(impl_method_name)
      private def self._vfunc_load(%this : Pointer(Void), lib_size :  Int32, lib_type :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
        # @size: 
# @type: (out) (transfer full) (optional) 
# @cancellable: (nullable) 

size=lib_size
# Generator::OutArgUsedInReturnPlan
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(size, type, cancellable)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__LoadableIcon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # load: (Throws)
    # @size:
    # @type: (out) (transfer full) (optional)
    # @cancellable: (nullable)
    # Returns: (transfer full)
    private macro _register_unsafe_load_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load(%this : Pointer(Void), lib_size :  Int32, lib_type :  Pointer(LibC::Char), lib_cancellable :  Pointer(Void), ) : Pointer(Void)
# @size: 
# @type: (out) (transfer full) (optional) 
# @cancellable: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_size, lib_type, lib_cancellable)
      end

      def self._install_iface_Gio__LoadableIcon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load = Proc(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load : Proc(Pointer(Void), Int32, Pointer(LibC::Char), Pointer(Void), Pointer(Void))? = nil
    end

    # load_async: (None)
    # @size:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_load_async_vfunc(impl_method_name)
      private def self._vfunc_load_async(%this : Pointer(Void), lib_size :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @size: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

size=lib_size
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(size, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__LoadableIcon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # load_async: (None)
    # @size:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_load_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load_async(%this : Pointer(Void), lib_size :  Int32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @size: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_size, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__LoadableIcon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load_async = Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load_async(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load_async : Proc(Pointer(Void), Int32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # load_finish: (Throws)
    # @res:
    # @type: (out) (transfer full) (optional)
    # Returns: (transfer full)
    private macro _register_load_finish_vfunc(impl_method_name)
      private def self._vfunc_load_finish(%this : Pointer(Void), lib_res :  Pointer(Void), lib_type :  Pointer(LibC::Char), ) : Pointer(Void)
        # @res: 
# @type: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
res=Gio::AbstractAsyncResult.new(lib_res, GICrystal::Transfer::None)
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(res, type)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__LoadableIcon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load_finish(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # load_finish: (Throws)
    # @res:
    # @type: (out) (transfer full) (optional)
    # Returns: (transfer full)
    private macro _register_unsafe_load_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load_finish(%this : Pointer(Void), lib_res :  Pointer(Void), lib_type :  Pointer(LibC::Char), ) : Pointer(Void)
# @res: 
# @type: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_res, lib_type)
      end

      def self._install_iface_Gio__LoadableIcon(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load_finish = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load_finish(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load_finish : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractLoadableIcon.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractLoadableIcon < GObject::Object
    include LoadableIcon

    GICrystal.declare_new_method(Gio::AbstractLoadableIcon, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_loadable_icon_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractLoadableIcon.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
