require "../g_object-2.0/object"
require "./style_provider"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Settings < GObject::Object
    include StyleProvider

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

    def initialize(*, gtk_alternative_button_order : Bool? = nil, gtk_alternative_sort_arrows : Bool? = nil, gtk_application_prefer_dark_theme : Bool? = nil, gtk_cursor_aspect_ratio : Float64? = nil, gtk_cursor_blink : Bool? = nil, gtk_cursor_blink_time : Int32? = nil, gtk_cursor_blink_timeout : Int32? = nil, gtk_cursor_theme_name : ::String? = nil, gtk_cursor_theme_size : Int32? = nil, gtk_decoration_layout : ::String? = nil, gtk_dialogs_use_header : Bool? = nil, gtk_dnd_drag_threshold : Int32? = nil, gtk_double_click_distance : Int32? = nil, gtk_double_click_time : Int32? = nil, gtk_enable_accels : Bool? = nil, gtk_enable_animations : Bool? = nil, gtk_enable_event_sounds : Bool? = nil, gtk_enable_input_feedback_sounds : Bool? = nil, gtk_enable_primary_paste : Bool? = nil, gtk_entry_password_hint_timeout : UInt32? = nil, gtk_entry_select_on_focus : Bool? = nil, gtk_error_bell : Bool? = nil, gtk_font_name : ::String? = nil, gtk_font_rendering : Gtk::FontRendering? = nil, gtk_fontconfig_timestamp : UInt32? = nil, gtk_hint_font_metrics : Bool? = nil, gtk_icon_theme_name : ::String? = nil, gtk_im_module : ::String? = nil, gtk_keynav_use_caret : Bool? = nil, gtk_label_select_on_focus : Bool? = nil, gtk_long_press_time : UInt32? = nil, gtk_overlay_scrolling : Bool? = nil, gtk_primary_button_warps_slider : Bool? = nil, gtk_print_backends : ::String? = nil, gtk_print_preview_command : ::String? = nil, gtk_recent_files_enabled : Bool? = nil, gtk_recent_files_max_age : Int32? = nil, gtk_shell_shows_app_menu : Bool? = nil, gtk_shell_shows_desktop : Bool? = nil, gtk_shell_shows_menubar : Bool? = nil, gtk_show_status_shapes : Bool? = nil, gtk_sound_theme_name : ::String? = nil, gtk_split_cursor : Bool? = nil, gtk_theme_name : ::String? = nil, gtk_titlebar_double_click : ::String? = nil, gtk_titlebar_middle_click : ::String? = nil, gtk_titlebar_right_click : ::String? = nil, gtk_xft_antialias : Int32? = nil, gtk_xft_dpi : Int32? = nil, gtk_xft_hinting : Int32? = nil, gtk_xft_hintstyle : ::String? = nil, gtk_xft_rgba : ::String? = nil)
      _names = uninitialized Pointer(LibC::Char)[52]
      _values = StaticArray(LibGObject::Value, 52).new(LibGObject::Value.new)
      _n = 0

      if !gtk_alternative_button_order.nil?
        (_names.to_unsafe + _n).value = "gtk-alternative-button-order".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_alternative_button_order)
        _n += 1
      end
      if !gtk_alternative_sort_arrows.nil?
        (_names.to_unsafe + _n).value = "gtk-alternative-sort-arrows".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_alternative_sort_arrows)
        _n += 1
      end
      if !gtk_application_prefer_dark_theme.nil?
        (_names.to_unsafe + _n).value = "gtk-application-prefer-dark-theme".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_application_prefer_dark_theme)
        _n += 1
      end
      if !gtk_cursor_aspect_ratio.nil?
        (_names.to_unsafe + _n).value = "gtk-cursor-aspect-ratio".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_cursor_aspect_ratio)
        _n += 1
      end
      if !gtk_cursor_blink.nil?
        (_names.to_unsafe + _n).value = "gtk-cursor-blink".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_cursor_blink)
        _n += 1
      end
      if !gtk_cursor_blink_time.nil?
        (_names.to_unsafe + _n).value = "gtk-cursor-blink-time".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_cursor_blink_time)
        _n += 1
      end
      if !gtk_cursor_blink_timeout.nil?
        (_names.to_unsafe + _n).value = "gtk-cursor-blink-timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_cursor_blink_timeout)
        _n += 1
      end
      if !gtk_cursor_theme_name.nil?
        (_names.to_unsafe + _n).value = "gtk-cursor-theme-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_cursor_theme_name)
        _n += 1
      end
      if !gtk_cursor_theme_size.nil?
        (_names.to_unsafe + _n).value = "gtk-cursor-theme-size".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_cursor_theme_size)
        _n += 1
      end
      if !gtk_decoration_layout.nil?
        (_names.to_unsafe + _n).value = "gtk-decoration-layout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_decoration_layout)
        _n += 1
      end
      if !gtk_dialogs_use_header.nil?
        (_names.to_unsafe + _n).value = "gtk-dialogs-use-header".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_dialogs_use_header)
        _n += 1
      end
      if !gtk_dnd_drag_threshold.nil?
        (_names.to_unsafe + _n).value = "gtk-dnd-drag-threshold".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_dnd_drag_threshold)
        _n += 1
      end
      if !gtk_double_click_distance.nil?
        (_names.to_unsafe + _n).value = "gtk-double-click-distance".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_double_click_distance)
        _n += 1
      end
      if !gtk_double_click_time.nil?
        (_names.to_unsafe + _n).value = "gtk-double-click-time".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_double_click_time)
        _n += 1
      end
      if !gtk_enable_accels.nil?
        (_names.to_unsafe + _n).value = "gtk-enable-accels".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_enable_accels)
        _n += 1
      end
      if !gtk_enable_animations.nil?
        (_names.to_unsafe + _n).value = "gtk-enable-animations".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_enable_animations)
        _n += 1
      end
      if !gtk_enable_event_sounds.nil?
        (_names.to_unsafe + _n).value = "gtk-enable-event-sounds".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_enable_event_sounds)
        _n += 1
      end
      if !gtk_enable_input_feedback_sounds.nil?
        (_names.to_unsafe + _n).value = "gtk-enable-input-feedback-sounds".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_enable_input_feedback_sounds)
        _n += 1
      end
      if !gtk_enable_primary_paste.nil?
        (_names.to_unsafe + _n).value = "gtk-enable-primary-paste".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_enable_primary_paste)
        _n += 1
      end
      if !gtk_entry_password_hint_timeout.nil?
        (_names.to_unsafe + _n).value = "gtk-entry-password-hint-timeout".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_entry_password_hint_timeout)
        _n += 1
      end
      if !gtk_entry_select_on_focus.nil?
        (_names.to_unsafe + _n).value = "gtk-entry-select-on-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_entry_select_on_focus)
        _n += 1
      end
      if !gtk_error_bell.nil?
        (_names.to_unsafe + _n).value = "gtk-error-bell".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_error_bell)
        _n += 1
      end
      if !gtk_font_name.nil?
        (_names.to_unsafe + _n).value = "gtk-font-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_font_name)
        _n += 1
      end
      if !gtk_font_rendering.nil?
        (_names.to_unsafe + _n).value = "gtk-font-rendering".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_font_rendering)
        _n += 1
      end
      if !gtk_fontconfig_timestamp.nil?
        (_names.to_unsafe + _n).value = "gtk-fontconfig-timestamp".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_fontconfig_timestamp)
        _n += 1
      end
      if !gtk_hint_font_metrics.nil?
        (_names.to_unsafe + _n).value = "gtk-hint-font-metrics".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_hint_font_metrics)
        _n += 1
      end
      if !gtk_icon_theme_name.nil?
        (_names.to_unsafe + _n).value = "gtk-icon-theme-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_icon_theme_name)
        _n += 1
      end
      if !gtk_im_module.nil?
        (_names.to_unsafe + _n).value = "gtk-im-module".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_im_module)
        _n += 1
      end
      if !gtk_keynav_use_caret.nil?
        (_names.to_unsafe + _n).value = "gtk-keynav-use-caret".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_keynav_use_caret)
        _n += 1
      end
      if !gtk_label_select_on_focus.nil?
        (_names.to_unsafe + _n).value = "gtk-label-select-on-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_label_select_on_focus)
        _n += 1
      end
      if !gtk_long_press_time.nil?
        (_names.to_unsafe + _n).value = "gtk-long-press-time".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_long_press_time)
        _n += 1
      end
      if !gtk_overlay_scrolling.nil?
        (_names.to_unsafe + _n).value = "gtk-overlay-scrolling".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_overlay_scrolling)
        _n += 1
      end
      if !gtk_primary_button_warps_slider.nil?
        (_names.to_unsafe + _n).value = "gtk-primary-button-warps-slider".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_primary_button_warps_slider)
        _n += 1
      end
      if !gtk_print_backends.nil?
        (_names.to_unsafe + _n).value = "gtk-print-backends".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_print_backends)
        _n += 1
      end
      if !gtk_print_preview_command.nil?
        (_names.to_unsafe + _n).value = "gtk-print-preview-command".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_print_preview_command)
        _n += 1
      end
      if !gtk_recent_files_enabled.nil?
        (_names.to_unsafe + _n).value = "gtk-recent-files-enabled".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_recent_files_enabled)
        _n += 1
      end
      if !gtk_recent_files_max_age.nil?
        (_names.to_unsafe + _n).value = "gtk-recent-files-max-age".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_recent_files_max_age)
        _n += 1
      end
      if !gtk_shell_shows_app_menu.nil?
        (_names.to_unsafe + _n).value = "gtk-shell-shows-app-menu".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_shell_shows_app_menu)
        _n += 1
      end
      if !gtk_shell_shows_desktop.nil?
        (_names.to_unsafe + _n).value = "gtk-shell-shows-desktop".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_shell_shows_desktop)
        _n += 1
      end
      if !gtk_shell_shows_menubar.nil?
        (_names.to_unsafe + _n).value = "gtk-shell-shows-menubar".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_shell_shows_menubar)
        _n += 1
      end
      if !gtk_show_status_shapes.nil?
        (_names.to_unsafe + _n).value = "gtk-show-status-shapes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_show_status_shapes)
        _n += 1
      end
      if !gtk_sound_theme_name.nil?
        (_names.to_unsafe + _n).value = "gtk-sound-theme-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_sound_theme_name)
        _n += 1
      end
      if !gtk_split_cursor.nil?
        (_names.to_unsafe + _n).value = "gtk-split-cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_split_cursor)
        _n += 1
      end
      if !gtk_theme_name.nil?
        (_names.to_unsafe + _n).value = "gtk-theme-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_theme_name)
        _n += 1
      end
      if !gtk_titlebar_double_click.nil?
        (_names.to_unsafe + _n).value = "gtk-titlebar-double-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_titlebar_double_click)
        _n += 1
      end
      if !gtk_titlebar_middle_click.nil?
        (_names.to_unsafe + _n).value = "gtk-titlebar-middle-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_titlebar_middle_click)
        _n += 1
      end
      if !gtk_titlebar_right_click.nil?
        (_names.to_unsafe + _n).value = "gtk-titlebar-right-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_titlebar_right_click)
        _n += 1
      end
      if !gtk_xft_antialias.nil?
        (_names.to_unsafe + _n).value = "gtk-xft-antialias".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_xft_antialias)
        _n += 1
      end
      if !gtk_xft_dpi.nil?
        (_names.to_unsafe + _n).value = "gtk-xft-dpi".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_xft_dpi)
        _n += 1
      end
      if !gtk_xft_hinting.nil?
        (_names.to_unsafe + _n).value = "gtk-xft-hinting".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_xft_hinting)
        _n += 1
      end
      if !gtk_xft_hintstyle.nil?
        (_names.to_unsafe + _n).value = "gtk-xft-hintstyle".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_xft_hintstyle)
        _n += 1
      end
      if !gtk_xft_rgba.nil?
        (_names.to_unsafe + _n).value = "gtk-xft-rgba".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, gtk_xft_rgba)
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
      @@g_type ||= LibGtk.gtk_settings_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Settings.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def gtk_alternative_button_order=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-alternative-button-order", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_alternative_button_order? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-alternative-button-order", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_alternative_sort_arrows=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-alternative-sort-arrows", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_alternative_sort_arrows? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-alternative-sort-arrows", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_application_prefer_dark_theme=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-application-prefer-dark-theme", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_application_prefer_dark_theme? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-application-prefer-dark-theme", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_cursor_aspect_ratio=(value : Float64) : Float64
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-cursor-aspect-ratio", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_cursor_aspect_ratio : Float64
      # Returns: None

      value = uninitialized Float64
      LibGObject.g_object_get(self, "gtk-cursor-aspect-ratio", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_cursor_blink=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-cursor-blink", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_cursor_blink? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-cursor-blink", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_cursor_blink_time=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-cursor-blink-time", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_cursor_blink_time : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-cursor-blink-time", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_cursor_blink_timeout=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-cursor-blink-timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_cursor_blink_timeout : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-cursor-blink-timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_cursor_theme_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-cursor-theme-name", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_cursor_theme_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-cursor-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_cursor_theme_name` property to nil.
    def gtk_cursor_theme_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-cursor-theme-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_cursor_theme_name`, but can return nil.
    def gtk_cursor_theme_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-cursor-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_cursor_theme_size=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-cursor-theme-size", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_cursor_theme_size : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-cursor-theme-size", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_decoration_layout=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-decoration-layout", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_decoration_layout : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-decoration-layout", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_decoration_layout` property to nil.
    def gtk_decoration_layout=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-decoration-layout", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_decoration_layout`, but can return nil.
    def gtk_decoration_layout? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-decoration-layout", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_dialogs_use_header=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-dialogs-use-header", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_dialogs_use_header? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-dialogs-use-header", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_dnd_drag_threshold=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-dnd-drag-threshold", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_dnd_drag_threshold : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-dnd-drag-threshold", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_double_click_distance=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-double-click-distance", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_double_click_distance : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-double-click-distance", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_double_click_time=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-double-click-time", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_double_click_time : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-double-click-time", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_enable_accels=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-enable-accels", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_enable_accels? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-enable-accels", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_enable_animations=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-enable-animations", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_enable_animations? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-enable-animations", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_enable_event_sounds=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-enable-event-sounds", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_enable_event_sounds? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-enable-event-sounds", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_enable_input_feedback_sounds=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-enable-input-feedback-sounds", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_enable_input_feedback_sounds? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-enable-input-feedback-sounds", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_enable_primary_paste=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-enable-primary-paste", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_enable_primary_paste? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-enable-primary-paste", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_entry_password_hint_timeout=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-entry-password-hint-timeout", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_entry_password_hint_timeout : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "gtk-entry-password-hint-timeout", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_entry_select_on_focus=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-entry-select-on-focus", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_entry_select_on_focus? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-entry-select-on-focus", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_error_bell=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-error-bell", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_error_bell? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-error-bell", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_font_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-font-name", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_font_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-font-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_font_name` property to nil.
    def gtk_font_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-font-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_font_name`, but can return nil.
    def gtk_font_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-font-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_font_rendering=(value : Gtk::FontRendering) : Gtk::FontRendering
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-font-rendering", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_font_rendering : Gtk::FontRendering
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "gtk-font-rendering", pointerof(value), Pointer(Void).null)
      Gtk::FontRendering.new(value)
    end

    def gtk_fontconfig_timestamp=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-fontconfig-timestamp", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_fontconfig_timestamp : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "gtk-fontconfig-timestamp", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_hint_font_metrics=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-hint-font-metrics", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_hint_font_metrics? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-hint-font-metrics", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_icon_theme_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-icon-theme-name", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_icon_theme_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-icon-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_icon_theme_name` property to nil.
    def gtk_icon_theme_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-icon-theme-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_icon_theme_name`, but can return nil.
    def gtk_icon_theme_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-icon-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_im_module=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-im-module", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_im_module : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-im-module", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_im_module` property to nil.
    def gtk_im_module=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-im-module", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_im_module`, but can return nil.
    def gtk_im_module? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-im-module", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_keynav_use_caret=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-keynav-use-caret", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_keynav_use_caret? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-keynav-use-caret", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_label_select_on_focus=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-label-select-on-focus", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_label_select_on_focus? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-label-select-on-focus", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_long_press_time=(value : UInt32) : UInt32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-long-press-time", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_long_press_time : UInt32
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "gtk-long-press-time", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_overlay_scrolling=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-overlay-scrolling", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_overlay_scrolling? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-overlay-scrolling", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_primary_button_warps_slider=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-primary-button-warps-slider", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_primary_button_warps_slider? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-primary-button-warps-slider", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_print_backends=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-print-backends", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_print_backends : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-print-backends", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_print_backends` property to nil.
    def gtk_print_backends=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-print-backends", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_print_backends`, but can return nil.
    def gtk_print_backends? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-print-backends", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_print_preview_command=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-print-preview-command", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_print_preview_command : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-print-preview-command", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_print_preview_command` property to nil.
    def gtk_print_preview_command=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-print-preview-command", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_print_preview_command`, but can return nil.
    def gtk_print_preview_command? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-print-preview-command", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_recent_files_enabled=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-recent-files-enabled", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_recent_files_enabled? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-recent-files-enabled", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_recent_files_max_age=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-recent-files-max-age", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_recent_files_max_age : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-recent-files-max-age", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_shell_shows_app_menu=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-shell-shows-app-menu", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_shell_shows_app_menu? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-shell-shows-app-menu", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_shell_shows_desktop=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-shell-shows-desktop", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_shell_shows_desktop? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-shell-shows-desktop", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_shell_shows_menubar=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-shell-shows-menubar", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_shell_shows_menubar? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-shell-shows-menubar", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_show_status_shapes=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-show-status-shapes", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_show_status_shapes? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-show-status-shapes", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_sound_theme_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-sound-theme-name", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_sound_theme_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-sound-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_sound_theme_name` property to nil.
    def gtk_sound_theme_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-sound-theme-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_sound_theme_name`, but can return nil.
    def gtk_sound_theme_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-sound-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_split_cursor=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-split-cursor", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_split_cursor? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "gtk-split-cursor", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def gtk_theme_name=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-theme-name", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_theme_name : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_theme_name` property to nil.
    def gtk_theme_name=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-theme-name", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_theme_name`, but can return nil.
    def gtk_theme_name? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-theme-name", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_titlebar_double_click=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-titlebar-double-click", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_titlebar_double_click : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-titlebar-double-click", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_titlebar_double_click` property to nil.
    def gtk_titlebar_double_click=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-titlebar-double-click", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_titlebar_double_click`, but can return nil.
    def gtk_titlebar_double_click? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-titlebar-double-click", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_titlebar_middle_click=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-titlebar-middle-click", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_titlebar_middle_click : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-titlebar-middle-click", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_titlebar_middle_click` property to nil.
    def gtk_titlebar_middle_click=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-titlebar-middle-click", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_titlebar_middle_click`, but can return nil.
    def gtk_titlebar_middle_click? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-titlebar-middle-click", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_titlebar_right_click=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-titlebar-right-click", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_titlebar_right_click : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-titlebar-right-click", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_titlebar_right_click` property to nil.
    def gtk_titlebar_right_click=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-titlebar-right-click", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_titlebar_right_click`, but can return nil.
    def gtk_titlebar_right_click? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-titlebar-right-click", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_xft_antialias=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-xft-antialias", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_xft_antialias : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-xft-antialias", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_xft_dpi=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-xft-dpi", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_xft_dpi : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-xft-dpi", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_xft_hinting=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-xft-hinting", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_xft_hinting : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "gtk-xft-hinting", pointerof(value), Pointer(Void).null)
      value
    end

    def gtk_xft_hintstyle=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-xft-hintstyle", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_xft_hintstyle : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-xft-hintstyle", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_xft_hintstyle` property to nil.
    def gtk_xft_hintstyle=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-xft-hintstyle", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_xft_hintstyle`, but can return nil.
    def gtk_xft_hintstyle? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-xft-hintstyle", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def gtk_xft_rgba=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "gtk-xft-rgba", unsafe_value, Pointer(Void).null)
      value
    end

    def gtk_xft_rgba : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-xft-rgba", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#gtk_xft_rgba` property to nil.
    def gtk_xft_rgba=(value : Nil) : Nil
      LibGObject.g_object_set(self, "gtk-xft-rgba", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#gtk_xft_rgba`, but can return nil.
    def gtk_xft_rgba? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "gtk-xft-rgba", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def self.default : Gtk::Settings?
      # gtk_settings_get_default: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_settings_get_default

      # Return value handling
      Gtk::Settings.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def self.for_display(display : Gdk::Display) : Gtk::Settings
      # gtk_settings_get_for_display: (None)
      # @display:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_settings_get_for_display(display)

      # Return value handling
      Gtk::Settings.new(_retval, GICrystal::Transfer::None)
    end

    def reset_property(name : ::String) : Nil
      # gtk_settings_reset_property: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_settings_reset_property(to_unsafe, name)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
