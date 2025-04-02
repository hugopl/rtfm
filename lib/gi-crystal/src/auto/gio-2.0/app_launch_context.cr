require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class AppLaunchContext < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::AppLaunchContextClass), class_init,
        sizeof(LibGio::AppLaunchContext), instance_init, 0)
    end

    GICrystal.declare_new_method(AppLaunchContext, g_object_get_qdata)

    # Initialize a new `AppLaunchContext`.
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
      @@g_type ||= LibGio.g_app_launch_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AppLaunchContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_app_launch_context_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_app_launch_context_new

      # Return value handling
      Gio::AppLaunchContext.new(_retval, GICrystal::Transfer::Full)
    end

    def display(info : Gio::AppInfo, files : GLib::List) : ::String?
      # g_app_launch_context_get_display: (Method)
      # @info:
      # @files:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_app_launch_context_get_display(to_unsafe, info, files)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def environment : Enumerable(::String)
      # g_app_launch_context_get_environment: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Filename)

      # C call
      _retval = LibGio.g_app_launch_context_get_environment(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def startup_notify_id(info : Gio::AppInfo?, files : GLib::List?) : ::String?
      # g_app_launch_context_get_startup_notify_id: (Method)
      # @info: (nullable)
      # @files: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      info = if info.nil?
               Pointer(Void).null
             else
               info.to_unsafe
             end
      # Generator::NullableArrayPlan
      files = if files.nil?
                Pointer(LibGLib::List).null
              else
                files.to_unsafe
              end

      # C call
      _retval = LibGio.g_app_launch_context_get_startup_notify_id(to_unsafe, info, files)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def launch_failed(startup_notify_id : ::String) : Nil
      # g_app_launch_context_launch_failed: (Method)
      # @startup_notify_id:
      # Returns: (transfer none)

      # C call
      LibGio.g_app_launch_context_launch_failed(to_unsafe, startup_notify_id)

      # Return value handling
    end

    def setenv(variable : ::String, value : ::String) : Nil
      # g_app_launch_context_setenv: (Method)
      # @variable:
      # @value:
      # Returns: (transfer none)

      # C call
      LibGio.g_app_launch_context_setenv(to_unsafe, variable, value)

      # Return value handling
    end

    def unsetenv(variable : ::String) : Nil
      # g_app_launch_context_unsetenv: (Method)
      # @variable:
      # Returns: (transfer none)

      # C call
      LibGio.g_app_launch_context_unsetenv(to_unsafe, variable)

      # Return value handling
    end

    struct LaunchFailedSignal < GObject::Signal
      def name : String
        @detail ? "launch-failed::#{@detail}" : "launch-failed"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_startup_notify_id : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          startup_notify_id = ::String.new(lib_startup_notify_id)
          ::Box(Proc(::String, Nil)).unbox(_lib_box).call(startup_notify_id)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::AppLaunchContext, ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_startup_notify_id : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gio::AppLaunchContext.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          startup_notify_id = ::String.new(lib_startup_notify_id)
          ::Box(Proc(Gio::AppLaunchContext, ::String, Nil)).unbox(_lib_box).call(_sender, startup_notify_id)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(startup_notify_id : ::String) : Nil
        LibGObject.g_signal_emit_by_name(@source, "launch-failed", startup_notify_id)
      end
    end

    def launch_failed_signal
      LaunchFailedSignal.new(self)
    end

    struct LaunchStartedSignal < GObject::Signal
      def name : String
        @detail ? "launch-started::#{@detail}" : "launch-started"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::AppInfo, GLib::Variant?, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::AppInfo, GLib::Variant?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_info : Pointer(Void), lib_platform_data : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          info = Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          platform_data = GLib::Variant.new(lib_platform_data, :none) unless lib_platform_data.null?
          ::Box(Proc(Gio::AppInfo, GLib::Variant?, Nil)).unbox(_lib_box).call(info, platform_data)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::AppLaunchContext, Gio::AppInfo, GLib::Variant?, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_info : Pointer(Void), lib_platform_data : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AppLaunchContext.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          info = Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          platform_data = GLib::Variant.new(lib_platform_data, :none) unless lib_platform_data.null?
          ::Box(Proc(Gio::AppLaunchContext, Gio::AppInfo, GLib::Variant?, Nil)).unbox(_lib_box).call(_sender, info, platform_data)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(info : Gio::AppInfo, platform_data : _?) : Nil
        # Generator::HandmadeArgPlan
        platform_data = if platform_data.nil?
                          Pointer(Void).null
                        elsif !platform_data.is_a?(GLib::Variant)
                          GLib::Variant.new(platform_data).to_unsafe
                        else
                          platform_data.to_unsafe
                        end

        LibGObject.g_signal_emit_by_name(@source, "launch-started", info, platform_data)
      end
    end

    def launch_started_signal
      LaunchStartedSignal.new(self)
    end

    struct LaunchedSignal < GObject::Signal
      def name : String
        @detail ? "launched::#{@detail}" : "launched"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::AppInfo, GLib::Variant, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::AppInfo, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_info : Pointer(Void), lib_platform_data : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          info = Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          platform_data = GLib::Variant.new(lib_platform_data, :none)
          ::Box(Proc(Gio::AppInfo, GLib::Variant, Nil)).unbox(_lib_box).call(info, platform_data)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::AppLaunchContext, Gio::AppInfo, GLib::Variant, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_info : Pointer(Void), lib_platform_data : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::AppLaunchContext.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          info = Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          platform_data = GLib::Variant.new(lib_platform_data, :none)
          ::Box(Proc(Gio::AppLaunchContext, Gio::AppInfo, GLib::Variant, Nil)).unbox(_lib_box).call(_sender, info, platform_data)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(info : Gio::AppInfo, platform_data : _) : Nil
        # Generator::HandmadeArgPlan
        platform_data = if !platform_data.is_a?(GLib::Variant)
                          GLib::Variant.new(platform_data).to_unsafe
                        else
                          platform_data.to_unsafe
                        end

        LibGObject.g_signal_emit_by_name(@source, "launched", info, platform_data)
      end
    end

    def launched_signal
      LaunchedSignal.new(self)
    end

    # get_display: (None)
    # @info:
    # @files:
    # Returns: (transfer full) (nullable)
    private macro _register_get_display_vfunc(impl_method_name)
      private def self._vfunc_get_display(%this : Pointer(Void), lib_info :  Pointer(Void), lib_files :  Pointer(LibGLib::List), ) : Pointer(LibC::Char)
        # @info: 
# @files: 

# Generator::BuiltInTypeArgPlan
info=Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None)
files=lib_files


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(info, files)
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_display(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))).pointer
        previous_def
      end
    end

    # get_display: (None)
    # @info:
    # @files:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_display_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_display(%this : Pointer(Void), lib_info :  Pointer(Void), lib_files :  Pointer(LibGLib::List), ) : Pointer(LibC::Char)
# @info: 
# @files: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_info, lib_files)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_display = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_display(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_display : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List), Pointer(LibC::Char))? = nil
    end

    # get_startup_notify_id: (None)
    # @info: (nullable)
    # @files: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_get_startup_notify_id_vfunc(impl_method_name)
      private def self._vfunc_get_startup_notify_id(%this : Pointer(Void), lib_info :  Pointer(Void), lib_files :  Pointer(LibGLib::List), ) : Pointer(LibC::Char)
        # @info: (nullable) 
# @files: (nullable) 

# Generator::NullableArrayPlan
info=(lib_info.null? ? nil : Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
info=Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None) unless lib_info.null?
# Generator::NullableArrayPlan
files=(lib_files.null? ? nil : GLib::List(Gio::File).new(lib_files, GICrystal::Transfer::None))


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(info, files)
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_startup_notify_id(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))).pointer
        previous_def
      end
    end

    # get_startup_notify_id: (None)
    # @info: (nullable)
    # @files: (nullable)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_startup_notify_id_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_startup_notify_id(%this : Pointer(Void), lib_info :  Pointer(Void), lib_files :  Pointer(LibGLib::List), ) : Pointer(LibC::Char)
# @info: (nullable) 
# @files: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_info, lib_files)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_startup_notify_id = Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_startup_notify_id(Pointer(Void), Pointer(Void), Pointer(LibGLib::List))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_startup_notify_id : Proc(Pointer(Void), Pointer(Void), Pointer(LibGLib::List), Pointer(LibC::Char))? = nil
    end

    # launch_failed: (None)
    # @startup_notify_id:
    # Returns: (transfer none)
    private macro _register_launch_failed_vfunc(impl_method_name)
      private def self._vfunc_launch_failed(%this : Pointer(Void), lib_startup_notify_id :  Pointer(LibC::Char), ) : Void
        # @startup_notify_id: 

# Generator::BuiltInTypeArgPlan
startup_notify_id=::String.new(lib_startup_notify_id)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(startup_notify_id)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_launch_failed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # launch_failed: (None)
    # @startup_notify_id:
    # Returns: (transfer none)
    private macro _register_unsafe_launch_failed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_launch_failed(%this : Pointer(Void), lib_startup_notify_id :  Pointer(LibC::Char), ) : Void
# @startup_notify_id: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_startup_notify_id)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_launch_failed = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_launch_failed(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_launch_failed : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # launch_started: (None)
    # @info:
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_launch_started_vfunc(impl_method_name)
      private def self._vfunc_launch_started(%this : Pointer(Void), lib_info :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
        # @info: 
# @platform_data: 

# Generator::BuiltInTypeArgPlan
info=Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None)
# Generator::HandmadeArgPlan
platform_data=GLib::Variant.new(lib_platform_data, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(info, platform_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_launch_started(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # launch_started: (None)
    # @info:
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_unsafe_launch_started_vfunc(impl_method_name)
      private def self._vfunc_unsafe_launch_started(%this : Pointer(Void), lib_info :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
# @info: 
# @platform_data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_info, lib_platform_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_launch_started = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_launch_started(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_launch_started : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # launched: (None)
    # @info:
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_launched_vfunc(impl_method_name)
      private def self._vfunc_launched(%this : Pointer(Void), lib_info :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
        # @info: 
# @platform_data: 

# Generator::BuiltInTypeArgPlan
info=Gio::AbstractAppInfo.new(lib_info, GICrystal::Transfer::None)
# Generator::HandmadeArgPlan
platform_data=GLib::Variant.new(lib_platform_data, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(info, platform_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_launched(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # launched: (None)
    # @info:
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_unsafe_launched_vfunc(impl_method_name)
      private def self._vfunc_unsafe_launched(%this : Pointer(Void), lib_info :  Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
# @info: 
# @platform_data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_info, lib_platform_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_launched = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_launched(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_launched : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
