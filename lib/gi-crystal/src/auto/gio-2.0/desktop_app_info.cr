require "../g_object-2.0/object"
require "./app_info"

module Gio
  @[GICrystal::GeneratedWrapper]
  class DesktopAppInfo < GObject::Object
    include AppInfo

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::DesktopAppInfoClass), class_init,
        sizeof(LibGio::DesktopAppInfo), instance_init, 0)
    end

    GICrystal.declare_new_method(DesktopAppInfo, g_object_get_qdata)

    # Initialize a new `DesktopAppInfo`.
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

    def initialize(*, filename : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !filename.nil?
        (_names.to_unsafe + _n).value = "filename".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, filename)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_desktop_app_info_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::DesktopAppInfo.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def filename=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "filename", unsafe_value, Pointer(Void).null)
      value
    end

    def filename : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#filename` property to nil.
    def filename=(value : Nil) : Nil
      LibGObject.g_object_set(self, "filename", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#filename`, but can return nil.
    def filename? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "filename", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(desktop_id : ::String) : self?
      # g_desktop_app_info_new: (Constructor)
      # @desktop_id:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_new(desktop_id)

      # Return value handling
      Gio::DesktopAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_filename(filename : ::String) : self?
      # g_desktop_app_info_new_from_filename: (Constructor)
      # @filename:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_new_from_filename(filename)

      # Return value handling
      Gio::DesktopAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_from_keyfile(key_file : GLib::KeyFile) : self?
      # g_desktop_app_info_new_from_keyfile: (Constructor)
      # @key_file:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_new_from_keyfile(key_file)

      # Return value handling
      Gio::DesktopAppInfo.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.implementations(interface : ::String) : GLib::List
      # g_desktop_app_info_get_implementations: (None)
      # @interface:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_desktop_app_info_get_implementations(interface)

      # Return value handling
      GLib::List(Gio::DesktopAppInfo).new(_retval, GICrystal::Transfer::Full)
    end

    def self.search(search_string : ::String) : Enumerable(Enumerable(::String))
      # g_desktop_app_info_search: (None)
      # @search_string:
      # Returns: (transfer full) (array zero-terminated=1 element-type Array)

      # C call
      _retval = LibGio.g_desktop_app_info_search(search_string)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.desktop_env=(desktop_env : ::String) : Nil
      # g_desktop_app_info_set_desktop_env: (None)
      # @desktop_env:
      # Returns: (transfer none)

      # C call
      LibGio.g_desktop_app_info_set_desktop_env(desktop_env)

      # Return value handling
    end

    def action_name(action_name : ::String) : ::String
      # g_desktop_app_info_get_action_name: (Method)
      # @action_name:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_desktop_app_info_get_action_name(to_unsafe, action_name)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def boolean(key : ::String) : Bool
      # g_desktop_app_info_get_boolean: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_desktop_app_info_get_boolean(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def categories : ::String?
      # g_desktop_app_info_get_categories: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_get_categories(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def filename : ::Path?
      # g_desktop_app_info_get_filename: (Method | Getter)
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_get_filename(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    def generic_name : ::String?
      # g_desktop_app_info_get_generic_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_get_generic_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def is_hidden : Bool
      # g_desktop_app_info_get_is_hidden: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_desktop_app_info_get_is_hidden(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def keywords : Enumerable(::String)
      # g_desktop_app_info_get_keywords: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_desktop_app_info_get_keywords(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def locale_string(key : ::String) : ::String?
      # g_desktop_app_info_get_locale_string: (Method)
      # @key:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_get_locale_string(to_unsafe, key)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def nodisplay : Bool
      # g_desktop_app_info_get_nodisplay: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_desktop_app_info_get_nodisplay(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_in(desktop_env : ::String?) : Bool
      # g_desktop_app_info_get_show_in: (Method)
      # @desktop_env: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      desktop_env = if desktop_env.nil?
                      Pointer(LibC::Char).null
                    else
                      desktop_env.to_unsafe
                    end

      # C call
      _retval = LibGio.g_desktop_app_info_get_show_in(to_unsafe, desktop_env)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def startup_wm_class : ::String?
      # g_desktop_app_info_get_startup_wm_class: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_get_startup_wm_class(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def string(key : ::String) : ::String?
      # g_desktop_app_info_get_string: (Method)
      # @key:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_desktop_app_info_get_string(to_unsafe, key)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    def string_list(key : ::String) : Enumerable(::String)
      # g_desktop_app_info_get_string_list: (Method)
      # @key:
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (array length=length zero-terminated=1 element-type Utf8)

      # Generator::OutArgUsedInReturnPlan
      length = 0_u64
      # C call
      _retval = LibGio.g_desktop_app_info_get_string_list(to_unsafe, key, pointerof(length))

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def has_key(key : ::String) : Bool
      # g_desktop_app_info_has_key: (Method)
      # @key:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_desktop_app_info_has_key(to_unsafe, key)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def launch_action(action_name : ::String, launch_context : Gio::AppLaunchContext?) : Nil
      # g_desktop_app_info_launch_action: (Method)
      # @action_name:
      # @launch_context: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      launch_context = if launch_context.nil?
                         Pointer(Void).null
                       else
                         launch_context.to_unsafe
                       end

      # C call
      LibGio.g_desktop_app_info_launch_action(to_unsafe, action_name, launch_context)

      # Return value handling
    end

    def launch_uris_as_manager(uris : GLib::List, launch_context : Gio::AppLaunchContext?, spawn_flags : GLib::SpawnFlags, user_setup : GLib::SpawnChildSetupFunc?, user_setup_data : Pointer(Void)?, pid_callback : Gio::DesktopAppLaunchCallback?, pid_callback_data : Pointer(Void)?) : Bool
      # g_desktop_app_info_launch_uris_as_manager: (Method | Throws)
      # @uris:
      # @launch_context: (nullable)
      # @spawn_flags:
      # @user_setup: (nullable)
      # @user_setup_data: (nullable)
      # @pid_callback: (nullable)
      # @pid_callback_data: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      launch_context = if launch_context.nil?
                         Pointer(Void).null
                       else
                         launch_context.to_unsafe
                       end
      # Generator::NullableArrayPlan
      user_setup_data = if user_setup_data.nil?
                          Pointer(Void).null
                        else
                          user_setup_data.to_unsafe
                        end
      # Generator::NullableArrayPlan
      pid_callback_data = if pid_callback_data.nil?
                            Pointer(Void).null
                          else
                            pid_callback_data.to_unsafe
                          end

      # C call
      _retval = LibGio.g_desktop_app_info_launch_uris_as_manager(to_unsafe, uris, launch_context, spawn_flags, user_setup, user_setup_data, pid_callback, pid_callback_data, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def launch_uris_as_manager_with_fds(uris : GLib::List, launch_context : Gio::AppLaunchContext?, spawn_flags : GLib::SpawnFlags, user_setup : GLib::SpawnChildSetupFunc?, user_setup_data : Pointer(Void)?, pid_callback : Gio::DesktopAppLaunchCallback?, pid_callback_data : Pointer(Void)?, stdin_fd : Int32, stdout_fd : Int32, stderr_fd : Int32) : Bool
      # g_desktop_app_info_launch_uris_as_manager_with_fds: (Method | Throws)
      # @uris:
      # @launch_context: (nullable)
      # @spawn_flags:
      # @user_setup: (nullable)
      # @user_setup_data: (nullable)
      # @pid_callback: (nullable)
      # @pid_callback_data: (nullable)
      # @stdin_fd:
      # @stdout_fd:
      # @stderr_fd:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      launch_context = if launch_context.nil?
                         Pointer(Void).null
                       else
                         launch_context.to_unsafe
                       end
      # Generator::NullableArrayPlan
      user_setup_data = if user_setup_data.nil?
                          Pointer(Void).null
                        else
                          user_setup_data.to_unsafe
                        end
      # Generator::NullableArrayPlan
      pid_callback_data = if pid_callback_data.nil?
                            Pointer(Void).null
                          else
                            pid_callback_data.to_unsafe
                          end

      # C call
      _retval = LibGio.g_desktop_app_info_launch_uris_as_manager_with_fds(to_unsafe, uris, launch_context, spawn_flags, user_setup, user_setup_data, pid_callback, pid_callback_data, stdin_fd, stdout_fd, stderr_fd, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def list_actions : Enumerable(::String)
      # g_desktop_app_info_list_actions: (Method)
      # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_desktop_app_info_list_actions(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
