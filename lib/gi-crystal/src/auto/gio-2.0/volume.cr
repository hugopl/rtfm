module Gio
  module Volume
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::Volume
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__Volume(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractVolume.g_type
    end

    def can_eject : Bool
      # g_volume_can_eject: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_volume_can_eject(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_mount : Bool
      # g_volume_can_mount: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_volume_can_mount(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def eject(flags : Gio::MountUnmountFlags, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_volume_eject: (Method)
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
      LibGio.g_volume_eject(to_unsafe, flags, cancellable, callback, user_data)

      # Return value handling
    end

    @[Deprecated]
    def eject_finish(result : Gio::AsyncResult) : Bool
      # g_volume_eject_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_volume_eject_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def eject_with_operation(flags : Gio::MountUnmountFlags, mount_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_volume_eject_with_operation: (Method)
      # @flags:
      # @mount_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mount_operation = if mount_operation.nil?
                          Pointer(Void).null
                        else
                          mount_operation.to_unsafe
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
      LibGio.g_volume_eject_with_operation(to_unsafe, flags, mount_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def eject_with_operation_finish(result : Gio::AsyncResult) : Bool
      # g_volume_eject_with_operation_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_volume_eject_with_operation_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enumerate_identifiers : Enumerable(::String)
      # g_volume_enumerate_identifiers: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_volume_enumerate_identifiers(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def activation_root : Gio::File?
      # g_volume_get_activation_root: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_volume_get_activation_root(to_unsafe)

      # Return value handling
      Gio::AbstractFile.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def drive : Gio::Drive?
      # g_volume_get_drive: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_volume_get_drive(to_unsafe)

      # Return value handling
      Gio::AbstractDrive.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def icon : Gio::Icon
      # g_volume_get_icon: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_get_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def identifier(kind : ::String) : ::String?
      # g_volume_get_identifier: (Method)
      # @kind:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_volume_get_identifier(to_unsafe, kind)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def mount : Gio::Mount?
      # g_volume_get_mount: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_volume_get_mount(to_unsafe)

      # Return value handling
      Gio::AbstractMount.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def name : ::String
      # g_volume_get_name: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_get_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def sort_key : ::String?
      # g_volume_get_sort_key: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_volume_get_sort_key(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def symbolic_icon : Gio::Icon
      # g_volume_get_symbolic_icon: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_get_symbolic_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def uuid : ::String?
      # g_volume_get_uuid: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_volume_get_uuid(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def mount(flags : Gio::MountMountFlags, mount_operation : Gio::MountOperation?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_volume_mount: (Method)
      # @flags:
      # @mount_operation: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mount_operation = if mount_operation.nil?
                          Pointer(Void).null
                        else
                          mount_operation.to_unsafe
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
      LibGio.g_volume_mount(to_unsafe, flags, mount_operation, cancellable, callback, user_data)

      # Return value handling
    end

    def mount_finish(result : Gio::AsyncResult) : Bool
      # g_volume_mount_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_volume_mount_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def should_automount : Bool
      # g_volume_should_automount: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_volume_should_automount(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # can_eject: (None)
    # Returns: (transfer none)
    private macro _register_can_eject_vfunc(impl_method_name)
      private def self._vfunc_can_eject(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_eject(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_eject: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_eject_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_eject(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_eject = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_eject(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_eject : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # can_mount: (None)
    # Returns: (transfer none)
    private macro _register_can_mount_vfunc(impl_method_name)
      private def self._vfunc_can_mount(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_mount(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_mount: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_mount_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_mount(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_mount = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_mount(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_mount : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    # eject: (None)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_eject_vfunc(impl_method_name)
      private def self._vfunc_eject(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountUnmountFlags.new(lib_flags)
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # eject: (None)
    # @flags:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_eject_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject(%this : Pointer(Void), lib_flags :  UInt32, lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject = Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject : Proc(Pointer(Void), UInt32, Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # eject_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_eject_finish_vfunc(impl_method_name)
      private def self._vfunc_eject_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # eject_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_eject_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # eject_with_operation: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_eject_with_operation_vfunc(impl_method_name)
      private def self._vfunc_eject_with_operation(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountUnmountFlags.new(lib_flags)
# Generator::NullableArrayPlan
mount_operation=(lib_mount_operation.null? ? nil : Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
mount_operation=Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None) unless lib_mount_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, mount_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject_with_operation(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # eject_with_operation: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_eject_with_operation_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject_with_operation(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_mount_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject_with_operation = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject_with_operation(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject_with_operation : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # eject_with_operation_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_eject_with_operation_finish_vfunc(impl_method_name)
      private def self._vfunc_eject_with_operation_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_eject_with_operation_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # eject_with_operation_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_eject_with_operation_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_eject_with_operation_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_eject_with_operation_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_eject_with_operation_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_eject_with_operation_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # enumerate_identifiers: (None)
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_enumerate_identifiers_vfunc(impl_method_name)
      private def self._vfunc_enumerate_identifiers(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_enumerate_identifiers(Pointer(Void))).pointer
        previous_def
      end
    end

    # enumerate_identifiers: (None)
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)
    private macro _register_unsafe_enumerate_identifiers_vfunc(impl_method_name)
      private def self._vfunc_unsafe_enumerate_identifiers(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_enumerate_identifiers = Proc(Pointer(Void), Pointer(Pointer(LibC::Char))).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_enumerate_identifiers(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_enumerate_identifiers : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)))? = nil
    end

    # get_activation_root: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_activation_root_vfunc(impl_method_name)
      private def self._vfunc_get_activation_root(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_activation_root(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_activation_root: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_activation_root_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_activation_root(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_activation_root = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_activation_root(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_activation_root : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_drive: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_drive_vfunc(impl_method_name)
      private def self._vfunc_get_drive(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_drive(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_drive: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_drive_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_drive(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_drive = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_drive(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_drive : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_icon: (None)
    # Returns: (transfer full)
    private macro _register_get_icon_vfunc(impl_method_name)
      private def self._vfunc_get_icon(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_icon(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_icon: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_icon_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_icon(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_icon = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_icon(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_icon : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_identifier: (None)
    # @kind:
    # Returns: (transfer full) (nullable)
    private macro _register_get_identifier_vfunc(impl_method_name)
      private def self._vfunc_get_identifier(%this : Pointer(Void), lib_kind :  Pointer(LibC::Char), ) : Pointer(LibC::Char)
        # @kind: 

# Generator::BuiltInTypeArgPlan
kind=::String.new(lib_kind)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(kind)
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_identifier(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_identifier: (None)
    # @kind:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_identifier_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_identifier(%this : Pointer(Void), lib_kind :  Pointer(LibC::Char), ) : Pointer(LibC::Char)
# @kind: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_kind)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_identifier = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_identifier(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_identifier : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(LibC::Char))? = nil
    end

    # get_mount: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_mount_vfunc(impl_method_name)
      private def self._vfunc_get_mount(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_mount(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_mount: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_mount_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_mount(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_mount = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_mount(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_mount : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_name: (None)
    # Returns: (transfer full)
    private macro _register_get_name_vfunc(impl_method_name)
      private def self._vfunc_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_name: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_sort_key: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_sort_key_vfunc(impl_method_name)
      private def self._vfunc_get_sort_key(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_sort_key(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_sort_key: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_sort_key_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_sort_key(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_sort_key = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_sort_key(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_sort_key : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_symbolic_icon: (None)
    # Returns: (transfer full)
    private macro _register_get_symbolic_icon_vfunc(impl_method_name)
      private def self._vfunc_get_symbolic_icon(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_symbolic_icon(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_symbolic_icon: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_symbolic_icon_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_symbolic_icon(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_symbolic_icon = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_symbolic_icon(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_symbolic_icon : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_uuid: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_uuid_vfunc(impl_method_name)
      private def self._vfunc_get_uuid(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_uuid(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_uuid: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_uuid_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_uuid(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_uuid = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_uuid(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_uuid : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # mount_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_mount_finish_vfunc(impl_method_name)
      private def self._vfunc_mount_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_mount_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # mount_fn: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_mount_fn_vfunc(impl_method_name)
      private def self._vfunc_mount_fn(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::BuiltInTypeArgPlan
flags=Gio::MountMountFlags.new(lib_flags)
# Generator::NullableArrayPlan
mount_operation=(lib_mount_operation.null? ? nil : Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
mount_operation=Gio::MountOperation.new(lib_mount_operation, GICrystal::Transfer::None) unless lib_mount_operation.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(flags, mount_operation, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_fn(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_fn: (None)
    # @flags:
    # @mount_operation: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_mount_fn_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_fn(%this : Pointer(Void), lib_flags :  UInt32, lib_mount_operation :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @flags: 
# @mount_operation: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_flags, lib_mount_operation, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_fn = Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_fn(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_fn : Proc(Pointer(Void), UInt32, Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # removed: (None)
    # Returns: (transfer none)
    private macro _register_removed_vfunc(impl_method_name)
      private def self._vfunc_removed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_removed(Pointer(Void))).pointer
        previous_def
      end
    end

    # removed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_removed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_removed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_removed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_removed : Proc(Pointer(Void), Void)? = nil
    end

    # should_automount: (None)
    # Returns: (transfer none)
    private macro _register_should_automount_vfunc(impl_method_name)
      private def self._vfunc_should_automount(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_should_automount(Pointer(Void))).pointer
        previous_def
      end
    end

    # should_automount: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_should_automount_vfunc(impl_method_name)
      private def self._vfunc_unsafe_should_automount(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__Volume(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_should_automount = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_should_automount(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_should_automount : Proc(Pointer(Void), LibC::Int)? = nil
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractVolume.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Volume, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    struct RemovedSignal < GObject::Signal
      def name : String
        @detail ? "removed::#{@detail}" : "removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AbstractVolume.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Volume, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "removed")
      end
    end

    def removed_signal
      RemovedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractVolume.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractVolume < GObject::Object
    include Volume

    GICrystal.declare_new_method(Gio::AbstractVolume, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_volume_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractVolume.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
