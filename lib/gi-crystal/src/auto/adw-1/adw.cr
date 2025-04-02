# Dependencies
require "../gtk-4.0/gtk.cr"
require "../gio-2.0/gio.cr"

# C lib declaration
require "./lib_adw.cr"

# Wrappers
require "./about_dialog.cr"
require "./about_window.cr"
require "./action_row.cr"
require "./alert_dialog.cr"
require "./animation.cr"
require "./animation_target.cr"
require "./application.cr"
require "./application_window.cr"
require "./avatar.cr"
require "./banner.cr"
require "./bin.cr"
require "./bottom_sheet.cr"
require "./breakpoint.cr"
require "./breakpoint_bin.cr"
require "./breakpoint_condition.cr"
require "./button_content.cr"
require "./button_row.cr"
require "./callback_animation_target.cr"
require "./carousel.cr"
require "./carousel_indicator_dots.cr"
require "./carousel_indicator_lines.cr"
require "./clamp.cr"
require "./clamp_layout.cr"
require "./clamp_scrollable.cr"
require "./combo_row.cr"
require "./dialog.cr"
require "./entry_row.cr"
require "./enum_list_item.cr"
require "./enum_list_model.cr"
require "./expander_row.cr"
require "./flap.cr"
require "./header_bar.cr"
require "./inline_view_switcher.cr"
require "./layout.cr"
require "./layout_slot.cr"
require "./leaflet.cr"
require "./leaflet_page.cr"
require "./message_dialog.cr"
require "./multi_layout_view.cr"
require "./navigation_page.cr"
require "./navigation_split_view.cr"
require "./navigation_view.cr"
require "./overlay_split_view.cr"
require "./password_entry_row.cr"
require "./preferences_dialog.cr"
require "./preferences_group.cr"
require "./preferences_page.cr"
require "./preferences_row.cr"
require "./preferences_window.cr"
require "./property_animation_target.cr"
require "./spin_row.cr"
require "./spinner.cr"
require "./spinner_paintable.cr"
require "./split_button.cr"
require "./spring_animation.cr"
require "./spring_params.cr"
require "./squeezer.cr"
require "./squeezer_page.cr"
require "./status_page.cr"
require "./style_manager.cr"
require "./swipe_tracker.cr"
require "./swipeable.cr"
require "./switch_row.cr"
require "./tab_bar.cr"
require "./tab_button.cr"
require "./tab_overview.cr"
require "./tab_page.cr"
require "./tab_view.cr"
require "./timed_animation.cr"
require "./toast.cr"
require "./toast_overlay.cr"
require "./toggle.cr"
require "./toggle_group.cr"
require "./toolbar_view.cr"
require "./view_stack.cr"
require "./view_stack_page.cr"
require "./view_stack_pages.cr"
require "./view_switcher.cr"
require "./view_switcher_bar.cr"
require "./view_switcher_title.cr"
require "./window.cr"
require "./window_title.cr"
require "./wrap_box.cr"
require "./wrap_layout.cr"

module Adw
  DURATION_INFINITE = 4294967295_u32
  MAJOR_VERSION     =              1
  MICRO_VERSION     =              0
  MINOR_VERSION     =              7
  VERSION_S         = "1.7.0"

  # Callbacks

  alias AnimationTargetFunc = Proc(Float64, Nil)

  # Enums

  enum AccentColor : UInt32
    Blue   = 0
    Teal   = 1
    Green  = 2
    Yellow = 3
    Orange = 4
    Red    = 5
    Pink   = 6
    Purple = 7
    Slate  = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_accent_color_get_type
    end
  end

  enum AnimationState : UInt32
    Idle     = 0
    Paused   = 1
    Playing  = 2
    Finished = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_animation_state_get_type
    end
  end

  enum BannerButtonStyle : UInt32
    Default   = 0
    Suggested = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_banner_button_style_get_type
    end
  end

  enum BreakpointConditionLengthType : UInt32
    MinWidth  = 0
    MaxWidth  = 1
    MinHeight = 2
    MaxHeight = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_breakpoint_condition_length_type_get_type
    end
  end

  enum BreakpointConditionRatioType : UInt32
    MinAspectRatio = 0
    MaxAspectRatio = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_breakpoint_condition_ratio_type_get_type
    end
  end

  enum CenteringPolicy : UInt32
    Loose  = 0
    Strict = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_centering_policy_get_type
    end
  end

  enum ColorScheme : UInt32
    Default     = 0
    ForceLight  = 1
    PreferLight = 2
    PreferDark  = 3
    ForceDark   = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_color_scheme_get_type
    end
  end

  enum DialogPresentationMode : UInt32
    Auto        = 0
    Floating    = 1
    BottomSheet = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_dialog_presentation_mode_get_type
    end
  end

  enum Easing : UInt32
    Linear           =  0
    EaseInQuad       =  1
    EaseOutQuad      =  2
    EaseInOutQuad    =  3
    EaseInCubic      =  4
    EaseOutCubic     =  5
    EaseInOutCubic   =  6
    EaseInQuart      =  7
    EaseOutQuart     =  8
    EaseInOutQuart   =  9
    EaseInQuint      = 10
    EaseOutQuint     = 11
    EaseInOutQuint   = 12
    EaseInSine       = 13
    EaseOutSine      = 14
    EaseInOutSine    = 15
    EaseInExpo       = 16
    EaseOutExpo      = 17
    EaseInOutExpo    = 18
    EaseInCirc       = 19
    EaseOutCirc      = 20
    EaseInOutCirc    = 21
    EaseInElastic    = 22
    EaseOutElastic   = 23
    EaseInOutElastic = 24
    EaseInBack       = 25
    EaseOutBack      = 26
    EaseInOutBack    = 27
    EaseInBounce     = 28
    EaseOutBounce    = 29
    EaseInOutBounce  = 30
    Ease             = 31
    EaseIn           = 32
    EaseOut          = 33
    EaseInOut        = 34

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_easing_get_type
    end
  end

  enum FlapFoldPolicy : UInt32
    Never  = 0
    Always = 1
    Auto   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_flap_fold_policy_get_type
    end
  end

  enum FlapTransitionType : UInt32
    Over  = 0
    Under = 1
    Slide = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_flap_transition_type_get_type
    end
  end

  enum FoldThresholdPolicy : UInt32
    Minimum = 0
    Natural = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_fold_threshold_policy_get_type
    end
  end

  enum InlineViewSwitcherDisplayMode : UInt32
    Labels = 0
    Icons  = 1
    Both   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_inline_view_switcher_display_mode_get_type
    end
  end

  enum JustifyMode : UInt32
    None   = 0
    Fill   = 1
    Spread = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_justify_mode_get_type
    end
  end

  enum LeafletTransitionType : UInt32
    Over  = 0
    Under = 1
    Slide = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_leaflet_transition_type_get_type
    end
  end

  enum LengthUnit : UInt32
    Px = 0
    Pt = 1
    Sp = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_length_unit_get_type
    end
  end

  enum NavigationDirection : UInt32
    Back    = 0
    Forward = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_navigation_direction_get_type
    end
  end

  enum PackDirection : UInt32
    StartToEnd = 0
    EndToStart = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_pack_direction_get_type
    end
  end

  enum ResponseAppearance : UInt32
    Default     = 0
    Suggested   = 1
    Destructive = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_response_appearance_get_type
    end
  end

  enum SqueezerTransitionType : UInt32
    None      = 0
    Crossfade = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_squeezer_transition_type_get_type
    end
  end

  enum ToastPriority : UInt32
    Normal = 0
    High   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_toast_priority_get_type
    end
  end

  enum ToolbarStyle : UInt32
    Flat         = 0
    Raised       = 1
    RaisedBorder = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_toolbar_style_get_type
    end
  end

  enum ViewSwitcherPolicy : UInt32
    Narrow = 0
    Wide   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_view_switcher_policy_get_type
    end
  end

  enum WrapPolicy : UInt32
    Minimum = 0
    Natural = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_wrap_policy_get_type
    end
  end

  # Flags

  @[Flags]
  enum TabViewShortcuts : UInt32
    ControlTab           =    1
    ControlShiftTab      =    2
    ControlPageUp        =    4
    ControlPageDown      =    8
    ControlHome          =   16
    ControlEnd           =   32
    ControlShiftPageUp   =   64
    ControlShiftPageDown =  128
    ControlShiftHome     =  256
    ControlShiftEnd      =  512
    AltDigits            = 1024
    AltZero              = 2048
    AllShortcuts         = 4095

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_tab_view_shortcuts_get_type
    end
  end

  def self.accent_color_to_rgba(self _self : Adw::AccentColor) : Gdk::RGBA
    # adw_accent_color_to_rgba: (None)
    # @self:
    # @rgba: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    rgba = Gdk::RGBA.new
    # C call
    LibAdw.adw_accent_color_to_rgba(_self, rgba)

    # Return value handling
    rgba
  end

  def self.accent_color_to_standalone_rgba(self _self : Adw::AccentColor, dark : Bool) : Gdk::RGBA
    # adw_accent_color_to_standalone_rgba: (None)
    # @self:
    # @dark:
    # @rgba: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    rgba = Gdk::RGBA.new
    # C call
    LibAdw.adw_accent_color_to_standalone_rgba(_self, dark, rgba)

    # Return value handling
    rgba
  end

  def self.breakpoint_condition_parse(str : ::String) : Adw::BreakpointCondition
    # adw_breakpoint_condition_parse: (None)
    # @str:
    # Returns: (transfer full)

    # C call
    _retval = LibAdw.adw_breakpoint_condition_parse(str)

    # Return value handling
    Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::Full)
  end

  def self.easing_ease(self _self : Adw::Easing, value : Float64) : Float64
    # adw_easing_ease: (None)
    # @self:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibAdw.adw_easing_ease(_self, value)

    # Return value handling
    _retval
  end

  def self.enable_animations(widget : Gtk::Widget) : Bool
    # adw_get_enable_animations: (None)
    # @widget:
    # Returns: (transfer none)

    # C call
    _retval = LibAdw.adw_get_enable_animations(widget)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.major_version : UInt32
    # adw_get_major_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibAdw.adw_get_major_version

    # Return value handling
    _retval
  end

  def self.micro_version : UInt32
    # adw_get_micro_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibAdw.adw_get_micro_version

    # Return value handling
    _retval
  end

  def self.minor_version : UInt32
    # adw_get_minor_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibAdw.adw_get_minor_version

    # Return value handling
    _retval
  end

  def self.init : Nil
    # adw_init: (None)
    # Returns: (transfer none)

    # C call
    LibAdw.adw_init

    # Return value handling
  end

  def self.is_initialized : Bool
    # adw_is_initialized: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibAdw.adw_is_initialized

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.length_unit_from_px(unit : Adw::LengthUnit, value : Float64, settings : Gtk::Settings?) : Float64
    # adw_length_unit_from_px: (None)
    # @unit:
    # @value:
    # @settings: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    settings = if settings.nil?
                 Pointer(Void).null
               else
                 settings.to_unsafe
               end

    # C call
    _retval = LibAdw.adw_length_unit_from_px(unit, value, settings)

    # Return value handling
    _retval
  end

  def self.length_unit_to_px(unit : Adw::LengthUnit, value : Float64, settings : Gtk::Settings?) : Float64
    # adw_length_unit_to_px: (None)
    # @unit:
    # @value:
    # @settings: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    settings = if settings.nil?
                 Pointer(Void).null
               else
                 settings.to_unsafe
               end

    # C call
    _retval = LibAdw.adw_length_unit_to_px(unit, value, settings)

    # Return value handling
    _retval
  end

  def self.lerp(a : Float64, b : Float64, t : Float64) : Float64
    # adw_lerp: (None)
    # @a:
    # @b:
    # @t:
    # Returns: (transfer none)

    # C call
    _retval = LibAdw.adw_lerp(a, b, t)

    # Return value handling
    _retval
  end

  def self.rgba_to_standalone(rgba : Gdk::RGBA, dark : Bool) : Gdk::RGBA
    # adw_rgba_to_standalone: (None)
    # @rgba:
    # @dark:
    # @standalone_rgba: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    standalone_rgba = Gdk::RGBA.new
    # C call
    LibAdw.adw_rgba_to_standalone(rgba, dark, standalone_rgba)

    # Return value handling
    standalone_rgba
  end

  # Errors

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    Gtk.gerror_to_crystal?(error, transfer)
    Gio.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../../../libadwaita/src/bindings/about_window.cr"
