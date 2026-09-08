require "../g_object-2.0/object"
require "../gio-2.0/initable"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebExtension < GObject::Object
    include Gio::Initable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(WebExtension, g_object_get_qdata)

    # Initialize a new `WebExtension`.
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

    def initialize(*, default_locale : ::String? = nil, display_action_label : ::String? = nil, display_description : ::String? = nil, display_name : ::String? = nil, display_short_name : ::String? = nil, display_version : ::String? = nil, has_background_content : Bool? = nil, has_commands : Bool? = nil, has_content_modification_rules : Bool? = nil, has_injected_content : Bool? = nil, has_options_page : Bool? = nil, has_override_new_tab_page : Bool? = nil, has_persistent_background_content : Bool? = nil, manifest_version : ::String? = nil, optional_permissions : Enumerable(::String)? = nil, path : ::String? = nil, requested_permissions : Enumerable(::String)? = nil, version : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[18]
      _values = StaticArray(LibGObject::Value, 18).new(LibGObject::Value.new)
      _n = 0

      if !default_locale.nil?
        (_names.to_unsafe + _n).value = "default-locale".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_locale)
        _n += 1
      end
      if !display_action_label.nil?
        (_names.to_unsafe + _n).value = "display-action-label".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display_action_label)
        _n += 1
      end
      if !display_description.nil?
        (_names.to_unsafe + _n).value = "display-description".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display_description)
        _n += 1
      end
      if !display_name.nil?
        (_names.to_unsafe + _n).value = "display-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display_name)
        _n += 1
      end
      if !display_short_name.nil?
        (_names.to_unsafe + _n).value = "display-short-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display_short_name)
        _n += 1
      end
      if !display_version.nil?
        (_names.to_unsafe + _n).value = "display-version".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display_version)
        _n += 1
      end
      if !has_background_content.nil?
        (_names.to_unsafe + _n).value = "has-background-content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_background_content)
        _n += 1
      end
      if !has_commands.nil?
        (_names.to_unsafe + _n).value = "has-commands".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_commands)
        _n += 1
      end
      if !has_content_modification_rules.nil?
        (_names.to_unsafe + _n).value = "has-content-modification-rules".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_content_modification_rules)
        _n += 1
      end
      if !has_injected_content.nil?
        (_names.to_unsafe + _n).value = "has-injected-content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_injected_content)
        _n += 1
      end
      if !has_options_page.nil?
        (_names.to_unsafe + _n).value = "has-options-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_options_page)
        _n += 1
      end
      if !has_override_new_tab_page.nil?
        (_names.to_unsafe + _n).value = "has-override-new-tab-page".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_override_new_tab_page)
        _n += 1
      end
      if !has_persistent_background_content.nil?
        (_names.to_unsafe + _n).value = "has-persistent-background-content".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_persistent_background_content)
        _n += 1
      end
      if !manifest_version.nil?
        (_names.to_unsafe + _n).value = "manifest-version".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, manifest_version)
        _n += 1
      end
      if !optional_permissions.nil?
        (_names.to_unsafe + _n).value = "optional-permissions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, optional_permissions)
        _n += 1
      end
      if !path.nil?
        (_names.to_unsafe + _n).value = "path".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, path)
        _n += 1
      end
      if !requested_permissions.nil?
        (_names.to_unsafe + _n).value = "requested-permissions".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, requested_permissions)
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
      @@g_type ||= LibWebKit.webkit_web_extension_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebExtension.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def default_locale : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-locale", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#default_locale`, but can return nil.
    def default_locale? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-locale", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def display_action_label : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-action-label", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#display_action_label`, but can return nil.
    def display_action_label? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-action-label", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def display_description : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-description", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#display_description`, but can return nil.
    def display_description? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-description", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def display_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#display_name`, but can return nil.
    def display_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def display_short_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-short-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#display_short_name`, but can return nil.
    def display_short_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-short-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def display_version : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-version", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#display_version`, but can return nil.
    def display_version? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "display-version", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def has_background_content? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-background-content", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_commands? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-commands", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_content_modification_rules? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-content-modification-rules", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_injected_content? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-injected-content", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_options_page? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-options-page", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_override_new_tab_page? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-override-new-tab-page", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def has_persistent_background_content? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "has-persistent-background-content", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def manifest_version : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "manifest-version", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#manifest_version`, but can return nil.
    def manifest_version? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "manifest-version", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def optional_permissions : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "optional-permissions", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def path=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "path", unsafe_value, Pointer(Void).null)
      value
    end

    def path : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#path` property to nil.
    def path=(value : Nil) : Nil
      LibGObject.g_object_set(self, "path", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#path`, but can return nil.
    def path? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "path", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def requested_permissions : Enumerable(::String)
      # Returns: None

      value = uninitialized Pointer(Pointer(LibC::Char))
      LibGObject.g_object_get(self, "requested-permissions", pointerof(value), Pointer(Void).null)
      GICrystal.transfer_null_ended_array(value, GICrystal::Transfer::None)
    end

    def version : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "version", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#version`, but can return nil.
    def version? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "version", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.new(extension_path : ::String) : self?
      # webkit_web_extension_new: (Constructor | Throws)
      # @extension_path:
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_extension_new(extension_path, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::WebExtension.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def action_icon(width : Float64, height : Float64) : Gio::Icon?
      # webkit_web_extension_get_action_icon: (Method)
      # @width:
      # @height:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_action_icon(to_unsafe, width, height)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def all_requested_match_patterns : Enumerable(WebKit::WebExtensionMatchPattern)
      # webkit_web_extension_get_all_requested_match_patterns: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Interface)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_all_requested_match_patterns(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def default_locale : ::String?
      # webkit_web_extension_get_default_locale: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_default_locale(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display_action_label : ::String?
      # webkit_web_extension_get_display_action_label: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_display_action_label(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display_description : ::String?
      # webkit_web_extension_get_display_description: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_display_description(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display_name : ::String?
      # webkit_web_extension_get_display_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_display_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display_short_name : ::String?
      # webkit_web_extension_get_display_short_name: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_display_short_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display_version : ::String?
      # webkit_web_extension_get_display_version: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_display_version(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def has_background_content : Bool
      # webkit_web_extension_get_has_background_content: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_has_background_content(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_commands : Bool
      # webkit_web_extension_get_has_commands: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_has_commands(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_content_modification_rules : Bool
      # webkit_web_extension_get_has_content_modification_rules: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_has_content_modification_rules(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_injected_content : Bool
      # webkit_web_extension_get_has_injected_content: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_has_injected_content(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_options_page : Bool
      # webkit_web_extension_get_has_options_page: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_has_options_page(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_override_new_tab_page : Bool
      # webkit_web_extension_get_has_override_new_tab_page: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_has_override_new_tab_page(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def has_persistent_background_content : Bool
      # webkit_web_extension_get_has_persistent_background_content: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_has_persistent_background_content(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def icon(width : Float64, height : Float64) : Gio::Icon?
      # webkit_web_extension_get_icon: (Method)
      # @width:
      # @height:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_icon(to_unsafe, width, height)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def manifest_version : Float64
      # webkit_web_extension_get_manifest_version: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_manifest_version(to_unsafe)

      # Return value handling
      _retval
    end

    def optional_permission_match_patterns : Enumerable(WebKit::WebExtensionMatchPattern)
      # webkit_web_extension_get_optional_permission_match_patterns: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Interface)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_optional_permission_match_patterns(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def optional_permissions : Enumerable(::String)?
      # webkit_web_extension_get_optional_permissions: (Method | Getter)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_optional_permissions(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def path : ::String
      # webkit_web_extension_get_path: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def requested_permission_match_patterns : Enumerable(WebKit::WebExtensionMatchPattern)
      # webkit_web_extension_get_requested_permission_match_patterns: (Method)
      # Returns: (transfer full) (array zero-terminated=1 element-type Interface)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_requested_permission_match_patterns(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def requested_permissions : Enumerable(::String)?
      # webkit_web_extension_get_requested_permissions: (Method | Getter)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_requested_permissions(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def version : ::String?
      # webkit_web_extension_get_version: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_extension_get_version(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def supports_manifest_version(manifest_version : Float64) : Bool
      # webkit_web_extension_supports_manifest_version: (Method)
      # @manifest_version:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_extension_supports_manifest_version(to_unsafe, manifest_version)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
