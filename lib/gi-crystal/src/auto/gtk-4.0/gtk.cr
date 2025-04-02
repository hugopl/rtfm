# Dependencies
require "../gsk-4.0/gsk.cr"
require "../gdk-4.0/gdk.cr"

# C lib declaration
require "./lib_gtk.cr"

# Wrappers
require "./about_dialog.cr"
require "./accessible.cr"
require "./accessible_list.cr"
require "./accessible_range.cr"
require "./accessible_text.cr"
require "./accessible_text_range.cr"
require "./action_bar.cr"
require "./actionable.cr"
require "./activate_action.cr"
require "./adjustment.cr"
require "./alert_dialog.cr"
require "./alternative_trigger.cr"
require "./any_filter.cr"
require "./app_chooser.cr"
require "./app_chooser_button.cr"
require "./app_chooser_dialog.cr"
require "./app_chooser_widget.cr"
require "./application.cr"
require "./application_window.cr"
require "./aspect_frame.cr"
require "./assistant.cr"
require "./assistant_page.cr"
require "./at_context.cr"
require "./bin_layout.cr"
require "./bitset.cr"
require "./bitset_iter.cr"
require "./bookmark_list.cr"
require "./bool_filter.cr"
require "./border.cr"
require "./box.cr"
require "./box_layout.cr"
require "./buildable.cr"
require "./buildable_parse_context.cr"
require "./buildable_parser.cr"
require "./builder.cr"
require "./builder_c_scope.cr"
require "./builder_list_item_factory.cr"
require "./builder_scope.cr"
require "./button.cr"
require "./c_closure_expression.cr"
require "./calendar.cr"
require "./callback_action.cr"
require "./cell_area.cr"
require "./cell_area_box.cr"
require "./cell_area_context.cr"
require "./cell_editable.cr"
require "./cell_layout.cr"
require "./cell_renderer.cr"
require "./cell_renderer_accel.cr"
require "./cell_renderer_combo.cr"
require "./cell_renderer_pixbuf.cr"
require "./cell_renderer_progress.cr"
require "./cell_renderer_spin.cr"
require "./cell_renderer_spinner.cr"
require "./cell_renderer_text.cr"
require "./cell_renderer_toggle.cr"
require "./cell_view.cr"
require "./center_box.cr"
require "./center_layout.cr"
require "./check_button.cr"
require "./closure_expression.cr"
require "./color_button.cr"
require "./color_chooser.cr"
require "./color_chooser_dialog.cr"
require "./color_chooser_widget.cr"
require "./color_dialog.cr"
require "./color_dialog_button.cr"
require "./column_view.cr"
require "./column_view_cell.cr"
require "./column_view_column.cr"
require "./column_view_row.cr"
require "./column_view_sorter.cr"
require "./combo_box.cr"
require "./combo_box_text.cr"
require "./constant_expression.cr"
require "./constraint.cr"
require "./constraint_guide.cr"
require "./constraint_layout.cr"
require "./constraint_layout_child.cr"
require "./constraint_target.cr"
require "./css_location.cr"
require "./css_provider.cr"
require "./css_section.cr"
require "./css_style_change.cr"
require "./custom_filter.cr"
require "./custom_layout.cr"
require "./custom_sorter.cr"
require "./dialog.cr"
require "./directory_list.cr"
require "./drag_icon.cr"
require "./drag_source.cr"
require "./drawing_area.cr"
require "./drop_controller_motion.cr"
require "./drop_down.cr"
require "./drop_target.cr"
require "./drop_target_async.cr"
require "./editable.cr"
require "./editable_label.cr"
require "./emoji_chooser.cr"
require "./entry.cr"
require "./entry_buffer.cr"
require "./entry_completion.cr"
require "./event_controller.cr"
require "./event_controller_focus.cr"
require "./event_controller_key.cr"
require "./event_controller_legacy.cr"
require "./event_controller_motion.cr"
require "./event_controller_scroll.cr"
require "./every_filter.cr"
require "./expander.cr"
require "./expression.cr"
require "./expression_watch.cr"
require "./file_chooser.cr"
require "./file_chooser_dialog.cr"
require "./file_chooser_native.cr"
require "./file_chooser_widget.cr"
require "./file_dialog.cr"
require "./file_filter.cr"
require "./file_launcher.cr"
require "./filter.cr"
require "./filter_list_model.cr"
require "./fixed.cr"
require "./fixed_layout.cr"
require "./fixed_layout_child.cr"
require "./flatten_list_model.cr"
require "./flow_box.cr"
require "./flow_box_child.cr"
require "./font_button.cr"
require "./font_chooser.cr"
require "./font_chooser_dialog.cr"
require "./font_chooser_widget.cr"
require "./font_dialog.cr"
require "./font_dialog_button.cr"
require "./frame.cr"
require "./gesture.cr"
require "./gesture_click.cr"
require "./gesture_drag.cr"
require "./gesture_long_press.cr"
require "./gesture_pan.cr"
require "./gesture_rotate.cr"
require "./gesture_single.cr"
require "./gesture_stylus.cr"
require "./gesture_swipe.cr"
require "./gesture_zoom.cr"
require "./gl_area.cr"
require "./graphics_offload.cr"
require "./grid.cr"
require "./grid_layout.cr"
require "./grid_layout_child.cr"
require "./grid_view.cr"
require "./header_bar.cr"
require "./icon_paintable.cr"
require "./icon_theme.cr"
require "./icon_view.cr"
require "./im_context.cr"
require "./im_context_simple.cr"
require "./im_multicontext.cr"
require "./image.cr"
require "./info_bar.cr"
require "./inscription.cr"
require "./keyval_trigger.cr"
require "./label.cr"
require "./layout_child.cr"
require "./layout_manager.cr"
require "./level_bar.cr"
require "./link_button.cr"
require "./list_base.cr"
require "./list_box.cr"
require "./list_box_row.cr"
require "./list_header.cr"
require "./list_item.cr"
require "./list_item_factory.cr"
require "./list_store.cr"
require "./list_view.cr"
require "./lock_button.cr"
require "./map_list_model.cr"
require "./media_controls.cr"
require "./media_file.cr"
require "./media_stream.cr"
require "./menu_button.cr"
require "./message_dialog.cr"
require "./mnemonic_action.cr"
require "./mnemonic_trigger.cr"
require "./mount_operation.cr"
require "./multi_filter.cr"
require "./multi_selection.cr"
require "./multi_sorter.cr"
require "./named_action.cr"
require "./native.cr"
require "./native_dialog.cr"
require "./never_trigger.cr"
require "./no_selection.cr"
require "./notebook.cr"
require "./notebook_page.cr"
require "./nothing_action.cr"
require "./numeric_sorter.cr"
require "./object_expression.cr"
require "./orientable.cr"
require "./overlay.cr"
require "./overlay_layout.cr"
require "./overlay_layout_child.cr"
require "./pad_action_entry.cr"
require "./pad_controller.cr"
require "./page_range.cr"
require "./page_setup.cr"
require "./page_setup_unix_dialog.cr"
require "./paned.cr"
require "./paper_size.cr"
require "./password_entry.cr"
require "./password_entry_buffer.cr"
require "./picture.cr"
require "./popover.cr"
require "./popover_menu.cr"
require "./popover_menu_bar.cr"
require "./print_backend.cr"
require "./print_context.cr"
require "./print_dialog.cr"
require "./print_job.cr"
require "./print_operation.cr"
require "./print_operation_preview.cr"
require "./print_settings.cr"
require "./print_setup.cr"
require "./print_unix_dialog.cr"
require "./printer.cr"
require "./progress_bar.cr"
require "./property_expression.cr"
require "./range.cr"
require "./recent_data.cr"
require "./recent_info.cr"
require "./recent_manager.cr"
require "./requested_size.cr"
require "./requisition.cr"
require "./revealer.cr"
require "./root.cr"
require "./scale.cr"
require "./scale_button.cr"
require "./scroll_info.cr"
require "./scrollable.cr"
require "./scrollbar.cr"
require "./scrolled_window.cr"
require "./search_bar.cr"
require "./search_entry.cr"
require "./section_model.cr"
require "./selection_filter_model.cr"
require "./selection_model.cr"
require "./separator.cr"
require "./settings.cr"
require "./shortcut.cr"
require "./shortcut_action.cr"
require "./shortcut_controller.cr"
require "./shortcut_label.cr"
require "./shortcut_manager.cr"
require "./shortcut_trigger.cr"
require "./shortcuts_group.cr"
require "./shortcuts_section.cr"
require "./shortcuts_shortcut.cr"
require "./shortcuts_window.cr"
require "./signal_action.cr"
require "./signal_list_item_factory.cr"
require "./single_selection.cr"
require "./size_group.cr"
require "./slice_list_model.cr"
require "./snapshot.cr"
require "./sort_list_model.cr"
require "./sorter.cr"
require "./spin_button.cr"
require "./spinner.cr"
require "./stack.cr"
require "./stack_page.cr"
require "./stack_sidebar.cr"
require "./stack_switcher.cr"
require "./statusbar.cr"
require "./string_filter.cr"
require "./string_list.cr"
require "./string_object.cr"
require "./string_sorter.cr"
require "./style_context.cr"
require "./style_provider.cr"
require "./switch.cr"
require "./symbolic_paintable.cr"
require "./text.cr"
require "./text_buffer.cr"
require "./text_child_anchor.cr"
require "./text_iter.cr"
require "./text_mark.cr"
require "./text_tag.cr"
require "./text_tag_table.cr"
require "./text_view.cr"
require "./toggle_button.cr"
require "./tooltip.cr"
require "./tree_drag_dest.cr"
require "./tree_drag_source.cr"
require "./tree_expander.cr"
require "./tree_iter.cr"
require "./tree_list_model.cr"
require "./tree_list_row.cr"
require "./tree_list_row_sorter.cr"
require "./tree_model.cr"
require "./tree_model_filter.cr"
require "./tree_model_sort.cr"
require "./tree_path.cr"
require "./tree_row_reference.cr"
require "./tree_selection.cr"
require "./tree_sortable.cr"
require "./tree_store.cr"
require "./tree_view.cr"
require "./tree_view_column.cr"
require "./uri_launcher.cr"
require "./video.cr"
require "./viewport.cr"
require "./volume_button.cr"
require "./widget.cr"
require "./widget_paintable.cr"
require "./window.cr"
require "./window_controls.cr"
require "./window_group.cr"
require "./window_handle.cr"

module Gtk
  ACCESSIBLE_ATTRIBUTE_BACKGROUND              = "bg-color"
  ACCESSIBLE_ATTRIBUTE_FAMILY                  = "family-name"
  ACCESSIBLE_ATTRIBUTE_FOREGROUND              = "fg-color"
  ACCESSIBLE_ATTRIBUTE_OVERLINE                = "overline"
  ACCESSIBLE_ATTRIBUTE_OVERLINE_NONE           = "none"
  ACCESSIBLE_ATTRIBUTE_OVERLINE_SINGLE         = "single"
  ACCESSIBLE_ATTRIBUTE_SIZE                    = "size"
  ACCESSIBLE_ATTRIBUTE_STRETCH                 = "stretch"
  ACCESSIBLE_ATTRIBUTE_STRETCH_CONDENSED       = "condensed"
  ACCESSIBLE_ATTRIBUTE_STRETCH_EXPANDED        = "expanded"
  ACCESSIBLE_ATTRIBUTE_STRETCH_EXTRA_CONDENSED = "extra_condensed"
  ACCESSIBLE_ATTRIBUTE_STRETCH_EXTRA_EXPANDED  = "extra_expanded"
  ACCESSIBLE_ATTRIBUTE_STRETCH_NORMAL          = "normal"
  ACCESSIBLE_ATTRIBUTE_STRETCH_SEMI_CONDENSED  = "semi_condensed"
  ACCESSIBLE_ATTRIBUTE_STRETCH_SEMI_EXPANDED   = "semi_expanded"
  ACCESSIBLE_ATTRIBUTE_STRETCH_ULTRA_CONDENSED = "ultra_condensed"
  ACCESSIBLE_ATTRIBUTE_STRETCH_ULTRA_EXPANDED  = "ultra_expanded"
  ACCESSIBLE_ATTRIBUTE_STRIKETHROUGH           = "strikethrough"
  ACCESSIBLE_ATTRIBUTE_STYLE                   = "style"
  ACCESSIBLE_ATTRIBUTE_STYLE_ITALIC            = "italic"
  ACCESSIBLE_ATTRIBUTE_STYLE_NORMAL            = "normal"
  ACCESSIBLE_ATTRIBUTE_STYLE_OBLIQUE           = "oblique"
  ACCESSIBLE_ATTRIBUTE_UNDERLINE               = "underline"
  ACCESSIBLE_ATTRIBUTE_UNDERLINE_DOUBLE        = "double"
  ACCESSIBLE_ATTRIBUTE_UNDERLINE_ERROR         = "error"
  ACCESSIBLE_ATTRIBUTE_UNDERLINE_NONE          = "none"
  ACCESSIBLE_ATTRIBUTE_UNDERLINE_SINGLE        = "single"
  ACCESSIBLE_ATTRIBUTE_VARIANT                 = "variant"
  ACCESSIBLE_ATTRIBUTE_VARIANT_ALL_PETITE_CAPS = "all-petite-caps"
  ACCESSIBLE_ATTRIBUTE_VARIANT_ALL_SMALL_CAPS  = "all-small-caps"
  ACCESSIBLE_ATTRIBUTE_VARIANT_PETITE_CAPS     = "petite-caps"
  ACCESSIBLE_ATTRIBUTE_VARIANT_SMALL_CAPS      = "small-caps"
  ACCESSIBLE_ATTRIBUTE_VARIANT_TITLE_CAPS      = "title-caps"
  ACCESSIBLE_ATTRIBUTE_VARIANT_UNICASE         = "unicase"
  ACCESSIBLE_ATTRIBUTE_WEIGHT                  = "weight"
  ACCESSIBLE_VALUE_UNDEFINED                   =   -1
  BINARY_AGE                                   = 1803
  IM_MODULE_EXTENSION_POINT_NAME               = "gtk-im-module"
  INPUT_ERROR                                  =             -1
  INTERFACE_AGE                                =              3
  INVALID_LIST_POSITION                        = 4294967295_u32
  LEVEL_BAR_OFFSET_FULL                        = "full"
  LEVEL_BAR_OFFSET_HIGH                        = "high"
  LEVEL_BAR_OFFSET_LOW                         = "low"
  MAJOR_VERSION                                = 4
  MAX_COMPOSE_LEN                              = 7
  MEDIA_FILE_EXTENSION_POINT_NAME              = "gtk-media-file"
  MICRO_VERSION                                =  3
  MINOR_VERSION                                = 18
  PAPER_NAME_A3                                = "iso_a3"
  PAPER_NAME_A4                                = "iso_a4"
  PAPER_NAME_A5                                = "iso_a5"
  PAPER_NAME_B5                                = "iso_b5"
  PAPER_NAME_EXECUTIVE                         = "na_executive"
  PAPER_NAME_LEGAL                             = "na_legal"
  PAPER_NAME_LETTER                            = "na_letter"
  PRINT_SETTINGS_COLLATE                       = "collate"
  PRINT_SETTINGS_DEFAULT_SOURCE                = "default-source"
  PRINT_SETTINGS_DITHER                        = "dither"
  PRINT_SETTINGS_DUPLEX                        = "duplex"
  PRINT_SETTINGS_FINISHINGS                    = "finishings"
  PRINT_SETTINGS_MEDIA_TYPE                    = "media-type"
  PRINT_SETTINGS_NUMBER_UP                     = "number-up"
  PRINT_SETTINGS_NUMBER_UP_LAYOUT              = "number-up-layout"
  PRINT_SETTINGS_N_COPIES                      = "n-copies"
  PRINT_SETTINGS_ORIENTATION                   = "orientation"
  PRINT_SETTINGS_OUTPUT_BASENAME               = "output-basename"
  PRINT_SETTINGS_OUTPUT_BIN                    = "output-bin"
  PRINT_SETTINGS_OUTPUT_DIR                    = "output-dir"
  PRINT_SETTINGS_OUTPUT_FILE_FORMAT            = "output-file-format"
  PRINT_SETTINGS_OUTPUT_URI                    = "output-uri"
  PRINT_SETTINGS_PAGE_RANGES                   = "page-ranges"
  PRINT_SETTINGS_PAGE_SET                      = "page-set"
  PRINT_SETTINGS_PAPER_FORMAT                  = "paper-format"
  PRINT_SETTINGS_PAPER_HEIGHT                  = "paper-height"
  PRINT_SETTINGS_PAPER_WIDTH                   = "paper-width"
  PRINT_SETTINGS_PRINTER                       = "printer"
  PRINT_SETTINGS_PRINTER_LPI                   = "printer-lpi"
  PRINT_SETTINGS_PRINT_PAGES                   = "print-pages"
  PRINT_SETTINGS_QUALITY                       = "quality"
  PRINT_SETTINGS_RESOLUTION                    = "resolution"
  PRINT_SETTINGS_RESOLUTION_X                  = "resolution-x"
  PRINT_SETTINGS_RESOLUTION_Y                  = "resolution-y"
  PRINT_SETTINGS_REVERSE                       = "reverse"
  PRINT_SETTINGS_SCALE                         = "scale"
  PRINT_SETTINGS_USE_COLOR                     = "use-color"
  PRINT_SETTINGS_WIN32_DRIVER_EXTRA            = "win32-driver-extra"
  PRINT_SETTINGS_WIN32_DRIVER_VERSION          = "win32-driver-version"
  PRIORITY_RESIZE                              = 110
  STYLE_PROVIDER_PRIORITY_APPLICATION          = 600
  STYLE_PROVIDER_PRIORITY_FALLBACK             =   1
  STYLE_PROVIDER_PRIORITY_SETTINGS             = 400
  STYLE_PROVIDER_PRIORITY_THEME                = 200
  STYLE_PROVIDER_PRIORITY_USER                 = 800
  TEXT_VIEW_PRIORITY_VALIDATE                  = 125
  TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID         =  -1
  TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID        =  -2

  # Callbacks

  alias AssistantPageFunc = Proc(Int32, Int32)

  alias CellAllocCallback = Proc(Gtk::CellRenderer, Gdk::Rectangle, Gdk::Rectangle, Bool)

  alias CellCallback = Proc(Gtk::CellRenderer, Bool)

  alias CellLayoutDataFunc = Proc(Gtk::CellLayout, Gtk::CellRenderer, Gtk::TreeModel, Gtk::TreeIter, Nil)

  alias CustomAllocateFunc = Proc(Gtk::Widget, Int32, Int32, Int32, Nil)

  alias CustomFilterFunc = Proc(GObject::Object, Bool)

  alias CustomMeasureFunc = Proc(Gtk::Widget, Gtk::Orientation, Int32, Int32, Int32, Int32, Int32, Nil)

  alias CustomRequestModeFunc = Proc(Gtk::Widget, Gtk::SizeRequestMode)

  alias DrawingAreaDrawFunc = Proc(Gtk::DrawingArea, Cairo::Context, Int32, Int32, Nil)

  alias EntryCompletionMatchFunc = Proc(Gtk::EntryCompletion, ::String, Gtk::TreeIter, Bool)

  alias ExpressionNotify = Proc(Nil)

  alias FlowBoxCreateWidgetFunc = Proc(GObject::Object, Gtk::Widget)

  alias FlowBoxFilterFunc = Proc(Gtk::FlowBoxChild, Bool)

  alias FlowBoxForeachFunc = Proc(Gtk::FlowBox, Gtk::FlowBoxChild, Nil)

  alias FlowBoxSortFunc = Proc(Gtk::FlowBoxChild, Gtk::FlowBoxChild, Int32)

  alias FontFilterFunc = Proc(Pango::FontFamily, Pango::FontFace, Bool)

  alias IconViewForeachFunc = Proc(Gtk::IconView, Gtk::TreePath, Nil)

  alias ListBoxCreateWidgetFunc = Proc(GObject::Object, Gtk::Widget)

  alias ListBoxFilterFunc = Proc(Gtk::ListBoxRow, Bool)

  alias ListBoxForeachFunc = Proc(Gtk::ListBox, Gtk::ListBoxRow, Nil)

  alias ListBoxSortFunc = Proc(Gtk::ListBoxRow, Gtk::ListBoxRow, Int32)

  alias ListBoxUpdateHeaderFunc = Proc(Gtk::ListBoxRow, Gtk::ListBoxRow?, Nil)

  alias MapListModelMapFunc = Proc(GObject::Object, GObject::Object)

  alias MenuButtonCreatePopupFunc = Proc(Gtk::MenuButton, Nil)

  alias PageSetupDoneFunc = Proc(Gtk::PageSetup, Nil)

  alias PrintJobCompleteFunc = Proc(Gtk::PrintJob, Pointer(Void), GLib::Error, Nil)

  alias PrintSettingsFunc = Proc(::String, ::String, Nil)

  alias PrinterFunc = Proc(Gtk::Printer, Bool)

  alias ScaleFormatValueFunc = Proc(Gtk::Scale, Float64, ::String)

  alias ShortcutFunc = Proc(Gtk::Widget, GLib::Variant?, Bool)

  alias TextBufferCommitNotify = Proc(Gtk::TextBuffer, Gtk::TextBufferNotifyFlags, UInt32, UInt32, Nil)

  alias TextCharPredicate = Proc(Char, Bool)

  alias TextTagTableForeach = Proc(Gtk::TextTag, Nil)

  alias TickCallback = Proc(Gtk::Widget, Gdk::FrameClock, Bool)

  alias TreeCellDataFunc = Proc(Gtk::TreeViewColumn, Gtk::CellRenderer, Gtk::TreeModel, Gtk::TreeIter, Nil)

  alias TreeIterCompareFunc = Proc(Gtk::TreeModel, Gtk::TreeIter, Gtk::TreeIter, Int32)

  alias TreeListModelCreateModelFunc = Proc(GObject::Object, Gio::ListModel)

  alias TreeModelFilterModifyFunc = Proc(Gtk::TreeModel, Gtk::TreeIter, GObject::Value, Int32, Nil)

  alias TreeModelFilterVisibleFunc = Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)

  alias TreeModelForeachFunc = Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Bool)

  alias TreeSelectionForeachFunc = Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Nil)

  alias TreeSelectionFunc = Proc(Gtk::TreeSelection, Gtk::TreeModel, Gtk::TreePath, Bool, Bool)

  alias TreeViewColumnDropFunc = Proc(Gtk::TreeView, Gtk::TreeViewColumn, Gtk::TreeViewColumn, Gtk::TreeViewColumn, Bool)

  alias TreeViewMappingFunc = Proc(Gtk::TreeView, Gtk::TreePath, Nil)

  alias TreeViewRowSeparatorFunc = Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)

  alias TreeViewSearchEqualFunc = Proc(Gtk::TreeModel, Int32, ::String, Gtk::TreeIter, Bool)

  alias WidgetActionActivateFunc = Proc(Gtk::Widget, ::String, GLib::Variant?, Nil)

  # Base class for all errors in this module.
  class GtkError < GLib::Error
  end

  # Enums

  enum AccessibleAnnouncementPriority : UInt32
    Low    = 0
    Medium = 1
    High   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_announcement_priority_get_type
    end
  end

  enum AccessibleAutocomplete : UInt32
    None   = 0
    Inline = 1
    List   = 2
    Both   = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_autocomplete_get_type
    end
  end

  enum AccessibleInvalidState : UInt32
    False    = 0
    True     = 1
    Grammar  = 2
    Spelling = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_invalid_state_get_type
    end
  end

  enum AccessiblePlatformState : UInt32
    Focusable = 0
    Focused   = 1
    Active    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_platform_state_get_type
    end
  end

  enum AccessibleProperty : UInt32
    Autocomplete    =  0
    Description     =  1
    HasPopup        =  2
    KeyShortcuts    =  3
    Label           =  4
    Level           =  5
    Modal           =  6
    MultiLine       =  7
    MultiSelectable =  8
    Orientation     =  9
    Placeholder     = 10
    ReadOnly        = 11
    Required        = 12
    RoleDescription = 13
    Sort            = 14
    ValueMax        = 15
    ValueMin        = 16
    ValueNow        = 17
    ValueText       = 18
    HelpText        = 19

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_property_get_type
    end
  end

  enum AccessibleRelation : UInt32
    ActiveDescendant =  0
    ColCount         =  1
    ColIndex         =  2
    ColIndexText     =  3
    ColSpan          =  4
    Controls         =  5
    DescribedBy      =  6
    Details          =  7
    ErrorMessage     =  8
    FlowTo           =  9
    LabelledBy       = 10
    Owns             = 11
    PosInSet         = 12
    RowCount         = 13
    RowIndex         = 14
    RowIndexText     = 15
    RowSpan          = 16
    SetSize          = 17
    LabelFor         = 18
    DescriptionFor   = 19
    ControlledBy     = 20
    DetailsFor       = 21
    ErrorMessageFor  = 22
    FlowFrom         = 23

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_relation_get_type
    end
  end

  enum AccessibleRole : UInt32
    Alert            =  0
    AlertDialog      =  1
    Banner           =  2
    Button           =  3
    Caption          =  4
    Cell             =  5
    Checkbox         =  6
    ColumnHeader     =  7
    ComboBox         =  8
    Command          =  9
    Composite        = 10
    Dialog           = 11
    Document         = 12
    Feed             = 13
    Form             = 14
    Generic          = 15
    Grid             = 16
    GridCell         = 17
    Group            = 18
    Heading          = 19
    Img              = 20
    Input            = 21
    Label            = 22
    Landmark         = 23
    Legend           = 24
    Link             = 25
    List             = 26
    ListBox          = 27
    ListItem         = 28
    Log              = 29
    Main             = 30
    Marquee          = 31
    Math             = 32
    Meter            = 33
    Menu             = 34
    MenuBar          = 35
    MenuItem         = 36
    MenuItemCheckbox = 37
    MenuItemRadio    = 38
    Navigation       = 39
    None             = 40
    Note             = 41
    Option           = 42
    Presentation     = 43
    ProgressBar      = 44
    Radio            = 45
    RadioGroup       = 46
    Range            = 47
    Region           = 48
    Row              = 49
    RowGroup         = 50
    RowHeader        = 51
    Scrollbar        = 52
    Search           = 53
    SearchBox        = 54
    Section          = 55
    SectionHead      = 56
    Select           = 57
    Separator        = 58
    Slider           = 59
    SpinButton       = 60
    Status           = 61
    Structure        = 62
    Switch           = 63
    Tab              = 64
    Table            = 65
    TabList          = 66
    TabPanel         = 67
    TextBox          = 68
    Time             = 69
    Timer            = 70
    Toolbar          = 71
    Tooltip          = 72
    Tree             = 73
    TreeGrid         = 74
    TreeItem         = 75
    Widget           = 76
    Window           = 77
    ToggleButton     = 78
    Application      = 79
    Paragraph        = 80
    BlockQuote       = 81
    Article          = 82
    Comment          = 83
    Terminal         = 84

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_role_get_type
    end
  end

  enum AccessibleSort : UInt32
    None       = 0
    Ascending  = 1
    Descending = 2
    Other      = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_sort_get_type
    end
  end

  enum AccessibleState : UInt32
    Busy     = 0
    Checked  = 1
    Disabled = 2
    Expanded = 3
    Hidden   = 4
    Invalid  = 5
    Pressed  = 6
    Selected = 7
    Visited  = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_state_get_type
    end
  end

  enum AccessibleTextContentChange : UInt32
    Insert = 0
    Remove = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_text_content_change_get_type
    end
  end

  enum AccessibleTextGranularity : UInt32
    Character = 0
    Word      = 1
    Sentence  = 2
    Line      = 3
    Paragraph = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_text_granularity_get_type
    end
  end

  enum AccessibleTristate : UInt32
    False = 0
    True  = 1
    Mixed = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_accessible_tristate_get_type
    end
  end

  enum Align : UInt32
    Fill           = 0
    Start          = 1
    End            = 2
    Center         = 3
    BaselineFill   = 4
    Baseline       = 4
    BaselineCenter = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_align_get_type
    end
  end

  enum ArrowType : UInt32
    Up    = 0
    Down  = 1
    Left  = 2
    Right = 3
    None  = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_arrow_type_get_type
    end
  end

  enum AssistantPageType : UInt32
    Content  = 0
    Intro    = 1
    Confirm  = 2
    Summary  = 3
    Progress = 4
    Custom   = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_assistant_page_type_get_type
    end
  end

  enum BaselinePosition : UInt32
    Top    = 0
    Center = 1
    Bottom = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_baseline_position_get_type
    end
  end

  enum BorderStyle : UInt32
    None   = 0
    Hidden = 1
    Solid  = 2
    Inset  = 3
    Outset = 4
    Dotted = 5
    Dashed = 6
    Double = 7
    Groove = 8
    Ridge  = 9

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_border_style_get_type
    end
  end

  enum ButtonsType : UInt32
    None     = 0
    Ok       = 1
    Close    = 2
    Cancel   = 3
    YesNo    = 4
    OkCancel = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_buttons_type_get_type
    end
  end

  enum CellRendererAccelMode : UInt32
    Gtk   = 0
    Other = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_cell_renderer_accel_mode_get_type
    end
  end

  enum CellRendererMode : UInt32
    Inert       = 0
    Activatable = 1
    Editable    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_cell_renderer_mode_get_type
    end
  end

  enum Collation : UInt32
    None     = 0
    Unicode  = 1
    Filename = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_collation_get_type
    end
  end

  enum ConstraintAttribute : UInt32
    None     =  0
    Left     =  1
    Right    =  2
    Top      =  3
    Bottom   =  4
    Start    =  5
    End      =  6
    Width    =  7
    Height   =  8
    CenterX  =  9
    CenterY  = 10
    Baseline = 11

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_constraint_attribute_get_type
    end
  end

  enum ConstraintRelation : Int32
    Le = -1
    Eq =  0
    Ge =  1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_constraint_relation_get_type
    end
  end

  enum ConstraintStrength : UInt32
    Required = 1001001000
    Strong   = 1000000000
    Medium   =       1000
    Weak     =          1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_constraint_strength_get_type
    end
  end

  enum ContentFit : UInt32
    Fill      = 0
    Contain   = 1
    Cover     = 2
    ScaleDown = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_content_fit_get_type
    end
  end

  enum CornerType : UInt32
    TopLeft     = 0
    BottomLeft  = 1
    TopRight    = 2
    BottomRight = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_corner_type_get_type
    end
  end

  enum CssParserWarning : UInt32
    Deprecated    = 0
    Syntax        = 1
    Unimplemented = 2
  end

  enum DeleteType : UInt32
    Chars           = 0
    WordEnds        = 1
    Words           = 2
    DisplayLines    = 3
    DisplayLineEnds = 4
    ParagraphEnds   = 5
    Paragraphs      = 6
    Whitespace      = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_delete_type_get_type
    end
  end

  enum DirectionType : UInt32
    TabForward  = 0
    TabBackward = 1
    Up          = 2
    Down        = 3
    Left        = 4
    Right       = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_direction_type_get_type
    end
  end

  enum EditableProperties : UInt32
    PropText           = 0
    PropCursorPosition = 1
    PropSelectionBound = 2
    PropEditable       = 3
    PropWidthChars     = 4
    PropMaxWidthChars  = 5
    PropXalign         = 6
    PropEnableUndo     = 7
    NumProperties      = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_editable_properties_get_type
    end
  end

  enum EntryIconPosition : UInt32
    Primary   = 0
    Secondary = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_entry_icon_position_get_type
    end
  end

  enum EventSequenceState : UInt32
    None    = 0
    Claimed = 1
    Denied  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_event_sequence_state_get_type
    end
  end

  enum FileChooserAction : UInt32
    Open         = 0
    Save         = 1
    SelectFolder = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_file_chooser_action_get_type
    end
  end

  enum FilterChange : UInt32
    Different  = 0
    LessStrict = 1
    MoreStrict = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_filter_change_get_type
    end
  end

  enum FilterMatch : UInt32
    Some = 0
    None = 1
    All  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_filter_match_get_type
    end
  end

  enum FontLevel : UInt32
    Family   = 0
    Face     = 1
    Font     = 2
    Features = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_font_level_get_type
    end
  end

  enum FontRendering : UInt32
    Automatic = 0
    Manual    = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_font_rendering_get_type
    end
  end

  enum GraphicsOffloadEnabled : UInt32
    Enabled  = 0
    Disabled = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_graphics_offload_enabled_get_type
    end
  end

  enum IconSize : UInt32
    Inherit = 0
    Normal  = 1
    Large   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_icon_size_get_type
    end
  end

  enum IconViewDropPosition : UInt32
    NoDrop    = 0
    DropInto  = 1
    DropLeft  = 2
    DropRight = 3
    DropAbove = 4
    DropBelow = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_icon_view_drop_position_get_type
    end
  end

  enum ImageType : UInt32
    Empty     = 0
    IconName  = 1
    Gicon     = 2
    Paintable = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_image_type_get_type
    end
  end

  enum InputPurpose : UInt32
    FreeForm =  0
    Alpha    =  1
    Digits   =  2
    Number   =  3
    Phone    =  4
    Url      =  5
    Email    =  6
    Name     =  7
    Password =  8
    Pin      =  9
    Terminal = 10

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_input_purpose_get_type
    end
  end

  enum InscriptionOverflow : UInt32
    Clip            = 0
    EllipsizeStart  = 1
    EllipsizeMiddle = 2
    EllipsizeEnd    = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_inscription_overflow_get_type
    end
  end

  enum Justification : UInt32
    Left   = 0
    Right  = 1
    Center = 2
    Fill   = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_justification_get_type
    end
  end

  enum LevelBarMode : UInt32
    Continuous = 0
    Discrete   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_level_bar_mode_get_type
    end
  end

  enum License : UInt32
    Unknown    =  0
    Custom     =  1
    Gpl20      =  2
    Gpl30      =  3
    Lgpl21     =  4
    Lgpl30     =  5
    Bsd        =  6
    MitX11     =  7
    Artistic   =  8
    Gpl20Only  =  9
    Gpl30Only  = 10
    Lgpl21Only = 11
    Lgpl30Only = 12
    Agpl30     = 13
    Agpl30Only = 14
    Bsd3       = 15
    Apache20   = 16
    Mpl20      = 17
    G0bsd      = 18

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_license_get_type
    end
  end

  enum ListTabBehavior : UInt32
    All  = 0
    Item = 1
    Cell = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_list_tab_behavior_get_type
    end
  end

  enum MessageType : UInt32
    Info     = 0
    Warning  = 1
    Question = 2
    Error    = 3
    Other    = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_message_type_get_type
    end
  end

  enum MovementStep : UInt32
    LogicalPositions = 0
    VisualPositions  = 1
    Words            = 2
    DisplayLines     = 3
    DisplayLineEnds  = 4
    Paragraphs       = 5
    ParagraphEnds    = 6
    Pages            = 7
    BufferEnds       = 8
    HorizontalPages  = 9

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_movement_step_get_type
    end
  end

  enum NaturalWrapMode : UInt32
    Inherit = 0
    None    = 1
    Word    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_natural_wrap_mode_get_type
    end
  end

  enum NotebookTab : UInt32
    First = 0
    Last  = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_notebook_tab_get_type
    end
  end

  enum NumberUpLayout : UInt32
    Lrtb = 0
    Lrbt = 1
    Rltb = 2
    Rlbt = 3
    Tblr = 4
    Tbrl = 5
    Btlr = 6
    Btrl = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_number_up_layout_get_type
    end
  end

  enum Ordering : Int32
    Smaller = -1
    Equal   =  0
    Larger  =  1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_ordering_get_type
    end
  end

  enum Orientation : UInt32
    Horizontal = 0
    Vertical   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_orientation_get_type
    end
  end

  enum Overflow : UInt32
    Visible = 0
    Hidden  = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_overflow_get_type
    end
  end

  enum PackType : UInt32
    Start = 0
    End   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_pack_type_get_type
    end
  end

  enum PadActionType : UInt32
    Button = 0
    Ring   = 1
    Strip  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_pad_action_type_get_type
    end
  end

  enum PageOrientation : UInt32
    Portrait         = 0
    Landscape        = 1
    ReversePortrait  = 2
    ReverseLandscape = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_page_orientation_get_type
    end
  end

  enum PageSet : UInt32
    All  = 0
    Even = 1
    Odd  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_page_set_get_type
    end
  end

  enum PanDirection : UInt32
    Left  = 0
    Right = 1
    Up    = 2
    Down  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_pan_direction_get_type
    end
  end

  enum PolicyType : UInt32
    Always    = 0
    Automatic = 1
    Never     = 2
    External  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_policy_type_get_type
    end
  end

  enum PositionType : UInt32
    Left   = 0
    Right  = 1
    Top    = 2
    Bottom = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_position_type_get_type
    end
  end

  enum PrintDuplex : UInt32
    Simplex    = 0
    Horizontal = 1
    Vertical   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_duplex_get_type
    end
  end

  enum PrintOperationAction : UInt32
    PrintDialog = 0
    Print       = 1
    Preview     = 2
    Export      = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_operation_action_get_type
    end
  end

  enum PrintOperationResult : UInt32
    Error      = 0
    Apply      = 1
    Cancel     = 2
    InProgress = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_operation_result_get_type
    end
  end

  enum PrintPages : UInt32
    All       = 0
    Current   = 1
    Ranges    = 2
    Selection = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_pages_get_type
    end
  end

  enum PrintQuality : UInt32
    Low    = 0
    Normal = 1
    High   = 2
    Draft  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_quality_get_type
    end
  end

  enum PrintStatus : UInt32
    Initial         = 0
    Preparing       = 1
    GeneratingData  = 2
    SendingData     = 3
    Pending         = 4
    PendingIssue    = 5
    Printing        = 6
    Finished        = 7
    FinishedAborted = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_status_get_type
    end
  end

  enum PropagationLimit : UInt32
    None       = 0
    SameNative = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_propagation_limit_get_type
    end
  end

  enum PropagationPhase : UInt32
    None    = 0
    Capture = 1
    Bubble  = 2
    Target  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_propagation_phase_get_type
    end
  end

  enum ResponseType : Int32
    None        =  -1
    Reject      =  -2
    Accept      =  -3
    DeleteEvent =  -4
    Ok          =  -5
    Cancel      =  -6
    Close       =  -7
    Yes         =  -8
    No          =  -9
    Apply       = -10
    Help        = -11

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_response_type_get_type
    end
  end

  enum RevealerTransitionType : UInt32
    None       = 0
    Crossfade  = 1
    SlideRight = 2
    SlideLeft  = 3
    SlideUp    = 4
    SlideDown  = 5
    SwingRight = 6
    SwingLeft  = 7
    SwingUp    = 8
    SwingDown  = 9

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_revealer_transition_type_get_type
    end
  end

  enum ScrollStep : UInt32
    Steps           = 0
    Pages           = 1
    Ends            = 2
    HorizontalSteps = 3
    HorizontalPages = 4
    HorizontalEnds  = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_scroll_step_get_type
    end
  end

  enum ScrollType : UInt32
    None         =  0
    Jump         =  1
    StepBackward =  2
    StepForward  =  3
    PageBackward =  4
    PageForward  =  5
    StepUp       =  6
    StepDown     =  7
    PageUp       =  8
    PageDown     =  9
    StepLeft     = 10
    StepRight    = 11
    PageLeft     = 12
    PageRight    = 13
    Start        = 14
    End          = 15

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_scroll_type_get_type
    end
  end

  enum ScrollablePolicy : UInt32
    Minimum = 0
    Natural = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_scrollable_policy_get_type
    end
  end

  enum SelectionMode : UInt32
    None     = 0
    Single   = 1
    Browse   = 2
    Multiple = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_selection_mode_get_type
    end
  end

  enum SensitivityType : UInt32
    Auto = 0
    On   = 1
    Off  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_sensitivity_type_get_type
    end
  end

  enum ShortcutScope : UInt32
    Local   = 0
    Managed = 1
    Global  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_shortcut_scope_get_type
    end
  end

  enum ShortcutType : UInt32
    Accelerator                   = 0
    GesturePinch                  = 1
    GestureStretch                = 2
    GestureRotateClockwise        = 3
    GestureRotateCounterclockwise = 4
    GestureTwoFingerSwipeLeft     = 5
    GestureTwoFingerSwipeRight    = 6
    Gesture                       = 7
    GestureSwipeLeft              = 8
    GestureSwipeRight             = 9

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_shortcut_type_get_type
    end
  end

  enum SizeGroupMode : UInt32
    None       = 0
    Horizontal = 1
    Vertical   = 2
    Both       = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_size_group_mode_get_type
    end
  end

  enum SizeRequestMode : UInt32
    HeightForWidth = 0
    WidthForHeight = 1
    ConstantSize   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_size_request_mode_get_type
    end
  end

  enum SortType : UInt32
    Ascending  = 0
    Descending = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_sort_type_get_type
    end
  end

  enum SorterChange : UInt32
    Different  = 0
    Inverted   = 1
    LessStrict = 2
    MoreStrict = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_sorter_change_get_type
    end
  end

  enum SorterOrder : UInt32
    Partial = 0
    None    = 1
    Total   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_sorter_order_get_type
    end
  end

  enum SpinButtonUpdatePolicy : UInt32
    Always  = 0
    IfValid = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_spin_button_update_policy_get_type
    end
  end

  enum SpinType : UInt32
    StepForward  = 0
    StepBackward = 1
    PageForward  = 2
    PageBackward = 3
    Home         = 4
    End          = 5
    UserDefined  = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_spin_type_get_type
    end
  end

  enum StackTransitionType : UInt32
    None            =  0
    Crossfade       =  1
    SlideRight      =  2
    SlideLeft       =  3
    SlideUp         =  4
    SlideDown       =  5
    SlideLeftRight  =  6
    SlideUpDown     =  7
    OverUp          =  8
    OverDown        =  9
    OverLeft        = 10
    OverRight       = 11
    UnderUp         = 12
    UnderDown       = 13
    UnderLeft       = 14
    UnderRight      = 15
    OverUpDown      = 16
    OverDownUp      = 17
    OverLeftRight   = 18
    OverRightLeft   = 19
    RotateLeft      = 20
    RotateRight     = 21
    RotateLeftRight = 22

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_stack_transition_type_get_type
    end
  end

  enum StringFilterMatchMode : UInt32
    Exact     = 0
    Substring = 1
    Prefix    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_string_filter_match_mode_get_type
    end
  end

  enum SymbolicColor : UInt32
    Foreground = 0
    Error      = 1
    Warning    = 2
    Success    = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_symbolic_color_get_type
    end
  end

  enum SystemSetting : UInt32
    Dpi        = 0
    FontName   = 1
    FontConfig = 2
    Display    = 3
    IconTheme  = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_system_setting_get_type
    end
  end

  enum TextDirection : UInt32
    None = 0
    Ltr  = 1
    Rtl  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_text_direction_get_type
    end
  end

  enum TextExtendSelection : UInt32
    Word = 0
    Line = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_text_extend_selection_get_type
    end
  end

  enum TextViewLayer : UInt32
    BelowText = 0
    AboveText = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_text_view_layer_get_type
    end
  end

  enum TextWindowType : UInt32
    Widget = 1
    Text   = 2
    Left   = 3
    Right  = 4
    Top    = 5
    Bottom = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_text_window_type_get_type
    end
  end

  enum TreeViewColumnSizing : UInt32
    GrowOnly = 0
    Autosize = 1
    Fixed    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_tree_view_column_sizing_get_type
    end
  end

  enum TreeViewDropPosition : UInt32
    Before       = 0
    After        = 1
    IntoOrBefore = 2
    IntoOrAfter  = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_tree_view_drop_position_get_type
    end
  end

  enum TreeViewGridLines : UInt32
    None       = 0
    Horizontal = 1
    Vertical   = 2
    Both       = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_tree_view_grid_lines_get_type
    end
  end

  enum Unit : UInt32
    None   = 0
    Points = 1
    Inch   = 2
    Mm     = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_unit_get_type
    end
  end

  enum WrapMode : UInt32
    None     = 0
    Char     = 1
    Word     = 2
    WordChar = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_wrap_mode_get_type
    end
  end

  # Flags

  @[Flags]
  enum ApplicationInhibitFlags : UInt32
    Logout  = 1
    Switch  = 2
    Suspend = 4
    Idle    = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_application_inhibit_flags_get_type
    end
  end

  @[Flags]
  enum BuilderClosureFlags : UInt32
    Swapped = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_builder_closure_flags_get_type
    end
  end

  @[Flags]
  enum CellRendererState : UInt32
    Selected    =  1
    Prelit      =  2
    Insensitive =  4
    Sorted      =  8
    Focused     = 16
    Expandable  = 32
    Expanded    = 64

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_cell_renderer_state_get_type
    end
  end

  @[Flags]
  enum DebugFlags : UInt32
    Text           =       1
    Tree           =       2
    Keybindings    =       4
    Modules        =       8
    Geometry       =      16
    Icontheme      =      32
    Printing       =      64
    BuilderTrace   =     128
    SizeRequest    =     256
    NoCssCache     =     512
    Interactive    =    1024
    Actions        =    4096
    Layout         =    8192
    Snapshot       =   16384
    Constraints    =   32768
    BuilderObjects =   65536
    A11y           =  131072
    Iconfallback   =  262144
    InvertTextDir  =  524288
    Css            = 1048576
    Builder        = 2097152

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_debug_flags_get_type
    end
  end

  @[Flags]
  enum DialogFlags : UInt32
    Modal             = 1
    DestroyWithParent = 2
    UseHeaderBar      = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_dialog_flags_get_type
    end
  end

  @[Flags]
  enum EventControllerScrollFlags : UInt32
    Vertical   = 1
    Horizontal = 2
    Discrete   = 4
    Kinetic    = 8
    BothAxes   = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_event_controller_scroll_flags_get_type
    end
  end

  @[Flags]
  enum FontChooserLevel : UInt32
    Family     = 0
    Style      = 1
    Size       = 2
    Variations = 4
    Features   = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_font_chooser_level_get_type
    end
  end

  @[Flags]
  enum IconLookupFlags : UInt32
    ForceRegular  = 1
    ForceSymbolic = 2
    Preload       = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_icon_lookup_flags_get_type
    end
  end

  @[Flags]
  enum InputHints : UInt32
    Spellcheck         =    1
    NoSpellcheck       =    2
    WordCompletion     =    4
    Lowercase          =    8
    UppercaseChars     =   16
    UppercaseWords     =   32
    UppercaseSentences =   64
    InhibitOsk         =  128
    VerticalWriting    =  256
    Emoji              =  512
    NoEmoji            = 1024
    Private            = 2048

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_input_hints_get_type
    end
  end

  @[Flags]
  enum ListScrollFlags : UInt32
    Focus  = 1
    Select = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_list_scroll_flags_get_type
    end
  end

  @[Flags]
  enum PickFlags : UInt32
    Default       = 0
    Insensitive   = 1
    NonTargetable = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_pick_flags_get_type
    end
  end

  @[Flags]
  enum PopoverMenuFlags : UInt32
    Sliding = 0
    Nested  = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_popover_menu_flags_get_type
    end
  end

  @[Flags]
  enum PrintCapabilities : UInt32
    PageSet        =   1
    Copies         =   2
    Collate        =   4
    Reverse        =   8
    Scale          =  16
    GeneratePdf    =  32
    GeneratePs     =  64
    Preview        = 128
    NumberUp       = 256
    NumberUpLayout = 512

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_print_capabilities_get_type
    end
  end

  @[Flags]
  enum ShortcutActionFlags : UInt32
    Exclusive = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_shortcut_action_flags_get_type
    end
  end

  @[Flags]
  enum StateFlags : UInt32
    Normal       =     0
    Active       =     1
    Prelight     =     2
    Selected     =     4
    Insensitive  =     8
    Inconsistent =    16
    Focused      =    32
    Backdrop     =    64
    DirLtr       =   128
    DirRtl       =   256
    Link         =   512
    Visited      =  1024
    Checked      =  2048
    DropActive   =  4096
    FocusVisible =  8192
    FocusWithin  = 16384

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_state_flags_get_type
    end
  end

  @[Flags]
  enum StyleContextPrintFlags : UInt32
    Recurse    = 1
    ShowStyle  = 2
    ShowChange = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_style_context_print_flags_get_type
    end
  end

  @[Flags]
  enum TextBufferNotifyFlags : UInt32
    BeforeInsert = 1
    AfterInsert  = 2
    BeforeDelete = 4
    AfterDelete  = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_text_buffer_notify_flags_get_type
    end
  end

  @[Flags]
  enum TextSearchFlags : UInt32
    VisibleOnly     = 1
    TextOnly        = 2
    CaseInsensitive = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_text_search_flags_get_type
    end
  end

  @[Flags]
  enum TreeModelFlags : UInt32
    ItersPersist = 1
    ListOnly     = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_tree_model_flags_get_type
    end
  end

  def self.accelerator_get_default_mod_mask : Gdk::ModifierType
    # gtk_accelerator_get_default_mod_mask: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_accelerator_get_default_mod_mask

    # Return value handling
    Gdk::ModifierType.new(_retval)
  end

  def self.accelerator_get_label(accelerator_key : UInt32, accelerator_mods : Gdk::ModifierType) : ::String
    # gtk_accelerator_get_label: (None)
    # @accelerator_key:
    # @accelerator_mods:
    # Returns: (transfer full)

    # C call
    _retval = LibGtk.gtk_accelerator_get_label(accelerator_key, accelerator_mods)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.accelerator_get_label_with_keycode(display : Gdk::Display?, accelerator_key : UInt32, keycode : UInt32, accelerator_mods : Gdk::ModifierType) : ::String
    # gtk_accelerator_get_label_with_keycode: (None)
    # @display: (nullable)
    # @accelerator_key:
    # @keycode:
    # @accelerator_mods:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    display = if display.nil?
                Pointer(Void).null
              else
                display.to_unsafe
              end

    # C call
    _retval = LibGtk.gtk_accelerator_get_label_with_keycode(display, accelerator_key, keycode, accelerator_mods)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.accelerator_name(accelerator_key : UInt32, accelerator_mods : Gdk::ModifierType) : ::String
    # gtk_accelerator_name: (None)
    # @accelerator_key:
    # @accelerator_mods:
    # Returns: (transfer full)

    # C call
    _retval = LibGtk.gtk_accelerator_name(accelerator_key, accelerator_mods)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.accelerator_name_with_keycode(display : Gdk::Display?, accelerator_key : UInt32, keycode : UInt32, accelerator_mods : Gdk::ModifierType) : ::String
    # gtk_accelerator_name_with_keycode: (None)
    # @display: (nullable)
    # @accelerator_key:
    # @keycode:
    # @accelerator_mods:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    display = if display.nil?
                Pointer(Void).null
              else
                display.to_unsafe
              end

    # C call
    _retval = LibGtk.gtk_accelerator_name_with_keycode(display, accelerator_key, keycode, accelerator_mods)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.accelerator_parse(accelerator : ::String) : Bool
    # gtk_accelerator_parse: (None)
    # @accelerator:
    # @accelerator_key: (out) (transfer full) (optional)
    # @accelerator_mods: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    accelerator_key = Pointer(UInt32).null # Generator::OutArgUsedInReturnPlan
    accelerator_mods = Pointer(UInt32).null
    # C call
    _retval = LibGtk.gtk_accelerator_parse(accelerator, accelerator_key, accelerator_mods)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.accelerator_parse_with_keycode(accelerator : ::String, display : Gdk::Display?) : Bool
    # gtk_accelerator_parse_with_keycode: (None)
    # @accelerator:
    # @display: (nullable)
    # @accelerator_key: (out) (transfer full) (optional)
    # @accelerator_codes: (out) (transfer full) (optional) (array zero-terminated=1 element-type UInt32)
    # @accelerator_mods: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    display = if display.nil?
                Pointer(Void).null
              else
                display.to_unsafe
              end
    # Generator::OutArgUsedInReturnPlan
    accelerator_key = Pointer(UInt32).null            # Generator::OutArgUsedInReturnPlan
    accelerator_codes = Pointer(Pointer(UInt32)).null # Generator::ArrayArgPlan
    accelerator_codes = accelerator_codes.to_a.to_unsafe.as(Pointer(UInt32))
    # Generator::OutArgUsedInReturnPlan
    accelerator_mods = Pointer(UInt32).null
    # C call
    _retval = LibGtk.gtk_accelerator_parse_with_keycode(accelerator, display, accelerator_key, accelerator_codes, accelerator_mods)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.accelerator_valid(keyval : UInt32, modifiers : Gdk::ModifierType) : Bool
    # gtk_accelerator_valid: (None)
    # @keyval:
    # @modifiers:
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_accelerator_valid(keyval, modifiers)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.accessible_property_init_value(property : Gtk::AccessibleProperty, value : _) : Nil
    # gtk_accessible_property_init_value: (None)
    # @property:
    # @value:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    LibGtk.gtk_accessible_property_init_value(property, value)

    # Return value handling
  end

  def self.accessible_relation_init_value(relation : Gtk::AccessibleRelation, value : _) : Nil
    # gtk_accessible_relation_init_value: (None)
    # @relation:
    # @value:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    LibGtk.gtk_accessible_relation_init_value(relation, value)

    # Return value handling
  end

  def self.accessible_state_init_value(state : Gtk::AccessibleState, value : _) : Nil
    # gtk_accessible_state_init_value: (None)
    # @state:
    # @value:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    LibGtk.gtk_accessible_state_init_value(state, value)

    # Return value handling
  end

  def self.bitset_iter_init_at(set : Gtk::Bitset, target : UInt32) : Gtk::BitsetIter
    # gtk_bitset_iter_init_at: (None)
    # @iter: (out) (caller-allocates)
    # @set:
    # @target:
    # @value: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    iter = Gtk::BitsetIter.new # Generator::OutArgUsedInReturnPlan
    value = Pointer(UInt32).null
    # C call
    _retval = LibGtk.gtk_bitset_iter_init_at(iter, set, target, value)

    # Return value handling
    iter
  end

  def self.bitset_iter_init_first(set : Gtk::Bitset) : Gtk::BitsetIter
    # gtk_bitset_iter_init_first: (None)
    # @iter: (out) (caller-allocates)
    # @set:
    # @value: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    iter = Gtk::BitsetIter.new # Generator::OutArgUsedInReturnPlan
    value = Pointer(UInt32).null
    # C call
    _retval = LibGtk.gtk_bitset_iter_init_first(iter, set, value)

    # Return value handling
    iter
  end

  def self.bitset_iter_init_last(set : Gtk::Bitset) : Gtk::BitsetIter
    # gtk_bitset_iter_init_last: (None)
    # @iter: (out) (caller-allocates)
    # @set:
    # @value: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    iter = Gtk::BitsetIter.new # Generator::OutArgUsedInReturnPlan
    value = Pointer(UInt32).null
    # C call
    _retval = LibGtk.gtk_bitset_iter_init_last(iter, set, value)

    # Return value handling
    iter
  end

  def self.builder_error_quark : UInt32
    # gtk_builder_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_builder_error_quark

    # Return value handling
    _retval
  end

  def self.check_version(required_major : UInt32, required_minor : UInt32, required_micro : UInt32) : ::String?
    # gtk_check_version: (None)
    # @required_major:
    # @required_minor:
    # @required_micro:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGtk.gtk_check_version(required_major, required_minor, required_micro)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.constraint_vfl_parser_error_quark : UInt32
    # gtk_constraint_vfl_parser_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_constraint_vfl_parser_error_quark

    # Return value handling
    _retval
  end

  def self.css_parser_error_quark : UInt32
    # gtk_css_parser_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_css_parser_error_quark

    # Return value handling
    _retval
  end

  def self.css_parser_warning_quark : UInt32
    # gtk_css_parser_warning_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_css_parser_warning_quark

    # Return value handling
    _retval
  end

  def self.dialog_error_quark : UInt32
    # gtk_dialog_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_dialog_error_quark

    # Return value handling
    _retval
  end

  def self.disable_portals : Nil
    # gtk_disable_portals: (None)
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_disable_portals

    # Return value handling
  end

  def self.disable_setlocale : Nil
    # gtk_disable_setlocale: (None)
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_disable_setlocale

    # Return value handling
  end

  def self.distribute_natural_allocation(extra_space : Int32, sizes : Enumerable(Gtk::RequestedSize)) : Int32
    # gtk_distribute_natural_allocation: (None)
    # @extra_space:
    # @n_requested_sizes:
    # @sizes: (array length=n_requested_sizes element-type Interface)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    n_requested_sizes = sizes.size
    # Generator::ArrayArgPlan
    sizes = sizes.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGtk::RequestedSize))

    # C call
    _retval = LibGtk.gtk_distribute_natural_allocation(extra_space, n_requested_sizes, sizes)

    # Return value handling
    _retval
  end

  def self.editable_delegate_get_property(object : GObject::Object, prop_id : UInt32, value : _, pspec : GObject::ParamSpec) : Bool
    # gtk_editable_delegate_get_property: (None)
    # @object:
    # @prop_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGtk.gtk_editable_delegate_get_property(object, prop_id, value, pspec)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.editable_delegate_set_property(object : GObject::Object, prop_id : UInt32, value : _, pspec : GObject::ParamSpec) : Bool
    # gtk_editable_delegate_set_property: (None)
    # @object:
    # @prop_id:
    # @value:
    # @pspec:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGtk.gtk_editable_delegate_set_property(object, prop_id, value, pspec)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.editable_install_properties(object_class : GObject::ObjectClass, first_prop : UInt32) : UInt32
    # gtk_editable_install_properties: (None)
    # @object_class:
    # @first_prop:
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_editable_install_properties(object_class, first_prop)

    # Return value handling
    _retval
  end

  def self.enumerate_printers(func : Gtk::PrinterFunc, data : Pointer(Void)?, destroy : GLib::DestroyNotify, wait : Bool) : Nil
    # gtk_enumerate_printers: (None)
    # @func:
    # @data: (nullable)
    # @destroy:
    # @wait:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    data = if data.nil?
             Pointer(Void).null
           else
             data.to_unsafe
           end

    # C call
    LibGtk.gtk_enumerate_printers(func, data, destroy, wait)

    # Return value handling
  end

  def self.file_chooser_error_quark : UInt32
    # gtk_file_chooser_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_file_chooser_error_quark

    # Return value handling
    _retval
  end

  def self.binary_age : UInt32
    # gtk_get_binary_age: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_binary_age

    # Return value handling
    _retval
  end

  def self.debug_flags : Gtk::DebugFlags
    # gtk_get_debug_flags: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_debug_flags

    # Return value handling
    Gtk::DebugFlags.new(_retval)
  end

  def self.default_language : Pango::Language
    # gtk_get_default_language: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_default_language

    # Return value handling
    Pango::Language.new(_retval, GICrystal::Transfer::None)
  end

  def self.interface_age : UInt32
    # gtk_get_interface_age: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_interface_age

    # Return value handling
    _retval
  end

  def self.locale_direction : Gtk::TextDirection
    # gtk_get_locale_direction: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_locale_direction

    # Return value handling
    Gtk::TextDirection.new(_retval)
  end

  def self.major_version : UInt32
    # gtk_get_major_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_major_version

    # Return value handling
    _retval
  end

  def self.micro_version : UInt32
    # gtk_get_micro_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_micro_version

    # Return value handling
    _retval
  end

  def self.minor_version : UInt32
    # gtk_get_minor_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_get_minor_version

    # Return value handling
    _retval
  end

  def self.hsv_to_rgb(h : Float32, s : Float32, v : Float32, r : Float32, g : Float32, b : Float32) : Nil
    # gtk_hsv_to_rgb: (None)
    # @h:
    # @s:
    # @v:
    # @r: (out) (transfer full)
    # @g: (out) (transfer full)
    # @b: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_hsv_to_rgb(h, s, v, r, g, b)

    # Return value handling
  end

  def self.icon_theme_error_quark : UInt32
    # gtk_icon_theme_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_icon_theme_error_quark

    # Return value handling
    _retval
  end

  def self.init : Nil
    # gtk_init: (None)
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_init

    # Return value handling
  end

  def self.init_check : Bool
    # gtk_init_check: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_init_check

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.is_initialized : Bool
    # gtk_is_initialized: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_is_initialized

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.native_get_for_surface(surface : Gdk::Surface) : Gtk::Native?
    # gtk_native_get_for_surface: (None)
    # @surface:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGtk.gtk_native_get_for_surface(surface)

    # Return value handling
    Gtk::AbstractNative.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.paper_size_get_default : ::String
    # gtk_paper_size_get_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_paper_size_get_default

    # Return value handling
    ::String.new(_retval)
  end

  def self.paper_size_get_paper_sizes(include_custom : Bool) : GLib::List
    # gtk_paper_size_get_paper_sizes: (None)
    # @include_custom:
    # Returns: (transfer full)

    # C call
    _retval = LibGtk.gtk_paper_size_get_paper_sizes(include_custom)

    # Return value handling
    GLib::List(Gtk::PaperSize).new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_expression(name : ::String, nick : ::String, blurb : ::String, flags : GObject::ParamFlags) : GObject::ParamSpec
    # gtk_param_spec_expression: (None)
    # @name:
    # @nick:
    # @blurb:
    # @flags:
    # Returns: (transfer full)

    # C call
    _retval = LibGtk.gtk_param_spec_expression(name, nick, blurb, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.print_error_quark : UInt32
    # gtk_print_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_print_error_quark

    # Return value handling
    _retval
  end

  def self.print_run_page_setup_dialog(parent : Gtk::Window?, page_setup : Gtk::PageSetup?, settings : Gtk::PrintSettings) : Gtk::PageSetup
    # gtk_print_run_page_setup_dialog: (None)
    # @parent: (nullable)
    # @page_setup: (nullable)
    # @settings:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    parent = if parent.nil?
               Pointer(Void).null
             else
               parent.to_unsafe
             end
    # Generator::NullableArrayPlan
    page_setup = if page_setup.nil?
                   Pointer(Void).null
                 else
                   page_setup.to_unsafe
                 end

    # C call
    _retval = LibGtk.gtk_print_run_page_setup_dialog(parent, page_setup, settings)

    # Return value handling
    Gtk::PageSetup.new(_retval, GICrystal::Transfer::Full)
  end

  def self.print_run_page_setup_dialog_async(parent : Gtk::Window?, page_setup : Gtk::PageSetup?, settings : Gtk::PrintSettings, done_cb : Gtk::PageSetupDoneFunc, data : Pointer(Void)?) : Nil
    # gtk_print_run_page_setup_dialog_async: (None)
    # @parent: (nullable)
    # @page_setup: (nullable)
    # @settings:
    # @done_cb:
    # @data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    parent = if parent.nil?
               Pointer(Void).null
             else
               parent.to_unsafe
             end
    # Generator::NullableArrayPlan
    page_setup = if page_setup.nil?
                   Pointer(Void).null
                 else
                   page_setup.to_unsafe
                 end
    # Generator::NullableArrayPlan
    data = if data.nil?
             Pointer(Void).null
           else
             data.to_unsafe
           end

    # C call
    LibGtk.gtk_print_run_page_setup_dialog_async(parent, page_setup, settings, done_cb, data)

    # Return value handling
  end

  def self.recent_manager_error_quark : UInt32
    # gtk_recent_manager_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_recent_manager_error_quark

    # Return value handling
    _retval
  end

  @[Deprecated]
  def self.render_activity(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_activity: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_activity(context, cr, x, y, width, height)

    # Return value handling
  end

  @[Deprecated]
  def self.render_arrow(context : Gtk::StyleContext, cr : Cairo::Context, angle : Float64, x : Float64, y : Float64, size : Float64) : Nil
    # gtk_render_arrow: (None)
    # @context:
    # @cr:
    # @angle:
    # @x:
    # @y:
    # @size:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_arrow(context, cr, angle, x, y, size)

    # Return value handling
  end

  @[Deprecated]
  def self.render_background(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_background: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_background(context, cr, x, y, width, height)

    # Return value handling
  end

  @[Deprecated]
  def self.render_check(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_check: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_check(context, cr, x, y, width, height)

    # Return value handling
  end

  @[Deprecated]
  def self.render_expander(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_expander: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_expander(context, cr, x, y, width, height)

    # Return value handling
  end

  @[Deprecated]
  def self.render_focus(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_focus: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_focus(context, cr, x, y, width, height)

    # Return value handling
  end

  @[Deprecated]
  def self.render_frame(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_frame: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_frame(context, cr, x, y, width, height)

    # Return value handling
  end

  @[Deprecated]
  def self.render_handle(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_handle: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_handle(context, cr, x, y, width, height)

    # Return value handling
  end

  @[Deprecated]
  def self.render_icon(context : Gtk::StyleContext, cr : Cairo::Context, texture : Gdk::Texture, x : Float64, y : Float64) : Nil
    # gtk_render_icon: (None)
    # @context:
    # @cr:
    # @texture:
    # @x:
    # @y:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_icon(context, cr, texture, x, y)

    # Return value handling
  end

  @[Deprecated]
  def self.render_layout(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, layout : Pango::Layout) : Nil
    # gtk_render_layout: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @layout:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_layout(context, cr, x, y, layout)

    # Return value handling
  end

  @[Deprecated]
  def self.render_line(context : Gtk::StyleContext, cr : Cairo::Context, x0 : Float64, y0 : Float64, x1 : Float64, y1 : Float64) : Nil
    # gtk_render_line: (None)
    # @context:
    # @cr:
    # @x0:
    # @y0:
    # @x1:
    # @y1:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_line(context, cr, x0, y0, x1, y1)

    # Return value handling
  end

  @[Deprecated]
  def self.render_option(context : Gtk::StyleContext, cr : Cairo::Context, x : Float64, y : Float64, width : Float64, height : Float64) : Nil
    # gtk_render_option: (None)
    # @context:
    # @cr:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_render_option(context, cr, x, y, width, height)

    # Return value handling
  end

  def self.rgb_to_hsv(r : Float32, g : Float32, b : Float32, h : Float32, s : Float32, v : Float32) : Nil
    # gtk_rgb_to_hsv: (None)
    # @r:
    # @g:
    # @b:
    # @h: (out) (transfer full)
    # @s: (out) (transfer full)
    # @v: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_rgb_to_hsv(r, g, b, h, s, v)

    # Return value handling
  end

  def self.debug_flags=(flags : Gtk::DebugFlags) : Nil
    # gtk_set_debug_flags: (None)
    # @flags:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_set_debug_flags(flags)

    # Return value handling
  end

  @[Deprecated]
  def self.show_uri(parent : Gtk::Window?, uri : ::String, timestamp : UInt32) : Nil
    # gtk_show_uri: (None)
    # @parent: (nullable)
    # @uri:
    # @timestamp:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    parent = if parent.nil?
               Pointer(Void).null
             else
               parent.to_unsafe
             end

    # C call
    LibGtk.gtk_show_uri(parent, uri, timestamp)

    # Return value handling
  end

  @[Deprecated]
  def self.show_uri_full(parent : Gtk::Window?, uri : ::String, timestamp : UInt32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # gtk_show_uri_full: (None)
    # @parent: (nullable)
    # @uri:
    # @timestamp:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    parent = if parent.nil?
               Pointer(Void).null
             else
               parent.to_unsafe
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
    LibGtk.gtk_show_uri_full(parent, uri, timestamp, cancellable, callback, user_data)

    # Return value handling
  end

  @[Deprecated]
  def show_uri_full_finish(parent : Gtk::Window, result : Gio::AsyncResult) : Bool
    # gtk_show_uri_full_finish: (Throws)
    # @parent:
    # @result:
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGtk.gtk_show_uri_full_finish(parent, result, pointerof(_error))

    # Error check
    Gtk.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.test_accessible_assertion_message_role(domain : ::String, file : ::String, line : Int32, func : ::String, expr : ::String, accessible : Gtk::Accessible, expected_role : Gtk::AccessibleRole, actual_role : Gtk::AccessibleRole) : Nil
    # gtk_test_accessible_assertion_message_role: (None)
    # @domain:
    # @file:
    # @line:
    # @func:
    # @expr:
    # @accessible:
    # @expected_role:
    # @actual_role:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_test_accessible_assertion_message_role(domain, file, line, func, expr, accessible, expected_role, actual_role)

    # Return value handling
  end

  def self.test_accessible_has_property(accessible : Gtk::Accessible, property : Gtk::AccessibleProperty) : Bool
    # gtk_test_accessible_has_property: (None)
    # @accessible:
    # @property:
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_test_accessible_has_property(accessible, property)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.test_accessible_has_relation(accessible : Gtk::Accessible, relation : Gtk::AccessibleRelation) : Bool
    # gtk_test_accessible_has_relation: (None)
    # @accessible:
    # @relation:
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_test_accessible_has_relation(accessible, relation)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.test_accessible_has_role(accessible : Gtk::Accessible, role : Gtk::AccessibleRole) : Bool
    # gtk_test_accessible_has_role: (None)
    # @accessible:
    # @role:
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_test_accessible_has_role(accessible, role)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.test_accessible_has_state(accessible : Gtk::Accessible, state : Gtk::AccessibleState) : Bool
    # gtk_test_accessible_has_state: (None)
    # @accessible:
    # @state:
    # Returns: (transfer none)

    # C call
    _retval = LibGtk.gtk_test_accessible_has_state(accessible, state)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.test_list_all_types : Enumerable(UInt64)
    # gtk_test_list_all_types: (None)
    # @n_types: (out) (transfer full)
    # Returns: (transfer none) (array length=n_types zero-terminated=1 element-type Gtype)

    # Generator::OutArgUsedInReturnPlan
    n_types = 0_u32
    # C call
    _retval = LibGtk.gtk_test_list_all_types(pointerof(n_types))

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.test_register_all_types : Nil
    # gtk_test_register_all_types: (None)
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_test_register_all_types

    # Return value handling
  end

  def self.test_widget_wait_for_draw(widget : Gtk::Widget) : Nil
    # gtk_test_widget_wait_for_draw: (None)
    # @widget:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_test_widget_wait_for_draw(widget)

    # Return value handling
  end

  @[Deprecated]
  def self.tree_create_row_drag_content(tree_model : Gtk::TreeModel, path : Gtk::TreePath) : Gdk::ContentProvider
    # gtk_tree_create_row_drag_content: (None)
    # @tree_model:
    # @path:
    # Returns: (transfer full)

    # C call
    _retval = LibGtk.gtk_tree_create_row_drag_content(tree_model, path)

    # Return value handling
    Gdk::ContentProvider.new(_retval, GICrystal::Transfer::Full)
  end

  @[Deprecated]
  def self.tree_get_row_drag_data(value : _) : Bool
    # gtk_tree_get_row_drag_data: (None)
    # @value:
    # @tree_model: (out) (nullable) (optional)
    # @path: (out) (transfer full) (nullable) (optional)
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end
    # Generator::OutArgUsedInReturnPlan
    tree_model = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
    path = Pointer(Pointer(Void)).null
    # C call
    _retval = LibGtk.gtk_tree_get_row_drag_data(value, tree_model, path)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.tree_row_reference_deleted(proxy : GObject::Object, path : Gtk::TreePath) : Nil
    # gtk_tree_row_reference_deleted: (None)
    # @proxy:
    # @path:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_tree_row_reference_deleted(proxy, path)

    # Return value handling
  end

  @[Deprecated]
  def self.tree_row_reference_inserted(proxy : GObject::Object, path : Gtk::TreePath) : Nil
    # gtk_tree_row_reference_inserted: (None)
    # @proxy:
    # @path:
    # Returns: (transfer none)

    # C call
    LibGtk.gtk_tree_row_reference_inserted(proxy, path)

    # Return value handling
  end

  def self.value_dup_expression(value : _) : Gtk::Expression?
    # gtk_value_dup_expression: (None)
    # @value:
    # Returns: (transfer full) (nullable)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGtk.gtk_value_dup_expression(value)

    # Return value handling
    Gtk::Expression.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.value_get_expression(value : _) : Gtk::Expression?
    # gtk_value_get_expression: (None)
    # @value:
    # Returns: (transfer none) (nullable)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGtk.gtk_value_get_expression(value)

    # Return value handling
    Gtk::Expression.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.value_set_expression(value : _, expression : Gtk::Expression) : Nil
    # gtk_value_set_expression: (None)
    # @value:
    # @expression:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    LibGtk.gtk_value_set_expression(value, expression)

    # Return value handling
  end

  def self.value_take_expression(value : _, expression : Gtk::Expression?) : Nil
    # gtk_value_take_expression: (None)
    # @value:
    # @expression: (transfer full) (nullable)
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end
    # Generator::TransferFullArgPlan
    GICrystal.ref(expression)
    # Generator::NullableArrayPlan
    expression = if expression.nil?
                   Pointer(Void).null
                 else
                   expression.to_unsafe
                 end

    # C call
    LibGtk.gtk_value_take_expression(value, expression)

    # Return value handling
  end

  # Errors

  class BuilderError < GtkError
    class InvalidTypeFunction < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnhandledTag < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingAttribute < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidAttribute < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidTag < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingPropertyValue < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidValue < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class VersionMismatch < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class DuplicateId < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ObjectTypeRefused < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 9, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TemplateMismatch < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 10, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidProperty < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 11, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidSignal < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 12, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidId < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 13, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidFunction < BuilderError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-builder-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 14, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class ConstraintVflParserError < GtkError
    class Symbol < ConstraintVflParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-constraint-vfl-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Attribute < ConstraintVflParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-constraint-vfl-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class View < ConstraintVflParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-constraint-vfl-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Metric < ConstraintVflParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-constraint-vfl-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Priority < ConstraintVflParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-constraint-vfl-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Relation < ConstraintVflParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-constraint-vfl-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class CssParserError < GtkError
    class Failed < CssParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-css-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Syntax < CssParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-css-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Import < CssParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-css-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Name < CssParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-css-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownValue < CssParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-css-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class DialogError < GtkError
    class Failed < DialogError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-dialog-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Cancelled < DialogError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-dialog-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Dismissed < DialogError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-dialog-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class FileChooserError < GtkError
    class Nonexistent < FileChooserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-file-chooser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadFilename < FileChooserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-file-chooser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AlreadyExists < FileChooserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-file-chooser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class IncompleteHostname < FileChooserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-file-chooser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class IconThemeError < GtkError
    class NotFound < IconThemeError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-icon-theme-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < IconThemeError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-icon-theme-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class PrintError < GtkError
    class General < PrintError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-print-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InternalError < PrintError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-print-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nomem < PrintError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-print-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidFile < PrintError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-print-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class RecentManagerError < GtkError
    class NotFound < RecentManagerError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-recent-manager-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidUri < RecentManagerError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-recent-manager-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidEncoding < RecentManagerError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-recent-manager-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotRegistered < RecentManagerError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-recent-manager-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Read < RecentManagerError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-recent-manager-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Write < RecentManagerError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-recent-manager-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Unknown < RecentManagerError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gtk-recent-manager-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    error_domain = error.value.domain
    error_code = error.value.code

    if error_domain == LibGLib.g_quark_try_string("gtk-builder-error-quark")
      return BuilderError::InvalidTypeFunction.new(error, transfer) if error_code == 0
      return BuilderError::UnhandledTag.new(error, transfer) if error_code == 1
      return BuilderError::MissingAttribute.new(error, transfer) if error_code == 2
      return BuilderError::InvalidAttribute.new(error, transfer) if error_code == 3
      return BuilderError::InvalidTag.new(error, transfer) if error_code == 4
      return BuilderError::MissingPropertyValue.new(error, transfer) if error_code == 5
      return BuilderError::InvalidValue.new(error, transfer) if error_code == 6
      return BuilderError::VersionMismatch.new(error, transfer) if error_code == 7
      return BuilderError::DuplicateId.new(error, transfer) if error_code == 8
      return BuilderError::ObjectTypeRefused.new(error, transfer) if error_code == 9
      return BuilderError::TemplateMismatch.new(error, transfer) if error_code == 10
      return BuilderError::InvalidProperty.new(error, transfer) if error_code == 11
      return BuilderError::InvalidSignal.new(error, transfer) if error_code == 12
      return BuilderError::InvalidId.new(error, transfer) if error_code == 13
      return BuilderError::InvalidFunction.new(error, transfer) if error_code == 14
    end

    if error_domain == LibGLib.g_quark_try_string("gtk-constraint-vfl-parser-error-quark")
      return ConstraintVflParserError::Symbol.new(error, transfer) if error_code == 0
      return ConstraintVflParserError::Attribute.new(error, transfer) if error_code == 1
      return ConstraintVflParserError::View.new(error, transfer) if error_code == 2
      return ConstraintVflParserError::Metric.new(error, transfer) if error_code == 3
      return ConstraintVflParserError::Priority.new(error, transfer) if error_code == 4
      return ConstraintVflParserError::Relation.new(error, transfer) if error_code == 5
    end

    if error_domain == LibGLib.g_quark_try_string("gtk-css-parser-error-quark")
      return CssParserError::Failed.new(error, transfer) if error_code == 0
      return CssParserError::Syntax.new(error, transfer) if error_code == 1
      return CssParserError::Import.new(error, transfer) if error_code == 2
      return CssParserError::Name.new(error, transfer) if error_code == 3
      return CssParserError::UnknownValue.new(error, transfer) if error_code == 4
    end

    if error_domain == LibGLib.g_quark_try_string("gtk-dialog-error-quark")
      return DialogError::Failed.new(error, transfer) if error_code == 0
      return DialogError::Cancelled.new(error, transfer) if error_code == 1
      return DialogError::Dismissed.new(error, transfer) if error_code == 2
    end

    if error_domain == LibGLib.g_quark_try_string("gtk-file-chooser-error-quark")
      return FileChooserError::Nonexistent.new(error, transfer) if error_code == 0
      return FileChooserError::BadFilename.new(error, transfer) if error_code == 1
      return FileChooserError::AlreadyExists.new(error, transfer) if error_code == 2
      return FileChooserError::IncompleteHostname.new(error, transfer) if error_code == 3
    end

    if error_domain == LibGLib.g_quark_try_string("gtk-icon-theme-error-quark")
      return IconThemeError::NotFound.new(error, transfer) if error_code == 0
      return IconThemeError::Failed.new(error, transfer) if error_code == 1
    end

    if error_domain == LibGLib.g_quark_try_string("gtk-print-error-quark")
      return PrintError::General.new(error, transfer) if error_code == 0
      return PrintError::InternalError.new(error, transfer) if error_code == 1
      return PrintError::Nomem.new(error, transfer) if error_code == 2
      return PrintError::InvalidFile.new(error, transfer) if error_code == 3
    end

    if error_domain == LibGLib.g_quark_try_string("gtk-recent-manager-error-quark")
      return RecentManagerError::NotFound.new(error, transfer) if error_code == 0
      return RecentManagerError::InvalidUri.new(error, transfer) if error_code == 1
      return RecentManagerError::InvalidEncoding.new(error, transfer) if error_code == 2
      return RecentManagerError::NotRegistered.new(error, transfer) if error_code == 3
      return RecentManagerError::Read.new(error, transfer) if error_code == 4
      return RecentManagerError::Write.new(error, transfer) if error_code == 5
      return RecentManagerError::Unknown.new(error, transfer) if error_code == 6
    end

    Gsk.gerror_to_crystal?(error, transfer)
    Gdk.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../../../gtk4/src/bindings/gtk/about_dialog.cr"
require "../../../../gtk4/src/bindings/gtk/builder.cr"
require "../../../../gtk4/src/bindings/gtk/expression.cr"
require "../../../../gtk4/src/bindings/gtk/gi_crystal.cr"
require "../../../../gtk4/src/bindings/gtk/list_store.cr"
require "../../../../gtk4/src/bindings/gtk/message_dialog.cr"
require "../../../../gtk4/src/bindings/gtk/stack.cr"
require "../../../../gtk4/src/bindings/gtk/tree_selection.cr"
require "../../../../gtk4/src/bindings/gtk/tree_store.cr"
require "../../../../gtk4/src/bindings/gtk/tree_view.cr"
require "../../../../gtk4/src/bindings/gtk/widget.cr"
require "../../../../gtk4/src/bindings/gtk/widget_template.cr"
require "../../../../gtk4/src/bindings/gtk/snapshot.cr"
require "../../../../gtk4/src/bindings/gtk/signal_list_item_factory.cr"
