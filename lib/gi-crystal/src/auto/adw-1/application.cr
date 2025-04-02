require "../gtk-4.0/application"
require "../gio-2.0/action_group"

require "../gio-2.0/action_map"

module Adw
  @[GICrystal::GeneratedWrapper]
  class Application < Gtk::Application
    include Gio::ActionGroup
    include Gio::ActionMap

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibAdw::ApplicationClass), class_init,
        sizeof(LibAdw::Application), instance_init, 0)
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

    def initialize(*, action_group : Gio::ActionGroup? = nil, active_window : Gtk::Window? = nil, application_id : ::String? = nil, flags : Gio::ApplicationFlags? = nil, inactivity_timeout : UInt32? = nil, is_busy : Bool? = nil, is_registered : Bool? = nil, is_remote : Bool? = nil, menubar : Gio::MenuModel? = nil, register_session : Bool? = nil, resource_base_path : ::String? = nil, screensaver_active : Bool? = nil, style_manager : Adw::StyleManager? = nil, version : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[14]
      _values = StaticArray(LibGObject::Value, 14).new(LibGObject::Value.new)
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
      if !style_manager.nil?
        (_names.to_unsafe + _n).value = "style-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, style_manager)
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
      @@g_type ||= LibAdw.adw_application_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::Application.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def style_manager : Adw::StyleManager?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "style-manager", pointerof(value), Pointer(Void).null)
      Adw::StyleManager.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(application_id : ::String?, flags : Gio::ApplicationFlags) : self
      # adw_application_new: (Constructor)
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
      _retval = LibAdw.adw_application_new(application_id, flags)

      # Return value handling
      Adw::Application.new(_retval, GICrystal::Transfer::Full)
    end

    def style_manager : Adw::StyleManager
      # adw_application_get_style_manager: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_application_get_style_manager(to_unsafe)

      # Return value handling
      Adw::StyleManager.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
