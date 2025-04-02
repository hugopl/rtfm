require "../g_object-2.0/object"
require "./action_group"

require "./action_map"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Application < GObject::Object
    include ActionGroup
    include ActionMap

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::ApplicationClass), class_init,
        sizeof(LibGio::Application), instance_init, 0)
    end

    GICrystal.declare_new_method(Application, g_object_get_qdata)

    # Initialize a new `Application`.
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

    def initialize(*, action_group : Gio::ActionGroup? = nil, application_id : ::String? = nil, flags : Gio::ApplicationFlags? = nil, inactivity_timeout : UInt32? = nil, is_busy : Bool? = nil, is_registered : Bool? = nil, is_remote : Bool? = nil, resource_base_path : ::String? = nil, version : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[9]
      _values = StaticArray(LibGObject::Value, 9).new(LibGObject::Value.new)
      _n = 0

      if !action_group.nil?
        (_names.to_unsafe + _n).value = "action-group".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_group)
        _n += 1
      end
      if !application_id.nil?
        (_names.to_unsafe + _n).value = "application-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, application_id)
        _n += 1
      end
      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
        _n += 1
      end
      if !inactivity_timeout.nil?
        (_names.to_unsafe + _n).value = "inactivity-timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, inactivity_timeout)
        _n += 1
      end
      if !is_busy.nil?
        (_names.to_unsafe + _n).value = "is-busy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_busy)
        _n += 1
      end
      if !is_registered.nil?
        (_names.to_unsafe + _n).value = "is-registered".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_registered)
        _n += 1
      end
      if !is_remote.nil?
        (_names.to_unsafe + _n).value = "is-remote".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_remote)
        _n += 1
      end
      if !resource_base_path.nil?
        (_names.to_unsafe + _n).value = "resource-base-path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resource_base_path)
        _n += 1
      end
      if !version.nil?
        (_names.to_unsafe + _n).value = "version".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, version)
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
      @@g_type ||= LibGio.g_application_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Application.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def action_group=(value : Gio::ActionGroup?) : Gio::ActionGroup?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "action-group", unsafe_value, Pointer(Void).null)
      value
    end

    def application_id=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "application-id", unsafe_value, Pointer(Void).null)
      value
    end

    def application_id : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "application-id", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#application_id` property to nil.
    def application_id=(value : Nil) : Nil
      LibGObject.g_object_set(self, "application-id", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#application_id`, but can return nil.
    def application_id? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "application-id", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def flags=(value : Gio::ApplicationFlags) : Gio::ApplicationFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def flags : Gio::ApplicationFlags
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "flags", pointerof(value), Pointer(Void).null)
      Gio::ApplicationFlags.new(value)
    end

    def inactivity_timeout=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "inactivity-timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def inactivity_timeout : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "inactivity-timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def is_busy? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-busy", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_registered? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-registered", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_remote? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-remote", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def resource_base_path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "resource-base-path", unsafe_value, Pointer(Void).null)
      value
    end

    def resource_base_path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource-base-path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#resource_base_path` property to nil.
    def resource_base_path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "resource-base-path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#resource_base_path`, but can return nil.
    def resource_base_path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "resource-base-path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def version=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "version", unsafe_value, Pointer(Void).null)
      value
    end

    def version : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "version", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#version` property to nil.
    def version=(value : Nil) : Nil
      LibGObject.g_object_set(self, "version", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#version`, but can return nil.
    def version? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "version", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(application_id : ::String?, flags : Gio::ApplicationFlags) : self
      # g_application_new: (Constructor)
      # @application_id: (nullable)
      # @flags:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      application_id = if application_id.nil?
                         Pointer(LibC::Char).null
                       else
                         application_id.to_unsafe
                       end

      # C call
      _retval = LibGio.g_application_new(application_id, flags)

      # Return value handling
      Gio::Application.new(_retval, GICrystal::Transfer::Full)
    end

    def self.default : Gio::Application?
      # g_application_get_default: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_application_get_default

      # Return value handling
      Gio::Application.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def self.id_is_valid(application_id : ::String) : Bool
      # g_application_id_is_valid: (None)
      # @application_id:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_id_is_valid(application_id)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def activate : Nil
      # g_application_activate: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_activate(to_unsafe)

      # Return value handling
    end

    def add_main_option(long_name : ::String, short_name : Int8, flags : GLib::OptionFlags, arg : GLib::OptionArg, description : ::String, arg_description : ::String?) : Nil
      # g_application_add_main_option: (Method)
      # @long_name:
      # @short_name:
      # @flags:
      # @arg:
      # @description:
      # @arg_description: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      arg_description = if arg_description.nil?
                          Pointer(LibC::Char).null
                        else
                          arg_description.to_unsafe
                        end

      # C call
      LibGio.g_application_add_main_option(to_unsafe, long_name, short_name, flags, arg, description, arg_description)

      # Return value handling
    end

    def add_main_option_entries(entries : Enumerable(GLib::OptionEntry)) : Nil
      # g_application_add_main_option_entries: (Method)
      # @entries: (array zero-terminated=1 element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      entries = entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGLib::OptionEntry))

      # C call
      LibGio.g_application_add_main_option_entries(to_unsafe, entries)

      # Return value handling
    end

    def add_main_option_entries(*entries : GLib::OptionEntry)
      add_main_option_entries(entries)
    end

    def add_option_group(group : GLib::OptionGroup) : Nil
      # g_application_add_option_group: (Method)
      # @group: (transfer full)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_add_option_group(to_unsafe, group)

      # Return value handling
    end

    def bind_busy_property(object : GObject::Object, property : ::String) : Nil
      # g_application_bind_busy_property: (Method)
      # @object:
      # @property:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_bind_busy_property(to_unsafe, object, property)

      # Return value handling
    end

    def application_id : ::String?
      # g_application_get_application_id: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_application_get_application_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def dbus_connection : Gio::DBusConnection?
      # g_application_get_dbus_connection: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_application_get_dbus_connection(to_unsafe)

      # Return value handling
      Gio::DBusConnection.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def dbus_object_path : ::String?
      # g_application_get_dbus_object_path: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_application_get_dbus_object_path(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def flags : Gio::ApplicationFlags
      # g_application_get_flags: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_get_flags(to_unsafe)

      # Return value handling
      Gio::ApplicationFlags.new(_retval)
    end

    def inactivity_timeout : UInt32
      # g_application_get_inactivity_timeout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_get_inactivity_timeout(to_unsafe)

      # Return value handling
      _retval
    end

    def is_busy : Bool
      # g_application_get_is_busy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_get_is_busy(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_registered : Bool
      # g_application_get_is_registered: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_get_is_registered(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_remote : Bool
      # g_application_get_is_remote: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_application_get_is_remote(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def resource_base_path : ::String?
      # g_application_get_resource_base_path: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_application_get_resource_base_path(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def version : ::String?
      # g_application_get_version: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_application_get_version(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def hold : Nil
      # g_application_hold: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_hold(to_unsafe)

      # Return value handling
    end

    def mark_busy : Nil
      # g_application_mark_busy: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_mark_busy(to_unsafe)

      # Return value handling
    end

    def open(files : Enumerable(Gio::File), hint : ::String) : Nil
      # g_application_open: (Method)
      # @files: (array length=n_files element-type Interface)
      # @n_files:
      # @hint:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_files = files.size
      # Generator::ArrayArgPlan
      files = files.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGio::File)))

      # C call
      LibGio.g_application_open(to_unsafe, files, n_files, hint)

      # Return value handling
    end

    def quit : Nil
      # g_application_quit: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_quit(to_unsafe)

      # Return value handling
    end

    def register(cancellable : Gio::Cancellable?) : Bool
      # g_application_register: (Method | Throws)
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
      _retval = LibGio.g_application_register(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def release : Nil
      # g_application_release: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_release(to_unsafe)

      # Return value handling
    end

    def run(argv : Enumerable(::String)?) : Int32
      # g_application_run: (Method)
      # @argc:
      # @argv: (nullable) (array length=argc element-type Filename)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      argc = argv.try(&.size) || 0
      # Generator::NullableArrayPlan
      argv = if argv.nil?
               Pointer(Pointer(LibC::Char)).null
             else
               argv.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
             end

      # C call
      _retval = LibGio.g_application_run(to_unsafe, argc, argv)

      # Return value handling
      _retval
    end

    def run(*argv : ::String)
      run(argv)
    end

    def send_notification(id : ::String?, notification : Gio::Notification) : Nil
      # g_application_send_notification: (Method)
      # @id: (nullable)
      # @notification:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      id = if id.nil?
             Pointer(LibC::Char).null
           else
             id.to_unsafe
           end

      # C call
      LibGio.g_application_send_notification(to_unsafe, id, notification)

      # Return value handling
    end

    @[Deprecated]
    def action_group=(action_group : Gio::ActionGroup?) : Nil
      # g_application_set_action_group: (Method | Setter)
      # @action_group: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      action_group = if action_group.nil?
                       Pointer(Void).null
                     else
                       action_group.to_unsafe
                     end

      # C call
      LibGio.g_application_set_action_group(to_unsafe, action_group)

      # Return value handling
    end

    def application_id=(application_id : ::String?) : Nil
      # g_application_set_application_id: (Method | Setter)
      # @application_id: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      application_id = if application_id.nil?
                         Pointer(LibC::Char).null
                       else
                         application_id.to_unsafe
                       end

      # C call
      LibGio.g_application_set_application_id(to_unsafe, application_id)

      # Return value handling
    end

    def set_default : Nil
      # g_application_set_default: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_set_default(to_unsafe)

      # Return value handling
    end

    def flags=(flags : Gio::ApplicationFlags) : Nil
      # g_application_set_flags: (Method | Setter)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_set_flags(to_unsafe, flags)

      # Return value handling
    end

    def inactivity_timeout=(inactivity_timeout : UInt32) : Nil
      # g_application_set_inactivity_timeout: (Method | Setter)
      # @inactivity_timeout:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_set_inactivity_timeout(to_unsafe, inactivity_timeout)

      # Return value handling
    end

    def option_context_description=(description : ::String?) : Nil
      # g_application_set_option_context_description: (Method)
      # @description: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      description = if description.nil?
                      Pointer(LibC::Char).null
                    else
                      description.to_unsafe
                    end

      # C call
      LibGio.g_application_set_option_context_description(to_unsafe, description)

      # Return value handling
    end

    def option_context_parameter_string=(parameter_string : ::String?) : Nil
      # g_application_set_option_context_parameter_string: (Method)
      # @parameter_string: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parameter_string = if parameter_string.nil?
                           Pointer(LibC::Char).null
                         else
                           parameter_string.to_unsafe
                         end

      # C call
      LibGio.g_application_set_option_context_parameter_string(to_unsafe, parameter_string)

      # Return value handling
    end

    def option_context_summary=(summary : ::String?) : Nil
      # g_application_set_option_context_summary: (Method)
      # @summary: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      summary = if summary.nil?
                  Pointer(LibC::Char).null
                else
                  summary.to_unsafe
                end

      # C call
      LibGio.g_application_set_option_context_summary(to_unsafe, summary)

      # Return value handling
    end

    def resource_base_path=(resource_path : ::String?) : Nil
      # g_application_set_resource_base_path: (Method | Setter)
      # @resource_path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      resource_path = if resource_path.nil?
                        Pointer(LibC::Char).null
                      else
                        resource_path.to_unsafe
                      end

      # C call
      LibGio.g_application_set_resource_base_path(to_unsafe, resource_path)

      # Return value handling
    end

    def version=(version : ::String) : Nil
      # g_application_set_version: (Method | Setter)
      # @version:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_set_version(to_unsafe, version)

      # Return value handling
    end

    def unbind_busy_property(object : GObject::Object, property : ::String) : Nil
      # g_application_unbind_busy_property: (Method)
      # @object:
      # @property:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_unbind_busy_property(to_unsafe, object, property)

      # Return value handling
    end

    def unmark_busy : Nil
      # g_application_unmark_busy: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_application_unmark_busy(to_unsafe)

      # Return value handling
    end

    def withdraw_notification(id : ::String) : Nil
      # g_application_withdraw_notification: (Method)
      # @id:
      # Returns: (transfer none)

      # C call
      LibGio.g_application_withdraw_notification(to_unsafe, id)

      # Return value handling
    end

    struct ActivateSignal < GObject::Signal
      def name : String
        @detail ? "activate::#{@detail}" : "activate"
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

      def connect(handler : Proc(Gio::Application, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Application.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Application, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "activate")
      end
    end

    def activate_signal
      ActivateSignal.new(self)
    end

    struct CommandLineSignal < GObject::Signal
      def name : String
        @detail ? "command-line::#{@detail}" : "command-line"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::ApplicationCommandLine, Int32)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::ApplicationCommandLine, Int32), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_command_line : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          command_line = Gio::ApplicationCommandLine.new(lib_command_line, GICrystal::Transfer::None)
          ::Box(Proc(Gio::ApplicationCommandLine, Int32)).unbox(_lib_box).call(command_line)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Application, Gio::ApplicationCommandLine, Int32), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_command_line : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Application.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          command_line = Gio::ApplicationCommandLine.new(lib_command_line, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Application, Gio::ApplicationCommandLine, Int32)).unbox(_lib_box).call(_sender, command_line)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(command_line : Gio::ApplicationCommandLine) : Nil
        LibGObject.g_signal_emit_by_name(@source, "command-line", command_line)
      end
    end

    def command_line_signal
      CommandLineSignal.new(self)
    end

    struct HandleLocalOptionsSignal < GObject::Signal
      def name : String
        @detail ? "handle-local-options::#{@detail}" : "handle-local-options"
      end

      def connect(*, after : Bool = false, &block : Proc(GLib::VariantDict, Int32)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(GLib::VariantDict, Int32), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_options : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          options = GLib::VariantDict.new(lib_options, GICrystal::Transfer::None)
          ::Box(Proc(GLib::VariantDict, Int32)).unbox(_lib_box).call(options)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Application, GLib::VariantDict, Int32), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_options : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Application.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          options = GLib::VariantDict.new(lib_options, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Application, GLib::VariantDict, Int32)).unbox(_lib_box).call(_sender, options)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(options : GLib::VariantDict) : Nil
        LibGObject.g_signal_emit_by_name(@source, "handle-local-options", options)
      end
    end

    def handle_local_options_signal
      HandleLocalOptionsSignal.new(self)
    end

    struct NameLostSignal < GObject::Signal
      def name : String
        @detail ? "name-lost::#{@detail}" : "name-lost"
      end

      def connect(*, after : Bool = false, &block : Proc(Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Application, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Application.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Application, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "name-lost")
      end
    end

    def name_lost_signal
      NameLostSignal.new(self)
    end

    struct OpenSignal < GObject::Signal
      def name : String
        @detail ? "open::#{@detail}" : "open"
      end

      def connect(*, after : Bool = false, &block : Proc(Enumerable(Gio::File), ::String, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Enumerable(Gio::File), ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_files : Pointer(LibGio::File), lib_n_files : Int32, lib_hint : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          # Generator::ArrayLengthArgPlan
          # Generator::ArrayArgPlan
          lib_files = lib_files.as(Pointer(Pointer(Void)))
          files = Array(Gio::File).new(lib_n_files) do |_i|
            Gio::AbstractFile.new((lib_files + _i).value, GICrystal::Transfer::None)
          end
          # Generator::BuiltInTypeArgPlan
          hint = ::String.new(lib_hint)
          ::Box(Proc(Enumerable(Gio::File), ::String, Nil)).unbox(_lib_box).call(files, hint)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Application, Enumerable(Gio::File), ::String, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_files : Pointer(LibGio::File), lib_n_files : Int32, lib_hint : Pointer(LibC::Char), _lib_box : Pointer(Void)) {
          _sender = Gio::Application.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::ArrayLengthArgPlan
          # Generator::ArrayArgPlan
          lib_files = lib_files.as(Pointer(Pointer(Void)))
          files = Array(Gio::File).new(lib_n_files) do |_i|
            Gio::AbstractFile.new((lib_files + _i).value, GICrystal::Transfer::None)
          end
          # Generator::BuiltInTypeArgPlan
          hint = ::String.new(lib_hint)
          ::Box(Proc(Gio::Application, Enumerable(Gio::File), ::String, Nil)).unbox(_lib_box).call(_sender, files, hint)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(files : Enumerable(Gio::File), hint : ::String) : Nil
        # Generator::ArrayLengthArgPlan
        n_files = files.size
        # Generator::ArrayArgPlan
        files = files.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGio::File))

        LibGObject.g_signal_emit_by_name(@source, "open", files, n_files, hint)
      end
    end

    def open_signal
      OpenSignal.new(self)
    end

    struct ShutdownSignal < GObject::Signal
      def name : String
        @detail ? "shutdown::#{@detail}" : "shutdown"
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

      def connect(handler : Proc(Gio::Application, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Application.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Application, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "shutdown")
      end
    end

    def shutdown_signal
      ShutdownSignal.new(self)
    end

    struct StartupSignal < GObject::Signal
      def name : String
        @detail ? "startup::#{@detail}" : "startup"
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

      def connect(handler : Proc(Gio::Application, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Application.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Application, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "startup")
      end
    end

    def startup_signal
      StartupSignal.new(self)
    end

    # activate: (None)
    # Returns: (transfer none)
    private macro _register_activate_vfunc(impl_method_name)
      private def self._vfunc_activate(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_activate(Pointer(Void))).pointer
        previous_def
      end
    end

    # activate: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_activate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_activate(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_activate = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_activate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_activate : Proc(Pointer(Void), Void)? = nil
    end

    # add_platform_data: (None)
    # @builder:
    # Returns: (transfer none)
    private macro _register_add_platform_data_vfunc(impl_method_name)
      private def self._vfunc_add_platform_data(%this : Pointer(Void), lib_builder :  Pointer(Void), ) : Void
        # @builder: 

# Generator::BuiltInTypeArgPlan
builder=GLib::VariantBuilder.new(lib_builder, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_platform_data(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # add_platform_data: (None)
    # @builder:
    # Returns: (transfer none)
    private macro _register_unsafe_add_platform_data_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_platform_data(%this : Pointer(Void), lib_builder :  Pointer(Void), ) : Void
# @builder: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_platform_data = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_platform_data(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_platform_data : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # after_emit: (None)
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_after_emit_vfunc(impl_method_name)
      private def self._vfunc_after_emit(%this : Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
        # @platform_data: 

# Generator::HandmadeArgPlan
platform_data=GLib::Variant.new(lib_platform_data, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(platform_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_after_emit(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # after_emit: (None)
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_unsafe_after_emit_vfunc(impl_method_name)
      private def self._vfunc_unsafe_after_emit(%this : Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
# @platform_data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_platform_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_after_emit = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_after_emit(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_after_emit : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # before_emit: (None)
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_before_emit_vfunc(impl_method_name)
      private def self._vfunc_before_emit(%this : Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
        # @platform_data: 

# Generator::HandmadeArgPlan
platform_data=GLib::Variant.new(lib_platform_data, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(platform_data)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_before_emit(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # before_emit: (None)
    # @platform_data:
    # Returns: (transfer none)
    private macro _register_unsafe_before_emit_vfunc(impl_method_name)
      private def self._vfunc_unsafe_before_emit(%this : Pointer(Void), lib_platform_data :  Pointer(Void), ) : Void
# @platform_data: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_platform_data)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_before_emit = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_before_emit(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_before_emit : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # command_line: (None)
    # @command_line:
    # Returns: (transfer none)
    private macro _register_command_line_vfunc(impl_method_name)
      private def self._vfunc_command_line(%this : Pointer(Void), lib_command_line :  Pointer(Void), ) : Int32
        # @command_line: 

# Generator::BuiltInTypeArgPlan
command_line=Gio::ApplicationCommandLine.new(lib_command_line, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(command_line)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_command_line(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # command_line: (None)
    # @command_line:
    # Returns: (transfer none)
    private macro _register_unsafe_command_line_vfunc(impl_method_name)
      private def self._vfunc_unsafe_command_line(%this : Pointer(Void), lib_command_line :  Pointer(Void), ) : Int32
# @command_line: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_command_line)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_command_line = Proc(Pointer(Void), Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_command_line(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_command_line : Proc(Pointer(Void), Pointer(Void), Int32)? = nil
    end

    # dbus_register: (Throws)
    # @connection:
    # @object_path:
    # Returns: (transfer none)
    private macro _register_dbus_register_vfunc(impl_method_name)
      private def self._vfunc_dbus_register(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_object_path :  Pointer(LibC::Char), ) : LibC::Int
        # @connection: 
# @object_path: 

# Generator::BuiltInTypeArgPlan
connection=Gio::DBusConnection.new(lib_connection, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
object_path=::String.new(lib_object_path)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection, object_path)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_dbus_register(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # dbus_register: (Throws)
    # @connection:
    # @object_path:
    # Returns: (transfer none)
    private macro _register_unsafe_dbus_register_vfunc(impl_method_name)
      private def self._vfunc_unsafe_dbus_register(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_object_path :  Pointer(LibC::Char), ) : LibC::Int
# @connection: 
# @object_path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection, lib_object_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_dbus_register = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_dbus_register(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_dbus_register : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), LibC::Int)? = nil
    end

    # dbus_unregister: (None)
    # @connection:
    # @object_path:
    # Returns: (transfer none)
    private macro _register_dbus_unregister_vfunc(impl_method_name)
      private def self._vfunc_dbus_unregister(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_object_path :  Pointer(LibC::Char), ) : Void
        # @connection: 
# @object_path: 

# Generator::BuiltInTypeArgPlan
connection=Gio::DBusConnection.new(lib_connection, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
object_path=::String.new(lib_object_path)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(connection, object_path)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_dbus_unregister(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # dbus_unregister: (None)
    # @connection:
    # @object_path:
    # Returns: (transfer none)
    private macro _register_unsafe_dbus_unregister_vfunc(impl_method_name)
      private def self._vfunc_unsafe_dbus_unregister(%this : Pointer(Void), lib_connection :  Pointer(Void), lib_object_path :  Pointer(LibC::Char), ) : Void
# @connection: 
# @object_path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_connection, lib_object_path)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_dbus_unregister = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_dbus_unregister(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_dbus_unregister : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # handle_local_options: (None)
    # @options:
    # Returns: (transfer none)
    private macro _register_handle_local_options_vfunc(impl_method_name)
      private def self._vfunc_handle_local_options(%this : Pointer(Void), lib_options :  Pointer(Void), ) : Int32
        # @options: 

# Generator::BuiltInTypeArgPlan
options=GLib::VariantDict.new(lib_options, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(options)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_handle_local_options(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # handle_local_options: (None)
    # @options:
    # Returns: (transfer none)
    private macro _register_unsafe_handle_local_options_vfunc(impl_method_name)
      private def self._vfunc_unsafe_handle_local_options(%this : Pointer(Void), lib_options :  Pointer(Void), ) : Int32
# @options: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_options)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_handle_local_options = Proc(Pointer(Void), Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_handle_local_options(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_handle_local_options : Proc(Pointer(Void), Pointer(Void), Int32)? = nil
    end

    # local_command_line: (None)
    # @arguments: (inout) (transfer full) (array zero-terminated=1 element-type Utf8)
    # @exit_status: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_local_command_line_vfunc(impl_method_name)
      private def self._vfunc_local_command_line(%this : Pointer(Void), lib_arguments :  Pointer(Pointer(LibC::Char)), lib_exit_status :  Int32, ) : LibC::Int
        # @arguments: (inout) (transfer full) (array zero-terminated=1 element-type Utf8)
# @exit_status: (out) (transfer full) 

# Generator::ArrayArgPlan
raise NotImplementedError.new
exit_status=lib_exit_status


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(arguments, exit_status)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_local_command_line(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32)).pointer
        previous_def
      end
    end

    # local_command_line: (None)
    # @arguments: (inout) (transfer full) (array zero-terminated=1 element-type Utf8)
    # @exit_status: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_local_command_line_vfunc(impl_method_name)
      private def self._vfunc_unsafe_local_command_line(%this : Pointer(Void), lib_arguments :  Pointer(Pointer(LibC::Char)), lib_exit_status :  Int32, ) : LibC::Int
# @arguments: (inout) (transfer full) (array zero-terminated=1 element-type Utf8)
# @exit_status: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_arguments, lib_exit_status)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_local_command_line = Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_local_command_line(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_local_command_line : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Int32, LibC::Int)? = nil
    end

    # name_lost: (None)
    # Returns: (transfer none)
    private macro _register_name_lost_vfunc(impl_method_name)
      private def self._vfunc_name_lost(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_name_lost(Pointer(Void))).pointer
        previous_def
      end
    end

    # name_lost: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_name_lost_vfunc(impl_method_name)
      private def self._vfunc_unsafe_name_lost(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_name_lost = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_name_lost(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_name_lost : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # open: (None)
    # @files: (array length=n_files element-type Interface)
    # @n_files:
    # @hint:
    # Returns: (transfer none)
    private macro _register_open_vfunc(impl_method_name)
      private def self._vfunc_open(%this : Pointer(Void), lib_files :  Pointer(Pointer(LibGio::File)), lib_n_files :  Int32, lib_hint :  Pointer(LibC::Char), ) : Void
        # @files: (array length=n_files element-type Interface)
# @n_files: 
# @hint: 

# Generator::ArrayLengthArgPlan
# Generator::ArrayArgPlan
lib_files = lib_files.as(Pointer(Pointer(Void)))
files= Array(Gio::File).new(lib_n_files) do |_i|
Gio::AbstractFile.new((lib_files + _i).value, GICrystal::Transfer::None)
end
# Generator::BuiltInTypeArgPlan
hint=::String.new(lib_hint)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(files, n_files, hint)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_open(Pointer(Void), Pointer(Pointer(LibGio::File)), Int32, Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # open: (None)
    # @files: (array length=n_files element-type Interface)
    # @n_files:
    # @hint:
    # Returns: (transfer none)
    private macro _register_unsafe_open_vfunc(impl_method_name)
      private def self._vfunc_unsafe_open(%this : Pointer(Void), lib_files :  Pointer(Pointer(LibGio::File)), lib_n_files :  Int32, lib_hint :  Pointer(LibC::Char), ) : Void
# @files: (array length=n_files element-type Interface)
# @n_files: 
# @hint: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_files, lib_n_files, lib_hint)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_open = Proc(Pointer(Void), Pointer(Pointer(LibGio::File)), Int32, Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_open(Pointer(Void), Pointer(Pointer(LibGio::File)), Int32, Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_open : Proc(Pointer(Void), Pointer(Pointer(LibGio::File)), Int32, Pointer(LibC::Char), Void)? = nil
    end

    # quit_mainloop: (None)
    # Returns: (transfer none)
    private macro _register_quit_mainloop_vfunc(impl_method_name)
      private def self._vfunc_quit_mainloop(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_quit_mainloop(Pointer(Void))).pointer
        previous_def
      end
    end

    # quit_mainloop: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_quit_mainloop_vfunc(impl_method_name)
      private def self._vfunc_unsafe_quit_mainloop(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_quit_mainloop = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_quit_mainloop(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_quit_mainloop : Proc(Pointer(Void), Void)? = nil
    end

    # run_mainloop: (None)
    # Returns: (transfer none)
    private macro _register_run_mainloop_vfunc(impl_method_name)
      private def self._vfunc_run_mainloop(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_run_mainloop(Pointer(Void))).pointer
        previous_def
      end
    end

    # run_mainloop: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_run_mainloop_vfunc(impl_method_name)
      private def self._vfunc_unsafe_run_mainloop(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_run_mainloop = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_run_mainloop(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_run_mainloop : Proc(Pointer(Void), Void)? = nil
    end

    # shutdown: (None)
    # Returns: (transfer none)
    private macro _register_shutdown_vfunc(impl_method_name)
      private def self._vfunc_shutdown(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_shutdown(Pointer(Void))).pointer
        previous_def
      end
    end

    # shutdown: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_shutdown_vfunc(impl_method_name)
      private def self._vfunc_unsafe_shutdown(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 216).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_shutdown = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_shutdown(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_shutdown : Proc(Pointer(Void), Void)? = nil
    end

    # startup: (None)
    # Returns: (transfer none)
    private macro _register_startup_vfunc(impl_method_name)
      private def self._vfunc_startup(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_startup(Pointer(Void))).pointer
        previous_def
      end
    end

    # startup: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_startup_vfunc(impl_method_name)
      private def self._vfunc_unsafe_startup(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_startup = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_startup(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_startup : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
