require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class Settings < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Settings, g_object_get_qdata)

    # Initialize a new `Settings`.
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

    def initialize(*, allow_file_access_from_file_urls : Bool? = nil, allow_modal_dialogs : Bool? = nil, allow_top_navigation_to_data_urls : Bool? = nil, allow_universal_access_from_file_urls : Bool? = nil, auto_load_images : Bool? = nil, cursive_font_family : ::String? = nil, default_charset : ::String? = nil, default_font_family : ::String? = nil, default_font_size : UInt32? = nil, default_monospace_font_size : UInt32? = nil, disable_web_security : Bool? = nil, draw_compositing_indicators : Bool? = nil, enable_2d_canvas_acceleration : Bool? = nil, enable_back_forward_navigation_gestures : Bool? = nil, enable_caret_browsing : Bool? = nil, enable_developer_extras : Bool? = nil, enable_dns_prefetching : Bool? = nil, enable_encrypted_media : Bool? = nil, enable_fullscreen : Bool? = nil, enable_html5_database : Bool? = nil, enable_html5_local_storage : Bool? = nil, enable_hyperlink_auditing : Bool? = nil, enable_javascript : Bool? = nil, enable_javascript_markup : Bool? = nil, enable_media : Bool? = nil, enable_media_capabilities : Bool? = nil, enable_media_stream : Bool? = nil, enable_mediasource : Bool? = nil, enable_mock_capture_devices : Bool? = nil, enable_offline_web_application_cache : Bool? = nil, enable_page_cache : Bool? = nil, enable_resizable_text_areas : Bool? = nil, enable_site_specific_quirks : Bool? = nil, enable_smooth_scrolling : Bool? = nil, enable_spatial_navigation : Bool? = nil, enable_tabs_to_links : Bool? = nil, enable_webaudio : Bool? = nil, enable_webgl : Bool? = nil, enable_webrtc : Bool? = nil, enable_write_console_messages_to_stdout : Bool? = nil, fantasy_font_family : ::String? = nil, hardware_acceleration_policy : WebKit::HardwareAccelerationPolicy? = nil, javascript_can_access_clipboard : Bool? = nil, javascript_can_open_windows_automatically : Bool? = nil, load_icons_ignoring_image_load_setting : Bool? = nil, media_content_types_requiring_hardware_support : ::String? = nil, media_playback_allows_inline : Bool? = nil, media_playback_requires_user_gesture : Bool? = nil, minimum_font_size : UInt32? = nil, monospace_font_family : ::String? = nil, pictograph_font_family : ::String? = nil, print_backgrounds : Bool? = nil, sans_serif_font_family : ::String? = nil, serif_font_family : ::String? = nil, user_agent : ::String? = nil, webrtc_udp_ports_range : ::String? = nil, zoom_text_only : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[57]
      _values = StaticArray(LibGObject::Value, 57).new(LibGObject::Value.new)
      _n = 0

      if !allow_file_access_from_file_urls.nil?
        (_names.to_unsafe + _n).value = "allow-file-access-from-file-urls".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_file_access_from_file_urls)
        _n += 1
      end
      if !allow_modal_dialogs.nil?
        (_names.to_unsafe + _n).value = "allow-modal-dialogs".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_modal_dialogs)
        _n += 1
      end
      if !allow_top_navigation_to_data_urls.nil?
        (_names.to_unsafe + _n).value = "allow-top-navigation-to-data-urls".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_top_navigation_to_data_urls)
        _n += 1
      end
      if !allow_universal_access_from_file_urls.nil?
        (_names.to_unsafe + _n).value = "allow-universal-access-from-file-urls".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, allow_universal_access_from_file_urls)
        _n += 1
      end
      if !auto_load_images.nil?
        (_names.to_unsafe + _n).value = "auto-load-images".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, auto_load_images)
        _n += 1
      end
      if !cursive_font_family.nil?
        (_names.to_unsafe + _n).value = "cursive-font-family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursive_font_family)
        _n += 1
      end
      if !default_charset.nil?
        (_names.to_unsafe + _n).value = "default-charset".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_charset)
        _n += 1
      end
      if !default_font_family.nil?
        (_names.to_unsafe + _n).value = "default-font-family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_font_family)
        _n += 1
      end
      if !default_font_size.nil?
        (_names.to_unsafe + _n).value = "default-font-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_font_size)
        _n += 1
      end
      if !default_monospace_font_size.nil?
        (_names.to_unsafe + _n).value = "default-monospace-font-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, default_monospace_font_size)
        _n += 1
      end
      if !disable_web_security.nil?
        (_names.to_unsafe + _n).value = "disable-web-security".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, disable_web_security)
        _n += 1
      end
      if !draw_compositing_indicators.nil?
        (_names.to_unsafe + _n).value = "draw-compositing-indicators".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, draw_compositing_indicators)
        _n += 1
      end
      if !enable_2d_canvas_acceleration.nil?
        (_names.to_unsafe + _n).value = "enable-2d-canvas-acceleration".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_2d_canvas_acceleration)
        _n += 1
      end
      if !enable_back_forward_navigation_gestures.nil?
        (_names.to_unsafe + _n).value = "enable-back-forward-navigation-gestures".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_back_forward_navigation_gestures)
        _n += 1
      end
      if !enable_caret_browsing.nil?
        (_names.to_unsafe + _n).value = "enable-caret-browsing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_caret_browsing)
        _n += 1
      end
      if !enable_developer_extras.nil?
        (_names.to_unsafe + _n).value = "enable-developer-extras".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_developer_extras)
        _n += 1
      end
      if !enable_dns_prefetching.nil?
        (_names.to_unsafe + _n).value = "enable-dns-prefetching".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_dns_prefetching)
        _n += 1
      end
      if !enable_encrypted_media.nil?
        (_names.to_unsafe + _n).value = "enable-encrypted-media".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_encrypted_media)
        _n += 1
      end
      if !enable_fullscreen.nil?
        (_names.to_unsafe + _n).value = "enable-fullscreen".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_fullscreen)
        _n += 1
      end
      if !enable_html5_database.nil?
        (_names.to_unsafe + _n).value = "enable-html5-database".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_html5_database)
        _n += 1
      end
      if !enable_html5_local_storage.nil?
        (_names.to_unsafe + _n).value = "enable-html5-local-storage".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_html5_local_storage)
        _n += 1
      end
      if !enable_hyperlink_auditing.nil?
        (_names.to_unsafe + _n).value = "enable-hyperlink-auditing".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_hyperlink_auditing)
        _n += 1
      end
      if !enable_javascript.nil?
        (_names.to_unsafe + _n).value = "enable-javascript".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_javascript)
        _n += 1
      end
      if !enable_javascript_markup.nil?
        (_names.to_unsafe + _n).value = "enable-javascript-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_javascript_markup)
        _n += 1
      end
      if !enable_media.nil?
        (_names.to_unsafe + _n).value = "enable-media".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_media)
        _n += 1
      end
      if !enable_media_capabilities.nil?
        (_names.to_unsafe + _n).value = "enable-media-capabilities".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_media_capabilities)
        _n += 1
      end
      if !enable_media_stream.nil?
        (_names.to_unsafe + _n).value = "enable-media-stream".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_media_stream)
        _n += 1
      end
      if !enable_mediasource.nil?
        (_names.to_unsafe + _n).value = "enable-mediasource".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_mediasource)
        _n += 1
      end
      if !enable_mock_capture_devices.nil?
        (_names.to_unsafe + _n).value = "enable-mock-capture-devices".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_mock_capture_devices)
        _n += 1
      end
      if !enable_offline_web_application_cache.nil?
        (_names.to_unsafe + _n).value = "enable-offline-web-application-cache".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_offline_web_application_cache)
        _n += 1
      end
      if !enable_page_cache.nil?
        (_names.to_unsafe + _n).value = "enable-page-cache".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_page_cache)
        _n += 1
      end
      if !enable_resizable_text_areas.nil?
        (_names.to_unsafe + _n).value = "enable-resizable-text-areas".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_resizable_text_areas)
        _n += 1
      end
      if !enable_site_specific_quirks.nil?
        (_names.to_unsafe + _n).value = "enable-site-specific-quirks".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_site_specific_quirks)
        _n += 1
      end
      if !enable_smooth_scrolling.nil?
        (_names.to_unsafe + _n).value = "enable-smooth-scrolling".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_smooth_scrolling)
        _n += 1
      end
      if !enable_spatial_navigation.nil?
        (_names.to_unsafe + _n).value = "enable-spatial-navigation".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_spatial_navigation)
        _n += 1
      end
      if !enable_tabs_to_links.nil?
        (_names.to_unsafe + _n).value = "enable-tabs-to-links".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_tabs_to_links)
        _n += 1
      end
      if !enable_webaudio.nil?
        (_names.to_unsafe + _n).value = "enable-webaudio".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_webaudio)
        _n += 1
      end
      if !enable_webgl.nil?
        (_names.to_unsafe + _n).value = "enable-webgl".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_webgl)
        _n += 1
      end
      if !enable_webrtc.nil?
        (_names.to_unsafe + _n).value = "enable-webrtc".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_webrtc)
        _n += 1
      end
      if !enable_write_console_messages_to_stdout.nil?
        (_names.to_unsafe + _n).value = "enable-write-console-messages-to-stdout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, enable_write_console_messages_to_stdout)
        _n += 1
      end
      if !fantasy_font_family.nil?
        (_names.to_unsafe + _n).value = "fantasy-font-family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, fantasy_font_family)
        _n += 1
      end
      if !hardware_acceleration_policy.nil?
        (_names.to_unsafe + _n).value = "hardware-acceleration-policy".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hardware_acceleration_policy)
        _n += 1
      end
      if !javascript_can_access_clipboard.nil?
        (_names.to_unsafe + _n).value = "javascript-can-access-clipboard".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, javascript_can_access_clipboard)
        _n += 1
      end
      if !javascript_can_open_windows_automatically.nil?
        (_names.to_unsafe + _n).value = "javascript-can-open-windows-automatically".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, javascript_can_open_windows_automatically)
        _n += 1
      end
      if !load_icons_ignoring_image_load_setting.nil?
        (_names.to_unsafe + _n).value = "load-icons-ignoring-image-load-setting".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, load_icons_ignoring_image_load_setting)
        _n += 1
      end
      if !media_content_types_requiring_hardware_support.nil?
        (_names.to_unsafe + _n).value = "media-content-types-requiring-hardware-support".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, media_content_types_requiring_hardware_support)
        _n += 1
      end
      if !media_playback_allows_inline.nil?
        (_names.to_unsafe + _n).value = "media-playback-allows-inline".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, media_playback_allows_inline)
        _n += 1
      end
      if !media_playback_requires_user_gesture.nil?
        (_names.to_unsafe + _n).value = "media-playback-requires-user-gesture".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, media_playback_requires_user_gesture)
        _n += 1
      end
      if !minimum_font_size.nil?
        (_names.to_unsafe + _n).value = "minimum-font-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, minimum_font_size)
        _n += 1
      end
      if !monospace_font_family.nil?
        (_names.to_unsafe + _n).value = "monospace-font-family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, monospace_font_family)
        _n += 1
      end
      if !pictograph_font_family.nil?
        (_names.to_unsafe + _n).value = "pictograph-font-family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, pictograph_font_family)
        _n += 1
      end
      if !print_backgrounds.nil?
        (_names.to_unsafe + _n).value = "print-backgrounds".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, print_backgrounds)
        _n += 1
      end
      if !sans_serif_font_family.nil?
        (_names.to_unsafe + _n).value = "sans-serif-font-family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sans_serif_font_family)
        _n += 1
      end
      if !serif_font_family.nil?
        (_names.to_unsafe + _n).value = "serif-font-family".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, serif_font_family)
        _n += 1
      end
      if !user_agent.nil?
        (_names.to_unsafe + _n).value = "user-agent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, user_agent)
        _n += 1
      end
      if !webrtc_udp_ports_range.nil?
        (_names.to_unsafe + _n).value = "webrtc-udp-ports-range".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, webrtc_udp_ports_range)
        _n += 1
      end
      if !zoom_text_only.nil?
        (_names.to_unsafe + _n).value = "zoom-text-only".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, zoom_text_only)
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
      @@g_type ||= LibWebKit.webkit_settings_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::Settings.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allow_file_access_from_file_urls=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-file-access-from-file-urls", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_file_access_from_file_urls? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-file-access-from-file-urls", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_modal_dialogs=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-modal-dialogs", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_modal_dialogs? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-modal-dialogs", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_top_navigation_to_data_urls=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-top-navigation-to-data-urls", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_top_navigation_to_data_urls? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-top-navigation-to-data-urls", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def allow_universal_access_from_file_urls=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "allow-universal-access-from-file-urls", unsafe_value, Pointer(Void).null)
      value
    end

    def allow_universal_access_from_file_urls? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "allow-universal-access-from-file-urls", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def auto_load_images=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "auto-load-images", unsafe_value, Pointer(Void).null)
      value
    end

    def auto_load_images? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "auto-load-images", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def cursive_font_family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "cursive-font-family", unsafe_value, Pointer(Void).null)
      value
    end

    def cursive_font_family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "cursive-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#cursive_font_family` property to nil.
    def cursive_font_family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "cursive-font-family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#cursive_font_family`, but can return nil.
    def cursive_font_family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "cursive-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def default_charset=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "default-charset", unsafe_value, Pointer(Void).null)
      value
    end

    def default_charset : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-charset", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#default_charset` property to nil.
    def default_charset=(value : Nil) : Nil
      LibGObject.g_object_set(self, "default-charset", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#default_charset`, but can return nil.
    def default_charset? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-charset", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def default_font_family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "default-font-family", unsafe_value, Pointer(Void).null)
      value
    end

    def default_font_family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#default_font_family` property to nil.
    def default_font_family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "default-font-family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#default_font_family`, but can return nil.
    def default_font_family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "default-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def default_font_size=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "default-font-size", unsafe_value, Pointer(Void).null)
      value
    end

    def default_font_size : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "default-font-size", pointerof(value), Pointer(Void).null)
      value
    end

    def default_monospace_font_size=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "default-monospace-font-size", unsafe_value, Pointer(Void).null)
      value
    end

    def default_monospace_font_size : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "default-monospace-font-size", pointerof(value), Pointer(Void).null)
      value
    end

    def disable_web_security=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "disable-web-security", unsafe_value, Pointer(Void).null)
      value
    end

    def disable_web_security? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "disable-web-security", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def draw_compositing_indicators=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "draw-compositing-indicators", unsafe_value, Pointer(Void).null)
      value
    end

    def draw_compositing_indicators? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "draw-compositing-indicators", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_2d_canvas_acceleration=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-2d-canvas-acceleration", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_2d_canvas_acceleration? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-2d-canvas-acceleration", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_back_forward_navigation_gestures=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-back-forward-navigation-gestures", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_back_forward_navigation_gestures? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-back-forward-navigation-gestures", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_caret_browsing=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-caret-browsing", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_caret_browsing? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-caret-browsing", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_developer_extras=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-developer-extras", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_developer_extras? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-developer-extras", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_dns_prefetching=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-dns-prefetching", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_dns_prefetching? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-dns-prefetching", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_encrypted_media=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-encrypted-media", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_encrypted_media? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-encrypted-media", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_fullscreen=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-fullscreen", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_fullscreen? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-fullscreen", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_html5_database=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-html5-database", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_html5_database? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-html5-database", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_html5_local_storage=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-html5-local-storage", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_html5_local_storage? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-html5-local-storage", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_hyperlink_auditing=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-hyperlink-auditing", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_hyperlink_auditing? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-hyperlink-auditing", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_javascript=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-javascript", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_javascript? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-javascript", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_javascript_markup=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-javascript-markup", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_javascript_markup? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-javascript-markup", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_media=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-media", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_media? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-media", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_media_capabilities=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-media-capabilities", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_media_capabilities? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-media-capabilities", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_media_stream=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-media-stream", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_media_stream? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-media-stream", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_mediasource=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-mediasource", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_mediasource? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-mediasource", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_mock_capture_devices=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-mock-capture-devices", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_mock_capture_devices? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-mock-capture-devices", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_offline_web_application_cache=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-offline-web-application-cache", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_offline_web_application_cache? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-offline-web-application-cache", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_page_cache=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-page-cache", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_page_cache? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-page-cache", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_resizable_text_areas=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-resizable-text-areas", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_resizable_text_areas? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-resizable-text-areas", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_site_specific_quirks=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-site-specific-quirks", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_site_specific_quirks? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-site-specific-quirks", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_smooth_scrolling=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-smooth-scrolling", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_smooth_scrolling? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-smooth-scrolling", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_spatial_navigation=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-spatial-navigation", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_spatial_navigation? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-spatial-navigation", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_tabs_to_links=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-tabs-to-links", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_tabs_to_links? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-tabs-to-links", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_webaudio=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-webaudio", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_webaudio? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-webaudio", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_webgl=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-webgl", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_webgl? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-webgl", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_webrtc=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-webrtc", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_webrtc? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-webrtc", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_write_console_messages_to_stdout=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-write-console-messages-to-stdout", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_write_console_messages_to_stdout? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-write-console-messages-to-stdout", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def fantasy_font_family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "fantasy-font-family", unsafe_value, Pointer(Void).null)
      value
    end

    def fantasy_font_family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "fantasy-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#fantasy_font_family` property to nil.
    def fantasy_font_family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "fantasy-font-family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#fantasy_font_family`, but can return nil.
    def fantasy_font_family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "fantasy-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def hardware_acceleration_policy=(value : WebKit::HardwareAccelerationPolicy) : WebKit::HardwareAccelerationPolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "hardware-acceleration-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def hardware_acceleration_policy : WebKit::HardwareAccelerationPolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "hardware-acceleration-policy", pointerof(value), Pointer(Void).null)
      WebKit::HardwareAccelerationPolicy.new(value)
    end

    def javascript_can_access_clipboard=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "javascript-can-access-clipboard", unsafe_value, Pointer(Void).null)
      value
    end

    def javascript_can_access_clipboard? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "javascript-can-access-clipboard", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def javascript_can_open_windows_automatically=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "javascript-can-open-windows-automatically", unsafe_value, Pointer(Void).null)
      value
    end

    def javascript_can_open_windows_automatically? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "javascript-can-open-windows-automatically", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def load_icons_ignoring_image_load_setting=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "load-icons-ignoring-image-load-setting", unsafe_value, Pointer(Void).null)
      value
    end

    def load_icons_ignoring_image_load_setting? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "load-icons-ignoring-image-load-setting", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def media_content_types_requiring_hardware_support=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "media-content-types-requiring-hardware-support", unsafe_value, Pointer(Void).null)
      value
    end

    def media_content_types_requiring_hardware_support : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "media-content-types-requiring-hardware-support", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#media_content_types_requiring_hardware_support` property to nil.
    def media_content_types_requiring_hardware_support=(value : Nil) : Nil
      LibGObject.g_object_set(self, "media-content-types-requiring-hardware-support", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#media_content_types_requiring_hardware_support`, but can return nil.
    def media_content_types_requiring_hardware_support? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "media-content-types-requiring-hardware-support", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def media_playback_allows_inline=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "media-playback-allows-inline", unsafe_value, Pointer(Void).null)
      value
    end

    def media_playback_allows_inline? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "media-playback-allows-inline", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def media_playback_requires_user_gesture=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "media-playback-requires-user-gesture", unsafe_value, Pointer(Void).null)
      value
    end

    def media_playback_requires_user_gesture? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "media-playback-requires-user-gesture", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def minimum_font_size=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "minimum-font-size", unsafe_value, Pointer(Void).null)
      value
    end

    def minimum_font_size : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "minimum-font-size", pointerof(value), Pointer(Void).null)
      value
    end

    def monospace_font_family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "monospace-font-family", unsafe_value, Pointer(Void).null)
      value
    end

    def monospace_font_family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "monospace-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#monospace_font_family` property to nil.
    def monospace_font_family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "monospace-font-family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#monospace_font_family`, but can return nil.
    def monospace_font_family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "monospace-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def pictograph_font_family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "pictograph-font-family", unsafe_value, Pointer(Void).null)
      value
    end

    def pictograph_font_family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "pictograph-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#pictograph_font_family` property to nil.
    def pictograph_font_family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "pictograph-font-family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#pictograph_font_family`, but can return nil.
    def pictograph_font_family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "pictograph-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def print_backgrounds=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "print-backgrounds", unsafe_value, Pointer(Void).null)
      value
    end

    def print_backgrounds? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "print-backgrounds", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def sans_serif_font_family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "sans-serif-font-family", unsafe_value, Pointer(Void).null)
      value
    end

    def sans_serif_font_family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "sans-serif-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#sans_serif_font_family` property to nil.
    def sans_serif_font_family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "sans-serif-font-family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#sans_serif_font_family`, but can return nil.
    def sans_serif_font_family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "sans-serif-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def serif_font_family=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "serif-font-family", unsafe_value, Pointer(Void).null)
      value
    end

    def serif_font_family : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "serif-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#serif_font_family` property to nil.
    def serif_font_family=(value : Nil) : Nil
      LibGObject.g_object_set(self, "serif-font-family", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#serif_font_family`, but can return nil.
    def serif_font_family? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "serif-font-family", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def user_agent=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "user-agent", unsafe_value, Pointer(Void).null)
      value
    end

    def user_agent : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "user-agent", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#user_agent` property to nil.
    def user_agent=(value : Nil) : Nil
      LibGObject.g_object_set(self, "user-agent", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#user_agent`, but can return nil.
    def user_agent? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "user-agent", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def webrtc_udp_ports_range=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "webrtc-udp-ports-range", unsafe_value, Pointer(Void).null)
      value
    end

    def webrtc_udp_ports_range : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "webrtc-udp-ports-range", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#webrtc_udp_ports_range` property to nil.
    def webrtc_udp_ports_range=(value : Nil) : Nil
      LibGObject.g_object_set(self, "webrtc-udp-ports-range", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#webrtc_udp_ports_range`, but can return nil.
    def webrtc_udp_ports_range? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "webrtc-udp-ports-range", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def zoom_text_only=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "zoom-text-only", unsafe_value, Pointer(Void).null)
      value
    end

    def zoom_text_only? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "zoom-text-only", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new : self
      # webkit_settings_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_settings_new

      # Return value handling
      WebKit::Settings.new(_retval, GICrystal::Transfer::Full)
    end

    def self.font_size_to_pixels(points : UInt32) : UInt32
      # webkit_settings_font_size_to_pixels: (None)
      # @points:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_font_size_to_pixels(points)

      # Return value handling
      _retval
    end

    def self.font_size_to_points(pixels : UInt32) : UInt32
      # webkit_settings_font_size_to_points: (None)
      # @pixels:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_font_size_to_points(pixels)

      # Return value handling
      _retval
    end

    def self.all_features : WebKit::FeatureList
      # webkit_settings_get_all_features: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_settings_get_all_features

      # Return value handling
      WebKit::FeatureList.new(_retval, GICrystal::Transfer::Full)
    end

    def self.development_features : WebKit::FeatureList
      # webkit_settings_get_development_features: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_settings_get_development_features

      # Return value handling
      WebKit::FeatureList.new(_retval, GICrystal::Transfer::Full)
    end

    def self.experimental_features : WebKit::FeatureList
      # webkit_settings_get_experimental_features: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_settings_get_experimental_features

      # Return value handling
      WebKit::FeatureList.new(_retval, GICrystal::Transfer::Full)
    end

    def apply_from_key_file(key_file : GLib::KeyFile, group_name : ::String) : Bool
      # webkit_settings_apply_from_key_file: (Method | Throws)
      # @key_file:
      # @group_name:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibWebKit.webkit_settings_apply_from_key_file(to_unsafe, key_file, group_name, pointerof(_error))

      # Error check
      WebKit.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_file_access_from_file_urls : Bool
      # webkit_settings_get_allow_file_access_from_file_urls: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_allow_file_access_from_file_urls(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_modal_dialogs : Bool
      # webkit_settings_get_allow_modal_dialogs: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_allow_modal_dialogs(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_top_navigation_to_data_urls : Bool
      # webkit_settings_get_allow_top_navigation_to_data_urls: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_allow_top_navigation_to_data_urls(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_universal_access_from_file_urls : Bool
      # webkit_settings_get_allow_universal_access_from_file_urls: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_allow_universal_access_from_file_urls(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def auto_load_images : Bool
      # webkit_settings_get_auto_load_images: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_auto_load_images(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def cursive_font_family : ::String
      # webkit_settings_get_cursive_font_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_cursive_font_family(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def default_charset : ::String
      # webkit_settings_get_default_charset: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_default_charset(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def default_font_family : ::String
      # webkit_settings_get_default_font_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_default_font_family(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def default_font_size : UInt32
      # webkit_settings_get_default_font_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_default_font_size(to_unsafe)

      # Return value handling
      _retval
    end

    def default_monospace_font_size : UInt32
      # webkit_settings_get_default_monospace_font_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_default_monospace_font_size(to_unsafe)

      # Return value handling
      _retval
    end

    def disable_web_security : Bool
      # webkit_settings_get_disable_web_security: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_disable_web_security(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def draw_compositing_indicators : Bool
      # webkit_settings_get_draw_compositing_indicators: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_draw_compositing_indicators(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_2d_canvas_acceleration : Bool
      # webkit_settings_get_enable_2d_canvas_acceleration: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_2d_canvas_acceleration(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_back_forward_navigation_gestures : Bool
      # webkit_settings_get_enable_back_forward_navigation_gestures: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_back_forward_navigation_gestures(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_caret_browsing : Bool
      # webkit_settings_get_enable_caret_browsing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_caret_browsing(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_developer_extras : Bool
      # webkit_settings_get_enable_developer_extras: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_developer_extras(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def enable_dns_prefetching : Bool
      # webkit_settings_get_enable_dns_prefetching: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_dns_prefetching(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_encrypted_media : Bool
      # webkit_settings_get_enable_encrypted_media: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_encrypted_media(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_fullscreen : Bool
      # webkit_settings_get_enable_fullscreen: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_fullscreen(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_html5_database : Bool
      # webkit_settings_get_enable_html5_database: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_html5_database(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_html5_local_storage : Bool
      # webkit_settings_get_enable_html5_local_storage: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_html5_local_storage(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_hyperlink_auditing : Bool
      # webkit_settings_get_enable_hyperlink_auditing: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_hyperlink_auditing(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_javascript : Bool
      # webkit_settings_get_enable_javascript: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_javascript(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_javascript_markup : Bool
      # webkit_settings_get_enable_javascript_markup: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_javascript_markup(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_media : Bool
      # webkit_settings_get_enable_media: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_media(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_media_capabilities : Bool
      # webkit_settings_get_enable_media_capabilities: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_media_capabilities(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_media_stream : Bool
      # webkit_settings_get_enable_media_stream: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_media_stream(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_mediasource : Bool
      # webkit_settings_get_enable_mediasource: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_mediasource(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_mock_capture_devices : Bool
      # webkit_settings_get_enable_mock_capture_devices: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_mock_capture_devices(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def enable_offline_web_application_cache : Bool
      # webkit_settings_get_enable_offline_web_application_cache: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_offline_web_application_cache(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_page_cache : Bool
      # webkit_settings_get_enable_page_cache: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_page_cache(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_resizable_text_areas : Bool
      # webkit_settings_get_enable_resizable_text_areas: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_resizable_text_areas(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_site_specific_quirks : Bool
      # webkit_settings_get_enable_site_specific_quirks: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_site_specific_quirks(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_smooth_scrolling : Bool
      # webkit_settings_get_enable_smooth_scrolling: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_smooth_scrolling(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_spatial_navigation : Bool
      # webkit_settings_get_enable_spatial_navigation: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_spatial_navigation(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_tabs_to_links : Bool
      # webkit_settings_get_enable_tabs_to_links: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_tabs_to_links(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_webaudio : Bool
      # webkit_settings_get_enable_webaudio: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_webaudio(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_webgl : Bool
      # webkit_settings_get_enable_webgl: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_webgl(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_webrtc : Bool
      # webkit_settings_get_enable_webrtc: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_webrtc(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_write_console_messages_to_stdout : Bool
      # webkit_settings_get_enable_write_console_messages_to_stdout: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_enable_write_console_messages_to_stdout(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def fantasy_font_family : ::String
      # webkit_settings_get_fantasy_font_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_fantasy_font_family(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def feature_enabled(feature : WebKit::Feature) : Bool
      # webkit_settings_get_feature_enabled: (Method)
      # @feature:
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_feature_enabled(to_unsafe, feature)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def hardware_acceleration_policy : WebKit::HardwareAccelerationPolicy
      # webkit_settings_get_hardware_acceleration_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_hardware_acceleration_policy(to_unsafe)

      # Return value handling
      WebKit::HardwareAccelerationPolicy.new(_retval)
    end

    def javascript_can_access_clipboard : Bool
      # webkit_settings_get_javascript_can_access_clipboard: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_javascript_can_access_clipboard(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def javascript_can_open_windows_automatically : Bool
      # webkit_settings_get_javascript_can_open_windows_automatically: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_javascript_can_open_windows_automatically(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def load_icons_ignoring_image_load_setting : Bool
      # webkit_settings_get_load_icons_ignoring_image_load_setting: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_load_icons_ignoring_image_load_setting(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def media_content_types_requiring_hardware_support : ::String
      # webkit_settings_get_media_content_types_requiring_hardware_support: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_media_content_types_requiring_hardware_support(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def media_playback_allows_inline : Bool
      # webkit_settings_get_media_playback_allows_inline: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_media_playback_allows_inline(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def media_playback_requires_user_gesture : Bool
      # webkit_settings_get_media_playback_requires_user_gesture: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_media_playback_requires_user_gesture(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def minimum_font_size : UInt32
      # webkit_settings_get_minimum_font_size: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_minimum_font_size(to_unsafe)

      # Return value handling
      _retval
    end

    def monospace_font_family : ::String
      # webkit_settings_get_monospace_font_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_monospace_font_family(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def pictograph_font_family : ::String
      # webkit_settings_get_pictograph_font_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_pictograph_font_family(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def print_backgrounds : Bool
      # webkit_settings_get_print_backgrounds: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_print_backgrounds(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def sans_serif_font_family : ::String
      # webkit_settings_get_sans_serif_font_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_sans_serif_font_family(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def serif_font_family : ::String
      # webkit_settings_get_serif_font_family: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_serif_font_family(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def user_agent : ::String
      # webkit_settings_get_user_agent: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_user_agent(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def webrtc_udp_ports_range : ::String
      # webkit_settings_get_webrtc_udp_ports_range: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_webrtc_udp_ports_range(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def zoom_text_only : Bool
      # webkit_settings_get_zoom_text_only: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_settings_get_zoom_text_only(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def allow_file_access_from_file_urls=(allowed : Bool) : Nil
      # webkit_settings_set_allow_file_access_from_file_urls: (Method | Setter)
      # @allowed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_allow_file_access_from_file_urls(to_unsafe, allowed)

      # Return value handling
    end

    def allow_modal_dialogs=(allowed : Bool) : Nil
      # webkit_settings_set_allow_modal_dialogs: (Method | Setter)
      # @allowed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_allow_modal_dialogs(to_unsafe, allowed)

      # Return value handling
    end

    def allow_top_navigation_to_data_urls=(allowed : Bool) : Nil
      # webkit_settings_set_allow_top_navigation_to_data_urls: (Method | Setter)
      # @allowed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_allow_top_navigation_to_data_urls(to_unsafe, allowed)

      # Return value handling
    end

    def allow_universal_access_from_file_urls=(allowed : Bool) : Nil
      # webkit_settings_set_allow_universal_access_from_file_urls: (Method | Setter)
      # @allowed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_allow_universal_access_from_file_urls(to_unsafe, allowed)

      # Return value handling
    end

    def auto_load_images=(enabled : Bool) : Nil
      # webkit_settings_set_auto_load_images: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_auto_load_images(to_unsafe, enabled)

      # Return value handling
    end

    def cursive_font_family=(cursive_font_family : ::String) : Nil
      # webkit_settings_set_cursive_font_family: (Method | Setter)
      # @cursive_font_family:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_cursive_font_family(to_unsafe, cursive_font_family)

      # Return value handling
    end

    def default_charset=(default_charset : ::String) : Nil
      # webkit_settings_set_default_charset: (Method | Setter)
      # @default_charset:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_default_charset(to_unsafe, default_charset)

      # Return value handling
    end

    def default_font_family=(default_font_family : ::String) : Nil
      # webkit_settings_set_default_font_family: (Method | Setter)
      # @default_font_family:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_default_font_family(to_unsafe, default_font_family)

      # Return value handling
    end

    def default_font_size=(font_size : UInt32) : Nil
      # webkit_settings_set_default_font_size: (Method | Setter)
      # @font_size:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_default_font_size(to_unsafe, font_size)

      # Return value handling
    end

    def default_monospace_font_size=(font_size : UInt32) : Nil
      # webkit_settings_set_default_monospace_font_size: (Method | Setter)
      # @font_size:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_default_monospace_font_size(to_unsafe, font_size)

      # Return value handling
    end

    def disable_web_security=(disabled : Bool) : Nil
      # webkit_settings_set_disable_web_security: (Method | Setter)
      # @disabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_disable_web_security(to_unsafe, disabled)

      # Return value handling
    end

    def draw_compositing_indicators=(enabled : Bool) : Nil
      # webkit_settings_set_draw_compositing_indicators: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_draw_compositing_indicators(to_unsafe, enabled)

      # Return value handling
    end

    def enable_2d_canvas_acceleration=(enabled : Bool) : Nil
      # webkit_settings_set_enable_2d_canvas_acceleration: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_2d_canvas_acceleration(to_unsafe, enabled)

      # Return value handling
    end

    def enable_back_forward_navigation_gestures=(enabled : Bool) : Nil
      # webkit_settings_set_enable_back_forward_navigation_gestures: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_back_forward_navigation_gestures(to_unsafe, enabled)

      # Return value handling
    end

    def enable_caret_browsing=(enabled : Bool) : Nil
      # webkit_settings_set_enable_caret_browsing: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_caret_browsing(to_unsafe, enabled)

      # Return value handling
    end

    def enable_developer_extras=(enabled : Bool) : Nil
      # webkit_settings_set_enable_developer_extras: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_developer_extras(to_unsafe, enabled)

      # Return value handling
    end

    @[Deprecated]
    def enable_dns_prefetching=(enabled : Bool) : Nil
      # webkit_settings_set_enable_dns_prefetching: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_dns_prefetching(to_unsafe, enabled)

      # Return value handling
    end

    def enable_encrypted_media=(enabled : Bool) : Nil
      # webkit_settings_set_enable_encrypted_media: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_encrypted_media(to_unsafe, enabled)

      # Return value handling
    end

    def enable_fullscreen=(enabled : Bool) : Nil
      # webkit_settings_set_enable_fullscreen: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_fullscreen(to_unsafe, enabled)

      # Return value handling
    end

    def enable_html5_database=(enabled : Bool) : Nil
      # webkit_settings_set_enable_html5_database: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_html5_database(to_unsafe, enabled)

      # Return value handling
    end

    def enable_html5_local_storage=(enabled : Bool) : Nil
      # webkit_settings_set_enable_html5_local_storage: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_html5_local_storage(to_unsafe, enabled)

      # Return value handling
    end

    def enable_hyperlink_auditing=(enabled : Bool) : Nil
      # webkit_settings_set_enable_hyperlink_auditing: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_hyperlink_auditing(to_unsafe, enabled)

      # Return value handling
    end

    def enable_javascript=(enabled : Bool) : Nil
      # webkit_settings_set_enable_javascript: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_javascript(to_unsafe, enabled)

      # Return value handling
    end

    def enable_javascript_markup=(enabled : Bool) : Nil
      # webkit_settings_set_enable_javascript_markup: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_javascript_markup(to_unsafe, enabled)

      # Return value handling
    end

    def enable_media=(enabled : Bool) : Nil
      # webkit_settings_set_enable_media: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_media(to_unsafe, enabled)

      # Return value handling
    end

    def enable_media_capabilities=(enabled : Bool) : Nil
      # webkit_settings_set_enable_media_capabilities: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_media_capabilities(to_unsafe, enabled)

      # Return value handling
    end

    def enable_media_stream=(enabled : Bool) : Nil
      # webkit_settings_set_enable_media_stream: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_media_stream(to_unsafe, enabled)

      # Return value handling
    end

    def enable_mediasource=(enabled : Bool) : Nil
      # webkit_settings_set_enable_mediasource: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_mediasource(to_unsafe, enabled)

      # Return value handling
    end

    def enable_mock_capture_devices=(enabled : Bool) : Nil
      # webkit_settings_set_enable_mock_capture_devices: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_mock_capture_devices(to_unsafe, enabled)

      # Return value handling
    end

    @[Deprecated]
    def enable_offline_web_application_cache=(enabled : Bool) : Nil
      # webkit_settings_set_enable_offline_web_application_cache: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_offline_web_application_cache(to_unsafe, enabled)

      # Return value handling
    end

    def enable_page_cache=(enabled : Bool) : Nil
      # webkit_settings_set_enable_page_cache: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_page_cache(to_unsafe, enabled)

      # Return value handling
    end

    def enable_resizable_text_areas=(enabled : Bool) : Nil
      # webkit_settings_set_enable_resizable_text_areas: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_resizable_text_areas(to_unsafe, enabled)

      # Return value handling
    end

    def enable_site_specific_quirks=(enabled : Bool) : Nil
      # webkit_settings_set_enable_site_specific_quirks: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_site_specific_quirks(to_unsafe, enabled)

      # Return value handling
    end

    def enable_smooth_scrolling=(enabled : Bool) : Nil
      # webkit_settings_set_enable_smooth_scrolling: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_smooth_scrolling(to_unsafe, enabled)

      # Return value handling
    end

    def enable_spatial_navigation=(enabled : Bool) : Nil
      # webkit_settings_set_enable_spatial_navigation: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_spatial_navigation(to_unsafe, enabled)

      # Return value handling
    end

    def enable_tabs_to_links=(enabled : Bool) : Nil
      # webkit_settings_set_enable_tabs_to_links: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_tabs_to_links(to_unsafe, enabled)

      # Return value handling
    end

    def enable_webaudio=(enabled : Bool) : Nil
      # webkit_settings_set_enable_webaudio: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_webaudio(to_unsafe, enabled)

      # Return value handling
    end

    def enable_webgl=(enabled : Bool) : Nil
      # webkit_settings_set_enable_webgl: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_webgl(to_unsafe, enabled)

      # Return value handling
    end

    def enable_webrtc=(enabled : Bool) : Nil
      # webkit_settings_set_enable_webrtc: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_webrtc(to_unsafe, enabled)

      # Return value handling
    end

    def enable_write_console_messages_to_stdout=(enabled : Bool) : Nil
      # webkit_settings_set_enable_write_console_messages_to_stdout: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_enable_write_console_messages_to_stdout(to_unsafe, enabled)

      # Return value handling
    end

    def fantasy_font_family=(fantasy_font_family : ::String) : Nil
      # webkit_settings_set_fantasy_font_family: (Method | Setter)
      # @fantasy_font_family:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_fantasy_font_family(to_unsafe, fantasy_font_family)

      # Return value handling
    end

    def set_feature_enabled(feature : WebKit::Feature, enabled : Bool) : Nil
      # webkit_settings_set_feature_enabled: (Method)
      # @feature:
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_feature_enabled(to_unsafe, feature, enabled)

      # Return value handling
    end

    def hardware_acceleration_policy=(policy : WebKit::HardwareAccelerationPolicy) : Nil
      # webkit_settings_set_hardware_acceleration_policy: (Method | Setter)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_hardware_acceleration_policy(to_unsafe, policy)

      # Return value handling
    end

    def javascript_can_access_clipboard=(enabled : Bool) : Nil
      # webkit_settings_set_javascript_can_access_clipboard: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_javascript_can_access_clipboard(to_unsafe, enabled)

      # Return value handling
    end

    def javascript_can_open_windows_automatically=(enabled : Bool) : Nil
      # webkit_settings_set_javascript_can_open_windows_automatically: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_javascript_can_open_windows_automatically(to_unsafe, enabled)

      # Return value handling
    end

    @[Deprecated]
    def load_icons_ignoring_image_load_setting=(enabled : Bool) : Nil
      # webkit_settings_set_load_icons_ignoring_image_load_setting: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_load_icons_ignoring_image_load_setting(to_unsafe, enabled)

      # Return value handling
    end

    def media_content_types_requiring_hardware_support=(content_types : ::String?) : Nil
      # webkit_settings_set_media_content_types_requiring_hardware_support: (Method | Setter)
      # @content_types: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      content_types = if content_types.nil?
                        Pointer(LibC::Char).null
                      else
                        content_types.to_unsafe
                      end

      # C call
      LibWebKit.webkit_settings_set_media_content_types_requiring_hardware_support(to_unsafe, content_types)

      # Return value handling
    end

    def media_playback_allows_inline=(enabled : Bool) : Nil
      # webkit_settings_set_media_playback_allows_inline: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_media_playback_allows_inline(to_unsafe, enabled)

      # Return value handling
    end

    def media_playback_requires_user_gesture=(enabled : Bool) : Nil
      # webkit_settings_set_media_playback_requires_user_gesture: (Method | Setter)
      # @enabled:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_media_playback_requires_user_gesture(to_unsafe, enabled)

      # Return value handling
    end

    def minimum_font_size=(font_size : UInt32) : Nil
      # webkit_settings_set_minimum_font_size: (Method | Setter)
      # @font_size:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_minimum_font_size(to_unsafe, font_size)

      # Return value handling
    end

    def monospace_font_family=(monospace_font_family : ::String) : Nil
      # webkit_settings_set_monospace_font_family: (Method | Setter)
      # @monospace_font_family:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_monospace_font_family(to_unsafe, monospace_font_family)

      # Return value handling
    end

    def pictograph_font_family=(pictograph_font_family : ::String) : Nil
      # webkit_settings_set_pictograph_font_family: (Method | Setter)
      # @pictograph_font_family:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_pictograph_font_family(to_unsafe, pictograph_font_family)

      # Return value handling
    end

    def print_backgrounds=(print_backgrounds : Bool) : Nil
      # webkit_settings_set_print_backgrounds: (Method | Setter)
      # @print_backgrounds:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_print_backgrounds(to_unsafe, print_backgrounds)

      # Return value handling
    end

    def sans_serif_font_family=(sans_serif_font_family : ::String) : Nil
      # webkit_settings_set_sans_serif_font_family: (Method | Setter)
      # @sans_serif_font_family:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_sans_serif_font_family(to_unsafe, sans_serif_font_family)

      # Return value handling
    end

    def serif_font_family=(serif_font_family : ::String) : Nil
      # webkit_settings_set_serif_font_family: (Method | Setter)
      # @serif_font_family:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_serif_font_family(to_unsafe, serif_font_family)

      # Return value handling
    end

    def user_agent=(user_agent : ::String?) : Nil
      # webkit_settings_set_user_agent: (Method | Setter)
      # @user_agent: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_agent = if user_agent.nil?
                     Pointer(LibC::Char).null
                   else
                     user_agent.to_unsafe
                   end

      # C call
      LibWebKit.webkit_settings_set_user_agent(to_unsafe, user_agent)

      # Return value handling
    end

    def set_user_agent_with_application_details(application_name : ::String?, application_version : ::String?) : Nil
      # webkit_settings_set_user_agent_with_application_details: (Method)
      # @application_name: (nullable)
      # @application_version: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      application_name = if application_name.nil?
                           Pointer(LibC::Char).null
                         else
                           application_name.to_unsafe
                         end
      # Generator::NullableArrayPlan
      application_version = if application_version.nil?
                              Pointer(LibC::Char).null
                            else
                              application_version.to_unsafe
                            end

      # C call
      LibWebKit.webkit_settings_set_user_agent_with_application_details(to_unsafe, application_name, application_version)

      # Return value handling
    end

    def webrtc_udp_ports_range=(udp_port_range : ::String) : Nil
      # webkit_settings_set_webrtc_udp_ports_range: (Method | Setter)
      # @udp_port_range:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_webrtc_udp_ports_range(to_unsafe, udp_port_range)

      # Return value handling
    end

    def zoom_text_only=(zoom_text_only : Bool) : Nil
      # webkit_settings_set_zoom_text_only: (Method | Setter)
      # @zoom_text_only:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_settings_set_zoom_text_only(to_unsafe, zoom_text_only)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
