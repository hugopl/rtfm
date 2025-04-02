require "../gio-2.0/application"
require "../gio-2.0/action_group"

require "../gio-2.0/action_map"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Application < Gio::Application
    include Gio::ActionGroup
    include Gio::ActionMap

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::ApplicationClass), class_init,
        sizeof(LibGtk::Application), instance_init, 0)
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

    def initialize(*, action_group : Gio::ActionGroup? = nil, active_window : Gtk::Window? = nil, application_id : ::String? = nil, flags : Gio::ApplicationFlags? = nil, inactivity_timeout : UInt32? = nil, is_busy : Bool? = nil, is_registered : Bool? = nil, is_remote : Bool? = nil, menubar : Gio::MenuModel? = nil, register_session : Bool? = nil, resource_base_path : ::String? = nil, screensaver_active : Bool? = nil, version : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[13]
      _values = StaticArray(LibGObject::Value, 13).new(LibGObject::Value.new)
      _n = 0

      if !action_group.nil?
        (_names.to_unsafe + _n).value = "action-group".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, action_group)
        _n += 1
      end
      if !active_window.nil?
        (_names.to_unsafe + _n).value = "active-window".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, active_window)
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
      if !menubar.nil?
        (_names.to_unsafe + _n).value = "menubar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, menubar)
        _n += 1
      end
      if !register_session.nil?
        (_names.to_unsafe + _n).value = "register-session".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, register_session)
        _n += 1
      end
      if !resource_base_path.nil?
        (_names.to_unsafe + _n).value = "resource-base-path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, resource_base_path)
        _n += 1
      end
      if !screensaver_active.nil?
        (_names.to_unsafe + _n).value = "screensaver-active".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, screensaver_active)
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
      @@g_type ||= LibGtk.gtk_application_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Application.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def active_window : Gtk::Window?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "active-window", pointerof(value), Pointer(Void).null)
      Gtk::Window.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def menubar=(value : Gio::MenuModel?) : Gio::MenuModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "menubar", unsafe_value, Pointer(Void).null)
      value
    end

    def menubar : Gio::MenuModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "menubar", pointerof(value), Pointer(Void).null)
      Gio::MenuModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def register_session=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "register-session", unsafe_value, Pointer(Void).null)
      value
    end

    def register_session? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "register-session", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def screensaver_active? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "screensaver-active", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(application_id : ::String?, flags : Gio::ApplicationFlags) : self
      # gtk_application_new: (Constructor)
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
      _retval = LibGtk.gtk_application_new(application_id, flags)

      # Return value handling
      Gtk::Application.new(_retval, GICrystal::Transfer::Full)
    end

    def add_window(window : Gtk::Window) : Nil
      # gtk_application_add_window: (Method)
      # @window:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_application_add_window(to_unsafe, window)

      # Return value handling
    end

    def accels_for_action(detailed_action_name : ::String) : Enumerable(::String)
      # gtk_application_get_accels_for_action: (Method)
      # @detailed_action_name:
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_application_get_accels_for_action(to_unsafe, detailed_action_name)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def actions_for_accel(accel : ::String) : Enumerable(::String)
      # gtk_application_get_actions_for_accel: (Method)
      # @accel:
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_application_get_actions_for_accel(to_unsafe, accel)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def active_window : Gtk::Window?
      # gtk_application_get_active_window: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_application_get_active_window(to_unsafe)

      # Return value handling
      Gtk::Window.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def menu_by_id(id : ::String) : Gio::Menu?
      # gtk_application_get_menu_by_id: (Method)
      # @id:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_application_get_menu_by_id(to_unsafe, id)

      # Return value handling
      Gio::Menu.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def menubar : Gio::MenuModel?
      # gtk_application_get_menubar: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_application_get_menubar(to_unsafe)

      # Return value handling
      Gio::MenuModel.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def window_by_id(id : UInt32) : Gtk::Window?
      # gtk_application_get_window_by_id: (Method)
      # @id:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_application_get_window_by_id(to_unsafe, id)

      # Return value handling
      Gtk::Window.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def windows : GLib::List
      # gtk_application_get_windows: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_application_get_windows(to_unsafe)

      # Return value handling
      GLib::List(Gtk::Window).new(_retval, GICrystal::Transfer::None)
    end

    def inhibit(window : Gtk::Window?, flags : Gtk::ApplicationInhibitFlags, reason : ::String?) : UInt32
      # gtk_application_inhibit: (Method)
      # @window: (nullable)
      # @flags:
      # @reason: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      window = if window.nil?
                 Pointer(Void).null
               else
                 window.to_unsafe
               end
      # Generator::NullableArrayPlan
      reason = if reason.nil?
                 Pointer(LibC::Char).null
               else
                 reason.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_application_inhibit(to_unsafe, window, flags, reason)

      # Return value handling
      _retval
    end

    def list_action_descriptions : Enumerable(::String)
      # gtk_application_list_action_descriptions: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGtk.gtk_application_list_action_descriptions(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def remove_window(window : Gtk::Window) : Nil
      # gtk_application_remove_window: (Method)
      # @window:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_application_remove_window(to_unsafe, window)

      # Return value handling
    end

    def set_accels_for_action(detailed_action_name : ::String, accels : Enumerable(::String)) : Nil
      # gtk_application_set_accels_for_action: (Method)
      # @detailed_action_name:
      # @accels: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      accels = accels.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibGtk.gtk_application_set_accels_for_action(to_unsafe, detailed_action_name, accels)

      # Return value handling
    end

    def menubar=(menubar : Gio::MenuModel?) : Nil
      # gtk_application_set_menubar: (Method | Setter)
      # @menubar: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      menubar = if menubar.nil?
                  Pointer(Void).null
                else
                  menubar.to_unsafe
                end

      # C call
      LibGtk.gtk_application_set_menubar(to_unsafe, menubar)

      # Return value handling
    end

    def uninhibit(cookie : UInt32) : Nil
      # gtk_application_uninhibit: (Method)
      # @cookie:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_application_uninhibit(to_unsafe, cookie)

      # Return value handling
    end

    struct QueryEndSignal < GObject::Signal
      def name : String
        @detail ? "query-end::#{@detail}" : "query-end"
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

      def connect(handler : Proc(Gtk::Application, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Application.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Application, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "query-end")
      end
    end

    def query_end_signal
      QueryEndSignal.new(self)
    end

    struct WindowAddedSignal < GObject::Signal
      def name : String
        @detail ? "window-added::#{@detail}" : "window-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Window, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Window, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_window : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          window = Gtk::Window.new(lib_window, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Window, Nil)).unbox(_lib_box).call(window)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Application, Gtk::Window, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_window : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Application.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          window = Gtk::Window.new(lib_window, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Application, Gtk::Window, Nil)).unbox(_lib_box).call(_sender, window)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(window : Gtk::Window) : Nil
        LibGObject.g_signal_emit_by_name(@source, "window-added", window)
      end
    end

    def window_added_signal
      WindowAddedSignal.new(self)
    end

    struct WindowRemovedSignal < GObject::Signal
      def name : String
        @detail ? "window-removed::#{@detail}" : "window-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::Window, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::Window, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_window : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          window = Gtk::Window.new(lib_window, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Window, Nil)).unbox(_lib_box).call(window)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Application, Gtk::Window, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_window : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Application.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          window = Gtk::Window.new(lib_window, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Application, Gtk::Window, Nil)).unbox(_lib_box).call(_sender, window)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(window : Gtk::Window) : Nil
        LibGObject.g_signal_emit_by_name(@source, "window-removed", window)
      end
    end

    def window_removed_signal
      WindowRemovedSignal.new(self)
    end

    # window_added: (None)
    # @window:
    # Returns: (transfer none)
    private macro _register_window_added_vfunc(impl_method_name)
      private def self._vfunc_window_added(%this : Pointer(Void), lib_window :  Pointer(Void), ) : Void
        # @window: 

# Generator::BuiltInTypeArgPlan
window=Gtk::Window.new(lib_window, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(window)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 312).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_window_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # window_added: (None)
    # @window:
    # Returns: (transfer none)
    private macro _register_unsafe_window_added_vfunc(impl_method_name)
      private def self._vfunc_unsafe_window_added(%this : Pointer(Void), lib_window :  Pointer(Void), ) : Void
# @window: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_window)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 312).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_window_added = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_window_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_window_added : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # window_removed: (None)
    # @window:
    # Returns: (transfer none)
    private macro _register_window_removed_vfunc(impl_method_name)
      private def self._vfunc_window_removed(%this : Pointer(Void), lib_window :  Pointer(Void), ) : Void
        # @window: 

# Generator::BuiltInTypeArgPlan
window=Gtk::Window.new(lib_window, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(window)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 320).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_window_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # window_removed: (None)
    # @window:
    # Returns: (transfer none)
    private macro _register_unsafe_window_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_window_removed(%this : Pointer(Void), lib_window :  Pointer(Void), ) : Void
# @window: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_window)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 320).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_window_removed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_window_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_window_removed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
