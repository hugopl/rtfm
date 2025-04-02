@[Link("adwaita-1", pkg_config: "adwaita-1")]
lib LibAdw
  # Flags
  type TabViewShortcuts = UInt32

  # Enums
  type AccentColor = UInt32
  type AnimationState = UInt32
  type BannerButtonStyle = UInt32
  type BreakpointConditionLengthType = UInt32
  type BreakpointConditionRatioType = UInt32
  type CenteringPolicy = UInt32
  type ColorScheme = UInt32
  type DialogPresentationMode = UInt32
  type Easing = UInt32
  type FlapFoldPolicy = UInt32
  type FlapTransitionType = UInt32
  type FoldThresholdPolicy = UInt32
  type InlineViewSwitcherDisplayMode = UInt32
  type JustifyMode = UInt32
  type LeafletTransitionType = UInt32
  type LengthUnit = UInt32
  type NavigationDirection = UInt32
  type PackDirection = UInt32
  type ResponseAppearance = UInt32
  type SqueezerTransitionType = UInt32
  type ToastPriority = UInt32
  type ToolbarStyle = UInt32
  type ViewSwitcherPolicy = UInt32
  type WrapPolicy = UInt32

  # Callbacks
  alias AnimationTargetFunc = Float64, Pointer(Void) -> Void

  # Interface types
  type Swipeable = Void

  # Structs

  struct AboutDialogClass # 456 bytes long
    parent_class : LibAdw::DialogClass
  end

  struct AboutWindowClass # 544 bytes long
    parent_class : LibAdw::WindowClass
  end

  struct ActionRowClass # 552 bytes long
    parent_class : LibAdw::PreferencesRowClass
    activate : Void*
    padding : Pointer(Void)[4]
  end

  struct AlertDialogClass # 496 bytes long
    parent_class : LibAdw::DialogClass
    response : Void*
    padding : Pointer(Void)[4]
  end

  type AnimationClass = Void # Struct with zero bytes

  type AnimationTargetClass = Void # Struct with zero bytes

  struct ApplicationClass # 424 bytes long
    parent_class : LibGtk::ApplicationClass
    padding : Pointer(Void)[4]
  end

  struct ApplicationWindowClass # 608 bytes long
    parent_class : LibGtk::ApplicationWindowClass
    padding : Pointer(Void)[4]
  end

  struct AvatarClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct BannerClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct BinClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct BottomSheetClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct BreakpointBinClass # 440 bytes long
    parent_class : LibGtk::WidgetClass
    padding : Pointer(Void)[4]
  end

  struct BreakpointClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  type BreakpointCondition = Void # Struct with zero bytes

  struct ButtonContentClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ButtonRowClass # 512 bytes long
    parent_class : LibAdw::PreferencesRowClass
  end

  type CallbackAnimationTargetClass = Void # Struct with zero bytes

  struct CarouselClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct CarouselIndicatorDotsClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct CarouselIndicatorLinesClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ClampClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ClampLayoutClass # 320 bytes long
    parent_class : LibGtk::LayoutManagerClass
  end

  struct ClampScrollableClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ComboRowClass # 584 bytes long
    parent_class : LibAdw::ActionRowClass
    padding : Pointer(Void)[4]
  end

  struct DialogClass # 456 bytes long
    parent_class : LibGtk::WidgetClass
    close_attempt : Void*
    closed : Void*
    padding : Pointer(Void)[4]
  end

  struct EntryRowClass # 512 bytes long
    parent_class : LibAdw::PreferencesRowClass
  end

  struct EnumListItemClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct EnumListModelClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ExpanderRowClass # 544 bytes long
    parent_class : LibAdw::PreferencesRowClass
    padding : Pointer(Void)[4]
  end

  struct FlapClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct HeaderBarClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct InlineViewSwitcherClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct LayoutClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct LayoutSlotClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct LeafletClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct LeafletPageClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct MessageDialogClass # 552 bytes long
    parent_class : LibGtk::WindowClass
    response : Void*
    padding : Pointer(Void)[4]
  end

  struct MultiLayoutViewClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct NavigationPageClass # 504 bytes long
    parent_class : LibGtk::WidgetClass
    showing : Void*
    shown : Void*
    hiding : Void*
    hidden : Void*
    padding : Pointer(Void)[8]
  end

  struct NavigationSplitViewClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct NavigationViewClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct OverlaySplitViewClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct PasswordEntryRowClass # 512 bytes long
    parent_class : LibAdw::EntryRowClass
  end

  struct PreferencesDialogClass # 488 bytes long
    parent_class : LibAdw::DialogClass
    padding : Pointer(Void)[4]
  end

  struct PreferencesGroupClass # 440 bytes long
    parent_class : LibGtk::WidgetClass
    padding : Pointer(Void)[4]
  end

  struct PreferencesPageClass # 440 bytes long
    parent_class : LibGtk::WidgetClass
    padding : Pointer(Void)[4]
  end

  struct PreferencesRowClass # 512 bytes long
    parent_class : LibGtk::ListBoxRowClass
    padding : Pointer(Void)[4]
  end

  struct PreferencesWindowClass # 576 bytes long
    parent_class : LibAdw::WindowClass
    padding : Pointer(Void)[4]
  end

  type PropertyAnimationTargetClass = Void # Struct with zero bytes

  struct SpinRowClass # 552 bytes long
    parent_class : LibAdw::ActionRowClass
  end

  struct SpinnerClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct SpinnerPaintableClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct SplitButtonClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  type SpringAnimationClass = Void # Struct with zero bytes

  type SpringParams = Void # Struct with zero bytes

  struct SqueezerClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct SqueezerPageClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct StatusPageClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct StyleManagerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct SwipeTrackerClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct SwipeableInterface # 88 bytes long
    parent : LibGObject::TypeInterface
    get_distance : Void*
    get_snap_points : Void*
    get_progress : Void*
    get_cancel_progress : Void*
    get_swipe_area : Void*
    padding : Pointer(Void)[4]
  end

  struct SwitchRowClass # 552 bytes long
    parent_class : LibAdw::ActionRowClass
  end

  struct TabBarClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct TabButtonClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct TabOverviewClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct TabPageClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct TabViewClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  type TimedAnimationClass = Void # Struct with zero bytes

  struct ToastClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ToastOverlayClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ToggleClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ToggleGroupClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ToolbarViewClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ViewStackClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ViewStackPageClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ViewStackPagesClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ViewSwitcherBarClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ViewSwitcherClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct ViewSwitcherTitleClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct WindowClass # 544 bytes long
    parent_class : LibGtk::WindowClass
    padding : Pointer(Void)[4]
  end

  struct WindowTitleClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct WrapBoxClass # 408 bytes long
    parent_class : LibGtk::WidgetClass
  end

  struct WrapLayoutClass # 320 bytes long
    parent_class : LibGtk::LayoutManagerClass
  end

  # Unions

  # Objects
  type AboutDialog = Void # Object struct with no fields

  type AboutWindow = Void # Object struct with no fields

  struct ActionRow
    parent_instance : LibAdw::PreferencesRow
  end

  struct AlertDialog
    parent_instance : LibAdw::Dialog
  end

  struct Animation
    parent_instance : LibGObject::Object
  end

  type AnimationTarget = Void # Object struct with no fields

  struct Application
    parent_instance : LibGtk::Application
  end

  struct ApplicationWindow
    parent_instance : LibGtk::ApplicationWindow
  end

  type Avatar = Void # Object struct with no fields

  type Banner = Void # Object struct with no fields

  struct Bin
    parent_instance : LibGtk::Widget
  end

  type BottomSheet = Void # Object struct with no fields

  type Breakpoint = Void # Object struct with no fields

  struct BreakpointBin
    parent_instance : LibGtk::Widget
  end

  type ButtonContent = Void # Object struct with no fields

  type ButtonRow = Void # Object struct with no fields

  type CallbackAnimationTarget = Void # Object struct with no fields

  type Carousel = Void # Object struct with no fields

  type CarouselIndicatorDots = Void # Object struct with no fields

  type CarouselIndicatorLines = Void # Object struct with no fields

  type Clamp = Void # Object struct with no fields

  type ClampLayout = Void # Object struct with no fields

  type ClampScrollable = Void # Object struct with no fields

  struct ComboRow
    parent_instance : LibAdw::ActionRow
  end

  struct Dialog
    parent_instance : LibGtk::Widget
  end

  struct EntryRow
    parent_instance : LibAdw::PreferencesRow
  end

  type EnumListItem = Void # Object struct with no fields

  type EnumListModel = Void # Object struct with no fields

  struct ExpanderRow
    parent_instance : LibAdw::PreferencesRow
  end

  type Flap = Void # Object struct with no fields

  type HeaderBar = Void # Object struct with no fields

  type InlineViewSwitcher = Void # Object struct with no fields

  type Layout = Void # Object struct with no fields

  type LayoutSlot = Void # Object struct with no fields

  type Leaflet = Void # Object struct with no fields

  type LeafletPage = Void # Object struct with no fields

  struct MessageDialog
    parent_instance : LibGtk::Window
  end

  type MultiLayoutView = Void # Object struct with no fields

  struct NavigationPage
    parent_instance : LibGtk::Widget
  end

  type NavigationSplitView = Void # Object struct with no fields

  type NavigationView = Void # Object struct with no fields

  type OverlaySplitView = Void # Object struct with no fields

  type PasswordEntryRow = Void # Object struct with no fields

  struct PreferencesDialog
    parent_instance : LibAdw::Dialog
  end

  struct PreferencesGroup
    parent_instance : LibGtk::Widget
  end

  struct PreferencesPage
    parent_instance : LibGtk::Widget
  end

  struct PreferencesRow
    parent_instance : LibGtk::ListBoxRow
  end

  struct PreferencesWindow
    parent_instance : LibAdw::Window
  end

  type PropertyAnimationTarget = Void # Object struct with no fields

  type SpinRow = Void # Object struct with no fields

  type Spinner = Void # Object struct with no fields

  type SpinnerPaintable = Void # Object struct with no fields

  type SplitButton = Void # Object struct with no fields

  type SpringAnimation = Void # Object struct with no fields

  type Squeezer = Void # Object struct with no fields

  type SqueezerPage = Void # Object struct with no fields

  type StatusPage = Void # Object struct with no fields

  type StyleManager = Void # Object struct with no fields

  type SwipeTracker = Void # Object struct with no fields

  type SwitchRow = Void # Object struct with no fields

  type TabBar = Void # Object struct with no fields

  type TabButton = Void # Object struct with no fields

  type TabOverview = Void # Object struct with no fields

  type TabPage = Void # Object struct with no fields

  type TabView = Void # Object struct with no fields

  type TimedAnimation = Void # Object struct with no fields

  type Toast = Void # Object struct with no fields

  type ToastOverlay = Void # Object struct with no fields

  type Toggle = Void # Object struct with no fields

  type ToggleGroup = Void # Object struct with no fields

  type ToolbarView = Void # Object struct with no fields

  type ViewStack = Void # Object struct with no fields

  type ViewStackPage = Void # Object struct with no fields

  type ViewStackPages = Void # Object struct with no fields

  type ViewSwitcher = Void # Object struct with no fields

  type ViewSwitcherBar = Void # Object struct with no fields

  type ViewSwitcherTitle = Void # Object struct with no fields

  struct Window
    parent_instance : LibGtk::Window
  end

  type WindowTitle = Void # Object struct with no fields

  type WrapBox = Void # Object struct with no fields

  type WrapLayout = Void # Object struct with no fields

  # All C Functions
  fun adw_about_dialog_add_acknowledgement_section(this : Void*, name : Pointer(LibC::Char), people : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_dialog_add_credit_section(this : Void*, name : Pointer(LibC::Char), people : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_dialog_add_legal_section(this : Void*, title : Pointer(LibC::Char), copyright : Pointer(LibC::Char), license_type : UInt32, license : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_add_link(this : Void*, title : Pointer(LibC::Char), url : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_add_other_app(this : Void*, appid : Pointer(LibC::Char), name : Pointer(LibC::Char), summary : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_get_application_icon(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_application_name(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_artists(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_dialog_get_comments(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_copyright(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_debug_info(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_debug_info_filename(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_designers(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_dialog_get_developer_name(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_developers(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_dialog_get_documenters(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_dialog_get_issue_url(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_license(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_license_type(this : Void*) : UInt32
  fun adw_about_dialog_get_release_notes(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_release_notes_version(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_support_url(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_translator_credits(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_type : UInt64
  fun adw_about_dialog_get_version(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_get_website(this : Void*) : Pointer(LibC::Char)
  fun adw_about_dialog_new : Pointer(Void)
  fun adw_about_dialog_new_from_appdata(resource_path : Pointer(LibC::Char), release_notes_version : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_about_dialog_set_application_icon(this : Void*, application_icon : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_application_name(this : Void*, application_name : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_artists(this : Void*, artists : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_dialog_set_comments(this : Void*, comments : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_copyright(this : Void*, copyright : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_debug_info(this : Void*, debug_info : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_debug_info_filename(this : Void*, filename : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_designers(this : Void*, designers : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_dialog_set_developer_name(this : Void*, developer_name : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_developers(this : Void*, developers : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_dialog_set_documenters(this : Void*, documenters : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_dialog_set_issue_url(this : Void*, issue_url : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_license(this : Void*, license : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_license_type(this : Void*, license_type : UInt32) : Void
  fun adw_about_dialog_set_release_notes(this : Void*, release_notes : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_release_notes_version(this : Void*, version : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_support_url(this : Void*, support_url : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_translator_credits(this : Void*, translator_credits : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_version(this : Void*, version : Pointer(LibC::Char)) : Void
  fun adw_about_dialog_set_website(this : Void*, website : Pointer(LibC::Char)) : Void
  fun adw_about_window_add_acknowledgement_section(this : Void*, name : Pointer(LibC::Char), people : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_window_add_credit_section(this : Void*, name : Pointer(LibC::Char), people : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_window_add_legal_section(this : Void*, title : Pointer(LibC::Char), copyright : Pointer(LibC::Char), license_type : UInt32, license : Pointer(LibC::Char)) : Void
  fun adw_about_window_add_link(this : Void*, title : Pointer(LibC::Char), url : Pointer(LibC::Char)) : Void
  fun adw_about_window_get_application_icon(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_application_name(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_artists(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_window_get_comments(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_copyright(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_debug_info(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_debug_info_filename(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_designers(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_window_get_developer_name(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_developers(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_window_get_documenters(this : Void*) : Pointer(Pointer(LibC::Char))
  fun adw_about_window_get_issue_url(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_license(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_license_type(this : Void*) : UInt32
  fun adw_about_window_get_release_notes(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_release_notes_version(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_support_url(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_translator_credits(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_type : UInt64
  fun adw_about_window_get_version(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_get_website(this : Void*) : Pointer(LibC::Char)
  fun adw_about_window_new : Pointer(Void)
  fun adw_about_window_new_from_appdata(resource_path : Pointer(LibC::Char), release_notes_version : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_about_window_set_application_icon(this : Void*, application_icon : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_application_name(this : Void*, application_name : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_artists(this : Void*, artists : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_window_set_comments(this : Void*, comments : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_copyright(this : Void*, copyright : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_debug_info(this : Void*, debug_info : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_debug_info_filename(this : Void*, filename : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_designers(this : Void*, designers : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_window_set_developer_name(this : Void*, developer_name : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_developers(this : Void*, developers : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_window_set_documenters(this : Void*, documenters : Pointer(Pointer(LibC::Char))) : Void
  fun adw_about_window_set_issue_url(this : Void*, issue_url : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_license(this : Void*, license : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_license_type(this : Void*, license_type : UInt32) : Void
  fun adw_about_window_set_release_notes(this : Void*, release_notes : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_release_notes_version(this : Void*, version : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_support_url(this : Void*, support_url : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_translator_credits(this : Void*, translator_credits : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_version(this : Void*, version : Pointer(LibC::Char)) : Void
  fun adw_about_window_set_website(this : Void*, website : Pointer(LibC::Char)) : Void
  fun adw_accent_color_get_type : UInt64
  fun adw_accent_color_to_rgba(_self : UInt32, rgba : Pointer(Void)) : Void
  fun adw_accent_color_to_standalone_rgba(_self : UInt32, dark : LibC::Int, rgba : Pointer(Void)) : Void
  fun adw_action_row_activate(this : Void*) : Void
  fun adw_action_row_add_prefix(this : Void*, widget : Pointer(Void)) : Void
  fun adw_action_row_add_suffix(this : Void*, widget : Pointer(Void)) : Void
  fun adw_action_row_get_activatable_widget(this : Void*) : Pointer(Void)
  fun adw_action_row_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_action_row_get_subtitle(this : Void*) : Pointer(LibC::Char)
  fun adw_action_row_get_subtitle_lines(this : Void*) : Int32
  fun adw_action_row_get_subtitle_selectable(this : Void*) : LibC::Int
  fun adw_action_row_get_title_lines(this : Void*) : Int32
  fun adw_action_row_get_type : UInt64
  fun adw_action_row_new : Pointer(Void)
  fun adw_action_row_remove(this : Void*, widget : Pointer(Void)) : Void
  fun adw_action_row_set_activatable_widget(this : Void*, widget : Pointer(Void)) : Void
  fun adw_action_row_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_action_row_set_subtitle(this : Void*, subtitle : Pointer(LibC::Char)) : Void
  fun adw_action_row_set_subtitle_lines(this : Void*, subtitle_lines : Int32) : Void
  fun adw_action_row_set_subtitle_selectable(this : Void*, subtitle_selectable : LibC::Int) : Void
  fun adw_action_row_set_title_lines(this : Void*, title_lines : Int32) : Void
  fun adw_alert_dialog_add_response(this : Void*, id : Pointer(LibC::Char), label : Pointer(LibC::Char)) : Void
  fun adw_alert_dialog_choose(this : Void*, parent : Pointer(Void), cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun adw_alert_dialog_choose_finish(this : Void*, result : Pointer(Void)) : Pointer(LibC::Char)
  fun adw_alert_dialog_get_body(this : Void*) : Pointer(LibC::Char)
  fun adw_alert_dialog_get_body_use_markup(this : Void*) : LibC::Int
  fun adw_alert_dialog_get_close_response(this : Void*) : Pointer(LibC::Char)
  fun adw_alert_dialog_get_default_response(this : Void*) : Pointer(LibC::Char)
  fun adw_alert_dialog_get_extra_child(this : Void*) : Pointer(Void)
  fun adw_alert_dialog_get_heading(this : Void*) : Pointer(LibC::Char)
  fun adw_alert_dialog_get_heading_use_markup(this : Void*) : LibC::Int
  fun adw_alert_dialog_get_prefer_wide_layout(this : Void*) : LibC::Int
  fun adw_alert_dialog_get_response_appearance(this : Void*, response : Pointer(LibC::Char)) : UInt32
  fun adw_alert_dialog_get_response_enabled(this : Void*, response : Pointer(LibC::Char)) : LibC::Int
  fun adw_alert_dialog_get_response_label(this : Void*, response : Pointer(LibC::Char)) : Pointer(LibC::Char)
  fun adw_alert_dialog_get_type : UInt64
  fun adw_alert_dialog_has_response(this : Void*, response : Pointer(LibC::Char)) : LibC::Int
  fun adw_alert_dialog_new(heading : Pointer(LibC::Char), body : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_alert_dialog_remove_response(this : Void*, id : Pointer(LibC::Char)) : Void
  fun adw_alert_dialog_set_body(this : Void*, body : Pointer(LibC::Char)) : Void
  fun adw_alert_dialog_set_body_use_markup(this : Void*, use_markup : LibC::Int) : Void
  fun adw_alert_dialog_set_close_response(this : Void*, response : Pointer(LibC::Char)) : Void
  fun adw_alert_dialog_set_default_response(this : Void*, response : Pointer(LibC::Char)) : Void
  fun adw_alert_dialog_set_extra_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_alert_dialog_set_heading(this : Void*, heading : Pointer(LibC::Char)) : Void
  fun adw_alert_dialog_set_heading_use_markup(this : Void*, use_markup : LibC::Int) : Void
  fun adw_alert_dialog_set_prefer_wide_layout(this : Void*, prefer_wide_layout : LibC::Int) : Void
  fun adw_alert_dialog_set_response_appearance(this : Void*, response : Pointer(LibC::Char), appearance : UInt32) : Void
  fun adw_alert_dialog_set_response_enabled(this : Void*, response : Pointer(LibC::Char), enabled : LibC::Int) : Void
  fun adw_alert_dialog_set_response_label(this : Void*, response : Pointer(LibC::Char), label : Pointer(LibC::Char)) : Void
  fun adw_animation_get_follow_enable_animations_setting(this : Void*) : LibC::Int
  fun adw_animation_get_state(this : Void*) : UInt32
  fun adw_animation_get_target(this : Void*) : Pointer(Void)
  fun adw_animation_get_type : UInt64
  fun adw_animation_get_value(this : Void*) : Float64
  fun adw_animation_get_widget(this : Void*) : Pointer(Void)
  fun adw_animation_pause(this : Void*) : Void
  fun adw_animation_play(this : Void*) : Void
  fun adw_animation_reset(this : Void*) : Void
  fun adw_animation_resume(this : Void*) : Void
  fun adw_animation_set_follow_enable_animations_setting(this : Void*, setting : LibC::Int) : Void
  fun adw_animation_set_target(this : Void*, target : Pointer(Void)) : Void
  fun adw_animation_skip(this : Void*) : Void
  fun adw_animation_state_get_type : UInt64
  fun adw_animation_target_get_type : UInt64
  fun adw_application_get_style_manager(this : Void*) : Pointer(Void)
  fun adw_application_get_type : UInt64
  fun adw_application_new(application_id : Pointer(LibC::Char), flags : UInt32) : Pointer(Void)
  fun adw_application_window_add_breakpoint(this : Void*, breakpoint : Pointer(Void)) : Void
  fun adw_application_window_get_adaptive_preview(this : Void*) : LibC::Int
  fun adw_application_window_get_content(this : Void*) : Pointer(Void)
  fun adw_application_window_get_current_breakpoint(this : Void*) : Pointer(Void)
  fun adw_application_window_get_dialogs(this : Void*) : Pointer(Void)
  fun adw_application_window_get_type : UInt64
  fun adw_application_window_get_visible_dialog(this : Void*) : Pointer(Void)
  fun adw_application_window_new(app : Pointer(Void)) : Pointer(Void)
  fun adw_application_window_set_adaptive_preview(this : Void*, adaptive_preview : LibC::Int) : Void
  fun adw_application_window_set_content(this : Void*, content : Pointer(Void)) : Void
  fun adw_avatar_draw_to_texture(this : Void*, scale_factor : Int32) : Pointer(Void)
  fun adw_avatar_get_custom_image(this : Void*) : Pointer(Void)
  fun adw_avatar_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_avatar_get_show_initials(this : Void*) : LibC::Int
  fun adw_avatar_get_size(this : Void*) : Int32
  fun adw_avatar_get_text(this : Void*) : Pointer(LibC::Char)
  fun adw_avatar_get_type : UInt64
  fun adw_avatar_new(size : Int32, text : Pointer(LibC::Char), show_initials : LibC::Int) : Pointer(Void)
  fun adw_avatar_set_custom_image(this : Void*, custom_image : Pointer(Void)) : Void
  fun adw_avatar_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_avatar_set_show_initials(this : Void*, show_initials : LibC::Int) : Void
  fun adw_avatar_set_size(this : Void*, size : Int32) : Void
  fun adw_avatar_set_text(this : Void*, text : Pointer(LibC::Char)) : Void
  fun adw_banner_button_style_get_type : UInt64
  fun adw_banner_get_button_label(this : Void*) : Pointer(LibC::Char)
  fun adw_banner_get_button_style(this : Void*) : UInt32
  fun adw_banner_get_revealed(this : Void*) : LibC::Int
  fun adw_banner_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_banner_get_type : UInt64
  fun adw_banner_get_use_markup(this : Void*) : LibC::Int
  fun adw_banner_new(title : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_banner_set_button_label(this : Void*, label : Pointer(LibC::Char)) : Void
  fun adw_banner_set_button_style(this : Void*, style : UInt32) : Void
  fun adw_banner_set_revealed(this : Void*, revealed : LibC::Int) : Void
  fun adw_banner_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_banner_set_use_markup(this : Void*, use_markup : LibC::Int) : Void
  fun adw_bin_get_child(this : Void*) : Pointer(Void)
  fun adw_bin_get_type : UInt64
  fun adw_bin_new : Pointer(Void)
  fun adw_bin_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_bottom_sheet_get_align(this : Void*) : Float32
  fun adw_bottom_sheet_get_bottom_bar(this : Void*) : Pointer(Void)
  fun adw_bottom_sheet_get_bottom_bar_height(this : Void*) : Int32
  fun adw_bottom_sheet_get_can_close(this : Void*) : LibC::Int
  fun adw_bottom_sheet_get_can_open(this : Void*) : LibC::Int
  fun adw_bottom_sheet_get_content(this : Void*) : Pointer(Void)
  fun adw_bottom_sheet_get_full_width(this : Void*) : LibC::Int
  fun adw_bottom_sheet_get_modal(this : Void*) : LibC::Int
  fun adw_bottom_sheet_get_open(this : Void*) : LibC::Int
  fun adw_bottom_sheet_get_reveal_bottom_bar(this : Void*) : LibC::Int
  fun adw_bottom_sheet_get_sheet(this : Void*) : Pointer(Void)
  fun adw_bottom_sheet_get_sheet_height(this : Void*) : Int32
  fun adw_bottom_sheet_get_show_drag_handle(this : Void*) : LibC::Int
  fun adw_bottom_sheet_get_type : UInt64
  fun adw_bottom_sheet_new : Pointer(Void)
  fun adw_bottom_sheet_set_align(this : Void*, align : Float32) : Void
  fun adw_bottom_sheet_set_bottom_bar(this : Void*, bottom_bar : Pointer(Void)) : Void
  fun adw_bottom_sheet_set_can_close(this : Void*, can_close : LibC::Int) : Void
  fun adw_bottom_sheet_set_can_open(this : Void*, can_open : LibC::Int) : Void
  fun adw_bottom_sheet_set_content(this : Void*, content : Pointer(Void)) : Void
  fun adw_bottom_sheet_set_full_width(this : Void*, full_width : LibC::Int) : Void
  fun adw_bottom_sheet_set_modal(this : Void*, modal : LibC::Int) : Void
  fun adw_bottom_sheet_set_open(this : Void*, open : LibC::Int) : Void
  fun adw_bottom_sheet_set_reveal_bottom_bar(this : Void*, reveal : LibC::Int) : Void
  fun adw_bottom_sheet_set_sheet(this : Void*, sheet : Pointer(Void)) : Void
  fun adw_bottom_sheet_set_show_drag_handle(this : Void*, show_drag_handle : LibC::Int) : Void
  fun adw_breakpoint_add_setter(this : Void*, object : Pointer(Void), property : Pointer(LibC::Char), value : Pointer(Void)) : Void
  fun adw_breakpoint_add_settersv(this : Void*, n_setters : Int32, objects : Pointer(Pointer(LibGObject::Object)), names : Pointer(Pointer(LibC::Char)), values : Pointer(Pointer(LibGObject::Value))) : Void
  fun adw_breakpoint_bin_add_breakpoint(this : Void*, breakpoint : Pointer(Void)) : Void
  fun adw_breakpoint_bin_get_child(this : Void*) : Pointer(Void)
  fun adw_breakpoint_bin_get_current_breakpoint(this : Void*) : Pointer(Void)
  fun adw_breakpoint_bin_get_type : UInt64
  fun adw_breakpoint_bin_new : Pointer(Void)
  fun adw_breakpoint_bin_remove_breakpoint(this : Void*, breakpoint : Pointer(Void)) : Void
  fun adw_breakpoint_bin_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_breakpoint_condition_copy(this : Void*) : Pointer(Void)
  fun adw_breakpoint_condition_free(this : Void*) : Void
  fun adw_breakpoint_condition_get_type : UInt64
  fun adw_breakpoint_condition_length_type_get_type : UInt64
  fun adw_breakpoint_condition_new_and(condition_1 : Pointer(Void), condition_2 : Pointer(Void)) : Pointer(Void)
  fun adw_breakpoint_condition_new_length(type : UInt32, value : Float64, unit : UInt32) : Pointer(Void)
  fun adw_breakpoint_condition_new_or(condition_1 : Pointer(Void), condition_2 : Pointer(Void)) : Pointer(Void)
  fun adw_breakpoint_condition_new_ratio(type : UInt32, width : Int32, height : Int32) : Pointer(Void)
  fun adw_breakpoint_condition_parse(str : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_breakpoint_condition_parse(str : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_breakpoint_condition_ratio_type_get_type : UInt64
  fun adw_breakpoint_condition_to_string(this : Void*) : Pointer(LibC::Char)
  fun adw_breakpoint_get_condition(this : Void*) : Pointer(Void)
  fun adw_breakpoint_get_type : UInt64
  fun adw_breakpoint_new(condition : Pointer(Void)) : Pointer(Void)
  fun adw_breakpoint_set_condition(this : Void*, condition : Pointer(Void)) : Void
  fun adw_button_content_get_can_shrink(this : Void*) : LibC::Int
  fun adw_button_content_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_button_content_get_label(this : Void*) : Pointer(LibC::Char)
  fun adw_button_content_get_type : UInt64
  fun adw_button_content_get_use_underline(this : Void*) : LibC::Int
  fun adw_button_content_new : Pointer(Void)
  fun adw_button_content_set_can_shrink(this : Void*, can_shrink : LibC::Int) : Void
  fun adw_button_content_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_button_content_set_label(this : Void*, label : Pointer(LibC::Char)) : Void
  fun adw_button_content_set_use_underline(this : Void*, use_underline : LibC::Int) : Void
  fun adw_button_row_get_end_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_button_row_get_start_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_button_row_get_type : UInt64
  fun adw_button_row_new : Pointer(Void)
  fun adw_button_row_set_end_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_button_row_set_start_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_callback_animation_target_get_type : UInt64
  fun adw_callback_animation_target_new(callback : Void*, user_data : Pointer(Void), destroy : Void*) : Pointer(Void)
  fun adw_carousel_append(this : Void*, child : Pointer(Void)) : Void
  fun adw_carousel_get_allow_long_swipes(this : Void*) : LibC::Int
  fun adw_carousel_get_allow_mouse_drag(this : Void*) : LibC::Int
  fun adw_carousel_get_allow_scroll_wheel(this : Void*) : LibC::Int
  fun adw_carousel_get_interactive(this : Void*) : LibC::Int
  fun adw_carousel_get_n_pages(this : Void*) : UInt32
  fun adw_carousel_get_nth_page(this : Void*, n : UInt32) : Pointer(Void)
  fun adw_carousel_get_position(this : Void*) : Float64
  fun adw_carousel_get_reveal_duration(this : Void*) : UInt32
  fun adw_carousel_get_scroll_params(this : Void*) : Pointer(Void)
  fun adw_carousel_get_spacing(this : Void*) : UInt32
  fun adw_carousel_get_type : UInt64
  fun adw_carousel_indicator_dots_get_carousel(this : Void*) : Pointer(Void)
  fun adw_carousel_indicator_dots_get_type : UInt64
  fun adw_carousel_indicator_dots_new : Pointer(Void)
  fun adw_carousel_indicator_dots_set_carousel(this : Void*, carousel : Pointer(Void)) : Void
  fun adw_carousel_indicator_lines_get_carousel(this : Void*) : Pointer(Void)
  fun adw_carousel_indicator_lines_get_type : UInt64
  fun adw_carousel_indicator_lines_new : Pointer(Void)
  fun adw_carousel_indicator_lines_set_carousel(this : Void*, carousel : Pointer(Void)) : Void
  fun adw_carousel_insert(this : Void*, child : Pointer(Void), position : Int32) : Void
  fun adw_carousel_new : Pointer(Void)
  fun adw_carousel_prepend(this : Void*, child : Pointer(Void)) : Void
  fun adw_carousel_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_carousel_reorder(this : Void*, child : Pointer(Void), position : Int32) : Void
  fun adw_carousel_scroll_to(this : Void*, widget : Pointer(Void), animate : LibC::Int) : Void
  fun adw_carousel_set_allow_long_swipes(this : Void*, allow_long_swipes : LibC::Int) : Void
  fun adw_carousel_set_allow_mouse_drag(this : Void*, allow_mouse_drag : LibC::Int) : Void
  fun adw_carousel_set_allow_scroll_wheel(this : Void*, allow_scroll_wheel : LibC::Int) : Void
  fun adw_carousel_set_interactive(this : Void*, interactive : LibC::Int) : Void
  fun adw_carousel_set_reveal_duration(this : Void*, reveal_duration : UInt32) : Void
  fun adw_carousel_set_scroll_params(this : Void*, params : Pointer(Void)) : Void
  fun adw_carousel_set_spacing(this : Void*, spacing : UInt32) : Void
  fun adw_centering_policy_get_type : UInt64
  fun adw_clamp_get_child(this : Void*) : Pointer(Void)
  fun adw_clamp_get_maximum_size(this : Void*) : Int32
  fun adw_clamp_get_tightening_threshold(this : Void*) : Int32
  fun adw_clamp_get_type : UInt64
  fun adw_clamp_get_unit(this : Void*) : UInt32
  fun adw_clamp_layout_get_maximum_size(this : Void*) : Int32
  fun adw_clamp_layout_get_tightening_threshold(this : Void*) : Int32
  fun adw_clamp_layout_get_type : UInt64
  fun adw_clamp_layout_get_unit(this : Void*) : UInt32
  fun adw_clamp_layout_new : Pointer(Void)
  fun adw_clamp_layout_set_maximum_size(this : Void*, maximum_size : Int32) : Void
  fun adw_clamp_layout_set_tightening_threshold(this : Void*, tightening_threshold : Int32) : Void
  fun adw_clamp_layout_set_unit(this : Void*, unit : UInt32) : Void
  fun adw_clamp_new : Pointer(Void)
  fun adw_clamp_scrollable_get_child(this : Void*) : Pointer(Void)
  fun adw_clamp_scrollable_get_maximum_size(this : Void*) : Int32
  fun adw_clamp_scrollable_get_tightening_threshold(this : Void*) : Int32
  fun adw_clamp_scrollable_get_type : UInt64
  fun adw_clamp_scrollable_get_unit(this : Void*) : UInt32
  fun adw_clamp_scrollable_new : Pointer(Void)
  fun adw_clamp_scrollable_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_clamp_scrollable_set_maximum_size(this : Void*, maximum_size : Int32) : Void
  fun adw_clamp_scrollable_set_tightening_threshold(this : Void*, tightening_threshold : Int32) : Void
  fun adw_clamp_scrollable_set_unit(this : Void*, unit : UInt32) : Void
  fun adw_clamp_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_clamp_set_maximum_size(this : Void*, maximum_size : Int32) : Void
  fun adw_clamp_set_tightening_threshold(this : Void*, tightening_threshold : Int32) : Void
  fun adw_clamp_set_unit(this : Void*, unit : UInt32) : Void
  fun adw_color_scheme_get_type : UInt64
  fun adw_combo_row_get_enable_search(this : Void*) : LibC::Int
  fun adw_combo_row_get_expression(this : Void*) : Pointer(Void)
  fun adw_combo_row_get_factory(this : Void*) : Pointer(Void)
  fun adw_combo_row_get_header_factory(this : Void*) : Pointer(Void)
  fun adw_combo_row_get_list_factory(this : Void*) : Pointer(Void)
  fun adw_combo_row_get_model(this : Void*) : Pointer(Void)
  fun adw_combo_row_get_search_match_mode(this : Void*) : UInt32
  fun adw_combo_row_get_selected(this : Void*) : UInt32
  fun adw_combo_row_get_selected_item(this : Void*) : Pointer(Void)
  fun adw_combo_row_get_type : UInt64
  fun adw_combo_row_get_use_subtitle(this : Void*) : LibC::Int
  fun adw_combo_row_new : Pointer(Void)
  fun adw_combo_row_set_enable_search(this : Void*, enable_search : LibC::Int) : Void
  fun adw_combo_row_set_expression(this : Void*, expression : Pointer(Void)) : Void
  fun adw_combo_row_set_factory(this : Void*, factory : Pointer(Void)) : Void
  fun adw_combo_row_set_header_factory(this : Void*, factory : Pointer(Void)) : Void
  fun adw_combo_row_set_list_factory(this : Void*, factory : Pointer(Void)) : Void
  fun adw_combo_row_set_model(this : Void*, model : Pointer(Void)) : Void
  fun adw_combo_row_set_search_match_mode(this : Void*, search_match_mode : UInt32) : Void
  fun adw_combo_row_set_selected(this : Void*, position : UInt32) : Void
  fun adw_combo_row_set_use_subtitle(this : Void*, use_subtitle : LibC::Int) : Void
  fun adw_dialog_add_breakpoint(this : Void*, breakpoint : Pointer(Void)) : Void
  fun adw_dialog_close(this : Void*) : LibC::Int
  fun adw_dialog_force_close(this : Void*) : Void
  fun adw_dialog_get_can_close(this : Void*) : LibC::Int
  fun adw_dialog_get_child(this : Void*) : Pointer(Void)
  fun adw_dialog_get_content_height(this : Void*) : Int32
  fun adw_dialog_get_content_width(this : Void*) : Int32
  fun adw_dialog_get_current_breakpoint(this : Void*) : Pointer(Void)
  fun adw_dialog_get_default_widget(this : Void*) : Pointer(Void)
  fun adw_dialog_get_focus(this : Void*) : Pointer(Void)
  fun adw_dialog_get_follows_content_size(this : Void*) : LibC::Int
  fun adw_dialog_get_presentation_mode(this : Void*) : UInt32
  fun adw_dialog_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_dialog_get_type : UInt64
  fun adw_dialog_new : Pointer(Void)
  fun adw_dialog_present(this : Void*, parent : Pointer(Void)) : Void
  fun adw_dialog_presentation_mode_get_type : UInt64
  fun adw_dialog_set_can_close(this : Void*, can_close : LibC::Int) : Void
  fun adw_dialog_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_dialog_set_content_height(this : Void*, content_height : Int32) : Void
  fun adw_dialog_set_content_width(this : Void*, content_width : Int32) : Void
  fun adw_dialog_set_default_widget(this : Void*, default_widget : Pointer(Void)) : Void
  fun adw_dialog_set_focus(this : Void*, focus : Pointer(Void)) : Void
  fun adw_dialog_set_follows_content_size(this : Void*, follows_content_size : LibC::Int) : Void
  fun adw_dialog_set_presentation_mode(this : Void*, presentation_mode : UInt32) : Void
  fun adw_dialog_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_easing_ease(_self : UInt32, value : Float64) : Float64
  fun adw_easing_get_type : UInt64
  fun adw_entry_row_add_prefix(this : Void*, widget : Pointer(Void)) : Void
  fun adw_entry_row_add_suffix(this : Void*, widget : Pointer(Void)) : Void
  fun adw_entry_row_get_activates_default(this : Void*) : LibC::Int
  fun adw_entry_row_get_attributes(this : Void*) : Pointer(Void)
  fun adw_entry_row_get_enable_emoji_completion(this : Void*) : LibC::Int
  fun adw_entry_row_get_input_hints(this : Void*) : UInt32
  fun adw_entry_row_get_input_purpose(this : Void*) : UInt32
  fun adw_entry_row_get_max_length(this : Void*) : Int32
  fun adw_entry_row_get_show_apply_button(this : Void*) : LibC::Int
  fun adw_entry_row_get_text_length(this : Void*) : UInt32
  fun adw_entry_row_get_type : UInt64
  fun adw_entry_row_grab_focus_without_selecting(this : Void*) : LibC::Int
  fun adw_entry_row_new : Pointer(Void)
  fun adw_entry_row_remove(this : Void*, widget : Pointer(Void)) : Void
  fun adw_entry_row_set_activates_default(this : Void*, activates : LibC::Int) : Void
  fun adw_entry_row_set_attributes(this : Void*, attributes : Pointer(Void)) : Void
  fun adw_entry_row_set_enable_emoji_completion(this : Void*, enable_emoji_completion : LibC::Int) : Void
  fun adw_entry_row_set_input_hints(this : Void*, hints : UInt32) : Void
  fun adw_entry_row_set_input_purpose(this : Void*, purpose : UInt32) : Void
  fun adw_entry_row_set_max_length(this : Void*, max_length : Int32) : Void
  fun adw_entry_row_set_show_apply_button(this : Void*, show_apply_button : LibC::Int) : Void
  fun adw_enum_list_item_get_name(this : Void*) : Pointer(LibC::Char)
  fun adw_enum_list_item_get_nick(this : Void*) : Pointer(LibC::Char)
  fun adw_enum_list_item_get_type : UInt64
  fun adw_enum_list_item_get_value(this : Void*) : Int32
  fun adw_enum_list_model_find_position(this : Void*, value : Int32) : UInt32
  fun adw_enum_list_model_get_enum_type(this : Void*) : UInt64
  fun adw_enum_list_model_get_type : UInt64
  fun adw_enum_list_model_new(enum_type : UInt64) : Pointer(Void)
  fun adw_expander_row_add_action(this : Void*, widget : Pointer(Void)) : Void
  fun adw_expander_row_add_prefix(this : Void*, widget : Pointer(Void)) : Void
  fun adw_expander_row_add_row(this : Void*, child : Pointer(Void)) : Void
  fun adw_expander_row_add_suffix(this : Void*, widget : Pointer(Void)) : Void
  fun adw_expander_row_get_enable_expansion(this : Void*) : LibC::Int
  fun adw_expander_row_get_expanded(this : Void*) : LibC::Int
  fun adw_expander_row_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_expander_row_get_show_enable_switch(this : Void*) : LibC::Int
  fun adw_expander_row_get_subtitle(this : Void*) : Pointer(LibC::Char)
  fun adw_expander_row_get_subtitle_lines(this : Void*) : Int32
  fun adw_expander_row_get_title_lines(this : Void*) : Int32
  fun adw_expander_row_get_type : UInt64
  fun adw_expander_row_new : Pointer(Void)
  fun adw_expander_row_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_expander_row_set_enable_expansion(this : Void*, enable_expansion : LibC::Int) : Void
  fun adw_expander_row_set_expanded(this : Void*, expanded : LibC::Int) : Void
  fun adw_expander_row_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_expander_row_set_show_enable_switch(this : Void*, show_enable_switch : LibC::Int) : Void
  fun adw_expander_row_set_subtitle(this : Void*, subtitle : Pointer(LibC::Char)) : Void
  fun adw_expander_row_set_subtitle_lines(this : Void*, subtitle_lines : Int32) : Void
  fun adw_expander_row_set_title_lines(this : Void*, title_lines : Int32) : Void
  fun adw_flap_fold_policy_get_type : UInt64
  fun adw_flap_get_content(this : Void*) : Pointer(Void)
  fun adw_flap_get_flap(this : Void*) : Pointer(Void)
  fun adw_flap_get_flap_position(this : Void*) : UInt32
  fun adw_flap_get_fold_duration(this : Void*) : UInt32
  fun adw_flap_get_fold_policy(this : Void*) : UInt32
  fun adw_flap_get_fold_threshold_policy(this : Void*) : UInt32
  fun adw_flap_get_folded(this : Void*) : LibC::Int
  fun adw_flap_get_locked(this : Void*) : LibC::Int
  fun adw_flap_get_modal(this : Void*) : LibC::Int
  fun adw_flap_get_reveal_flap(this : Void*) : LibC::Int
  fun adw_flap_get_reveal_params(this : Void*) : Pointer(Void)
  fun adw_flap_get_reveal_progress(this : Void*) : Float64
  fun adw_flap_get_separator(this : Void*) : Pointer(Void)
  fun adw_flap_get_swipe_to_close(this : Void*) : LibC::Int
  fun adw_flap_get_swipe_to_open(this : Void*) : LibC::Int
  fun adw_flap_get_transition_type(this : Void*) : UInt32
  fun adw_flap_get_type : UInt64
  fun adw_flap_new : Pointer(Void)
  fun adw_flap_set_content(this : Void*, content : Pointer(Void)) : Void
  fun adw_flap_set_flap(this : Void*, flap : Pointer(Void)) : Void
  fun adw_flap_set_flap_position(this : Void*, position : UInt32) : Void
  fun adw_flap_set_fold_duration(this : Void*, duration : UInt32) : Void
  fun adw_flap_set_fold_policy(this : Void*, policy : UInt32) : Void
  fun adw_flap_set_fold_threshold_policy(this : Void*, policy : UInt32) : Void
  fun adw_flap_set_locked(this : Void*, locked : LibC::Int) : Void
  fun adw_flap_set_modal(this : Void*, modal : LibC::Int) : Void
  fun adw_flap_set_reveal_flap(this : Void*, reveal_flap : LibC::Int) : Void
  fun adw_flap_set_reveal_params(this : Void*, params : Pointer(Void)) : Void
  fun adw_flap_set_separator(this : Void*, separator : Pointer(Void)) : Void
  fun adw_flap_set_swipe_to_close(this : Void*, swipe_to_close : LibC::Int) : Void
  fun adw_flap_set_swipe_to_open(this : Void*, swipe_to_open : LibC::Int) : Void
  fun adw_flap_set_transition_type(this : Void*, transition_type : UInt32) : Void
  fun adw_flap_transition_type_get_type : UInt64
  fun adw_fold_threshold_policy_get_type : UInt64
  fun adw_get_enable_animations(widget : Pointer(Void)) : LibC::Int
  fun adw_get_major_version : UInt32
  fun adw_get_micro_version : UInt32
  fun adw_get_minor_version : UInt32
  fun adw_header_bar_get_centering_policy(this : Void*) : UInt32
  fun adw_header_bar_get_decoration_layout(this : Void*) : Pointer(LibC::Char)
  fun adw_header_bar_get_show_back_button(this : Void*) : LibC::Int
  fun adw_header_bar_get_show_end_title_buttons(this : Void*) : LibC::Int
  fun adw_header_bar_get_show_start_title_buttons(this : Void*) : LibC::Int
  fun adw_header_bar_get_show_title(this : Void*) : LibC::Int
  fun adw_header_bar_get_title_widget(this : Void*) : Pointer(Void)
  fun adw_header_bar_get_type : UInt64
  fun adw_header_bar_new : Pointer(Void)
  fun adw_header_bar_pack_end(this : Void*, child : Pointer(Void)) : Void
  fun adw_header_bar_pack_start(this : Void*, child : Pointer(Void)) : Void
  fun adw_header_bar_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_header_bar_set_centering_policy(this : Void*, centering_policy : UInt32) : Void
  fun adw_header_bar_set_decoration_layout(this : Void*, layout : Pointer(LibC::Char)) : Void
  fun adw_header_bar_set_show_back_button(this : Void*, show_back_button : LibC::Int) : Void
  fun adw_header_bar_set_show_end_title_buttons(this : Void*, setting : LibC::Int) : Void
  fun adw_header_bar_set_show_start_title_buttons(this : Void*, setting : LibC::Int) : Void
  fun adw_header_bar_set_show_title(this : Void*, show_title : LibC::Int) : Void
  fun adw_header_bar_set_title_widget(this : Void*, title_widget : Pointer(Void)) : Void
  fun adw_init : Void
  fun adw_inline_view_switcher_display_mode_get_type : UInt64
  fun adw_inline_view_switcher_get_can_shrink(this : Void*) : LibC::Int
  fun adw_inline_view_switcher_get_display_mode(this : Void*) : UInt32
  fun adw_inline_view_switcher_get_homogeneous(this : Void*) : LibC::Int
  fun adw_inline_view_switcher_get_stack(this : Void*) : Pointer(Void)
  fun adw_inline_view_switcher_get_type : UInt64
  fun adw_inline_view_switcher_new : Pointer(Void)
  fun adw_inline_view_switcher_set_can_shrink(this : Void*, can_shrink : LibC::Int) : Void
  fun adw_inline_view_switcher_set_display_mode(this : Void*, mode : UInt32) : Void
  fun adw_inline_view_switcher_set_homogeneous(this : Void*, homogeneous : LibC::Int) : Void
  fun adw_inline_view_switcher_set_stack(this : Void*, stack : Pointer(Void)) : Void
  fun adw_is_initialized : LibC::Int
  fun adw_justify_mode_get_type : UInt64
  fun adw_layout_get_content(this : Void*) : Pointer(Void)
  fun adw_layout_get_name(this : Void*) : Pointer(LibC::Char)
  fun adw_layout_get_type : UInt64
  fun adw_layout_new(content : Pointer(Void)) : Pointer(Void)
  fun adw_layout_set_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_layout_slot_get_slot_id(this : Void*) : Pointer(LibC::Char)
  fun adw_layout_slot_get_type : UInt64
  fun adw_layout_slot_new(id : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_leaflet_append(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_leaflet_get_adjacent_child(this : Void*, direction : UInt32) : Pointer(Void)
  fun adw_leaflet_get_can_navigate_back(this : Void*) : LibC::Int
  fun adw_leaflet_get_can_navigate_forward(this : Void*) : LibC::Int
  fun adw_leaflet_get_can_unfold(this : Void*) : LibC::Int
  fun adw_leaflet_get_child_by_name(this : Void*, name : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_leaflet_get_child_transition_params(this : Void*) : Pointer(Void)
  fun adw_leaflet_get_child_transition_running(this : Void*) : LibC::Int
  fun adw_leaflet_get_fold_threshold_policy(this : Void*) : UInt32
  fun adw_leaflet_get_folded(this : Void*) : LibC::Int
  fun adw_leaflet_get_homogeneous(this : Void*) : LibC::Int
  fun adw_leaflet_get_mode_transition_duration(this : Void*) : UInt32
  fun adw_leaflet_get_page(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_leaflet_get_pages(this : Void*) : Pointer(Void)
  fun adw_leaflet_get_transition_type(this : Void*) : UInt32
  fun adw_leaflet_get_type : UInt64
  fun adw_leaflet_get_visible_child(this : Void*) : Pointer(Void)
  fun adw_leaflet_get_visible_child_name(this : Void*) : Pointer(LibC::Char)
  fun adw_leaflet_insert_child_after(this : Void*, child : Pointer(Void), sibling : Pointer(Void)) : Pointer(Void)
  fun adw_leaflet_navigate(this : Void*, direction : UInt32) : LibC::Int
  fun adw_leaflet_new : Pointer(Void)
  fun adw_leaflet_page_get_child(this : Void*) : Pointer(Void)
  fun adw_leaflet_page_get_name(this : Void*) : Pointer(LibC::Char)
  fun adw_leaflet_page_get_navigatable(this : Void*) : LibC::Int
  fun adw_leaflet_page_get_type : UInt64
  fun adw_leaflet_page_set_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_leaflet_page_set_navigatable(this : Void*, navigatable : LibC::Int) : Void
  fun adw_leaflet_prepend(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_leaflet_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_leaflet_reorder_child_after(this : Void*, child : Pointer(Void), sibling : Pointer(Void)) : Void
  fun adw_leaflet_set_can_navigate_back(this : Void*, can_navigate_back : LibC::Int) : Void
  fun adw_leaflet_set_can_navigate_forward(this : Void*, can_navigate_forward : LibC::Int) : Void
  fun adw_leaflet_set_can_unfold(this : Void*, can_unfold : LibC::Int) : Void
  fun adw_leaflet_set_child_transition_params(this : Void*, params : Pointer(Void)) : Void
  fun adw_leaflet_set_fold_threshold_policy(this : Void*, policy : UInt32) : Void
  fun adw_leaflet_set_homogeneous(this : Void*, homogeneous : LibC::Int) : Void
  fun adw_leaflet_set_mode_transition_duration(this : Void*, duration : UInt32) : Void
  fun adw_leaflet_set_transition_type(this : Void*, transition : UInt32) : Void
  fun adw_leaflet_set_visible_child(this : Void*, visible_child : Pointer(Void)) : Void
  fun adw_leaflet_set_visible_child_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_leaflet_transition_type_get_type : UInt64
  fun adw_length_unit_from_px(unit : UInt32, value : Float64, settings : Pointer(Void)) : Float64
  fun adw_length_unit_get_type : UInt64
  fun adw_length_unit_to_px(unit : UInt32, value : Float64, settings : Pointer(Void)) : Float64
  fun adw_lerp(a : Float64, b : Float64, t : Float64) : Float64
  fun adw_message_dialog_add_response(this : Void*, id : Pointer(LibC::Char), label : Pointer(LibC::Char)) : Void
  fun adw_message_dialog_choose(this : Void*, cancellable : Pointer(Void), callback : Void*, user_data : Pointer(Void)) : Void
  fun adw_message_dialog_choose_finish(this : Void*, result : Pointer(Void)) : Pointer(LibC::Char)
  fun adw_message_dialog_get_body(this : Void*) : Pointer(LibC::Char)
  fun adw_message_dialog_get_body_use_markup(this : Void*) : LibC::Int
  fun adw_message_dialog_get_close_response(this : Void*) : Pointer(LibC::Char)
  fun adw_message_dialog_get_default_response(this : Void*) : Pointer(LibC::Char)
  fun adw_message_dialog_get_extra_child(this : Void*) : Pointer(Void)
  fun adw_message_dialog_get_heading(this : Void*) : Pointer(LibC::Char)
  fun adw_message_dialog_get_heading_use_markup(this : Void*) : LibC::Int
  fun adw_message_dialog_get_response_appearance(this : Void*, response : Pointer(LibC::Char)) : UInt32
  fun adw_message_dialog_get_response_enabled(this : Void*, response : Pointer(LibC::Char)) : LibC::Int
  fun adw_message_dialog_get_response_label(this : Void*, response : Pointer(LibC::Char)) : Pointer(LibC::Char)
  fun adw_message_dialog_get_type : UInt64
  fun adw_message_dialog_has_response(this : Void*, response : Pointer(LibC::Char)) : LibC::Int
  fun adw_message_dialog_new(parent : Pointer(Void), heading : Pointer(LibC::Char), body : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_message_dialog_remove_response(this : Void*, id : Pointer(LibC::Char)) : Void
  fun adw_message_dialog_response(this : Void*, response : Pointer(LibC::Char)) : Void
  fun adw_message_dialog_set_body(this : Void*, body : Pointer(LibC::Char)) : Void
  fun adw_message_dialog_set_body_use_markup(this : Void*, use_markup : LibC::Int) : Void
  fun adw_message_dialog_set_close_response(this : Void*, response : Pointer(LibC::Char)) : Void
  fun adw_message_dialog_set_default_response(this : Void*, response : Pointer(LibC::Char)) : Void
  fun adw_message_dialog_set_extra_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_message_dialog_set_heading(this : Void*, heading : Pointer(LibC::Char)) : Void
  fun adw_message_dialog_set_heading_use_markup(this : Void*, use_markup : LibC::Int) : Void
  fun adw_message_dialog_set_response_appearance(this : Void*, response : Pointer(LibC::Char), appearance : UInt32) : Void
  fun adw_message_dialog_set_response_enabled(this : Void*, response : Pointer(LibC::Char), enabled : LibC::Int) : Void
  fun adw_message_dialog_set_response_label(this : Void*, response : Pointer(LibC::Char), label : Pointer(LibC::Char)) : Void
  fun adw_multi_layout_view_add_layout(this : Void*, layout : Pointer(Void)) : Void
  fun adw_multi_layout_view_get_child(this : Void*, id : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_multi_layout_view_get_layout(this : Void*) : Pointer(Void)
  fun adw_multi_layout_view_get_layout_by_name(this : Void*, name : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_multi_layout_view_get_layout_name(this : Void*) : Pointer(LibC::Char)
  fun adw_multi_layout_view_get_type : UInt64
  fun adw_multi_layout_view_new : Pointer(Void)
  fun adw_multi_layout_view_remove_layout(this : Void*, layout : Pointer(Void)) : Void
  fun adw_multi_layout_view_set_child(this : Void*, id : Pointer(LibC::Char), child : Pointer(Void)) : Void
  fun adw_multi_layout_view_set_layout(this : Void*, layout : Pointer(Void)) : Void
  fun adw_multi_layout_view_set_layout_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_navigation_direction_get_type : UInt64
  fun adw_navigation_page_get_can_pop(this : Void*) : LibC::Int
  fun adw_navigation_page_get_child(this : Void*) : Pointer(Void)
  fun adw_navigation_page_get_tag(this : Void*) : Pointer(LibC::Char)
  fun adw_navigation_page_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_navigation_page_get_type : UInt64
  fun adw_navigation_page_new(child : Pointer(Void), title : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_navigation_page_new_with_tag(child : Pointer(Void), title : Pointer(LibC::Char), tag : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_navigation_page_set_can_pop(this : Void*, can_pop : LibC::Int) : Void
  fun adw_navigation_page_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_navigation_page_set_tag(this : Void*, tag : Pointer(LibC::Char)) : Void
  fun adw_navigation_page_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_navigation_split_view_get_collapsed(this : Void*) : LibC::Int
  fun adw_navigation_split_view_get_content(this : Void*) : Pointer(Void)
  fun adw_navigation_split_view_get_max_sidebar_width(this : Void*) : Float64
  fun adw_navigation_split_view_get_min_sidebar_width(this : Void*) : Float64
  fun adw_navigation_split_view_get_show_content(this : Void*) : LibC::Int
  fun adw_navigation_split_view_get_sidebar(this : Void*) : Pointer(Void)
  fun adw_navigation_split_view_get_sidebar_position(this : Void*) : UInt32
  fun adw_navigation_split_view_get_sidebar_width_fraction(this : Void*) : Float64
  fun adw_navigation_split_view_get_sidebar_width_unit(this : Void*) : UInt32
  fun adw_navigation_split_view_get_type : UInt64
  fun adw_navigation_split_view_new : Pointer(Void)
  fun adw_navigation_split_view_set_collapsed(this : Void*, collapsed : LibC::Int) : Void
  fun adw_navigation_split_view_set_content(this : Void*, content : Pointer(Void)) : Void
  fun adw_navigation_split_view_set_max_sidebar_width(this : Void*, width : Float64) : Void
  fun adw_navigation_split_view_set_min_sidebar_width(this : Void*, width : Float64) : Void
  fun adw_navigation_split_view_set_show_content(this : Void*, show_content : LibC::Int) : Void
  fun adw_navigation_split_view_set_sidebar(this : Void*, sidebar : Pointer(Void)) : Void
  fun adw_navigation_split_view_set_sidebar_position(this : Void*, position : UInt32) : Void
  fun adw_navigation_split_view_set_sidebar_width_fraction(this : Void*, fraction : Float64) : Void
  fun adw_navigation_split_view_set_sidebar_width_unit(this : Void*, unit : UInt32) : Void
  fun adw_navigation_view_add(this : Void*, page : Pointer(Void)) : Void
  fun adw_navigation_view_find_page(this : Void*, tag : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_navigation_view_get_animate_transitions(this : Void*) : LibC::Int
  fun adw_navigation_view_get_hhomogeneous(this : Void*) : LibC::Int
  fun adw_navigation_view_get_navigation_stack(this : Void*) : Pointer(Void)
  fun adw_navigation_view_get_pop_on_escape(this : Void*) : LibC::Int
  fun adw_navigation_view_get_previous_page(this : Void*, page : Pointer(Void)) : Pointer(Void)
  fun adw_navigation_view_get_type : UInt64
  fun adw_navigation_view_get_vhomogeneous(this : Void*) : LibC::Int
  fun adw_navigation_view_get_visible_page(this : Void*) : Pointer(Void)
  fun adw_navigation_view_get_visible_page_tag(this : Void*) : Pointer(LibC::Char)
  fun adw_navigation_view_new : Pointer(Void)
  fun adw_navigation_view_pop(this : Void*) : LibC::Int
  fun adw_navigation_view_pop_to_page(this : Void*, page : Pointer(Void)) : LibC::Int
  fun adw_navigation_view_pop_to_tag(this : Void*, tag : Pointer(LibC::Char)) : LibC::Int
  fun adw_navigation_view_push(this : Void*, page : Pointer(Void)) : Void
  fun adw_navigation_view_push_by_tag(this : Void*, tag : Pointer(LibC::Char)) : Void
  fun adw_navigation_view_remove(this : Void*, page : Pointer(Void)) : Void
  fun adw_navigation_view_replace(this : Void*, pages : Pointer(Pointer(LibAdw::NavigationPage)), n_pages : Int32) : Void
  fun adw_navigation_view_replace_with_tags(this : Void*, tags : Pointer(Pointer(LibC::Char)), n_tags : Int32) : Void
  fun adw_navigation_view_set_animate_transitions(this : Void*, animate_transitions : LibC::Int) : Void
  fun adw_navigation_view_set_hhomogeneous(this : Void*, hhomogeneous : LibC::Int) : Void
  fun adw_navigation_view_set_pop_on_escape(this : Void*, pop_on_escape : LibC::Int) : Void
  fun adw_navigation_view_set_vhomogeneous(this : Void*, vhomogeneous : LibC::Int) : Void
  fun adw_overlay_split_view_get_collapsed(this : Void*) : LibC::Int
  fun adw_overlay_split_view_get_content(this : Void*) : Pointer(Void)
  fun adw_overlay_split_view_get_enable_hide_gesture(this : Void*) : LibC::Int
  fun adw_overlay_split_view_get_enable_show_gesture(this : Void*) : LibC::Int
  fun adw_overlay_split_view_get_max_sidebar_width(this : Void*) : Float64
  fun adw_overlay_split_view_get_min_sidebar_width(this : Void*) : Float64
  fun adw_overlay_split_view_get_pin_sidebar(this : Void*) : LibC::Int
  fun adw_overlay_split_view_get_show_sidebar(this : Void*) : LibC::Int
  fun adw_overlay_split_view_get_sidebar(this : Void*) : Pointer(Void)
  fun adw_overlay_split_view_get_sidebar_position(this : Void*) : UInt32
  fun adw_overlay_split_view_get_sidebar_width_fraction(this : Void*) : Float64
  fun adw_overlay_split_view_get_sidebar_width_unit(this : Void*) : UInt32
  fun adw_overlay_split_view_get_type : UInt64
  fun adw_overlay_split_view_new : Pointer(Void)
  fun adw_overlay_split_view_set_collapsed(this : Void*, collapsed : LibC::Int) : Void
  fun adw_overlay_split_view_set_content(this : Void*, content : Pointer(Void)) : Void
  fun adw_overlay_split_view_set_enable_hide_gesture(this : Void*, enable_hide_gesture : LibC::Int) : Void
  fun adw_overlay_split_view_set_enable_show_gesture(this : Void*, enable_show_gesture : LibC::Int) : Void
  fun adw_overlay_split_view_set_max_sidebar_width(this : Void*, width : Float64) : Void
  fun adw_overlay_split_view_set_min_sidebar_width(this : Void*, width : Float64) : Void
  fun adw_overlay_split_view_set_pin_sidebar(this : Void*, pin_sidebar : LibC::Int) : Void
  fun adw_overlay_split_view_set_show_sidebar(this : Void*, show_sidebar : LibC::Int) : Void
  fun adw_overlay_split_view_set_sidebar(this : Void*, sidebar : Pointer(Void)) : Void
  fun adw_overlay_split_view_set_sidebar_position(this : Void*, position : UInt32) : Void
  fun adw_overlay_split_view_set_sidebar_width_fraction(this : Void*, fraction : Float64) : Void
  fun adw_overlay_split_view_set_sidebar_width_unit(this : Void*, unit : UInt32) : Void
  fun adw_pack_direction_get_type : UInt64
  fun adw_password_entry_row_get_type : UInt64
  fun adw_password_entry_row_new : Pointer(Void)
  fun adw_preferences_dialog_add(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_dialog_add_toast(this : Void*, toast : Pointer(Void)) : Void
  fun adw_preferences_dialog_get_search_enabled(this : Void*) : LibC::Int
  fun adw_preferences_dialog_get_type : UInt64
  fun adw_preferences_dialog_get_visible_page(this : Void*) : Pointer(Void)
  fun adw_preferences_dialog_get_visible_page_name(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_dialog_new : Pointer(Void)
  fun adw_preferences_dialog_pop_subpage(this : Void*) : LibC::Int
  fun adw_preferences_dialog_push_subpage(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_dialog_remove(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_dialog_set_search_enabled(this : Void*, search_enabled : LibC::Int) : Void
  fun adw_preferences_dialog_set_visible_page(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_dialog_set_visible_page_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_preferences_group_add(this : Void*, child : Pointer(Void)) : Void
  fun adw_preferences_group_get_description(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_group_get_header_suffix(this : Void*) : Pointer(Void)
  fun adw_preferences_group_get_separate_rows(this : Void*) : LibC::Int
  fun adw_preferences_group_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_group_get_type : UInt64
  fun adw_preferences_group_new : Pointer(Void)
  fun adw_preferences_group_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_preferences_group_set_description(this : Void*, description : Pointer(LibC::Char)) : Void
  fun adw_preferences_group_set_header_suffix(this : Void*, suffix : Pointer(Void)) : Void
  fun adw_preferences_group_set_separate_rows(this : Void*, separate_rows : LibC::Int) : Void
  fun adw_preferences_group_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_preferences_page_add(this : Void*, group : Pointer(Void)) : Void
  fun adw_preferences_page_get_banner(this : Void*) : Pointer(Void)
  fun adw_preferences_page_get_description(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_page_get_description_centered(this : Void*) : LibC::Int
  fun adw_preferences_page_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_page_get_name(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_page_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_page_get_type : UInt64
  fun adw_preferences_page_get_use_underline(this : Void*) : LibC::Int
  fun adw_preferences_page_new : Pointer(Void)
  fun adw_preferences_page_remove(this : Void*, group : Pointer(Void)) : Void
  fun adw_preferences_page_scroll_to_top(this : Void*) : Void
  fun adw_preferences_page_set_banner(this : Void*, banner : Pointer(Void)) : Void
  fun adw_preferences_page_set_description(this : Void*, description : Pointer(LibC::Char)) : Void
  fun adw_preferences_page_set_description_centered(this : Void*, centered : LibC::Int) : Void
  fun adw_preferences_page_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_preferences_page_set_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_preferences_page_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_preferences_page_set_use_underline(this : Void*, use_underline : LibC::Int) : Void
  fun adw_preferences_row_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_row_get_title_selectable(this : Void*) : LibC::Int
  fun adw_preferences_row_get_type : UInt64
  fun adw_preferences_row_get_use_markup(this : Void*) : LibC::Int
  fun adw_preferences_row_get_use_underline(this : Void*) : LibC::Int
  fun adw_preferences_row_new : Pointer(Void)
  fun adw_preferences_row_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_preferences_row_set_title_selectable(this : Void*, title_selectable : LibC::Int) : Void
  fun adw_preferences_row_set_use_markup(this : Void*, use_markup : LibC::Int) : Void
  fun adw_preferences_row_set_use_underline(this : Void*, use_underline : LibC::Int) : Void
  fun adw_preferences_window_add(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_window_add_toast(this : Void*, toast : Pointer(Void)) : Void
  fun adw_preferences_window_close_subpage(this : Void*) : Void
  fun adw_preferences_window_get_can_navigate_back(this : Void*) : LibC::Int
  fun adw_preferences_window_get_search_enabled(this : Void*) : LibC::Int
  fun adw_preferences_window_get_type : UInt64
  fun adw_preferences_window_get_visible_page(this : Void*) : Pointer(Void)
  fun adw_preferences_window_get_visible_page_name(this : Void*) : Pointer(LibC::Char)
  fun adw_preferences_window_new : Pointer(Void)
  fun adw_preferences_window_pop_subpage(this : Void*) : LibC::Int
  fun adw_preferences_window_present_subpage(this : Void*, subpage : Pointer(Void)) : Void
  fun adw_preferences_window_push_subpage(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_window_remove(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_window_set_can_navigate_back(this : Void*, can_navigate_back : LibC::Int) : Void
  fun adw_preferences_window_set_search_enabled(this : Void*, search_enabled : LibC::Int) : Void
  fun adw_preferences_window_set_visible_page(this : Void*, page : Pointer(Void)) : Void
  fun adw_preferences_window_set_visible_page_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_property_animation_target_get_object(this : Void*) : Pointer(Void)
  fun adw_property_animation_target_get_pspec(this : Void*) : Pointer(Void)
  fun adw_property_animation_target_get_type : UInt64
  fun adw_property_animation_target_new(object : Pointer(Void), property_name : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_property_animation_target_new_for_pspec(object : Pointer(Void), pspec : Pointer(Void)) : Pointer(Void)
  fun adw_response_appearance_get_type : UInt64
  fun adw_rgba_to_standalone(rgba : Pointer(Void), dark : LibC::Int, standalone_rgba : Pointer(Void)) : Void
  fun adw_spin_row_configure(this : Void*, adjustment : Pointer(Void), climb_rate : Float64, digits : UInt32) : Void
  fun adw_spin_row_get_adjustment(this : Void*) : Pointer(Void)
  fun adw_spin_row_get_climb_rate(this : Void*) : Float64
  fun adw_spin_row_get_digits(this : Void*) : UInt32
  fun adw_spin_row_get_numeric(this : Void*) : LibC::Int
  fun adw_spin_row_get_snap_to_ticks(this : Void*) : LibC::Int
  fun adw_spin_row_get_type : UInt64
  fun adw_spin_row_get_update_policy(this : Void*) : UInt32
  fun adw_spin_row_get_value(this : Void*) : Float64
  fun adw_spin_row_get_wrap(this : Void*) : LibC::Int
  fun adw_spin_row_new(adjustment : Pointer(Void), climb_rate : Float64, digits : UInt32) : Pointer(Void)
  fun adw_spin_row_new_with_range(min : Float64, max : Float64, step : Float64) : Pointer(Void)
  fun adw_spin_row_set_adjustment(this : Void*, adjustment : Pointer(Void)) : Void
  fun adw_spin_row_set_climb_rate(this : Void*, climb_rate : Float64) : Void
  fun adw_spin_row_set_digits(this : Void*, digits : UInt32) : Void
  fun adw_spin_row_set_numeric(this : Void*, numeric : LibC::Int) : Void
  fun adw_spin_row_set_range(this : Void*, min : Float64, max : Float64) : Void
  fun adw_spin_row_set_snap_to_ticks(this : Void*, snap_to_ticks : LibC::Int) : Void
  fun adw_spin_row_set_update_policy(this : Void*, policy : UInt32) : Void
  fun adw_spin_row_set_value(this : Void*, value : Float64) : Void
  fun adw_spin_row_set_wrap(this : Void*, wrap : LibC::Int) : Void
  fun adw_spin_row_update(this : Void*) : Void
  fun adw_spinner_get_type : UInt64
  fun adw_spinner_new : Pointer(Void)
  fun adw_spinner_paintable_get_type : UInt64
  fun adw_spinner_paintable_get_widget(this : Void*) : Pointer(Void)
  fun adw_spinner_paintable_new(widget : Pointer(Void)) : Pointer(Void)
  fun adw_spinner_paintable_set_widget(this : Void*, widget : Pointer(Void)) : Void
  fun adw_split_button_get_can_shrink(this : Void*) : LibC::Int
  fun adw_split_button_get_child(this : Void*) : Pointer(Void)
  fun adw_split_button_get_direction(this : Void*) : UInt32
  fun adw_split_button_get_dropdown_tooltip(this : Void*) : Pointer(LibC::Char)
  fun adw_split_button_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_split_button_get_label(this : Void*) : Pointer(LibC::Char)
  fun adw_split_button_get_menu_model(this : Void*) : Pointer(Void)
  fun adw_split_button_get_popover(this : Void*) : Pointer(Void)
  fun adw_split_button_get_type : UInt64
  fun adw_split_button_get_use_underline(this : Void*) : LibC::Int
  fun adw_split_button_new : Pointer(Void)
  fun adw_split_button_popdown(this : Void*) : Void
  fun adw_split_button_popup(this : Void*) : Void
  fun adw_split_button_set_can_shrink(this : Void*, can_shrink : LibC::Int) : Void
  fun adw_split_button_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_split_button_set_direction(this : Void*, direction : UInt32) : Void
  fun adw_split_button_set_dropdown_tooltip(this : Void*, tooltip : Pointer(LibC::Char)) : Void
  fun adw_split_button_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_split_button_set_label(this : Void*, label : Pointer(LibC::Char)) : Void
  fun adw_split_button_set_menu_model(this : Void*, menu_model : Pointer(Void)) : Void
  fun adw_split_button_set_popover(this : Void*, popover : Pointer(Void)) : Void
  fun adw_split_button_set_use_underline(this : Void*, use_underline : LibC::Int) : Void
  fun adw_spring_animation_calculate_value(this : Void*, time : UInt32) : Float64
  fun adw_spring_animation_calculate_velocity(this : Void*, time : UInt32) : Float64
  fun adw_spring_animation_get_clamp(this : Void*) : LibC::Int
  fun adw_spring_animation_get_epsilon(this : Void*) : Float64
  fun adw_spring_animation_get_estimated_duration(this : Void*) : UInt32
  fun adw_spring_animation_get_initial_velocity(this : Void*) : Float64
  fun adw_spring_animation_get_spring_params(this : Void*) : Pointer(Void)
  fun adw_spring_animation_get_type : UInt64
  fun adw_spring_animation_get_value_from(this : Void*) : Float64
  fun adw_spring_animation_get_value_to(this : Void*) : Float64
  fun adw_spring_animation_get_velocity(this : Void*) : Float64
  fun adw_spring_animation_new(widget : Pointer(Void), from : Float64, to : Float64, spring_params : Pointer(Void), target : Pointer(Void)) : Pointer(Void)
  fun adw_spring_animation_set_clamp(this : Void*, clamp : LibC::Int) : Void
  fun adw_spring_animation_set_epsilon(this : Void*, epsilon : Float64) : Void
  fun adw_spring_animation_set_initial_velocity(this : Void*, velocity : Float64) : Void
  fun adw_spring_animation_set_spring_params(this : Void*, spring_params : Pointer(Void)) : Void
  fun adw_spring_animation_set_value_from(this : Void*, value : Float64) : Void
  fun adw_spring_animation_set_value_to(this : Void*, value : Float64) : Void
  fun adw_spring_params_get_damping(this : Void*) : Float64
  fun adw_spring_params_get_damping_ratio(this : Void*) : Float64
  fun adw_spring_params_get_mass(this : Void*) : Float64
  fun adw_spring_params_get_stiffness(this : Void*) : Float64
  fun adw_spring_params_get_type : UInt64
  fun adw_spring_params_new(damping_ratio : Float64, mass : Float64, stiffness : Float64) : Pointer(Void)
  fun adw_spring_params_new_full(damping : Float64, mass : Float64, stiffness : Float64) : Pointer(Void)
  fun adw_spring_params_ref(this : Void*) : Pointer(Void)
  fun adw_spring_params_unref(this : Void*) : Void
  fun adw_squeezer_add(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_squeezer_get_allow_none(this : Void*) : LibC::Int
  fun adw_squeezer_get_homogeneous(this : Void*) : LibC::Int
  fun adw_squeezer_get_interpolate_size(this : Void*) : LibC::Int
  fun adw_squeezer_get_page(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_squeezer_get_pages(this : Void*) : Pointer(Void)
  fun adw_squeezer_get_switch_threshold_policy(this : Void*) : UInt32
  fun adw_squeezer_get_transition_duration(this : Void*) : UInt32
  fun adw_squeezer_get_transition_running(this : Void*) : LibC::Int
  fun adw_squeezer_get_transition_type(this : Void*) : UInt32
  fun adw_squeezer_get_type : UInt64
  fun adw_squeezer_get_visible_child(this : Void*) : Pointer(Void)
  fun adw_squeezer_get_xalign(this : Void*) : Float32
  fun adw_squeezer_get_yalign(this : Void*) : Float32
  fun adw_squeezer_new : Pointer(Void)
  fun adw_squeezer_page_get_child(this : Void*) : Pointer(Void)
  fun adw_squeezer_page_get_enabled(this : Void*) : LibC::Int
  fun adw_squeezer_page_get_type : UInt64
  fun adw_squeezer_page_set_enabled(this : Void*, enabled : LibC::Int) : Void
  fun adw_squeezer_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_squeezer_set_allow_none(this : Void*, allow_none : LibC::Int) : Void
  fun adw_squeezer_set_homogeneous(this : Void*, homogeneous : LibC::Int) : Void
  fun adw_squeezer_set_interpolate_size(this : Void*, interpolate_size : LibC::Int) : Void
  fun adw_squeezer_set_switch_threshold_policy(this : Void*, policy : UInt32) : Void
  fun adw_squeezer_set_transition_duration(this : Void*, duration : UInt32) : Void
  fun adw_squeezer_set_transition_type(this : Void*, transition : UInt32) : Void
  fun adw_squeezer_set_xalign(this : Void*, xalign : Float32) : Void
  fun adw_squeezer_set_yalign(this : Void*, yalign : Float32) : Void
  fun adw_squeezer_transition_type_get_type : UInt64
  fun adw_status_page_get_child(this : Void*) : Pointer(Void)
  fun adw_status_page_get_description(this : Void*) : Pointer(LibC::Char)
  fun adw_status_page_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_status_page_get_paintable(this : Void*) : Pointer(Void)
  fun adw_status_page_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_status_page_get_type : UInt64
  fun adw_status_page_new : Pointer(Void)
  fun adw_status_page_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_status_page_set_description(this : Void*, description : Pointer(LibC::Char)) : Void
  fun adw_status_page_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_status_page_set_paintable(this : Void*, paintable : Pointer(Void)) : Void
  fun adw_status_page_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_style_manager_get_accent_color(this : Void*) : UInt32
  fun adw_style_manager_get_accent_color_rgba(this : Void*) : Pointer(Void)
  fun adw_style_manager_get_color_scheme(this : Void*) : UInt32
  fun adw_style_manager_get_dark(this : Void*) : LibC::Int
  fun adw_style_manager_get_default : Pointer(Void)
  fun adw_style_manager_get_display(this : Void*) : Pointer(Void)
  fun adw_style_manager_get_document_font_name(this : Void*) : Pointer(LibC::Char)
  fun adw_style_manager_get_for_display(display : Pointer(Void)) : Pointer(Void)
  fun adw_style_manager_get_high_contrast(this : Void*) : LibC::Int
  fun adw_style_manager_get_monospace_font_name(this : Void*) : Pointer(LibC::Char)
  fun adw_style_manager_get_system_supports_accent_colors(this : Void*) : LibC::Int
  fun adw_style_manager_get_system_supports_color_schemes(this : Void*) : LibC::Int
  fun adw_style_manager_get_type : UInt64
  fun adw_style_manager_set_color_scheme(this : Void*, color_scheme : UInt32) : Void
  fun adw_swipe_tracker_get_allow_long_swipes(this : Void*) : LibC::Int
  fun adw_swipe_tracker_get_allow_mouse_drag(this : Void*) : LibC::Int
  fun adw_swipe_tracker_get_allow_window_handle(this : Void*) : LibC::Int
  fun adw_swipe_tracker_get_enabled(this : Void*) : LibC::Int
  fun adw_swipe_tracker_get_lower_overshoot(this : Void*) : LibC::Int
  fun adw_swipe_tracker_get_reversed(this : Void*) : LibC::Int
  fun adw_swipe_tracker_get_swipeable(this : Void*) : Pointer(Void)
  fun adw_swipe_tracker_get_type : UInt64
  fun adw_swipe_tracker_get_upper_overshoot(this : Void*) : LibC::Int
  fun adw_swipe_tracker_new(swipeable : Pointer(Void)) : Pointer(Void)
  fun adw_swipe_tracker_set_allow_long_swipes(this : Void*, allow_long_swipes : LibC::Int) : Void
  fun adw_swipe_tracker_set_allow_mouse_drag(this : Void*, allow_mouse_drag : LibC::Int) : Void
  fun adw_swipe_tracker_set_allow_window_handle(this : Void*, allow_window_handle : LibC::Int) : Void
  fun adw_swipe_tracker_set_enabled(this : Void*, enabled : LibC::Int) : Void
  fun adw_swipe_tracker_set_lower_overshoot(this : Void*, overshoot : LibC::Int) : Void
  fun adw_swipe_tracker_set_reversed(this : Void*, reversed : LibC::Int) : Void
  fun adw_swipe_tracker_set_upper_overshoot(this : Void*, overshoot : LibC::Int) : Void
  fun adw_swipe_tracker_shift_position(this : Void*, delta : Float64) : Void
  fun adw_swipeable_get_cancel_progress(this : Void*) : Float64
  fun adw_swipeable_get_distance(this : Void*) : Float64
  fun adw_swipeable_get_progress(this : Void*) : Float64
  fun adw_swipeable_get_snap_points(this : Void*, n_snap_points : Pointer(Int32)) : Pointer(Float64)
  fun adw_swipeable_get_swipe_area(this : Void*, navigation_direction : UInt32, is_drag : LibC::Int, rect : Pointer(Void)) : Void
  fun adw_swipeable_get_type : UInt64
  fun adw_switch_row_get_active(this : Void*) : LibC::Int
  fun adw_switch_row_get_type : UInt64
  fun adw_switch_row_new : Pointer(Void)
  fun adw_switch_row_set_active(this : Void*, is_active : LibC::Int) : Void
  fun adw_tab_bar_get_autohide(this : Void*) : LibC::Int
  fun adw_tab_bar_get_end_action_widget(this : Void*) : Pointer(Void)
  fun adw_tab_bar_get_expand_tabs(this : Void*) : LibC::Int
  fun adw_tab_bar_get_extra_drag_preferred_action(this : Void*) : UInt32
  fun adw_tab_bar_get_extra_drag_preload(this : Void*) : LibC::Int
  fun adw_tab_bar_get_inverted(this : Void*) : LibC::Int
  fun adw_tab_bar_get_is_overflowing(this : Void*) : LibC::Int
  fun adw_tab_bar_get_start_action_widget(this : Void*) : Pointer(Void)
  fun adw_tab_bar_get_tabs_revealed(this : Void*) : LibC::Int
  fun adw_tab_bar_get_type : UInt64
  fun adw_tab_bar_get_view(this : Void*) : Pointer(Void)
  fun adw_tab_bar_new : Pointer(Void)
  fun adw_tab_bar_set_autohide(this : Void*, autohide : LibC::Int) : Void
  fun adw_tab_bar_set_end_action_widget(this : Void*, widget : Pointer(Void)) : Void
  fun adw_tab_bar_set_expand_tabs(this : Void*, expand_tabs : LibC::Int) : Void
  fun adw_tab_bar_set_extra_drag_preload(this : Void*, preload : LibC::Int) : Void
  fun adw_tab_bar_set_inverted(this : Void*, inverted : LibC::Int) : Void
  fun adw_tab_bar_set_start_action_widget(this : Void*, widget : Pointer(Void)) : Void
  fun adw_tab_bar_set_view(this : Void*, view : Pointer(Void)) : Void
  fun adw_tab_bar_setup_extra_drop_target(this : Void*, actions : UInt32, types : Pointer(UInt64), n_types : UInt64) : Void
  fun adw_tab_button_get_type : UInt64
  fun adw_tab_button_get_view(this : Void*) : Pointer(Void)
  fun adw_tab_button_new : Pointer(Void)
  fun adw_tab_button_set_view(this : Void*, view : Pointer(Void)) : Void
  fun adw_tab_overview_get_child(this : Void*) : Pointer(Void)
  fun adw_tab_overview_get_enable_new_tab(this : Void*) : LibC::Int
  fun adw_tab_overview_get_enable_search(this : Void*) : LibC::Int
  fun adw_tab_overview_get_extra_drag_preferred_action(this : Void*) : UInt32
  fun adw_tab_overview_get_extra_drag_preload(this : Void*) : LibC::Int
  fun adw_tab_overview_get_inverted(this : Void*) : LibC::Int
  fun adw_tab_overview_get_open(this : Void*) : LibC::Int
  fun adw_tab_overview_get_search_active(this : Void*) : LibC::Int
  fun adw_tab_overview_get_secondary_menu(this : Void*) : Pointer(Void)
  fun adw_tab_overview_get_show_end_title_buttons(this : Void*) : LibC::Int
  fun adw_tab_overview_get_show_start_title_buttons(this : Void*) : LibC::Int
  fun adw_tab_overview_get_type : UInt64
  fun adw_tab_overview_get_view(this : Void*) : Pointer(Void)
  fun adw_tab_overview_new : Pointer(Void)
  fun adw_tab_overview_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_tab_overview_set_enable_new_tab(this : Void*, enable_new_tab : LibC::Int) : Void
  fun adw_tab_overview_set_enable_search(this : Void*, enable_search : LibC::Int) : Void
  fun adw_tab_overview_set_extra_drag_preload(this : Void*, preload : LibC::Int) : Void
  fun adw_tab_overview_set_inverted(this : Void*, inverted : LibC::Int) : Void
  fun adw_tab_overview_set_open(this : Void*, open : LibC::Int) : Void
  fun adw_tab_overview_set_secondary_menu(this : Void*, secondary_menu : Pointer(Void)) : Void
  fun adw_tab_overview_set_show_end_title_buttons(this : Void*, show_end_title_buttons : LibC::Int) : Void
  fun adw_tab_overview_set_show_start_title_buttons(this : Void*, show_start_title_buttons : LibC::Int) : Void
  fun adw_tab_overview_set_view(this : Void*, view : Pointer(Void)) : Void
  fun adw_tab_overview_setup_extra_drop_target(this : Void*, actions : UInt32, types : Pointer(UInt64), n_types : UInt64) : Void
  fun adw_tab_page_get_child(this : Void*) : Pointer(Void)
  fun adw_tab_page_get_icon(this : Void*) : Pointer(Void)
  fun adw_tab_page_get_indicator_activatable(this : Void*) : LibC::Int
  fun adw_tab_page_get_indicator_icon(this : Void*) : Pointer(Void)
  fun adw_tab_page_get_indicator_tooltip(this : Void*) : Pointer(LibC::Char)
  fun adw_tab_page_get_keyword(this : Void*) : Pointer(LibC::Char)
  fun adw_tab_page_get_live_thumbnail(this : Void*) : LibC::Int
  fun adw_tab_page_get_loading(this : Void*) : LibC::Int
  fun adw_tab_page_get_needs_attention(this : Void*) : LibC::Int
  fun adw_tab_page_get_parent(this : Void*) : Pointer(Void)
  fun adw_tab_page_get_pinned(this : Void*) : LibC::Int
  fun adw_tab_page_get_selected(this : Void*) : LibC::Int
  fun adw_tab_page_get_thumbnail_xalign(this : Void*) : Float32
  fun adw_tab_page_get_thumbnail_yalign(this : Void*) : Float32
  fun adw_tab_page_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_tab_page_get_tooltip(this : Void*) : Pointer(LibC::Char)
  fun adw_tab_page_get_type : UInt64
  fun adw_tab_page_invalidate_thumbnail(this : Void*) : Void
  fun adw_tab_page_set_icon(this : Void*, icon : Pointer(Void)) : Void
  fun adw_tab_page_set_indicator_activatable(this : Void*, activatable : LibC::Int) : Void
  fun adw_tab_page_set_indicator_icon(this : Void*, indicator_icon : Pointer(Void)) : Void
  fun adw_tab_page_set_indicator_tooltip(this : Void*, tooltip : Pointer(LibC::Char)) : Void
  fun adw_tab_page_set_keyword(this : Void*, keyword : Pointer(LibC::Char)) : Void
  fun adw_tab_page_set_live_thumbnail(this : Void*, live_thumbnail : LibC::Int) : Void
  fun adw_tab_page_set_loading(this : Void*, loading : LibC::Int) : Void
  fun adw_tab_page_set_needs_attention(this : Void*, needs_attention : LibC::Int) : Void
  fun adw_tab_page_set_thumbnail_xalign(this : Void*, xalign : Float32) : Void
  fun adw_tab_page_set_thumbnail_yalign(this : Void*, yalign : Float32) : Void
  fun adw_tab_page_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_tab_page_set_tooltip(this : Void*, tooltip : Pointer(LibC::Char)) : Void
  fun adw_tab_view_add_page(this : Void*, child : Pointer(Void), parent : Pointer(Void)) : Pointer(Void)
  fun adw_tab_view_add_shortcuts(this : Void*, shortcuts : UInt32) : Void
  fun adw_tab_view_append(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_tab_view_append_pinned(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_tab_view_close_other_pages(this : Void*, page : Pointer(Void)) : Void
  fun adw_tab_view_close_page(this : Void*, page : Pointer(Void)) : Void
  fun adw_tab_view_close_page_finish(this : Void*, page : Pointer(Void), confirm : LibC::Int) : Void
  fun adw_tab_view_close_pages_after(this : Void*, page : Pointer(Void)) : Void
  fun adw_tab_view_close_pages_before(this : Void*, page : Pointer(Void)) : Void
  fun adw_tab_view_get_default_icon(this : Void*) : Pointer(Void)
  fun adw_tab_view_get_is_transferring_page(this : Void*) : LibC::Int
  fun adw_tab_view_get_menu_model(this : Void*) : Pointer(Void)
  fun adw_tab_view_get_n_pages(this : Void*) : Int32
  fun adw_tab_view_get_n_pinned_pages(this : Void*) : Int32
  fun adw_tab_view_get_nth_page(this : Void*, position : Int32) : Pointer(Void)
  fun adw_tab_view_get_page(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_tab_view_get_page_position(this : Void*, page : Pointer(Void)) : Int32
  fun adw_tab_view_get_pages(this : Void*) : Pointer(Void)
  fun adw_tab_view_get_selected_page(this : Void*) : Pointer(Void)
  fun adw_tab_view_get_shortcuts(this : Void*) : UInt32
  fun adw_tab_view_get_type : UInt64
  fun adw_tab_view_insert(this : Void*, child : Pointer(Void), position : Int32) : Pointer(Void)
  fun adw_tab_view_insert_pinned(this : Void*, child : Pointer(Void), position : Int32) : Pointer(Void)
  fun adw_tab_view_invalidate_thumbnails(this : Void*) : Void
  fun adw_tab_view_new : Pointer(Void)
  fun adw_tab_view_prepend(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_tab_view_prepend_pinned(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_tab_view_remove_shortcuts(this : Void*, shortcuts : UInt32) : Void
  fun adw_tab_view_reorder_backward(this : Void*, page : Pointer(Void)) : LibC::Int
  fun adw_tab_view_reorder_first(this : Void*, page : Pointer(Void)) : LibC::Int
  fun adw_tab_view_reorder_forward(this : Void*, page : Pointer(Void)) : LibC::Int
  fun adw_tab_view_reorder_last(this : Void*, page : Pointer(Void)) : LibC::Int
  fun adw_tab_view_reorder_page(this : Void*, page : Pointer(Void), position : Int32) : LibC::Int
  fun adw_tab_view_select_next_page(this : Void*) : LibC::Int
  fun adw_tab_view_select_previous_page(this : Void*) : LibC::Int
  fun adw_tab_view_set_default_icon(this : Void*, default_icon : Pointer(Void)) : Void
  fun adw_tab_view_set_menu_model(this : Void*, menu_model : Pointer(Void)) : Void
  fun adw_tab_view_set_page_pinned(this : Void*, page : Pointer(Void), pinned : LibC::Int) : Void
  fun adw_tab_view_set_selected_page(this : Void*, selected_page : Pointer(Void)) : Void
  fun adw_tab_view_set_shortcuts(this : Void*, shortcuts : UInt32) : Void
  fun adw_tab_view_shortcuts_get_type : UInt64
  fun adw_tab_view_transfer_page(this : Void*, page : Pointer(Void), other_view : Pointer(Void), position : Int32) : Void
  fun adw_timed_animation_get_alternate(this : Void*) : LibC::Int
  fun adw_timed_animation_get_duration(this : Void*) : UInt32
  fun adw_timed_animation_get_easing(this : Void*) : UInt32
  fun adw_timed_animation_get_repeat_count(this : Void*) : UInt32
  fun adw_timed_animation_get_reverse(this : Void*) : LibC::Int
  fun adw_timed_animation_get_type : UInt64
  fun adw_timed_animation_get_value_from(this : Void*) : Float64
  fun adw_timed_animation_get_value_to(this : Void*) : Float64
  fun adw_timed_animation_new(widget : Pointer(Void), from : Float64, to : Float64, duration : UInt32, target : Pointer(Void)) : Pointer(Void)
  fun adw_timed_animation_set_alternate(this : Void*, alternate : LibC::Int) : Void
  fun adw_timed_animation_set_duration(this : Void*, duration : UInt32) : Void
  fun adw_timed_animation_set_easing(this : Void*, easing : UInt32) : Void
  fun adw_timed_animation_set_repeat_count(this : Void*, repeat_count : UInt32) : Void
  fun adw_timed_animation_set_reverse(this : Void*, reverse : LibC::Int) : Void
  fun adw_timed_animation_set_value_from(this : Void*, value : Float64) : Void
  fun adw_timed_animation_set_value_to(this : Void*, value : Float64) : Void
  fun adw_toast_dismiss(this : Void*) : Void
  fun adw_toast_get_action_name(this : Void*) : Pointer(LibC::Char)
  fun adw_toast_get_action_target_value(this : Void*) : Pointer(Void)
  fun adw_toast_get_button_label(this : Void*) : Pointer(LibC::Char)
  fun adw_toast_get_custom_title(this : Void*) : Pointer(Void)
  fun adw_toast_get_priority(this : Void*) : UInt32
  fun adw_toast_get_timeout(this : Void*) : UInt32
  fun adw_toast_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_toast_get_type : UInt64
  fun adw_toast_get_use_markup(this : Void*) : LibC::Int
  fun adw_toast_new(title : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_toast_overlay_add_toast(this : Void*, toast : Pointer(Void)) : Void
  fun adw_toast_overlay_dismiss_all(this : Void*) : Void
  fun adw_toast_overlay_get_child(this : Void*) : Pointer(Void)
  fun adw_toast_overlay_get_type : UInt64
  fun adw_toast_overlay_new : Pointer(Void)
  fun adw_toast_overlay_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_toast_priority_get_type : UInt64
  fun adw_toast_set_action_name(this : Void*, action_name : Pointer(LibC::Char)) : Void
  fun adw_toast_set_action_target_value(this : Void*, action_target : Pointer(Void)) : Void
  fun adw_toast_set_button_label(this : Void*, button_label : Pointer(LibC::Char)) : Void
  fun adw_toast_set_custom_title(this : Void*, widget : Pointer(Void)) : Void
  fun adw_toast_set_detailed_action_name(this : Void*, detailed_action_name : Pointer(LibC::Char)) : Void
  fun adw_toast_set_priority(this : Void*, priority : UInt32) : Void
  fun adw_toast_set_timeout(this : Void*, timeout : UInt32) : Void
  fun adw_toast_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_toast_set_use_markup(this : Void*, use_markup : LibC::Int) : Void
  fun adw_toggle_get_child(this : Void*) : Pointer(Void)
  fun adw_toggle_get_enabled(this : Void*) : LibC::Int
  fun adw_toggle_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_toggle_get_index(this : Void*) : UInt32
  fun adw_toggle_get_label(this : Void*) : Pointer(LibC::Char)
  fun adw_toggle_get_name(this : Void*) : Pointer(LibC::Char)
  fun adw_toggle_get_tooltip(this : Void*) : Pointer(LibC::Char)
  fun adw_toggle_get_type : UInt64
  fun adw_toggle_get_use_underline(this : Void*) : LibC::Int
  fun adw_toggle_group_add(this : Void*, toggle : Pointer(Void)) : Void
  fun adw_toggle_group_get_active(this : Void*) : UInt32
  fun adw_toggle_group_get_active_name(this : Void*) : Pointer(LibC::Char)
  fun adw_toggle_group_get_can_shrink(this : Void*) : LibC::Int
  fun adw_toggle_group_get_homogeneous(this : Void*) : LibC::Int
  fun adw_toggle_group_get_n_toggles(this : Void*) : UInt32
  fun adw_toggle_group_get_toggle(this : Void*, index : UInt32) : Pointer(Void)
  fun adw_toggle_group_get_toggle_by_name(this : Void*, name : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_toggle_group_get_toggles(this : Void*) : Pointer(Void)
  fun adw_toggle_group_get_type : UInt64
  fun adw_toggle_group_new : Pointer(Void)
  fun adw_toggle_group_remove(this : Void*, toggle : Pointer(Void)) : Void
  fun adw_toggle_group_remove_all(this : Void*) : Void
  fun adw_toggle_group_set_active(this : Void*, active : UInt32) : Void
  fun adw_toggle_group_set_active_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_toggle_group_set_can_shrink(this : Void*, can_shrink : LibC::Int) : Void
  fun adw_toggle_group_set_homogeneous(this : Void*, homogeneous : LibC::Int) : Void
  fun adw_toggle_new : Pointer(Void)
  fun adw_toggle_set_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_toggle_set_enabled(this : Void*, enabled : LibC::Int) : Void
  fun adw_toggle_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_toggle_set_label(this : Void*, label : Pointer(LibC::Char)) : Void
  fun adw_toggle_set_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_toggle_set_tooltip(this : Void*, tooltip : Pointer(LibC::Char)) : Void
  fun adw_toggle_set_use_underline(this : Void*, use_underline : LibC::Int) : Void
  fun adw_toolbar_style_get_type : UInt64
  fun adw_toolbar_view_add_bottom_bar(this : Void*, widget : Pointer(Void)) : Void
  fun adw_toolbar_view_add_top_bar(this : Void*, widget : Pointer(Void)) : Void
  fun adw_toolbar_view_get_bottom_bar_height(this : Void*) : Int32
  fun adw_toolbar_view_get_bottom_bar_style(this : Void*) : UInt32
  fun adw_toolbar_view_get_content(this : Void*) : Pointer(Void)
  fun adw_toolbar_view_get_extend_content_to_bottom_edge(this : Void*) : LibC::Int
  fun adw_toolbar_view_get_extend_content_to_top_edge(this : Void*) : LibC::Int
  fun adw_toolbar_view_get_reveal_bottom_bars(this : Void*) : LibC::Int
  fun adw_toolbar_view_get_reveal_top_bars(this : Void*) : LibC::Int
  fun adw_toolbar_view_get_top_bar_height(this : Void*) : Int32
  fun adw_toolbar_view_get_top_bar_style(this : Void*) : UInt32
  fun adw_toolbar_view_get_type : UInt64
  fun adw_toolbar_view_new : Pointer(Void)
  fun adw_toolbar_view_remove(this : Void*, widget : Pointer(Void)) : Void
  fun adw_toolbar_view_set_bottom_bar_style(this : Void*, style : UInt32) : Void
  fun adw_toolbar_view_set_content(this : Void*, content : Pointer(Void)) : Void
  fun adw_toolbar_view_set_extend_content_to_bottom_edge(this : Void*, _extend : LibC::Int) : Void
  fun adw_toolbar_view_set_extend_content_to_top_edge(this : Void*, _extend : LibC::Int) : Void
  fun adw_toolbar_view_set_reveal_bottom_bars(this : Void*, reveal : LibC::Int) : Void
  fun adw_toolbar_view_set_reveal_top_bars(this : Void*, reveal : LibC::Int) : Void
  fun adw_toolbar_view_set_top_bar_style(this : Void*, style : UInt32) : Void
  fun adw_view_stack_add(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_view_stack_add_named(this : Void*, child : Pointer(Void), name : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_view_stack_add_titled(this : Void*, child : Pointer(Void), name : Pointer(LibC::Char), title : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_view_stack_add_titled_with_icon(this : Void*, child : Pointer(Void), name : Pointer(LibC::Char), title : Pointer(LibC::Char), icon_name : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_view_stack_get_child_by_name(this : Void*, name : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_view_stack_get_enable_transitions(this : Void*) : LibC::Int
  fun adw_view_stack_get_hhomogeneous(this : Void*) : LibC::Int
  fun adw_view_stack_get_page(this : Void*, child : Pointer(Void)) : Pointer(Void)
  fun adw_view_stack_get_pages(this : Void*) : Pointer(Void)
  fun adw_view_stack_get_transition_duration(this : Void*) : UInt32
  fun adw_view_stack_get_transition_running(this : Void*) : LibC::Int
  fun adw_view_stack_get_type : UInt64
  fun adw_view_stack_get_vhomogeneous(this : Void*) : LibC::Int
  fun adw_view_stack_get_visible_child(this : Void*) : Pointer(Void)
  fun adw_view_stack_get_visible_child_name(this : Void*) : Pointer(LibC::Char)
  fun adw_view_stack_new : Pointer(Void)
  fun adw_view_stack_page_get_badge_number(this : Void*) : UInt32
  fun adw_view_stack_page_get_child(this : Void*) : Pointer(Void)
  fun adw_view_stack_page_get_icon_name(this : Void*) : Pointer(LibC::Char)
  fun adw_view_stack_page_get_name(this : Void*) : Pointer(LibC::Char)
  fun adw_view_stack_page_get_needs_attention(this : Void*) : LibC::Int
  fun adw_view_stack_page_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_view_stack_page_get_type : UInt64
  fun adw_view_stack_page_get_use_underline(this : Void*) : LibC::Int
  fun adw_view_stack_page_get_visible(this : Void*) : LibC::Int
  fun adw_view_stack_page_set_badge_number(this : Void*, badge_number : UInt32) : Void
  fun adw_view_stack_page_set_icon_name(this : Void*, icon_name : Pointer(LibC::Char)) : Void
  fun adw_view_stack_page_set_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_view_stack_page_set_needs_attention(this : Void*, needs_attention : LibC::Int) : Void
  fun adw_view_stack_page_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_view_stack_page_set_use_underline(this : Void*, use_underline : LibC::Int) : Void
  fun adw_view_stack_page_set_visible(this : Void*, visible : LibC::Int) : Void
  fun adw_view_stack_pages_get_selected_page(this : Void*) : Pointer(Void)
  fun adw_view_stack_pages_get_type : UInt64
  fun adw_view_stack_pages_set_selected_page(this : Void*, page : Pointer(Void)) : Void
  fun adw_view_stack_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_view_stack_set_enable_transitions(this : Void*, enable_transitions : LibC::Int) : Void
  fun adw_view_stack_set_hhomogeneous(this : Void*, hhomogeneous : LibC::Int) : Void
  fun adw_view_stack_set_transition_duration(this : Void*, duration : UInt32) : Void
  fun adw_view_stack_set_vhomogeneous(this : Void*, vhomogeneous : LibC::Int) : Void
  fun adw_view_stack_set_visible_child(this : Void*, child : Pointer(Void)) : Void
  fun adw_view_stack_set_visible_child_name(this : Void*, name : Pointer(LibC::Char)) : Void
  fun adw_view_switcher_bar_get_reveal(this : Void*) : LibC::Int
  fun adw_view_switcher_bar_get_stack(this : Void*) : Pointer(Void)
  fun adw_view_switcher_bar_get_type : UInt64
  fun adw_view_switcher_bar_new : Pointer(Void)
  fun adw_view_switcher_bar_set_reveal(this : Void*, reveal : LibC::Int) : Void
  fun adw_view_switcher_bar_set_stack(this : Void*, stack : Pointer(Void)) : Void
  fun adw_view_switcher_get_policy(this : Void*) : UInt32
  fun adw_view_switcher_get_stack(this : Void*) : Pointer(Void)
  fun adw_view_switcher_get_type : UInt64
  fun adw_view_switcher_new : Pointer(Void)
  fun adw_view_switcher_policy_get_type : UInt64
  fun adw_view_switcher_set_policy(this : Void*, policy : UInt32) : Void
  fun adw_view_switcher_set_stack(this : Void*, stack : Pointer(Void)) : Void
  fun adw_view_switcher_title_get_stack(this : Void*) : Pointer(Void)
  fun adw_view_switcher_title_get_subtitle(this : Void*) : Pointer(LibC::Char)
  fun adw_view_switcher_title_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_view_switcher_title_get_title_visible(this : Void*) : LibC::Int
  fun adw_view_switcher_title_get_type : UInt64
  fun adw_view_switcher_title_get_view_switcher_enabled(this : Void*) : LibC::Int
  fun adw_view_switcher_title_new : Pointer(Void)
  fun adw_view_switcher_title_set_stack(this : Void*, stack : Pointer(Void)) : Void
  fun adw_view_switcher_title_set_subtitle(this : Void*, subtitle : Pointer(LibC::Char)) : Void
  fun adw_view_switcher_title_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_view_switcher_title_set_view_switcher_enabled(this : Void*, enabled : LibC::Int) : Void
  fun adw_window_add_breakpoint(this : Void*, breakpoint : Pointer(Void)) : Void
  fun adw_window_get_adaptive_preview(this : Void*) : LibC::Int
  fun adw_window_get_content(this : Void*) : Pointer(Void)
  fun adw_window_get_current_breakpoint(this : Void*) : Pointer(Void)
  fun adw_window_get_dialogs(this : Void*) : Pointer(Void)
  fun adw_window_get_type : UInt64
  fun adw_window_get_visible_dialog(this : Void*) : Pointer(Void)
  fun adw_window_new : Pointer(Void)
  fun adw_window_set_adaptive_preview(this : Void*, adaptive_preview : LibC::Int) : Void
  fun adw_window_set_content(this : Void*, content : Pointer(Void)) : Void
  fun adw_window_title_get_subtitle(this : Void*) : Pointer(LibC::Char)
  fun adw_window_title_get_title(this : Void*) : Pointer(LibC::Char)
  fun adw_window_title_get_type : UInt64
  fun adw_window_title_new(title : Pointer(LibC::Char), subtitle : Pointer(LibC::Char)) : Pointer(Void)
  fun adw_window_title_set_subtitle(this : Void*, subtitle : Pointer(LibC::Char)) : Void
  fun adw_window_title_set_title(this : Void*, title : Pointer(LibC::Char)) : Void
  fun adw_wrap_box_append(this : Void*, child : Pointer(Void)) : Void
  fun adw_wrap_box_get_align(this : Void*) : Float32
  fun adw_wrap_box_get_child_spacing(this : Void*) : Int32
  fun adw_wrap_box_get_child_spacing_unit(this : Void*) : UInt32
  fun adw_wrap_box_get_justify(this : Void*) : UInt32
  fun adw_wrap_box_get_justify_last_line(this : Void*) : LibC::Int
  fun adw_wrap_box_get_line_homogeneous(this : Void*) : LibC::Int
  fun adw_wrap_box_get_line_spacing(this : Void*) : Int32
  fun adw_wrap_box_get_line_spacing_unit(this : Void*) : UInt32
  fun adw_wrap_box_get_natural_line_length(this : Void*) : Int32
  fun adw_wrap_box_get_natural_line_length_unit(this : Void*) : UInt32
  fun adw_wrap_box_get_pack_direction(this : Void*) : UInt32
  fun adw_wrap_box_get_type : UInt64
  fun adw_wrap_box_get_wrap_policy(this : Void*) : UInt32
  fun adw_wrap_box_get_wrap_reverse(this : Void*) : LibC::Int
  fun adw_wrap_box_insert_child_after(this : Void*, child : Pointer(Void), sibling : Pointer(Void)) : Void
  fun adw_wrap_box_new : Pointer(Void)
  fun adw_wrap_box_prepend(this : Void*, child : Pointer(Void)) : Void
  fun adw_wrap_box_remove(this : Void*, child : Pointer(Void)) : Void
  fun adw_wrap_box_reorder_child_after(this : Void*, child : Pointer(Void), sibling : Pointer(Void)) : Void
  fun adw_wrap_box_set_align(this : Void*, align : Float32) : Void
  fun adw_wrap_box_set_child_spacing(this : Void*, child_spacing : Int32) : Void
  fun adw_wrap_box_set_child_spacing_unit(this : Void*, unit : UInt32) : Void
  fun adw_wrap_box_set_justify(this : Void*, justify : UInt32) : Void
  fun adw_wrap_box_set_justify_last_line(this : Void*, justify_last_line : LibC::Int) : Void
  fun adw_wrap_box_set_line_homogeneous(this : Void*, homogeneous : LibC::Int) : Void
  fun adw_wrap_box_set_line_spacing(this : Void*, line_spacing : Int32) : Void
  fun adw_wrap_box_set_line_spacing_unit(this : Void*, unit : UInt32) : Void
  fun adw_wrap_box_set_natural_line_length(this : Void*, natural_line_length : Int32) : Void
  fun adw_wrap_box_set_natural_line_length_unit(this : Void*, unit : UInt32) : Void
  fun adw_wrap_box_set_pack_direction(this : Void*, pack_direction : UInt32) : Void
  fun adw_wrap_box_set_wrap_policy(this : Void*, wrap_policy : UInt32) : Void
  fun adw_wrap_box_set_wrap_reverse(this : Void*, wrap_reverse : LibC::Int) : Void
  fun adw_wrap_layout_get_align(this : Void*) : Float32
  fun adw_wrap_layout_get_child_spacing(this : Void*) : Int32
  fun adw_wrap_layout_get_child_spacing_unit(this : Void*) : UInt32
  fun adw_wrap_layout_get_justify(this : Void*) : UInt32
  fun adw_wrap_layout_get_justify_last_line(this : Void*) : LibC::Int
  fun adw_wrap_layout_get_line_homogeneous(this : Void*) : LibC::Int
  fun adw_wrap_layout_get_line_spacing(this : Void*) : Int32
  fun adw_wrap_layout_get_line_spacing_unit(this : Void*) : UInt32
  fun adw_wrap_layout_get_natural_line_length(this : Void*) : Int32
  fun adw_wrap_layout_get_natural_line_length_unit(this : Void*) : UInt32
  fun adw_wrap_layout_get_pack_direction(this : Void*) : UInt32
  fun adw_wrap_layout_get_type : UInt64
  fun adw_wrap_layout_get_wrap_policy(this : Void*) : UInt32
  fun adw_wrap_layout_get_wrap_reverse(this : Void*) : LibC::Int
  fun adw_wrap_layout_new : Pointer(Void)
  fun adw_wrap_layout_set_align(this : Void*, align : Float32) : Void
  fun adw_wrap_layout_set_child_spacing(this : Void*, child_spacing : Int32) : Void
  fun adw_wrap_layout_set_child_spacing_unit(this : Void*, unit : UInt32) : Void
  fun adw_wrap_layout_set_justify(this : Void*, justify : UInt32) : Void
  fun adw_wrap_layout_set_justify_last_line(this : Void*, justify_last_line : LibC::Int) : Void
  fun adw_wrap_layout_set_line_homogeneous(this : Void*, homogeneous : LibC::Int) : Void
  fun adw_wrap_layout_set_line_spacing(this : Void*, line_spacing : Int32) : Void
  fun adw_wrap_layout_set_line_spacing_unit(this : Void*, unit : UInt32) : Void
  fun adw_wrap_layout_set_natural_line_length(this : Void*, natural_line_length : Int32) : Void
  fun adw_wrap_layout_set_natural_line_length_unit(this : Void*, unit : UInt32) : Void
  fun adw_wrap_layout_set_pack_direction(this : Void*, pack_direction : UInt32) : Void
  fun adw_wrap_layout_set_wrap_policy(this : Void*, wrap_policy : UInt32) : Void
  fun adw_wrap_layout_set_wrap_reverse(this : Void*, wrap_reverse : LibC::Int) : Void
  fun adw_wrap_policy_get_type : UInt64
end
