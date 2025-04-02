module Gio
  module AsyncResult
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::AsyncResult
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__AsyncResult(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractAsyncResult.g_type
    end

    def source_object : GObject::Object?
      # g_async_result_get_source_object: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_async_result_get_source_object(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def user_data : Pointer(Void)?
      # g_async_result_get_user_data: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_async_result_get_user_data(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def is_tagged(source_tag : Pointer(Void)?) : Bool
      # g_async_result_is_tagged: (Method)
      # @source_tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      source_tag = if source_tag.nil?
                     Pointer(Void).null
                   else
                     source_tag.to_unsafe
                   end

      # C call
      _retval = LibGio.g_async_result_is_tagged(to_unsafe, source_tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def legacy_propagate_error : Bool
      # g_async_result_legacy_propagate_error: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_async_result_legacy_propagate_error(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # get_source_object: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_source_object_vfunc(impl_method_name)
      private def self._vfunc_get_source_object(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__AsyncResult(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_source_object(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_source_object: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_source_object_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_source_object(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AsyncResult(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_source_object = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_source_object(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_source_object : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_user_data: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_user_data_vfunc(impl_method_name)
      private def self._vfunc_get_user_data(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__AsyncResult(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_user_data(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_user_data: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_user_data_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_user_data(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AsyncResult(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_user_data = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_user_data(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_user_data : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # is_tagged: (None)
    # @source_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_is_tagged_vfunc(impl_method_name)
      private def self._vfunc_is_tagged(%this : Pointer(Void), lib_source_tag :  Pointer(Void), ) : LibC::Int
        # @source_tag: (nullable) 

# Generator::NullableArrayPlan
source_tag=(lib_source_tag.null? ? nil : lib_source_tag)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(source_tag)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AsyncResult(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_tagged(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # is_tagged: (None)
    # @source_tag: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_is_tagged_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_tagged(%this : Pointer(Void), lib_source_tag :  Pointer(Void), ) : LibC::Int
# @source_tag: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_source_tag)
      end

      def self._install_iface_Gio__AsyncResult(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_tagged = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_tagged(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_tagged : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractAsyncResult.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractAsyncResult < GObject::Object
    include AsyncResult

    GICrystal.declare_new_method(Gio::AbstractAsyncResult, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_async_result_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractAsyncResult.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
