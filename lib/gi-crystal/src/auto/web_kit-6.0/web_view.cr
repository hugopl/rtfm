require "./web_view_base"
require "../gtk-4.0/accessible"

require "../gtk-4.0/buildable"

require "../gtk-4.0/constraint_target"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class WebView < WebViewBase
    include Gtk::Accessible
    include Gtk::Buildable
    include Gtk::ConstraintTarget

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibWebKit::WebViewClass), class_init,
        sizeof(LibWebKit::WebView), instance_init, 0)
    end

    GICrystal.declare_new_method(WebView, g_object_get_qdata)

    # Initialize a new `WebView`.
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

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, automation_presentation_type : WebKit::AutomationBrowsingContextPresentation? = nil, camera_capture_state : WebKit::MediaCaptureState? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, default_content_security_policy : ::String? = nil, display_capture_state : WebKit::MediaCaptureState? = nil, editable : Bool? = nil, estimated_load_progress : Float64? = nil, favicon : Gdk::Texture? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, is_controlled_by_automation : Bool? = nil, is_loading : Bool? = nil, is_muted : Bool? = nil, is_playing_audio : Bool? = nil, is_web_process_responsive : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, microphone_capture_state : WebKit::MediaCaptureState? = nil, name : ::String? = nil, network_session : WebKit::NetworkSession? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, page_id : UInt64? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, related_view : WebKit::WebView? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, settings : WebKit::Settings? = nil, title : ::String? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, uri : ::String? = nil, user_content_manager : WebKit::UserContentManager? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, web_context : WebKit::WebContext? = nil, web_extension_mode : WebKit::WebExtensionMode? = nil, website_policies : WebKit::WebsitePolicies? = nil, width_request : Int32? = nil, zoom_level : Float64? = nil)
      _names = uninitialized Pointer(LibC::Char)[60]
      _values = StaticArray(LibGObject::Value, 60).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !automation_presentation_type.nil?
        (_names.to_unsafe + _n).value = "automation-presentation-type".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, automation_presentation_type)
        _n += 1
      end
      if !camera_capture_state.nil?
        (_names.to_unsafe + _n).value = "camera-capture-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, camera_capture_state)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_target.nil?
        (_names.to_unsafe + _n).value = "can-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_target)
        _n += 1
      end
      if !css_classes.nil?
        (_names.to_unsafe + _n).value = "css-classes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_classes)
        _n += 1
      end
      if !css_name.nil?
        (_names.to_unsafe + _n).value = "css-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_name)
        _n += 1
      end
      if !cursor.nil?
        (_names.to_unsafe + _n).value = "cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor)
        _n += 1
      end
      if !default_content_security_policy.nil?
        (_names.to_unsafe + _n).value = "default-content-security-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_content_security_policy)
        _n += 1
      end
      if !display_capture_state.nil?
        (_names.to_unsafe + _n).value = "display-capture-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, display_capture_state)
        _n += 1
      end
      if !editable.nil?
        (_names.to_unsafe + _n).value = "editable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, editable)
        _n += 1
      end
      if !estimated_load_progress.nil?
        (_names.to_unsafe + _n).value = "estimated-load-progress".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, estimated_load_progress)
        _n += 1
      end
      if !favicon.nil?
        (_names.to_unsafe + _n).value = "favicon".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, favicon)
        _n += 1
      end
      if !focus_on_click.nil?
        (_names.to_unsafe + _n).value = "focus-on-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_on_click)
        _n += 1
      end
      if !focusable.nil?
        (_names.to_unsafe + _n).value = "focusable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focusable)
        _n += 1
      end
      if !halign.nil?
        (_names.to_unsafe + _n).value = "halign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, halign)
        _n += 1
      end
      if !has_default.nil?
        (_names.to_unsafe + _n).value = "has-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_default)
        _n += 1
      end
      if !has_focus.nil?
        (_names.to_unsafe + _n).value = "has-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_focus)
        _n += 1
      end
      if !has_tooltip.nil?
        (_names.to_unsafe + _n).value = "has-tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_tooltip)
        _n += 1
      end
      if !height_request.nil?
        (_names.to_unsafe + _n).value = "height-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height_request)
        _n += 1
      end
      if !hexpand.nil?
        (_names.to_unsafe + _n).value = "hexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand)
        _n += 1
      end
      if !hexpand_set.nil?
        (_names.to_unsafe + _n).value = "hexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand_set)
        _n += 1
      end
      if !is_controlled_by_automation.nil?
        (_names.to_unsafe + _n).value = "is-controlled-by-automation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_controlled_by_automation)
        _n += 1
      end
      if !is_loading.nil?
        (_names.to_unsafe + _n).value = "is-loading".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_loading)
        _n += 1
      end
      if !is_muted.nil?
        (_names.to_unsafe + _n).value = "is-muted".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_muted)
        _n += 1
      end
      if !is_playing_audio.nil?
        (_names.to_unsafe + _n).value = "is-playing-audio".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_playing_audio)
        _n += 1
      end
      if !is_web_process_responsive.nil?
        (_names.to_unsafe + _n).value = "is-web-process-responsive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, is_web_process_responsive)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !limit_events.nil?
        (_names.to_unsafe + _n).value = "limit-events".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, limit_events)
        _n += 1
      end
      if !margin_bottom.nil?
        (_names.to_unsafe + _n).value = "margin-bottom".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_bottom)
        _n += 1
      end
      if !margin_end.nil?
        (_names.to_unsafe + _n).value = "margin-end".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_end)
        _n += 1
      end
      if !margin_start.nil?
        (_names.to_unsafe + _n).value = "margin-start".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_start)
        _n += 1
      end
      if !margin_top.nil?
        (_names.to_unsafe + _n).value = "margin-top".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_top)
        _n += 1
      end
      if !microphone_capture_state.nil?
        (_names.to_unsafe + _n).value = "microphone-capture-state".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, microphone_capture_state)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !network_session.nil?
        (_names.to_unsafe + _n).value = "network-session".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, network_session)
        _n += 1
      end
      if !opacity.nil?
        (_names.to_unsafe + _n).value = "opacity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, opacity)
        _n += 1
      end
      if !overflow.nil?
        (_names.to_unsafe + _n).value = "overflow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overflow)
        _n += 1
      end
      if !page_id.nil?
        (_names.to_unsafe + _n).value = "page-id".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, page_id)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !related_view.nil?
        (_names.to_unsafe + _n).value = "related-view".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, related_view)
        _n += 1
      end
      if !root.nil?
        (_names.to_unsafe + _n).value = "root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, root)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !settings.nil?
        (_names.to_unsafe + _n).value = "settings".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, settings)
        _n += 1
      end
      if !title.nil?
        (_names.to_unsafe + _n).value = "title".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, title)
        _n += 1
      end
      if !tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_markup)
        _n += 1
      end
      if !tooltip_text.nil?
        (_names.to_unsafe + _n).value = "tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_text)
        _n += 1
      end
      if !uri.nil?
        (_names.to_unsafe + _n).value = "uri".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, uri)
        _n += 1
      end
      if !user_content_manager.nil?
        (_names.to_unsafe + _n).value = "user-content-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, user_content_manager)
        _n += 1
      end
      if !valign.nil?
        (_names.to_unsafe + _n).value = "valign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valign)
        _n += 1
      end
      if !vexpand.nil?
        (_names.to_unsafe + _n).value = "vexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand)
        _n += 1
      end
      if !vexpand_set.nil?
        (_names.to_unsafe + _n).value = "vexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand_set)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !web_context.nil?
        (_names.to_unsafe + _n).value = "web-context".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, web_context)
        _n += 1
      end
      if !web_extension_mode.nil?
        (_names.to_unsafe + _n).value = "web-extension-mode".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, web_extension_mode)
        _n += 1
      end
      if !website_policies.nil?
        (_names.to_unsafe + _n).value = "website-policies".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, website_policies)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
        _n += 1
      end
      if !zoom_level.nil?
        (_names.to_unsafe + _n).value = "zoom-level".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, zoom_level)
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
      @@g_type ||= LibWebKit.webkit_web_view_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::WebView.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def automation_presentation_type=(value : WebKit::AutomationBrowsingContextPresentation) : WebKit::AutomationBrowsingContextPresentation
      unsafe_value = value

      LibGObject.g_object_set(self, "automation-presentation-type", unsafe_value, Pointer(Void).null)
      value
    end

    def automation_presentation_type : WebKit::AutomationBrowsingContextPresentation
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "automation-presentation-type", pointerof(value), Pointer(Void).null)
      WebKit::AutomationBrowsingContextPresentation.new(value)
    end

    def camera_capture_state=(value : WebKit::MediaCaptureState) : WebKit::MediaCaptureState
      unsafe_value = value

      LibGObject.g_object_set(self, "camera-capture-state", unsafe_value, Pointer(Void).null)
      value
    end

    def camera_capture_state : WebKit::MediaCaptureState
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "camera-capture-state", pointerof(value), Pointer(Void).null)
      WebKit::MediaCaptureState.new(value)
    end

    def default_content_security_policy=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "default-content-security-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def default_content_security_policy : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-content-security-policy", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#default_content_security_policy` property to nil.
    def default_content_security_policy=(value : Nil) : Nil
      LibGObject.g_object_set(self, "default-content-security-policy", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#default_content_security_policy`, but can return nil.
    def default_content_security_policy? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-content-security-policy", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def display_capture_state=(value : WebKit::MediaCaptureState) : WebKit::MediaCaptureState
      unsafe_value = value

      LibGObject.g_object_set(self, "display-capture-state", unsafe_value, Pointer(Void).null)
      value
    end

    def display_capture_state : WebKit::MediaCaptureState
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "display-capture-state", pointerof(value), Pointer(Void).null)
      WebKit::MediaCaptureState.new(value)
    end

    def editable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "editable", unsafe_value, Pointer(Void).null)
      value
    end

    def editable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "editable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def estimated_load_progress : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "estimated-load-progress", pointerof(value), Pointer(Void).null)
      value
    end

    def favicon : Gdk::Texture?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "favicon", pointerof(value), Pointer(Void).null)
      Gdk::Texture.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def is_controlled_by_automation=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-controlled-by-automation", unsafe_value, Pointer(Void).null)
      value
    end

    def is_controlled_by_automation? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-controlled-by-automation", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_loading? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-loading", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_muted=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "is-muted", unsafe_value, Pointer(Void).null)
      value
    end

    def is_muted? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-muted", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_playing_audio? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-playing-audio", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def is_web_process_responsive? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "is-web-process-responsive", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def microphone_capture_state=(value : WebKit::MediaCaptureState) : WebKit::MediaCaptureState
      unsafe_value = value

      LibGObject.g_object_set(self, "microphone-capture-state", unsafe_value, Pointer(Void).null)
      value
    end

    def microphone_capture_state : WebKit::MediaCaptureState
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "microphone-capture-state", pointerof(value), Pointer(Void).null)
      WebKit::MediaCaptureState.new(value)
    end

    def network_session=(value : WebKit::NetworkSession?) : WebKit::NetworkSession?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "network-session", unsafe_value, Pointer(Void).null)
      value
    end

    def network_session : WebKit::NetworkSession?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "network-session", pointerof(value), Pointer(Void).null)
      WebKit::NetworkSession.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def page_id : UInt64
      # Returns: None

      value = uninitialized UInt64
      LibGObject.g_object_get(self, "page-id", pointerof(value), Pointer(Void).null)
      value
    end

    def related_view=(value : WebKit::WebView?) : WebKit::WebView?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "related-view", unsafe_value, Pointer(Void).null)
      value
    end

    def settings=(value : WebKit::Settings?) : WebKit::Settings?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "settings", unsafe_value, Pointer(Void).null)
      value
    end

    def title : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#title`, but can return nil.
    def title? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "title", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def uri : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Same as `#uri`, but can return nil.
    def uri? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "uri", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def user_content_manager=(value : WebKit::UserContentManager?) : WebKit::UserContentManager?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "user-content-manager", unsafe_value, Pointer(Void).null)
      value
    end

    def user_content_manager : WebKit::UserContentManager?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "user-content-manager", pointerof(value), Pointer(Void).null)
      WebKit::UserContentManager.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def web_context=(value : WebKit::WebContext?) : WebKit::WebContext?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "web-context", unsafe_value, Pointer(Void).null)
      value
    end

    def web_context : WebKit::WebContext?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "web-context", pointerof(value), Pointer(Void).null)
      WebKit::WebContext.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def web_extension_mode=(value : WebKit::WebExtensionMode) : WebKit::WebExtensionMode
      unsafe_value = value

      LibGObject.g_object_set(self, "web-extension-mode", unsafe_value, Pointer(Void).null)
      value
    end

    def web_extension_mode : WebKit::WebExtensionMode
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "web-extension-mode", pointerof(value), Pointer(Void).null)
      WebKit::WebExtensionMode.new(value)
    end

    def website_policies=(value : WebKit::WebsitePolicies?) : WebKit::WebsitePolicies?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "website-policies", unsafe_value, Pointer(Void).null)
      value
    end

    def website_policies : WebKit::WebsitePolicies?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "website-policies", pointerof(value), Pointer(Void).null)
      WebKit::WebsitePolicies.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def zoom_level=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "zoom-level", unsafe_value, Pointer(Void).null)
      value
    end

    def zoom_level : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "zoom-level", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # webkit_web_view_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_new

      # Return value handling
      WebKit::WebView.new(_retval, GICrystal::Transfer::Full)
    end

    def call_async_javascript_function(body : ::String, length : Int64, arguments : _?, world_name : ::String?, source_uri : ::String?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_view_call_async_javascript_function: (Method)
      # @body:
      # @length:
      # @arguments: (nullable)
      # @world_name: (nullable)
      # @source_uri: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      arguments = if arguments.nil?
                    Pointer(Void).null
                  elsif !arguments.is_a?(GLib::Variant)
                    GLib::Variant.new(arguments).to_unsafe
                  else
                    arguments.to_unsafe
                  end
      # Generator::NullableArrayPlan
      world_name = if world_name.nil?
                     Pointer(LibC::Char).null
                   else
                     world_name.to_unsafe
                   end
      # Generator::NullableArrayPlan
      source_uri = if source_uri.nil?
                     Pointer(LibC::Char).null
                   else
                     source_uri.to_unsafe
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
      LibWebKit.webkit_web_view_call_async_javascript_function(to_unsafe, body, length, arguments, world_name, source_uri, cancellable, callback, user_data)

      # Return value handling
    end

    def call_async_javascript_function_finish(result : Gio::AsyncResult) : JavaScriptCore::Value
      # webkit_web_view_call_async_javascript_function_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_view_call_async_javascript_function_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def can_execute_editing_command(command : ::String, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_view_can_execute_editing_command: (Method)
      # @command:
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
      LibWebKit.webkit_web_view_can_execute_editing_command(to_unsafe, command, cancellable, callback, user_data)

      # Return value handling
    end

    def can_execute_editing_command_finish(result : Gio::AsyncResult) : Bool
      # webkit_web_view_can_execute_editing_command_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_view_can_execute_editing_command_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_go_back : Bool
      # webkit_web_view_can_go_back: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_can_go_back(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_go_forward : Bool
      # webkit_web_view_can_go_forward: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_can_go_forward(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def can_show_mime_type(mime_type : ::String) : Bool
      # webkit_web_view_can_show_mime_type: (Method)
      # @mime_type:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_can_show_mime_type(to_unsafe, mime_type)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def download_uri(uri : ::String) : WebKit::Download
      # webkit_web_view_download_uri: (Method)
      # @uri:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_web_view_download_uri(to_unsafe, uri)

      # Return value handling
      WebKit::Download.new(_retval, GICrystal::Transfer::Full)
    end

    def evaluate_javascript(script : ::String, length : Int64, world_name : ::String?, source_uri : ::String?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_view_evaluate_javascript: (Method)
      # @script:
      # @length:
      # @world_name: (nullable)
      # @source_uri: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      world_name = if world_name.nil?
                     Pointer(LibC::Char).null
                   else
                     world_name.to_unsafe
                   end
      # Generator::NullableArrayPlan
      source_uri = if source_uri.nil?
                     Pointer(LibC::Char).null
                   else
                     source_uri.to_unsafe
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
      LibWebKit.webkit_web_view_evaluate_javascript(to_unsafe, script, length, world_name, source_uri, cancellable, callback, user_data)

      # Return value handling
    end

    def evaluate_javascript_finish(result : Gio::AsyncResult) : JavaScriptCore::Value
      # webkit_web_view_evaluate_javascript_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_view_evaluate_javascript_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def execute_editing_command(command : ::String) : Nil
      # webkit_web_view_execute_editing_command: (Method)
      # @command:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_execute_editing_command(to_unsafe, command)

      # Return value handling
    end

    def execute_editing_command_with_argument(command : ::String, argument : ::String) : Nil
      # webkit_web_view_execute_editing_command_with_argument: (Method)
      # @command:
      # @argument:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_execute_editing_command_with_argument(to_unsafe, command, argument)

      # Return value handling
    end

    def automation_presentation_type : WebKit::AutomationBrowsingContextPresentation
      # webkit_web_view_get_automation_presentation_type: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_automation_presentation_type(to_unsafe)

      # Return value handling
      WebKit::AutomationBrowsingContextPresentation.new(_retval)
    end

    def back_forward_list : WebKit::BackForwardList
      # webkit_web_view_get_back_forward_list: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_back_forward_list(to_unsafe)

      # Return value handling
      WebKit::BackForwardList.new(_retval, GICrystal::Transfer::None)
    end

    def background_color : Gdk::RGBA
      # webkit_web_view_get_background_color: (Method)
      # @rgba: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      rgba = Gdk::RGBA.new
      # C call
      LibWebKit.webkit_web_view_get_background_color(to_unsafe, rgba)

      # Return value handling
      rgba
    end

    def camera_capture_state : WebKit::MediaCaptureState
      # webkit_web_view_get_camera_capture_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_camera_capture_state(to_unsafe)

      # Return value handling
      WebKit::MediaCaptureState.new(_retval)
    end

    def context : WebKit::WebContext
      # webkit_web_view_get_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_context(to_unsafe)

      # Return value handling
      WebKit::WebContext.new(_retval, GICrystal::Transfer::None)
    end

    def custom_charset : ::String
      # webkit_web_view_get_custom_charset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_custom_charset(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def default_content_security_policy : ::String?
      # webkit_web_view_get_default_content_security_policy: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_view_get_default_content_security_policy(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def display_capture_state : WebKit::MediaCaptureState
      # webkit_web_view_get_display_capture_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_display_capture_state(to_unsafe)

      # Return value handling
      WebKit::MediaCaptureState.new(_retval)
    end

    def editor_state : WebKit::EditorState
      # webkit_web_view_get_editor_state: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_editor_state(to_unsafe)

      # Return value handling
      WebKit::EditorState.new(_retval, GICrystal::Transfer::None)
    end

    def estimated_load_progress : Float64
      # webkit_web_view_get_estimated_load_progress: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_estimated_load_progress(to_unsafe)

      # Return value handling
      _retval
    end

    def favicon : Gdk::Texture
      # webkit_web_view_get_favicon: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_favicon(to_unsafe)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::None)
    end

    def find_controller : WebKit::FindController
      # webkit_web_view_get_find_controller: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_find_controller(to_unsafe)

      # Return value handling
      WebKit::FindController.new(_retval, GICrystal::Transfer::None)
    end

    def input_method_context : WebKit::InputMethodContext?
      # webkit_web_view_get_input_method_context: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibWebKit.webkit_web_view_get_input_method_context(to_unsafe)

      # Return value handling
      WebKit::InputMethodContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def inspector : WebKit::WebInspector
      # webkit_web_view_get_inspector: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_inspector(to_unsafe)

      # Return value handling
      WebKit::WebInspector.new(_retval, GICrystal::Transfer::None)
    end

    def is_muted : Bool
      # webkit_web_view_get_is_muted: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_is_muted(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_web_process_responsive : Bool
      # webkit_web_view_get_is_web_process_responsive: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_is_web_process_responsive(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def main_resource : WebKit::WebResource
      # webkit_web_view_get_main_resource: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_main_resource(to_unsafe)

      # Return value handling
      WebKit::WebResource.new(_retval, GICrystal::Transfer::None)
    end

    def microphone_capture_state : WebKit::MediaCaptureState
      # webkit_web_view_get_microphone_capture_state: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_microphone_capture_state(to_unsafe)

      # Return value handling
      WebKit::MediaCaptureState.new(_retval)
    end

    def network_session : WebKit::NetworkSession
      # webkit_web_view_get_network_session: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_network_session(to_unsafe)

      # Return value handling
      WebKit::NetworkSession.new(_retval, GICrystal::Transfer::None)
    end

    def page_id : UInt64
      # webkit_web_view_get_page_id: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_page_id(to_unsafe)

      # Return value handling
      _retval
    end

    def session_state : WebKit::WebViewSessionState
      # webkit_web_view_get_session_state: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_web_view_get_session_state(to_unsafe)

      # Return value handling
      WebKit::WebViewSessionState.new(_retval, GICrystal::Transfer::Full)
    end

    def settings : WebKit::Settings
      # webkit_web_view_get_settings: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_settings(to_unsafe)

      # Return value handling
      WebKit::Settings.new(_retval, GICrystal::Transfer::None)
    end

    def snapshot(region : WebKit::SnapshotRegion, options : WebKit::SnapshotOptions, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_view_get_snapshot: (Method)
      # @region:
      # @options:
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
      LibWebKit.webkit_web_view_get_snapshot(to_unsafe, region, options, cancellable, callback, user_data)

      # Return value handling
    end

    def snapshot_finish(result : Gio::AsyncResult) : Gdk::Texture
      # webkit_web_view_get_snapshot_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_view_get_snapshot_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::Full)
    end

    def title : ::String
      # webkit_web_view_get_title: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_title(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def tls_info(certificate : Gio::TlsCertificate, errors : Gio::TlsCertificateFlags) : Bool
      # webkit_web_view_get_tls_info: (Method)
      # @certificate: (out)
      # @errors: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_tls_info(to_unsafe, certificate, errors)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def uri : ::String
      # webkit_web_view_get_uri: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def user_content_manager : WebKit::UserContentManager
      # webkit_web_view_get_user_content_manager: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_user_content_manager(to_unsafe)

      # Return value handling
      WebKit::UserContentManager.new(_retval, GICrystal::Transfer::None)
    end

    def web_extension_mode : WebKit::WebExtensionMode
      # webkit_web_view_get_web_extension_mode: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_web_extension_mode(to_unsafe)

      # Return value handling
      WebKit::WebExtensionMode.new(_retval)
    end

    def website_policies : WebKit::WebsitePolicies
      # webkit_web_view_get_website_policies: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_website_policies(to_unsafe)

      # Return value handling
      WebKit::WebsitePolicies.new(_retval, GICrystal::Transfer::None)
    end

    def window_properties : WebKit::WindowProperties
      # webkit_web_view_get_window_properties: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_window_properties(to_unsafe)

      # Return value handling
      WebKit::WindowProperties.new(_retval, GICrystal::Transfer::None)
    end

    def zoom_level : Float64
      # webkit_web_view_get_zoom_level: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_get_zoom_level(to_unsafe)

      # Return value handling
      _retval
    end

    def go_back : Nil
      # webkit_web_view_go_back: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_go_back(to_unsafe)

      # Return value handling
    end

    def go_forward : Nil
      # webkit_web_view_go_forward: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_go_forward(to_unsafe)

      # Return value handling
    end

    def go_to_back_forward_list_item(list_item : WebKit::BackForwardListItem) : Nil
      # webkit_web_view_go_to_back_forward_list_item: (Method)
      # @list_item:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_go_to_back_forward_list_item(to_unsafe, list_item)

      # Return value handling
    end

    def is_controlled_by_automation : Bool
      # webkit_web_view_is_controlled_by_automation: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_is_controlled_by_automation(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_editable? : Bool
      # webkit_web_view_is_editable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_is_editable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_loading? : Bool
      # webkit_web_view_is_loading: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_is_loading(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_playing_audio? : Bool
      # webkit_web_view_is_playing_audio: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_web_view_is_playing_audio(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def load_alternate_html(content : ::String, content_uri : ::String, base_uri : ::String?) : Nil
      # webkit_web_view_load_alternate_html: (Method)
      # @content:
      # @content_uri:
      # @base_uri: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      base_uri = if base_uri.nil?
                   Pointer(LibC::Char).null
                 else
                   base_uri.to_unsafe
                 end

      # C call
      LibWebKit.webkit_web_view_load_alternate_html(to_unsafe, content, content_uri, base_uri)

      # Return value handling
    end

    def load_bytes(bytes : GLib::Bytes, mime_type : ::String?, encoding : ::String?, base_uri : ::String?) : Nil
      # webkit_web_view_load_bytes: (Method)
      # @bytes:
      # @mime_type: (nullable)
      # @encoding: (nullable)
      # @base_uri: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      mime_type = if mime_type.nil?
                    Pointer(LibC::Char).null
                  else
                    mime_type.to_unsafe
                  end
      # Generator::NullableArrayPlan
      encoding = if encoding.nil?
                   Pointer(LibC::Char).null
                 else
                   encoding.to_unsafe
                 end
      # Generator::NullableArrayPlan
      base_uri = if base_uri.nil?
                   Pointer(LibC::Char).null
                 else
                   base_uri.to_unsafe
                 end

      # C call
      LibWebKit.webkit_web_view_load_bytes(to_unsafe, bytes, mime_type, encoding, base_uri)

      # Return value handling
    end

    def load_html(content : ::String, base_uri : ::String?) : Nil
      # webkit_web_view_load_html: (Method)
      # @content:
      # @base_uri: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      base_uri = if base_uri.nil?
                   Pointer(LibC::Char).null
                 else
                   base_uri.to_unsafe
                 end

      # C call
      LibWebKit.webkit_web_view_load_html(to_unsafe, content, base_uri)

      # Return value handling
    end

    def load_plain_text(plain_text : ::String) : Nil
      # webkit_web_view_load_plain_text: (Method)
      # @plain_text:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_load_plain_text(to_unsafe, plain_text)

      # Return value handling
    end

    def load_request(request : WebKit::URIRequest) : Nil
      # webkit_web_view_load_request: (Method)
      # @request:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_load_request(to_unsafe, request)

      # Return value handling
    end

    def load_uri(uri : ::String) : Nil
      # webkit_web_view_load_uri: (Method)
      # @uri:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_load_uri(to_unsafe, uri)

      # Return value handling
    end

    def reload : Nil
      # webkit_web_view_reload: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_reload(to_unsafe)

      # Return value handling
    end

    def reload_bypass_cache : Nil
      # webkit_web_view_reload_bypass_cache: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_reload_bypass_cache(to_unsafe)

      # Return value handling
    end

    def restore_session_state(state : WebKit::WebViewSessionState) : Nil
      # webkit_web_view_restore_session_state: (Method)
      # @state:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_restore_session_state(to_unsafe, state)

      # Return value handling
    end

    def save(save_mode : WebKit::SaveMode, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_view_save: (Method)
      # @save_mode:
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
      LibWebKit.webkit_web_view_save(to_unsafe, save_mode, cancellable, callback, user_data)

      # Return value handling
    end

    def save_finish(result : Gio::AsyncResult) : Gio::InputStream
      # webkit_web_view_save_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_view_save_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::Full)
    end

    def save_to_file(file : Gio::File, save_mode : WebKit::SaveMode, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_view_save_to_file: (Method)
      # @file:
      # @save_mode:
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
      LibWebKit.webkit_web_view_save_to_file(to_unsafe, file, save_mode, cancellable, callback, user_data)

      # Return value handling
    end

    def save_to_file_finish(result : Gio::AsyncResult) : Bool
      # webkit_web_view_save_to_file_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_view_save_to_file_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def send_message_to_page(message : WebKit::UserMessage, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # webkit_web_view_send_message_to_page: (Method)
      # @message:
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
      LibWebKit.webkit_web_view_send_message_to_page(to_unsafe, message, cancellable, callback, user_data)

      # Return value handling
    end

    def send_message_to_page_finish(result : Gio::AsyncResult) : WebKit::UserMessage
      # webkit_web_view_send_message_to_page_finish: (Method | Throws)
      # @result:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_web_view_send_message_to_page_finish(to_unsafe, result, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      WebKit::UserMessage.new(_retval, GICrystal::Transfer::Full)
    end

    def background_color=(rgba : Gdk::RGBA) : Nil
      # webkit_web_view_set_background_color: (Method)
      # @rgba:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_background_color(to_unsafe, rgba)

      # Return value handling
    end

    def camera_capture_state=(state : WebKit::MediaCaptureState) : Nil
      # webkit_web_view_set_camera_capture_state: (Method | Setter)
      # @state:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_camera_capture_state(to_unsafe, state)

      # Return value handling
    end

    def cors_allowlist=(allowlist : Enumerable(::String)?) : Nil
      # webkit_web_view_set_cors_allowlist: (Method)
      # @allowlist: (nullable) (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      allowlist = if allowlist.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    allowlist.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end

      # C call
      LibWebKit.webkit_web_view_set_cors_allowlist(to_unsafe, allowlist)

      # Return value handling
    end

    def custom_charset=(charset : ::String?) : Nil
      # webkit_web_view_set_custom_charset: (Method)
      # @charset: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      charset = if charset.nil?
                  Pointer(LibC::Char).null
                else
                  charset.to_unsafe
                end

      # C call
      LibWebKit.webkit_web_view_set_custom_charset(to_unsafe, charset)

      # Return value handling
    end

    def display_capture_state=(state : WebKit::MediaCaptureState) : Nil
      # webkit_web_view_set_display_capture_state: (Method | Setter)
      # @state:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_display_capture_state(to_unsafe, state)

      # Return value handling
    end

    def editable=(editable : Bool) : Nil
      # webkit_web_view_set_editable: (Method | Setter)
      # @editable:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_editable(to_unsafe, editable)

      # Return value handling
    end

    def input_method_context=(context : WebKit::InputMethodContext?) : Nil
      # webkit_web_view_set_input_method_context: (Method)
      # @context: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end

      # C call
      LibWebKit.webkit_web_view_set_input_method_context(to_unsafe, context)

      # Return value handling
    end

    def is_muted=(muted : Bool) : Nil
      # webkit_web_view_set_is_muted: (Method | Setter)
      # @muted:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_is_muted(to_unsafe, muted)

      # Return value handling
    end

    def microphone_capture_state=(state : WebKit::MediaCaptureState) : Nil
      # webkit_web_view_set_microphone_capture_state: (Method | Setter)
      # @state:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_microphone_capture_state(to_unsafe, state)

      # Return value handling
    end

    def settings=(settings : WebKit::Settings) : Nil
      # webkit_web_view_set_settings: (Method | Setter)
      # @settings:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_settings(to_unsafe, settings)

      # Return value handling
    end

    def zoom_level=(zoom_level : Float64) : Nil
      # webkit_web_view_set_zoom_level: (Method | Setter)
      # @zoom_level:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_set_zoom_level(to_unsafe, zoom_level)

      # Return value handling
    end

    def stop_loading : Nil
      # webkit_web_view_stop_loading: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_stop_loading(to_unsafe)

      # Return value handling
    end

    def terminate_web_process : Nil
      # webkit_web_view_terminate_web_process: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_terminate_web_process(to_unsafe)

      # Return value handling
    end

    def try_close : Nil
      # webkit_web_view_try_close: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_try_close(to_unsafe)

      # Return value handling
    end

    struct AuthenticateSignal < GObject::Signal
      def name : String
        @detail ? "authenticate::#{@detail}" : "authenticate"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::AuthenticationRequest, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::AuthenticationRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          request = WebKit::AuthenticationRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::AuthenticationRequest, Bool)).unbox(_lib_box).call(request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::AuthenticationRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::AuthenticationRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::AuthenticationRequest, Bool)).unbox(_lib_box).call(_sender, request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(request : WebKit::AuthenticationRequest) : Nil
        LibGObject.g_signal_emit_by_name(@source, "authenticate", request)
      end
    end

    def authenticate_signal
      AuthenticateSignal.new(self)
    end

    struct CloseSignal < GObject::Signal
      def name : String
        @detail ? "close::#{@detail}" : "close"
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

      def connect(handler : Proc(WebKit::WebView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "close")
      end
    end

    def close_signal
      CloseSignal.new(self)
    end

    struct ContextMenuSignal < GObject::Signal
      def name : String
        @detail ? "context-menu::#{@detail}" : "context-menu"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::ContextMenu, WebKit::HitTestResult, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::ContextMenu, WebKit::HitTestResult, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context_menu : Pointer(Void), lib_hit_test_result : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context_menu = WebKit::ContextMenu.new(lib_context_menu, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          hit_test_result = WebKit::HitTestResult.new(lib_hit_test_result, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::ContextMenu, WebKit::HitTestResult, Bool)).unbox(_lib_box).call(context_menu, hit_test_result)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::ContextMenu, WebKit::HitTestResult, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_context_menu : Pointer(Void), lib_hit_test_result : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          context_menu = WebKit::ContextMenu.new(lib_context_menu, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          hit_test_result = WebKit::HitTestResult.new(lib_hit_test_result, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::ContextMenu, WebKit::HitTestResult, Bool)).unbox(_lib_box).call(_sender, context_menu, hit_test_result)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(context_menu : WebKit::ContextMenu, hit_test_result : WebKit::HitTestResult) : Nil
        LibGObject.g_signal_emit_by_name(@source, "context-menu", context_menu, hit_test_result)
      end
    end

    def context_menu_signal
      ContextMenuSignal.new(self)
    end

    struct ContextMenuDismissedSignal < GObject::Signal
      def name : String
        @detail ? "context-menu-dismissed::#{@detail}" : "context-menu-dismissed"
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

      def connect(handler : Proc(WebKit::WebView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "context-menu-dismissed")
      end
    end

    def context_menu_dismissed_signal
      ContextMenuDismissedSignal.new(self)
    end

    struct CreateSignal < GObject::Signal
      def name : String
        @detail ? "create::#{@detail}" : "create"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::NavigationAction, Gtk::Widget)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::NavigationAction, Gtk::Widget), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_navigation_action : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          navigation_action = WebKit::NavigationAction.new(lib_navigation_action, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::NavigationAction, Gtk::Widget)).unbox(_lib_box).call(navigation_action)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::NavigationAction, Gtk::Widget), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_navigation_action : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          navigation_action = WebKit::NavigationAction.new(lib_navigation_action, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::NavigationAction, Gtk::Widget)).unbox(_lib_box).call(_sender, navigation_action)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(navigation_action : WebKit::NavigationAction) : Nil
        LibGObject.g_signal_emit_by_name(@source, "create", navigation_action)
      end
    end

    def create_signal
      CreateSignal.new(self)
    end

    struct DecidePolicySignal < GObject::Signal
      def name : String
        @detail ? "decide-policy::#{@detail}" : "decide-policy"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::PolicyDecision, WebKit::PolicyDecisionType, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::PolicyDecision, WebKit::PolicyDecisionType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_decision : Pointer(Void), lib_decision_type : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          decision = WebKit::PolicyDecision.new(lib_decision, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          decision_type = WebKit::PolicyDecisionType.new(lib_decision_type)
          ::Box(Proc(WebKit::PolicyDecision, WebKit::PolicyDecisionType, Bool)).unbox(_lib_box).call(decision, decision_type)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::PolicyDecision, WebKit::PolicyDecisionType, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_decision : Pointer(Void), lib_decision_type : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          decision = WebKit::PolicyDecision.new(lib_decision, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          decision_type = WebKit::PolicyDecisionType.new(lib_decision_type)
          ::Box(Proc(WebKit::WebView, WebKit::PolicyDecision, WebKit::PolicyDecisionType, Bool)).unbox(_lib_box).call(_sender, decision, decision_type)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(decision : WebKit::PolicyDecision, decision_type : WebKit::PolicyDecisionType) : Nil
        LibGObject.g_signal_emit_by_name(@source, "decide-policy", decision, decision_type)
      end
    end

    def decide_policy_signal
      DecidePolicySignal.new(self)
    end

    struct EnterFullscreenSignal < GObject::Signal
      def name : String
        @detail ? "enter-fullscreen::#{@detail}" : "enter-fullscreen"
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

      def connect(handler : Proc(WebKit::WebView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "enter-fullscreen")
      end
    end

    def enter_fullscreen_signal
      EnterFullscreenSignal.new(self)
    end

    struct InsecureContentDetectedSignal < GObject::Signal
      def name : String
        @detail ? "insecure-content-detected::#{@detail}" : "insecure-content-detected"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::InsecureContentEvent, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::InsecureContentEvent, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          event = WebKit::InsecureContentEvent.new(lib_event)
          ::Box(Proc(WebKit::InsecureContentEvent, Nil)).unbox(_lib_box).call(event)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::InsecureContentEvent, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_event : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          event = WebKit::InsecureContentEvent.new(lib_event)
          ::Box(Proc(WebKit::WebView, WebKit::InsecureContentEvent, Nil)).unbox(_lib_box).call(_sender, event)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(event : WebKit::InsecureContentEvent) : Nil
        LibGObject.g_signal_emit_by_name(@source, "insecure-content-detected", event)
      end
    end

    def insecure_content_detected_signal
      InsecureContentDetectedSignal.new(self)
    end

    struct LeaveFullscreenSignal < GObject::Signal
      def name : String
        @detail ? "leave-fullscreen::#{@detail}" : "leave-fullscreen"
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

      def connect(handler : Proc(WebKit::WebView, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, Bool)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "leave-fullscreen")
      end
    end

    def leave_fullscreen_signal
      LeaveFullscreenSignal.new(self)
    end

    struct LoadChangedSignal < GObject::Signal
      def name : String
        @detail ? "load-changed::#{@detail}" : "load-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::LoadEvent, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::LoadEvent, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_load_event : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          load_event = WebKit::LoadEvent.new(lib_load_event)
          ::Box(Proc(WebKit::LoadEvent, Nil)).unbox(_lib_box).call(load_event)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::LoadEvent, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_load_event : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          load_event = WebKit::LoadEvent.new(lib_load_event)
          ::Box(Proc(WebKit::WebView, WebKit::LoadEvent, Nil)).unbox(_lib_box).call(_sender, load_event)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(load_event : WebKit::LoadEvent) : Nil
        LibGObject.g_signal_emit_by_name(@source, "load-changed", load_event)
      end
    end

    def load_changed_signal
      LoadChangedSignal.new(self)
    end

    struct LoadFailedSignal < GObject::Signal
      def name : String
        @detail ? "load-failed::#{@detail}" : "load-failed"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::LoadEvent, ::String, GLib::Error, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::LoadEvent, ::String, GLib::Error, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_load_event : UInt32, lib_failing_uri : Pointer(LibC::Char), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          load_event = WebKit::LoadEvent.new(lib_load_event)
          # Generator::BuiltInTypeArgPlan
          failing_uri = ::String.new(lib_failing_uri)
          # Generator::GErrorArgPlan
          error = WebKit.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(WebKit::LoadEvent, ::String, GLib::Error, Bool)).unbox(_lib_box).call(load_event, failing_uri, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::LoadEvent, ::String, GLib::Error, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_load_event : UInt32, lib_failing_uri : Pointer(LibC::Char), lib_error : Pointer(LibGLib::Error), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          load_event = WebKit::LoadEvent.new(lib_load_event)
          # Generator::BuiltInTypeArgPlan
          failing_uri = ::String.new(lib_failing_uri)
          # Generator::GErrorArgPlan
          error = WebKit.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::LoadEvent, ::String, GLib::Error, Bool)).unbox(_lib_box).call(_sender, load_event, failing_uri, error)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(load_event : WebKit::LoadEvent, failing_uri : ::String, error : GLib::Error) : Nil
        LibGObject.g_signal_emit_by_name(@source, "load-failed", load_event, failing_uri, error)
      end
    end

    def load_failed_signal
      LoadFailedSignal.new(self)
    end

    struct LoadFailedWithTlsErrorsSignal < GObject::Signal
      def name : String
        @detail ? "load-failed-with-tls-errors::#{@detail}" : "load-failed-with-tls-errors"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_failing_uri : Pointer(LibC::Char), lib_certificate : Pointer(Void), lib_errors : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          failing_uri = ::String.new(lib_failing_uri)
          # Generator::BuiltInTypeArgPlan
          certificate = Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          errors = Gio::TlsCertificateFlags.new(lib_errors)
          ::Box(Proc(::String, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)).unbox(_lib_box).call(failing_uri, certificate, errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, ::String, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_failing_uri : Pointer(LibC::Char), lib_certificate : Pointer(Void), lib_errors : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          failing_uri = ::String.new(lib_failing_uri)
          # Generator::BuiltInTypeArgPlan
          certificate = Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          errors = Gio::TlsCertificateFlags.new(lib_errors)
          ::Box(Proc(WebKit::WebView, ::String, Gio::TlsCertificate, Gio::TlsCertificateFlags, Bool)).unbox(_lib_box).call(_sender, failing_uri, certificate, errors)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(failing_uri : ::String, certificate : Gio::TlsCertificate, errors : Gio::TlsCertificateFlags) : Nil
        LibGObject.g_signal_emit_by_name(@source, "load-failed-with-tls-errors", failing_uri, certificate, errors)
      end
    end

    def load_failed_with_tls_errors_signal
      LoadFailedWithTlsErrorsSignal.new(self)
    end

    struct MouseTargetChangedSignal < GObject::Signal
      def name : String
        @detail ? "mouse-target-changed::#{@detail}" : "mouse-target-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::HitTestResult, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::HitTestResult, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_hit_test_result : Pointer(Void), lib_modifiers : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          hit_test_result = WebKit::HitTestResult.new(lib_hit_test_result, GICrystal::Transfer::None)
          # NoStrategy
          modifiers = lib_modifiers
          ::Box(Proc(WebKit::HitTestResult, UInt32, Nil)).unbox(_lib_box).call(hit_test_result, modifiers)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::HitTestResult, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_hit_test_result : Pointer(Void), lib_modifiers : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          hit_test_result = WebKit::HitTestResult.new(lib_hit_test_result, GICrystal::Transfer::None)
          # NoStrategy
          modifiers = lib_modifiers
          ::Box(Proc(WebKit::WebView, WebKit::HitTestResult, UInt32, Nil)).unbox(_lib_box).call(_sender, hit_test_result, modifiers)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(hit_test_result : WebKit::HitTestResult, modifiers : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mouse-target-changed", hit_test_result, modifiers)
      end
    end

    def mouse_target_changed_signal
      MouseTargetChangedSignal.new(self)
    end

    struct PermissionRequestSignal < GObject::Signal
      def name : String
        @detail ? "permission-request::#{@detail}" : "permission-request"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::PermissionRequest, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::PermissionRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          request = WebKit::AbstractPermissionRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::PermissionRequest, Bool)).unbox(_lib_box).call(request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::PermissionRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::AbstractPermissionRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::PermissionRequest, Bool)).unbox(_lib_box).call(_sender, request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(request : WebKit::PermissionRequest) : Nil
        LibGObject.g_signal_emit_by_name(@source, "permission-request", request)
      end
    end

    def permission_request_signal
      PermissionRequestSignal.new(self)
    end

    struct PrintSignal < GObject::Signal
      def name : String
        @detail ? "print::#{@detail}" : "print"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::PrintOperation, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::PrintOperation, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_print_operation : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          print_operation = WebKit::PrintOperation.new(lib_print_operation, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::PrintOperation, Bool)).unbox(_lib_box).call(print_operation)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::PrintOperation, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_print_operation : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          print_operation = WebKit::PrintOperation.new(lib_print_operation, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::PrintOperation, Bool)).unbox(_lib_box).call(_sender, print_operation)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(print_operation : WebKit::PrintOperation) : Nil
        LibGObject.g_signal_emit_by_name(@source, "print", print_operation)
      end
    end

    def print_signal
      PrintSignal.new(self)
    end

    struct QueryPermissionStateSignal < GObject::Signal
      def name : String
        @detail ? "query-permission-state::#{@detail}" : "query-permission-state"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::PermissionStateQuery, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::PermissionStateQuery, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_query : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          query = WebKit::PermissionStateQuery.new(lib_query, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::PermissionStateQuery, Bool)).unbox(_lib_box).call(query)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::PermissionStateQuery, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_query : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          query = WebKit::PermissionStateQuery.new(lib_query, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::PermissionStateQuery, Bool)).unbox(_lib_box).call(_sender, query)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(query : WebKit::PermissionStateQuery) : Nil
        LibGObject.g_signal_emit_by_name(@source, "query-permission-state", query)
      end
    end

    def query_permission_state_signal
      QueryPermissionStateSignal.new(self)
    end

    struct ReadyToShowSignal < GObject::Signal
      def name : String
        @detail ? "ready-to-show::#{@detail}" : "ready-to-show"
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

      def connect(handler : Proc(WebKit::WebView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "ready-to-show")
      end
    end

    def ready_to_show_signal
      ReadyToShowSignal.new(self)
    end

    struct ResourceLoadStartedSignal < GObject::Signal
      def name : String
        @detail ? "resource-load-started::#{@detail}" : "resource-load-started"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::WebResource, WebKit::URIRequest, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::WebResource, WebKit::URIRequest, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_resource : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          resource = WebKit::WebResource.new(lib_resource, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::URIRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebResource, WebKit::URIRequest, Nil)).unbox(_lib_box).call(resource, request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::WebResource, WebKit::URIRequest, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_resource : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          resource = WebKit::WebResource.new(lib_resource, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::URIRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::WebResource, WebKit::URIRequest, Nil)).unbox(_lib_box).call(_sender, resource, request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(resource : WebKit::WebResource, request : WebKit::URIRequest) : Nil
        LibGObject.g_signal_emit_by_name(@source, "resource-load-started", resource, request)
      end
    end

    def resource_load_started_signal
      ResourceLoadStartedSignal.new(self)
    end

    struct RunAsModalSignal < GObject::Signal
      def name : String
        @detail ? "run-as-modal::#{@detail}" : "run-as-modal"
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

      def connect(handler : Proc(WebKit::WebView, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "run-as-modal")
      end
    end

    def run_as_modal_signal
      RunAsModalSignal.new(self)
    end

    struct RunColorChooserSignal < GObject::Signal
      def name : String
        @detail ? "run-color-chooser::#{@detail}" : "run-color-chooser"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::ColorChooserRequest, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::ColorChooserRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          request = WebKit::ColorChooserRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::ColorChooserRequest, Bool)).unbox(_lib_box).call(request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::ColorChooserRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::ColorChooserRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::ColorChooserRequest, Bool)).unbox(_lib_box).call(_sender, request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(request : WebKit::ColorChooserRequest) : Nil
        LibGObject.g_signal_emit_by_name(@source, "run-color-chooser", request)
      end
    end

    def run_color_chooser_signal
      RunColorChooserSignal.new(self)
    end

    struct RunFileChooserSignal < GObject::Signal
      def name : String
        @detail ? "run-file-chooser::#{@detail}" : "run-file-chooser"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::FileChooserRequest, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::FileChooserRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          request = WebKit::FileChooserRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::FileChooserRequest, Bool)).unbox(_lib_box).call(request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::FileChooserRequest, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::FileChooserRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::FileChooserRequest, Bool)).unbox(_lib_box).call(_sender, request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(request : WebKit::FileChooserRequest) : Nil
        LibGObject.g_signal_emit_by_name(@source, "run-file-chooser", request)
      end
    end

    def run_file_chooser_signal
      RunFileChooserSignal.new(self)
    end

    struct ScriptDialogSignal < GObject::Signal
      def name : String
        @detail ? "script-dialog::#{@detail}" : "script-dialog"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::ScriptDialog, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::ScriptDialog, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_dialog : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          dialog = WebKit::ScriptDialog.new(lib_dialog, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::ScriptDialog, Bool)).unbox(_lib_box).call(dialog)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::ScriptDialog, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_dialog : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          dialog = WebKit::ScriptDialog.new(lib_dialog, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::ScriptDialog, Bool)).unbox(_lib_box).call(_sender, dialog)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(dialog : WebKit::ScriptDialog) : Nil
        LibGObject.g_signal_emit_by_name(@source, "script-dialog", dialog)
      end
    end

    def script_dialog_signal
      ScriptDialogSignal.new(self)
    end

    struct ShowNotificationSignal < GObject::Signal
      def name : String
        @detail ? "show-notification::#{@detail}" : "show-notification"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::Notification, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::Notification, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_notification : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          notification = WebKit::Notification.new(lib_notification, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::Notification, Bool)).unbox(_lib_box).call(notification)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::Notification, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_notification : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          notification = WebKit::Notification.new(lib_notification, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::Notification, Bool)).unbox(_lib_box).call(_sender, notification)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(notification : WebKit::Notification) : Nil
        LibGObject.g_signal_emit_by_name(@source, "show-notification", notification)
      end
    end

    def show_notification_signal
      ShowNotificationSignal.new(self)
    end

    struct ShowOptionMenuSignal < GObject::Signal
      def name : String
        @detail ? "show-option-menu::#{@detail}" : "show-option-menu"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::OptionMenu, Gdk::Rectangle, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::OptionMenu, Gdk::Rectangle, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_menu : Pointer(Void), lib_rectangle : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          menu = WebKit::OptionMenu.new(lib_menu, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          rectangle = Gdk::Rectangle.new(lib_rectangle, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::OptionMenu, Gdk::Rectangle, Bool)).unbox(_lib_box).call(menu, rectangle)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::OptionMenu, Gdk::Rectangle, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_menu : Pointer(Void), lib_rectangle : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          menu = WebKit::OptionMenu.new(lib_menu, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          rectangle = Gdk::Rectangle.new(lib_rectangle, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::OptionMenu, Gdk::Rectangle, Bool)).unbox(_lib_box).call(_sender, menu, rectangle)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(menu : WebKit::OptionMenu, rectangle : Gdk::Rectangle) : Nil
        LibGObject.g_signal_emit_by_name(@source, "show-option-menu", menu, rectangle)
      end
    end

    def show_option_menu_signal
      ShowOptionMenuSignal.new(self)
    end

    struct SubmitFormSignal < GObject::Signal
      def name : String
        @detail ? "submit-form::#{@detail}" : "submit-form"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::FormSubmissionRequest, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::FormSubmissionRequest, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          request = WebKit::FormSubmissionRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::FormSubmissionRequest, Nil)).unbox(_lib_box).call(request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::FormSubmissionRequest, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_request : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          request = WebKit::FormSubmissionRequest.new(lib_request, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::FormSubmissionRequest, Nil)).unbox(_lib_box).call(_sender, request)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(request : WebKit::FormSubmissionRequest) : Nil
        LibGObject.g_signal_emit_by_name(@source, "submit-form", request)
      end
    end

    def submit_form_signal
      SubmitFormSignal.new(self)
    end

    struct UserMessageReceivedSignal < GObject::Signal
      def name : String
        @detail ? "user-message-received::#{@detail}" : "user-message-received"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::UserMessage, Bool)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::UserMessage, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          message = WebKit::UserMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::UserMessage, Bool)).unbox(_lib_box).call(message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::UserMessage, Bool), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_message : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          message = WebKit::UserMessage.new(lib_message, GICrystal::Transfer::None)
          ::Box(Proc(WebKit::WebView, WebKit::UserMessage, Bool)).unbox(_lib_box).call(_sender, message)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(message : WebKit::UserMessage) : Nil
        LibGObject.g_signal_emit_by_name(@source, "user-message-received", message)
      end
    end

    def user_message_received_signal
      UserMessageReceivedSignal.new(self)
    end

    struct WebProcessTerminatedSignal < GObject::Signal
      def name : String
        @detail ? "web-process-terminated::#{@detail}" : "web-process-terminated"
      end

      def connect(*, after : Bool = false, &block : Proc(WebKit::WebProcessTerminationReason, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(WebKit::WebProcessTerminationReason, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_reason : UInt32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          reason = WebKit::WebProcessTerminationReason.new(lib_reason)
          ::Box(Proc(WebKit::WebProcessTerminationReason, Nil)).unbox(_lib_box).call(reason)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(WebKit::WebView, WebKit::WebProcessTerminationReason, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_reason : UInt32, _lib_box : Pointer(Void)) {
          _sender = WebKit::WebView.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          reason = WebKit::WebProcessTerminationReason.new(lib_reason)
          ::Box(Proc(WebKit::WebView, WebKit::WebProcessTerminationReason, Nil)).unbox(_lib_box).call(_sender, reason)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(reason : WebKit::WebProcessTerminationReason) : Nil
        LibGObject.g_signal_emit_by_name(@source, "web-process-terminated", reason)
      end
    end

    def web_process_terminated_signal
      WebProcessTerminatedSignal.new(self)
    end

    # authenticate: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_authenticate_vfunc(impl_method_name)
      private def self._vfunc_authenticate(%this : Pointer(Void), lib_request :  Pointer(Void), ) : LibC::Int
        # @request: 

# Generator::BuiltInTypeArgPlan
request=WebKit::AuthenticationRequest.new(lib_request, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(request)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 600).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_authenticate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # authenticate: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_unsafe_authenticate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_authenticate(%this : Pointer(Void), lib_request :  Pointer(Void), ) : LibC::Int
# @request: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_request)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 600).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_authenticate = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_authenticate(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_authenticate : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # close: (None)
    # Returns: (transfer none)
    private macro _register_close_vfunc(impl_method_name)
      private def self._vfunc_close(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 480).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_close(Pointer(Void))).pointer
        previous_def
      end
    end

    # close: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_close_vfunc(impl_method_name)
      private def self._vfunc_unsafe_close(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 480).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_close = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_close(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_close : Proc(Pointer(Void), Void)? = nil
    end

    # context_menu: (None)
    # @context_menu:
    # @hit_test_result:
    # Returns: (transfer none)
    private macro _register_context_menu_vfunc(impl_method_name)
      private def self._vfunc_context_menu(%this : Pointer(Void), lib_context_menu :  Pointer(Void), lib_hit_test_result :  Pointer(Void), ) : LibC::Int
        # @context_menu: 
# @hit_test_result: 

# Generator::BuiltInTypeArgPlan
context_menu=WebKit::ContextMenu.new(lib_context_menu, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
hit_test_result=WebKit::HitTestResult.new(lib_hit_test_result, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(context_menu, hit_test_result)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 560).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_context_menu(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # context_menu: (None)
    # @context_menu:
    # @hit_test_result:
    # Returns: (transfer none)
    private macro _register_unsafe_context_menu_vfunc(impl_method_name)
      private def self._vfunc_unsafe_context_menu(%this : Pointer(Void), lib_context_menu :  Pointer(Void), lib_hit_test_result :  Pointer(Void), ) : LibC::Int
# @context_menu: 
# @hit_test_result: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_context_menu, lib_hit_test_result)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 560).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_context_menu = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_context_menu(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_context_menu : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # context_menu_dismissed: (None)
    # Returns: (transfer none)
    private macro _register_context_menu_dismissed_vfunc(impl_method_name)
      private def self._vfunc_context_menu_dismissed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 568).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_context_menu_dismissed(Pointer(Void))).pointer
        previous_def
      end
    end

    # context_menu_dismissed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_context_menu_dismissed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_context_menu_dismissed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 568).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_context_menu_dismissed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_context_menu_dismissed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_context_menu_dismissed : Proc(Pointer(Void), Void)? = nil
    end

    # decide_policy: (None)
    # @decision:
    # @type:
    # Returns: (transfer none)
    private macro _register_decide_policy_vfunc(impl_method_name)
      private def self._vfunc_decide_policy(%this : Pointer(Void), lib_decision :  Pointer(Void), lib_type :  UInt32, ) : LibC::Int
        # @decision: 
# @type: 

# Generator::BuiltInTypeArgPlan
decision=WebKit::PolicyDecision.new(lib_decision, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
type=WebKit::PolicyDecisionType.new(lib_type)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(decision, type)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_decide_policy(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # decide_policy: (None)
    # @decision:
    # @type:
    # Returns: (transfer none)
    private macro _register_unsafe_decide_policy_vfunc(impl_method_name)
      private def self._vfunc_unsafe_decide_policy(%this : Pointer(Void), lib_decision :  Pointer(Void), lib_type :  UInt32, ) : LibC::Int
# @decision: 
# @type: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_decision, lib_type)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 496).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_decide_policy = Proc(Pointer(Void), Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_decide_policy(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_decide_policy : Proc(Pointer(Void), Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # enter_fullscreen: (None)
    # Returns: (transfer none)
    private macro _register_enter_fullscreen_vfunc(impl_method_name)
      private def self._vfunc_enter_fullscreen(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 536).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_enter_fullscreen(Pointer(Void))).pointer
        previous_def
      end
    end

    # enter_fullscreen: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_enter_fullscreen_vfunc(impl_method_name)
      private def self._vfunc_unsafe_enter_fullscreen(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 536).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_enter_fullscreen = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_enter_fullscreen(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_enter_fullscreen : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # insecure_content_detected: (None)
    # @event:
    # Returns: (transfer none)
    private macro _register_insecure_content_detected_vfunc(impl_method_name)
      private def self._vfunc_insecure_content_detected(%this : Pointer(Void), lib_event :  UInt32, ) : Void
        # @event: 

# Generator::BuiltInTypeArgPlan
event=WebKit::InsecureContentEvent.new(lib_event)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(event)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 584).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insecure_content_detected(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # insecure_content_detected: (None)
    # @event:
    # Returns: (transfer none)
    private macro _register_unsafe_insecure_content_detected_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insecure_content_detected(%this : Pointer(Void), lib_event :  UInt32, ) : Void
# @event: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_event)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 584).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insecure_content_detected = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insecure_content_detected(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insecure_content_detected : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # leave_fullscreen: (None)
    # Returns: (transfer none)
    private macro _register_leave_fullscreen_vfunc(impl_method_name)
      private def self._vfunc_leave_fullscreen(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 544).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_leave_fullscreen(Pointer(Void))).pointer
        previous_def
      end
    end

    # leave_fullscreen: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_leave_fullscreen_vfunc(impl_method_name)
      private def self._vfunc_unsafe_leave_fullscreen(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 544).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_leave_fullscreen = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_leave_fullscreen(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_leave_fullscreen : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # load_changed: (None)
    # @load_event:
    # Returns: (transfer none)
    private macro _register_load_changed_vfunc(impl_method_name)
      private def self._vfunc_load_changed(%this : Pointer(Void), lib_load_event :  UInt32, ) : Void
        # @load_event: 

# Generator::BuiltInTypeArgPlan
load_event=WebKit::LoadEvent.new(lib_load_event)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(load_event)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # load_changed: (None)
    # @load_event:
    # Returns: (transfer none)
    private macro _register_unsafe_load_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load_changed(%this : Pointer(Void), lib_load_event :  UInt32, ) : Void
# @load_event: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_load_event)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 440).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load_changed = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load_changed(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load_changed : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    # load_failed: (None)
    # @load_event:
    # @failing_uri:
    # @error:
    # Returns: (transfer none)
    private macro _register_load_failed_vfunc(impl_method_name)
      private def self._vfunc_load_failed(%this : Pointer(Void), lib_load_event :  UInt32, lib_failing_uri :  Pointer(LibC::Char), lib_error :  Pointer(LibGLib::Error), ) : LibC::Int
        # @load_event: 
# @failing_uri: 
# @error: 

# Generator::BuiltInTypeArgPlan
load_event=WebKit::LoadEvent.new(lib_load_event)
# Generator::BuiltInTypeArgPlan
failing_uri=::String.new(lib_failing_uri)
# Generator::GErrorArgPlan
error=WebKit.gerror_to_crystal(lib_error.as(Pointer(LibGLib::Error)), GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(load_event, failing_uri, error)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load_failed(Pointer(Void), UInt32, Pointer(LibC::Char), Pointer(LibGLib::Error))).pointer
        previous_def
      end
    end

    # load_failed: (None)
    # @load_event:
    # @failing_uri:
    # @error:
    # Returns: (transfer none)
    private macro _register_unsafe_load_failed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load_failed(%this : Pointer(Void), lib_load_event :  UInt32, lib_failing_uri :  Pointer(LibC::Char), lib_error :  Pointer(LibGLib::Error), ) : LibC::Int
# @load_event: 
# @failing_uri: 
# @error: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_load_event, lib_failing_uri, lib_error)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 448).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load_failed = Proc(Pointer(Void), UInt32, Pointer(LibC::Char), Pointer(LibGLib::Error), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load_failed(Pointer(Void), UInt32, Pointer(LibC::Char), Pointer(LibGLib::Error))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load_failed : Proc(Pointer(Void), UInt32, Pointer(LibC::Char), Pointer(LibGLib::Error), LibC::Int)? = nil
    end

    # load_failed_with_tls_errors: (None)
    # @failing_uri:
    # @certificate:
    # @errors:
    # Returns: (transfer none)
    private macro _register_load_failed_with_tls_errors_vfunc(impl_method_name)
      private def self._vfunc_load_failed_with_tls_errors(%this : Pointer(Void), lib_failing_uri :  Pointer(LibC::Char), lib_certificate :  Pointer(Void), lib_errors :  UInt32, ) : LibC::Int
        # @failing_uri: 
# @certificate: 
# @errors: 

# Generator::BuiltInTypeArgPlan
failing_uri=::String.new(lib_failing_uri)
# Generator::BuiltInTypeArgPlan
certificate=Gio::TlsCertificate.new(lib_certificate, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
errors=Gio::TlsCertificateFlags.new(lib_errors)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(failing_uri, certificate, errors)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 608).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_load_failed_with_tls_errors(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # load_failed_with_tls_errors: (None)
    # @failing_uri:
    # @certificate:
    # @errors:
    # Returns: (transfer none)
    private macro _register_unsafe_load_failed_with_tls_errors_vfunc(impl_method_name)
      private def self._vfunc_unsafe_load_failed_with_tls_errors(%this : Pointer(Void), lib_failing_uri :  Pointer(LibC::Char), lib_certificate :  Pointer(Void), lib_errors :  UInt32, ) : LibC::Int
# @failing_uri: 
# @certificate: 
# @errors: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_failing_uri, lib_certificate, lib_errors)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 608).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_load_failed_with_tls_errors = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_load_failed_with_tls_errors(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_load_failed_with_tls_errors : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # mouse_target_changed: (None)
    # @hit_test_result:
    # @modifiers:
    # Returns: (transfer none)
    private macro _register_mouse_target_changed_vfunc(impl_method_name)
      private def self._vfunc_mouse_target_changed(%this : Pointer(Void), lib_hit_test_result :  Pointer(Void), lib_modifiers :  UInt32, ) : Void
        # @hit_test_result: 
# @modifiers: 

# Generator::BuiltInTypeArgPlan
hit_test_result=WebKit::HitTestResult.new(lib_hit_test_result, GICrystal::Transfer::None)
modifiers=lib_modifiers


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(hit_test_result, modifiers)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mouse_target_changed(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # mouse_target_changed: (None)
    # @hit_test_result:
    # @modifiers:
    # Returns: (transfer none)
    private macro _register_unsafe_mouse_target_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mouse_target_changed(%this : Pointer(Void), lib_hit_test_result :  Pointer(Void), lib_modifiers :  UInt32, ) : Void
# @hit_test_result: 
# @modifiers: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_hit_test_result, lib_modifiers)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 512).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mouse_target_changed = Proc(Pointer(Void), Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mouse_target_changed(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mouse_target_changed : Proc(Pointer(Void), Pointer(Void), UInt32, Void)? = nil
    end

    # permission_request: (None)
    # @permission_request:
    # Returns: (transfer none)
    private macro _register_permission_request_vfunc(impl_method_name)
      private def self._vfunc_permission_request(%this : Pointer(Void), lib_permission_request :  Pointer(Void), ) : LibC::Int
        # @permission_request: 

# Generator::BuiltInTypeArgPlan
permission_request=WebKit::AbstractPermissionRequest.new(lib_permission_request, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(permission_request)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_permission_request(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # permission_request: (None)
    # @permission_request:
    # Returns: (transfer none)
    private macro _register_unsafe_permission_request_vfunc(impl_method_name)
      private def self._vfunc_unsafe_permission_request(%this : Pointer(Void), lib_permission_request :  Pointer(Void), ) : LibC::Int
# @permission_request: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_permission_request)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 504).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_permission_request = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_permission_request(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_permission_request : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # print: (None)
    # @print_operation:
    # Returns: (transfer none)
    private macro _register_print_vfunc(impl_method_name)
      private def self._vfunc_print(%this : Pointer(Void), lib_print_operation :  Pointer(Void), ) : LibC::Int
        # @print_operation: 

# Generator::BuiltInTypeArgPlan
print_operation=WebKit::PrintOperation.new(lib_print_operation, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(print_operation)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 520).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_print(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # print: (None)
    # @print_operation:
    # Returns: (transfer none)
    private macro _register_unsafe_print_vfunc(impl_method_name)
      private def self._vfunc_unsafe_print(%this : Pointer(Void), lib_print_operation :  Pointer(Void), ) : LibC::Int
# @print_operation: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_print_operation)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 520).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_print = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_print(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_print : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # query_permission_state: (None)
    # @query:
    # Returns: (transfer none)
    private macro _register_query_permission_state_vfunc(impl_method_name)
      private def self._vfunc_query_permission_state(%this : Pointer(Void), lib_query :  Pointer(Void), ) : LibC::Int
        # @query: 

# Generator::BuiltInTypeArgPlan
query=WebKit::PermissionStateQuery.new(lib_query, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(query)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 656).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_query_permission_state(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # query_permission_state: (None)
    # @query:
    # Returns: (transfer none)
    private macro _register_unsafe_query_permission_state_vfunc(impl_method_name)
      private def self._vfunc_unsafe_query_permission_state(%this : Pointer(Void), lib_query :  Pointer(Void), ) : LibC::Int
# @query: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_query)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 656).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_query_permission_state = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_query_permission_state(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_query_permission_state : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # ready_to_show: (None)
    # Returns: (transfer none)
    private macro _register_ready_to_show_vfunc(impl_method_name)
      private def self._vfunc_ready_to_show(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ready_to_show(Pointer(Void))).pointer
        previous_def
      end
    end

    # ready_to_show: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_ready_to_show_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ready_to_show(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 464).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ready_to_show = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ready_to_show(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ready_to_show : Proc(Pointer(Void), Void)? = nil
    end

    # resource_load_started: (None)
    # @resource:
    # @request:
    # Returns: (transfer none)
    private macro _register_resource_load_started_vfunc(impl_method_name)
      private def self._vfunc_resource_load_started(%this : Pointer(Void), lib_resource :  Pointer(Void), lib_request :  Pointer(Void), ) : Void
        # @resource: 
# @request: 

# Generator::BuiltInTypeArgPlan
resource=WebKit::WebResource.new(lib_resource, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
request=WebKit::URIRequest.new(lib_request, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(resource, request)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 528).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_resource_load_started(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # resource_load_started: (None)
    # @resource:
    # @request:
    # Returns: (transfer none)
    private macro _register_unsafe_resource_load_started_vfunc(impl_method_name)
      private def self._vfunc_unsafe_resource_load_started(%this : Pointer(Void), lib_resource :  Pointer(Void), lib_request :  Pointer(Void), ) : Void
# @resource: 
# @request: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_resource, lib_request)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 528).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_resource_load_started = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_resource_load_started(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_resource_load_started : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # run_as_modal: (None)
    # Returns: (transfer none)
    private macro _register_run_as_modal_vfunc(impl_method_name)
      private def self._vfunc_run_as_modal(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_run_as_modal(Pointer(Void))).pointer
        previous_def
      end
    end

    # run_as_modal: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_run_as_modal_vfunc(impl_method_name)
      private def self._vfunc_unsafe_run_as_modal(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 472).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_run_as_modal = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_run_as_modal(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_run_as_modal : Proc(Pointer(Void), Void)? = nil
    end

    # run_color_chooser: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_run_color_chooser_vfunc(impl_method_name)
      private def self._vfunc_run_color_chooser(%this : Pointer(Void), lib_request :  Pointer(Void), ) : LibC::Int
        # @request: 

# Generator::BuiltInTypeArgPlan
request=WebKit::ColorChooserRequest.new(lib_request, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(request)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 624).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_run_color_chooser(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # run_color_chooser: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_unsafe_run_color_chooser_vfunc(impl_method_name)
      private def self._vfunc_unsafe_run_color_chooser(%this : Pointer(Void), lib_request :  Pointer(Void), ) : LibC::Int
# @request: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_request)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 624).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_run_color_chooser = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_run_color_chooser(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_run_color_chooser : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # run_file_chooser: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_run_file_chooser_vfunc(impl_method_name)
      private def self._vfunc_run_file_chooser(%this : Pointer(Void), lib_request :  Pointer(Void), ) : LibC::Int
        # @request: 

# Generator::BuiltInTypeArgPlan
request=WebKit::FileChooserRequest.new(lib_request, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(request)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 552).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_run_file_chooser(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # run_file_chooser: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_unsafe_run_file_chooser_vfunc(impl_method_name)
      private def self._vfunc_unsafe_run_file_chooser(%this : Pointer(Void), lib_request :  Pointer(Void), ) : LibC::Int
# @request: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_request)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 552).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_run_file_chooser = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_run_file_chooser(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_run_file_chooser : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # script_dialog: (None)
    # @dialog:
    # Returns: (transfer none)
    private macro _register_script_dialog_vfunc(impl_method_name)
      private def self._vfunc_script_dialog(%this : Pointer(Void), lib_dialog :  Pointer(Void), ) : LibC::Int
        # @dialog: 

# Generator::BuiltInTypeArgPlan
dialog=WebKit::ScriptDialog.new(lib_dialog, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(dialog)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_script_dialog(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # script_dialog: (None)
    # @dialog:
    # Returns: (transfer none)
    private macro _register_unsafe_script_dialog_vfunc(impl_method_name)
      private def self._vfunc_unsafe_script_dialog(%this : Pointer(Void), lib_dialog :  Pointer(Void), ) : LibC::Int
# @dialog: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_dialog)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 488).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_script_dialog = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_script_dialog(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_script_dialog : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # show_notification: (None)
    # @notification:
    # Returns: (transfer none)
    private macro _register_show_notification_vfunc(impl_method_name)
      private def self._vfunc_show_notification(%this : Pointer(Void), lib_notification :  Pointer(Void), ) : LibC::Int
        # @notification: 

# Generator::BuiltInTypeArgPlan
notification=WebKit::Notification.new(lib_notification, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(notification)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 616).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_show_notification(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # show_notification: (None)
    # @notification:
    # Returns: (transfer none)
    private macro _register_unsafe_show_notification_vfunc(impl_method_name)
      private def self._vfunc_unsafe_show_notification(%this : Pointer(Void), lib_notification :  Pointer(Void), ) : LibC::Int
# @notification: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_notification)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 616).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_show_notification = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_show_notification(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_show_notification : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # show_option_menu: (None)
    # @menu:
    # @rectangle:
    # Returns: (transfer none)
    private macro _register_show_option_menu_vfunc(impl_method_name)
      private def self._vfunc_show_option_menu(%this : Pointer(Void), lib_menu :  Pointer(Void), lib_rectangle :  Pointer(Void), ) : LibC::Int
        # @menu: 
# @rectangle: 

# Generator::BuiltInTypeArgPlan
menu=WebKit::OptionMenu.new(lib_menu, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
rectangle=Gdk::Rectangle.new(lib_rectangle, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(menu, rectangle)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 632).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_show_option_menu(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # show_option_menu: (None)
    # @menu:
    # @rectangle:
    # Returns: (transfer none)
    private macro _register_unsafe_show_option_menu_vfunc(impl_method_name)
      private def self._vfunc_unsafe_show_option_menu(%this : Pointer(Void), lib_menu :  Pointer(Void), lib_rectangle :  Pointer(Void), ) : LibC::Int
# @menu: 
# @rectangle: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_menu, lib_rectangle)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 632).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_show_option_menu = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_show_option_menu(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_show_option_menu : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # submit_form: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_submit_form_vfunc(impl_method_name)
      private def self._vfunc_submit_form(%this : Pointer(Void), lib_request :  Pointer(Void), ) : Void
        # @request: 

# Generator::BuiltInTypeArgPlan
request=WebKit::FormSubmissionRequest.new(lib_request, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(request)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 576).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_submit_form(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # submit_form: (None)
    # @request:
    # Returns: (transfer none)
    private macro _register_unsafe_submit_form_vfunc(impl_method_name)
      private def self._vfunc_unsafe_submit_form(%this : Pointer(Void), lib_request :  Pointer(Void), ) : Void
# @request: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_request)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 576).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_submit_form = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_submit_form(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_submit_form : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # user_message_received: (None)
    # @message:
    # Returns: (transfer none)
    private macro _register_user_message_received_vfunc(impl_method_name)
      private def self._vfunc_user_message_received(%this : Pointer(Void), lib_message :  Pointer(Void), ) : LibC::Int
        # @message: 

# Generator::BuiltInTypeArgPlan
message=WebKit::UserMessage.new(lib_message, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(message)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 648).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_user_message_received(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # user_message_received: (None)
    # @message:
    # Returns: (transfer none)
    private macro _register_unsafe_user_message_received_vfunc(impl_method_name)
      private def self._vfunc_unsafe_user_message_received(%this : Pointer(Void), lib_message :  Pointer(Void), ) : LibC::Int
# @message: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_message)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 648).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_user_message_received = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_user_message_received(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_user_message_received : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # web_process_crashed: (None)
    # Returns: (transfer none)
    private macro _register_web_process_crashed_vfunc(impl_method_name)
      private def self._vfunc_web_process_crashed(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 592).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_web_process_crashed(Pointer(Void))).pointer
        previous_def
      end
    end

    # web_process_crashed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_web_process_crashed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_web_process_crashed(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 592).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_web_process_crashed = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_web_process_crashed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_web_process_crashed : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # web_process_terminated: (None)
    # @reason:
    # Returns: (transfer none)
    private macro _register_web_process_terminated_vfunc(impl_method_name)
      private def self._vfunc_web_process_terminated(%this : Pointer(Void), lib_reason :  UInt32, ) : Void
        # @reason: 

# Generator::BuiltInTypeArgPlan
reason=WebKit::WebProcessTerminationReason.new(lib_reason)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(reason)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 640).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_web_process_terminated(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # web_process_terminated: (None)
    # @reason:
    # Returns: (transfer none)
    private macro _register_unsafe_web_process_terminated_vfunc(impl_method_name)
      private def self._vfunc_unsafe_web_process_terminated(%this : Pointer(Void), lib_reason :  UInt32, ) : Void
# @reason: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_reason)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 640).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_web_process_terminated = Proc(Pointer(Void), UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_web_process_terminated(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_web_process_terminated : Proc(Pointer(Void), UInt32, Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
