module Gio
  module AppInfo
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gio::AppInfo
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gio__AppInfo(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gio::AbstractAppInfo.g_type
    end

    def create_from_commandline(commandline : ::String, application_name : ::String?, flags : Gio::AppInfoCreateFlags) : Gio::AppInfo
      # g_app_info_create_from_commandline: (Throws)
      # @commandline:
      # @application_name: (nullable)
      # @flags:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      application_name = if application_name.nil?
                           Pointer(LibC::Char).null
                         else
                           application_name.to_unsafe
                         end

      # C call
      _retval = LibGio.g_app_info_create_from_commandline(commandline, application_name, flags, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def self.all : GLib::List
      # g_app_info_get_all: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_app_info_get_all

      # Return value handling
      GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
    end

    def self.all_for_type(content_type : ::String) : GLib::List
      # g_app_info_get_all_for_type: (None)
      # @content_type:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_app_info_get_all_for_type(content_type)

      # Return value handling
      GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
    end

    def self.default_for_type(content_type : ::String, must_support_uris : Bool) : Gio::AppInfo?
      # g_app_info_get_default_for_type: (None)
      # @content_type:
      # @must_support_uris:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_app_info_get_default_for_type(content_type, must_support_uris)

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.default_for_type_async(content_type : ::String, must_support_uris : Bool, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_app_info_get_default_for_type_async: (None)
      # @content_type:
      # @must_support_uris:
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
      LibGio.g_app_info_get_default_for_type_async(content_type, must_support_uris, cancellable, callback, user_data)

      # Return value handling
    end

    def default_for_type_finish(result : Gio::AsyncResult) : Gio::AppInfo
      # g_app_info_get_default_for_type_finish: (Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_get_default_for_type_finish(result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def self.default_for_uri_scheme(uri_scheme : ::String) : Gio::AppInfo?
      # g_app_info_get_default_for_uri_scheme: (None)
      # @uri_scheme:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_app_info_get_default_for_uri_scheme(uri_scheme)

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.default_for_uri_scheme_async(uri_scheme : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_app_info_get_default_for_uri_scheme_async: (None)
      # @uri_scheme:
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
      LibGio.g_app_info_get_default_for_uri_scheme_async(uri_scheme, cancellable, callback, user_data)

      # Return value handling
    end

    def default_for_uri_scheme_finish(result : Gio::AsyncResult) : Gio::AppInfo
      # g_app_info_get_default_for_uri_scheme_finish: (Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_get_default_for_uri_scheme_finish(result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def self.fallback_for_type(content_type : ::String) : GLib::List
      # g_app_info_get_fallback_for_type: (None)
      # @content_type:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_app_info_get_fallback_for_type(content_type)

      # Return value handling
      GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
    end

    def self.recommended_for_type(content_type : ::String) : GLib::List
      # g_app_info_get_recommended_for_type: (None)
      # @content_type:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_app_info_get_recommended_for_type(content_type)

      # Return value handling
      GLib::List(Gio::AppInfo).new(_retval, GICrystal::Transfer::Full)
    end

    def launch_default_for_uri(uri : ::String, context : Gio::AppLaunchContext?) : Bool
      # g_app_info_launch_default_for_uri: (Throws)
      # @uri:
      # @context: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end

      # C call
      _retval = LibGio.g_app_info_launch_default_for_uri(uri, context, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.launch_default_for_uri_async(uri : ::String, context : Gio::AppLaunchContext?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_app_info_launch_default_for_uri_async: (None)
      # @uri:
      # @context: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
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
      LibGio.g_app_info_launch_default_for_uri_async(uri, context, cancellable, callback, user_data)

      # Return value handling
    end

    def launch_default_for_uri_finish(result : Gio::AsyncResult) : Bool
      # g_app_info_launch_default_for_uri_finish: (Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_launch_default_for_uri_finish(result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.reset_type_associations(content_type : ::String) : Nil
      # g_app_info_reset_type_associations: (None)
      # @content_type:
      # Returns: (transfer none)

      # C call
      LibGio.g_app_info_reset_type_associations(content_type)

      # Return value handling
    end

    def add_supports_type(content_type : ::String) : Bool
      # g_app_info_add_supports_type: (Method | Throws)
      # @content_type:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_add_supports_type(to_unsafe, content_type, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_delete : Bool
      # g_app_info_can_delete: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_can_delete(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_remove_supports_type : Bool
      # g_app_info_can_remove_supports_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_can_remove_supports_type(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def delete : Bool
      # g_app_info_delete: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_delete(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def dup : Gio::AppInfo
      # g_app_info_dup: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_app_info_dup(to_unsafe)

      # Return value handling
      Gio::AbstractAppInfo.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(appinfo2 : Gio::AppInfo) : Bool
      # g_app_info_equal: (Method)
      # @appinfo2:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_equal(to_unsafe, appinfo2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def commandline : ::Path?
      # g_app_info_get_commandline: (Method)
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGio.g_app_info_get_commandline(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    def description : ::String?
      # g_app_info_get_description: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_app_info_get_description(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display_name : ::String
      # g_app_info_get_display_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_get_display_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def executable : ::Path
      # g_app_info_get_executable: (Method)
      # Returns: (transfer none) (filename)

      # C call
      _retval = LibGio.g_app_info_get_executable(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval))
    end

    def icon : Gio::Icon?
      # g_app_info_get_icon: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_app_info_get_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def id : ::String?
      # g_app_info_get_id: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_app_info_get_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def name : ::String
      # g_app_info_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def supported_types : Enumerable(::String)
      # g_app_info_get_supported_types: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_app_info_get_supported_types(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def launch(files : GLib::List?, context : Gio::AppLaunchContext?) : Bool
      # g_app_info_launch: (Method | Throws)
      # @files: (nullable)
      # @context: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      files = if files.nil?
                Pointer(LibGLib::List).null
              else
                files.to_unsafe
              end
      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end

      # C call
      _retval = LibGio.g_app_info_launch(to_unsafe, files, context, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def launch_uris(uris : GLib::List?, context : Gio::AppLaunchContext?) : Bool
      # g_app_info_launch_uris: (Method | Throws)
      # @uris: (nullable)
      # @context: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      uris = if uris.nil?
               Pointer(LibGLib::List).null
             else
               uris.to_unsafe
             end
      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end

      # C call
      _retval = LibGio.g_app_info_launch_uris(to_unsafe, uris, context, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def launch_uris_async(uris : GLib::List?, context : Gio::AppLaunchContext?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_app_info_launch_uris_async: (Method)
      # @uris: (nullable)
      # @context: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      uris = if uris.nil?
               Pointer(LibGLib::List).null
             else
               uris.to_unsafe
             end
      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
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
      LibGio.g_app_info_launch_uris_async(to_unsafe, uris, context, cancellable, callback, user_data)

      # Return value handling
    end

    def launch_uris_finish(result : Gio::AsyncResult) : Bool
      # g_app_info_launch_uris_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_launch_uris_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def remove_supports_type(content_type : ::String) : Bool
      # g_app_info_remove_supports_type: (Method | Throws)
      # @content_type:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_remove_supports_type(to_unsafe, content_type, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def as_default_for_extension=(extension : ::String) : Bool
      # g_app_info_set_as_default_for_extension: (Method | Throws)
      # @extension:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_set_as_default_for_extension(to_unsafe, extension, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def as_default_for_type=(content_type : ::String) : Bool
      # g_app_info_set_as_default_for_type: (Method | Throws)
      # @content_type:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_set_as_default_for_type(to_unsafe, content_type, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def as_last_used_for_type=(content_type : ::String) : Bool
      # g_app_info_set_as_last_used_for_type: (Method | Throws)
      # @content_type:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_app_info_set_as_last_used_for_type(to_unsafe, content_type, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def should_show : Bool
      # g_app_info_should_show: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_should_show(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def supports_files : Bool
      # g_app_info_supports_files: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_supports_files(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def supports_uris : Bool
      # g_app_info_supports_uris: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_app_info_supports_uris(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # add_supports_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_add_supports_type_vfunc(impl_method_name)
      private def self._vfunc_add_supports_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
        # @content_type: 

# Generator::BuiltInTypeArgPlan
content_type=::String.new(lib_content_type)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(content_type)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_supports_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # add_supports_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_unsafe_add_supports_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_supports_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
# @content_type: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_content_type)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_supports_type = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_supports_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_supports_type : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # can_delete: (None)
    # Returns: (transfer none)
    private macro _register_can_delete_vfunc(impl_method_name)
      private def self._vfunc_can_delete(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_delete(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_delete: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_delete_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_delete(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_delete = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_delete(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_delete : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # can_remove_supports_type: (None)
    # Returns: (transfer none)
    private macro _register_can_remove_supports_type_vfunc(impl_method_name)
      private def self._vfunc_can_remove_supports_type(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_can_remove_supports_type(Pointer(Void))).pointer
        previous_def
      end
    end

    # can_remove_supports_type: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_can_remove_supports_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_can_remove_supports_type(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_can_remove_supports_type = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_can_remove_supports_type(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_can_remove_supports_type : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # do_delete: (None)
    # Returns: (transfer none)
    private macro _register_do_delete_vfunc(impl_method_name)
      private def self._vfunc_do_delete(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_do_delete(Pointer(Void))).pointer
        previous_def
      end
    end

    # do_delete: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_do_delete_vfunc(impl_method_name)
      private def self._vfunc_unsafe_do_delete(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_do_delete = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_do_delete(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_do_delete : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # dup: (None)
    # Returns: (transfer full)
    private macro _register_dup_vfunc(impl_method_name)
      private def self._vfunc_dup(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_dup(Pointer(Void))).pointer
        previous_def
      end
    end

    # dup: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_dup_vfunc(impl_method_name)
      private def self._vfunc_unsafe_dup(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_dup = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_dup(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_dup : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # equal: (None)
    # @appinfo2:
    # Returns: (transfer none)
    private macro _register_equal_vfunc(impl_method_name)
      private def self._vfunc_equal(%this : Pointer(Void), lib_appinfo2 :  Pointer(Void), ) : LibC::Int
        # @appinfo2: 

# Generator::BuiltInTypeArgPlan
appinfo2=Gio::AbstractAppInfo.new(lib_appinfo2, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(appinfo2)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_equal(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # equal: (None)
    # @appinfo2:
    # Returns: (transfer none)
    private macro _register_unsafe_equal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_equal(%this : Pointer(Void), lib_appinfo2 :  Pointer(Void), ) : LibC::Int
# @appinfo2: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_appinfo2)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_equal = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_equal(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_equal : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # get_commandline: (None)
    # Returns: (transfer none) (filename) (nullable)
    private macro _register_get_commandline_vfunc(impl_method_name)
      private def self._vfunc_get_commandline(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_commandline(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_commandline: (None)
    # Returns: (transfer none) (filename) (nullable)
    private macro _register_unsafe_get_commandline_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_commandline(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_commandline = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_commandline(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_commandline : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_description: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_description_vfunc(impl_method_name)
      private def self._vfunc_get_description(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_description(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_description: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_description_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_description(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_description = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_description(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_description : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_display_name: (None)
    # Returns: (transfer none)
    private macro _register_get_display_name_vfunc(impl_method_name)
      private def self._vfunc_get_display_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_display_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_display_name: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_display_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_display_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_display_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_display_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_display_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_executable: (None)
    # Returns: (transfer none) (filename)
    private macro _register_get_executable_vfunc(impl_method_name)
      private def self._vfunc_get_executable(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_executable(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_executable: (None)
    # Returns: (transfer none) (filename)
    private macro _register_unsafe_get_executable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_executable(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_executable = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_executable(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_executable : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_icon: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_icon_vfunc(impl_method_name)
      private def self._vfunc_get_icon(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_icon(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_icon: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_icon_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_icon(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_icon = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_icon(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_icon : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_id: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_id_vfunc(impl_method_name)
      private def self._vfunc_get_id(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(UInt8).null : %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_id(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_id: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_id_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_id(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_id = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_id(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_id : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_name: (None)
    # Returns: (transfer none)
    private macro _register_get_name_vfunc(impl_method_name)
      private def self._vfunc_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_name(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_name: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_name_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_name(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_name = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_name(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_name : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_supported_types: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)
    private macro _register_get_supported_types_vfunc(impl_method_name)
      private def self._vfunc_get_supported_types(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_supported_types(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_supported_types: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)
    private macro _register_unsafe_get_supported_types_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_supported_types(%this : Pointer(Void), ) : Pointer(Pointer(LibC::Char))

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_supported_types = Proc(Pointer(Void), Pointer(Pointer(LibC::Char))).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_supported_types(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_supported_types : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)))? = nil
    end

    # launch: (Throws)
    # @files: (nullable)
    # @context: (nullable)
    # Returns: (transfer none)
    private macro _register_launch_vfunc(impl_method_name)
      private def self._vfunc_launch(%this : Pointer(Void), lib_files :  Pointer(LibGLib::List), lib_context :  Pointer(Void), ) : LibC::Int
        # @files: (nullable) 
# @context: (nullable) 

# Generator::NullableArrayPlan
files=(lib_files.null? ? nil : GLib::List(Gio::File).new(lib_files, GICrystal::Transfer::None))
# Generator::NullableArrayPlan
context=(lib_context.null? ? nil : Gio::AppLaunchContext.new(lib_context, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
context=Gio::AppLaunchContext.new(lib_context, GICrystal::Transfer::None) unless lib_context.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(files, context)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_launch(Pointer(Void), Pointer(LibGLib::List), Pointer(Void))).pointer
        previous_def
      end
    end

    # launch: (Throws)
    # @files: (nullable)
    # @context: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_launch_vfunc(impl_method_name)
      private def self._vfunc_unsafe_launch(%this : Pointer(Void), lib_files :  Pointer(LibGLib::List), lib_context :  Pointer(Void), ) : LibC::Int
# @files: (nullable) 
# @context: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_files, lib_context)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_launch = Proc(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_launch(Pointer(Void), Pointer(LibGLib::List), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_launch : Proc(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), LibC::Int)? = nil
    end

    # launch_uris: (Throws)
    # @uris: (nullable)
    # @context: (nullable)
    # Returns: (transfer none)
    private macro _register_launch_uris_vfunc(impl_method_name)
      private def self._vfunc_launch_uris(%this : Pointer(Void), lib_uris :  Pointer(LibGLib::List), lib_context :  Pointer(Void), ) : LibC::Int
        # @uris: (nullable) 
# @context: (nullable) 

# Generator::NullableArrayPlan
uris=(lib_uris.null? ? nil : GLib::List(::String).new(lib_uris, GICrystal::Transfer::None))
# Generator::NullableArrayPlan
context=(lib_context.null? ? nil : Gio::AppLaunchContext.new(lib_context, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
context=Gio::AppLaunchContext.new(lib_context, GICrystal::Transfer::None) unless lib_context.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uris, context)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_launch_uris(Pointer(Void), Pointer(LibGLib::List), Pointer(Void))).pointer
        previous_def
      end
    end

    # launch_uris: (Throws)
    # @uris: (nullable)
    # @context: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_launch_uris_vfunc(impl_method_name)
      private def self._vfunc_unsafe_launch_uris(%this : Pointer(Void), lib_uris :  Pointer(LibGLib::List), lib_context :  Pointer(Void), ) : LibC::Int
# @uris: (nullable) 
# @context: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uris, lib_context)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_launch_uris = Proc(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_launch_uris(Pointer(Void), Pointer(LibGLib::List), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_launch_uris : Proc(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), LibC::Int)? = nil
    end

    # launch_uris_async: (None)
    # @uris: (nullable)
    # @context: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_launch_uris_async_vfunc(impl_method_name)
      private def self._vfunc_launch_uris_async(%this : Pointer(Void), lib_uris :  Pointer(LibGLib::List), lib_context :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
        # @uris: (nullable) 
# @context: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

# Generator::NullableArrayPlan
uris=(lib_uris.null? ? nil : GLib::List(::String).new(lib_uris, GICrystal::Transfer::None))
# Generator::NullableArrayPlan
context=(lib_context.null? ? nil : Gio::AppLaunchContext.new(lib_context, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
context=Gio::AppLaunchContext.new(lib_context, GICrystal::Transfer::None) unless lib_context.null?
# Generator::NullableArrayPlan
cancellable=(lib_cancellable.null? ? nil : Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
cancellable=Gio::Cancellable.new(lib_cancellable, GICrystal::Transfer::None) unless lib_cancellable.null?
# Generator::AsyncPatternArgPlan
# Generator::BuiltInTypeArgPlan
callback=Gio::AsyncReadyCallback.new(lib_callback, GICrystal::Transfer::None) unless lib_callback.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uris, context, cancellable, callback, user_data)
        
        %retval
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_launch_uris_async(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end
    end

    # launch_uris_async: (None)
    # @uris: (nullable)
    # @context: (nullable)
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_launch_uris_async_vfunc(impl_method_name)
      private def self._vfunc_unsafe_launch_uris_async(%this : Pointer(Void), lib_uris :  Pointer(LibGLib::List), lib_context :  Pointer(Void), lib_cancellable :  Pointer(Void), lib_callback :  Void*, lib_user_data :  Pointer(Void), ) : Void
# @uris: (nullable) 
# @context: (nullable) 
# @cancellable: (nullable) 
# @callback: (nullable) 
# @user_data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uris, lib_context, lib_cancellable, lib_callback, lib_user_data)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_launch_uris_async = Proc(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_launch_uris_async(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), Pointer(Void), Void*, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_launch_uris_async : Proc(Pointer(Void), Pointer(LibGLib::List), Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void)? = nil
    end

    # launch_uris_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_launch_uris_finish_vfunc(impl_method_name)
      private def self._vfunc_launch_uris_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
        # @result: 

# Generator::BuiltInTypeArgPlan
result=Gio::AbstractAsyncResult.new(lib_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_launch_uris_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # launch_uris_finish: (Throws)
    # @result:
    # Returns: (transfer none)
    private macro _register_unsafe_launch_uris_finish_vfunc(impl_method_name)
      private def self._vfunc_unsafe_launch_uris_finish(%this : Pointer(Void), lib_result :  Pointer(Void), ) : LibC::Int
# @result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_result)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_launch_uris_finish = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_launch_uris_finish(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_launch_uris_finish : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # remove_supports_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_remove_supports_type_vfunc(impl_method_name)
      private def self._vfunc_remove_supports_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
        # @content_type: 

# Generator::BuiltInTypeArgPlan
content_type=::String.new(lib_content_type)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(content_type)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_remove_supports_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # remove_supports_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_unsafe_remove_supports_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_remove_supports_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
# @content_type: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_content_type)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_remove_supports_type = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_remove_supports_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_remove_supports_type : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # set_as_default_for_extension: (Throws)
    # @extension:
    # Returns: (transfer none)
    private macro _register_set_as_default_for_extension_vfunc(impl_method_name)
      private def self._vfunc_set_as_default_for_extension(%this : Pointer(Void), lib_extension :  Pointer(LibC::Char), ) : LibC::Int
        # @extension: 

# Generator::BuiltInTypeArgPlan
extension=::Path.new(::String.new(lib_extension))


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(extension)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_as_default_for_extension(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # set_as_default_for_extension: (Throws)
    # @extension:
    # Returns: (transfer none)
    private macro _register_unsafe_set_as_default_for_extension_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_as_default_for_extension(%this : Pointer(Void), lib_extension :  Pointer(LibC::Char), ) : LibC::Int
# @extension: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_extension)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_as_default_for_extension = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_as_default_for_extension(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_as_default_for_extension : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # set_as_default_for_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_set_as_default_for_type_vfunc(impl_method_name)
      private def self._vfunc_set_as_default_for_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
        # @content_type: 

# Generator::BuiltInTypeArgPlan
content_type=::String.new(lib_content_type)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(content_type)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_as_default_for_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # set_as_default_for_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_unsafe_set_as_default_for_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_as_default_for_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
# @content_type: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_content_type)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_as_default_for_type = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_as_default_for_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_as_default_for_type : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # set_as_last_used_for_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_set_as_last_used_for_type_vfunc(impl_method_name)
      private def self._vfunc_set_as_last_used_for_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
        # @content_type: 

# Generator::BuiltInTypeArgPlan
content_type=::String.new(lib_content_type)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(content_type)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_as_last_used_for_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # set_as_last_used_for_type: (Throws)
    # @content_type:
    # Returns: (transfer none)
    private macro _register_unsafe_set_as_last_used_for_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_as_last_used_for_type(%this : Pointer(Void), lib_content_type :  Pointer(LibC::Char), ) : LibC::Int
# @content_type: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_content_type)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_as_last_used_for_type = Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_as_last_used_for_type(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_as_last_used_for_type : Proc(Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # should_show: (None)
    # Returns: (transfer none)
    private macro _register_should_show_vfunc(impl_method_name)
      private def self._vfunc_should_show(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_should_show(Pointer(Void))).pointer
        previous_def
      end
    end

    # should_show: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_should_show_vfunc(impl_method_name)
      private def self._vfunc_unsafe_should_show(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_should_show = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_should_show(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_should_show : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # supports_files: (None)
    # Returns: (transfer none)
    private macro _register_supports_files_vfunc(impl_method_name)
      private def self._vfunc_supports_files(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_supports_files(Pointer(Void))).pointer
        previous_def
      end
    end

    # supports_files: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_supports_files_vfunc(impl_method_name)
      private def self._vfunc_unsafe_supports_files(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_supports_files = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_supports_files(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_supports_files : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # supports_uris: (None)
    # Returns: (transfer none)
    private macro _register_supports_uris_vfunc(impl_method_name)
      private def self._vfunc_supports_uris(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_supports_uris(Pointer(Void))).pointer
        previous_def
      end
    end

    # supports_uris: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_supports_uris_vfunc(impl_method_name)
      private def self._vfunc_unsafe_supports_uris(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gio__AppInfo(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_supports_uris = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_supports_uris(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_supports_uris : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractAppInfo.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractAppInfo < GObject::Object
    include AppInfo

    GICrystal.declare_new_method(Gio::AbstractAppInfo, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_app_info_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::AbstractAppInfo.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
