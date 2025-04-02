# Dependencies
require "../cairo-1.0/cairo.cr"
require "../harf_buzz-0.0/harf_buzz.cr"
require "../gio-2.0/gio.cr"
require "../g_object-2.0/g_object.cr"

# C lib declaration
require "./lib_pango.cr"

# Wrappers
require "./analysis.cr"
require "./attr_class.cr"
require "./attr_color.cr"
require "./attr_float.cr"
require "./attr_font_desc.cr"
require "./attr_font_features.cr"
require "./attr_int.cr"
require "./attr_iterator.cr"
require "./attr_language.cr"
require "./attr_list.cr"
require "./attr_shape.cr"
require "./attr_size.cr"
require "./attr_string.cr"
require "./attribute.cr"
require "./color.cr"
require "./context.cr"
require "./coverage.cr"
require "./font.cr"
require "./font_description.cr"
require "./font_face.cr"
require "./font_family.cr"
require "./font_map.cr"
require "./font_metrics.cr"
require "./fontset.cr"
require "./fontset_simple.cr"
require "./glyph_geometry.cr"
require "./glyph_info.cr"
require "./glyph_item.cr"
require "./glyph_item_iter.cr"
require "./glyph_string.cr"
require "./glyph_vis_attr.cr"
require "./item.cr"
require "./language.cr"
require "./layout.cr"
require "./layout_iter.cr"
require "./layout_line.cr"
require "./log_attr.cr"
require "./matrix.cr"
require "./rectangle.cr"
require "./renderer.cr"
require "./renderer_private.cr"
require "./script_iter.cr"
require "./tab_array.cr"

module Pango
  ANALYSIS_FLAG_CENTERED_BASELINE =              1
  ANALYSIS_FLAG_IS_ELLIPSIS       =              2
  ANALYSIS_FLAG_NEED_HYPHEN       =              4
  ATTR_INDEX_FROM_TEXT_BEGINNING  =          0_u32
  ATTR_INDEX_TO_TEXT_END          = 4294967295_u32
  GLYPH_EMPTY                     =  268435455_u32
  GLYPH_INVALID_INPUT             = 4294967295_u32
  GLYPH_UNKNOWN_FLAG              =  268435456_u32
  SCALE                           =           1024
  VERSION_MAJOR                   =              1
  VERSION_MICRO                   =              3
  VERSION_MINOR                   =             56
  VERSION_STRING                  = "1.56.3"

  # Callbacks

  alias AttrDataCopyFunc = Proc(Pointer(Void))

  alias AttrFilterFunc = Proc(Pango::Attribute, Bool)

  alias FontsetForeachFunc = Proc(Pango::Fontset, Pango::Font, Bool)

  # Base class for all errors in this module.
  class PangoError < GLib::Error
  end

  # Enums

  enum Alignment : UInt32
    Left   = 0
    Center = 1
    Right  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_alignment_get_type
    end
  end

  enum AttrType : UInt32
    Invalid            =  0
    Language           =  1
    Family             =  2
    Style              =  3
    Weight             =  4
    Variant            =  5
    Stretch            =  6
    Size               =  7
    FontDesc           =  8
    Foreground         =  9
    Background         = 10
    Underline          = 11
    Strikethrough      = 12
    Rise               = 13
    Shape              = 14
    Scale              = 15
    Fallback           = 16
    LetterSpacing      = 17
    UnderlineColor     = 18
    StrikethroughColor = 19
    AbsoluteSize       = 20
    Gravity            = 21
    GravityHint        = 22
    FontFeatures       = 23
    ForegroundAlpha    = 24
    BackgroundAlpha    = 25
    AllowBreaks        = 26
    Show               = 27
    InsertHyphens      = 28
    Overline           = 29
    OverlineColor      = 30
    LineHeight         = 31
    AbsoluteLineHeight = 32
    TextTransform      = 33
    Word               = 34
    Sentence           = 35
    BaselineShift      = 36
    FontScale          = 37

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_attr_type_get_type
    end
  end

  enum BaselineShift : UInt32
    None        = 0
    Superscript = 1
    Subscript   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_baseline_shift_get_type
    end
  end

  enum BidiType : UInt32
    L   =  0
    Lre =  1
    Lro =  2
    R   =  3
    Al  =  4
    Rle =  5
    Rlo =  6
    Pdf =  7
    En  =  8
    Es  =  9
    Et  = 10
    An  = 11
    Cs  = 12
    Nsm = 13
    Bn  = 14
    B   = 15
    S   = 16
    Ws  = 17
    On  = 18
    Lri = 19
    Rli = 20
    Fsi = 21
    Pdi = 22

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_bidi_type_get_type
    end
  end

  enum CoverageLevel : UInt32
    None        = 0
    Fallback    = 1
    Approximate = 2
    Exact       = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_coverage_level_get_type
    end
  end

  enum Direction : UInt32
    Ltr     = 0
    Rtl     = 1
    TtbLtr  = 2
    TtbRtl  = 3
    WeakLtr = 4
    WeakRtl = 5
    Neutral = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_direction_get_type
    end
  end

  enum EllipsizeMode : UInt32
    None   = 0
    Start  = 1
    Middle = 2
    End    = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_ellipsize_mode_get_type
    end
  end

  enum FontScale : UInt32
    None        = 0
    Superscript = 1
    Subscript   = 2
    SmallCaps   = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_font_scale_get_type
    end
  end

  enum Gravity : UInt32
    South = 0
    East  = 1
    North = 2
    West  = 3
    Auto  = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_gravity_get_type
    end
  end

  enum GravityHint : UInt32
    Natural = 0
    Strong  = 1
    Line    = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_gravity_hint_get_type
    end
  end

  enum Overline : UInt32
    None   = 0
    Single = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_overline_get_type
    end
  end

  enum RenderPart : UInt32
    Foreground    = 0
    Background    = 1
    Underline     = 2
    Strikethrough = 3
    Overline      = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_render_part_get_type
    end
  end

  enum Script : Int32
    InvalidCode          =  -1
    Common               =   0
    Inherited            =   1
    Arabic               =   2
    Armenian             =   3
    Bengali              =   4
    Bopomofo             =   5
    Cherokee             =   6
    Coptic               =   7
    Cyrillic             =   8
    Deseret              =   9
    Devanagari           =  10
    Ethiopic             =  11
    Georgian             =  12
    Gothic               =  13
    Greek                =  14
    Gujarati             =  15
    Gurmukhi             =  16
    Han                  =  17
    Hangul               =  18
    Hebrew               =  19
    Hiragana             =  20
    Kannada              =  21
    Katakana             =  22
    Khmer                =  23
    Lao                  =  24
    Latin                =  25
    Malayalam            =  26
    Mongolian            =  27
    Myanmar              =  28
    Ogham                =  29
    OldItalic            =  30
    Oriya                =  31
    Runic                =  32
    Sinhala              =  33
    Syriac               =  34
    Tamil                =  35
    Telugu               =  36
    Thaana               =  37
    Thai                 =  38
    Tibetan              =  39
    CanadianAboriginal   =  40
    Yi                   =  41
    Tagalog              =  42
    Hanunoo              =  43
    Buhid                =  44
    Tagbanwa             =  45
    Braille              =  46
    Cypriot              =  47
    Limbu                =  48
    Osmanya              =  49
    Shavian              =  50
    LinearB              =  51
    TaiLe                =  52
    Ugaritic             =  53
    NewTaiLue            =  54
    Buginese             =  55
    Glagolitic           =  56
    Tifinagh             =  57
    SylotiNagri          =  58
    OldPersian           =  59
    Kharoshthi           =  60
    Unknown              =  61
    Balinese             =  62
    Cuneiform            =  63
    Phoenician           =  64
    PhagsPa              =  65
    Nko                  =  66
    KayahLi              =  67
    Lepcha               =  68
    Rejang               =  69
    Sundanese            =  70
    Saurashtra           =  71
    Cham                 =  72
    OlChiki              =  73
    Vai                  =  74
    Carian               =  75
    Lycian               =  76
    Lydian               =  77
    Batak                =  78
    Brahmi               =  79
    Mandaic              =  80
    Chakma               =  81
    MeroiticCursive      =  82
    MeroiticHieroglyphs  =  83
    Miao                 =  84
    Sharada              =  85
    SoraSompeng          =  86
    Takri                =  87
    BassaVah             =  88
    CaucasianAlbanian    =  89
    Duployan             =  90
    Elbasan              =  91
    Grantha              =  92
    Khojki               =  93
    Khudawadi            =  94
    LinearA              =  95
    Mahajani             =  96
    Manichaean           =  97
    MendeKikakui         =  98
    Modi                 =  99
    Mro                  = 100
    Nabataean            = 101
    OldNorthArabian      = 102
    OldPermic            = 103
    PahawhHmong          = 104
    Palmyrene            = 105
    PauCinHau            = 106
    PsalterPahlavi       = 107
    Siddham              = 108
    Tirhuta              = 109
    WarangCiti           = 110
    Ahom                 = 111
    AnatolianHieroglyphs = 112
    Hatran               = 113
    Multani              = 114
    OldHungarian         = 115
    Signwriting          = 116

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_script_get_type
    end
  end

  enum Stretch : UInt32
    UltraCondensed = 0
    ExtraCondensed = 1
    Condensed      = 2
    SemiCondensed  = 3
    Normal         = 4
    SemiExpanded   = 5
    Expanded       = 6
    ExtraExpanded  = 7
    UltraExpanded  = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_stretch_get_type
    end
  end

  enum Style : UInt32
    Normal  = 0
    Oblique = 1
    Italic  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_style_get_type
    end
  end

  enum TabAlign : UInt32
    Left    = 0
    Right   = 1
    Center  = 2
    Decimal = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_tab_align_get_type
    end
  end

  enum TextTransform : UInt32
    None       = 0
    Lowercase  = 1
    Uppercase  = 2
    Capitalize = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_text_transform_get_type
    end
  end

  enum Underline : UInt32
    None       = 0
    Single     = 1
    Double     = 2
    Low        = 3
    Error      = 4
    SingleLine = 5
    DoubleLine = 6
    ErrorLine  = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_underline_get_type
    end
  end

  enum Variant : UInt32
    Normal        = 0
    SmallCaps     = 1
    AllSmallCaps  = 2
    PetiteCaps    = 3
    AllPetiteCaps = 4
    Unicase       = 5
    TitleCaps     = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_variant_get_type
    end
  end

  enum Weight : UInt32
    Thin       =  100
    Ultralight =  200
    Light      =  300
    Semilight  =  350
    Book       =  380
    Normal     =  400
    Medium     =  500
    Semibold   =  600
    Bold       =  700
    Ultrabold  =  800
    Heavy      =  900
    Ultraheavy = 1000

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_weight_get_type
    end
  end

  enum WrapMode : UInt32
    Word     = 0
    Char     = 1
    WordChar = 2
    None     = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_wrap_mode_get_type
    end
  end

  # Flags

  @[Flags]
  enum FontMask : UInt32
    Family     =   1
    Style      =   2
    Variant    =   4
    Weight     =   8
    Stretch    =  16
    Size       =  32
    Gravity    =  64
    Variations = 128
    Features   = 256

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_font_mask_get_type
    end
  end

  @[Flags]
  enum LayoutDeserializeFlags : UInt32
    Default = 0
    Context = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_layout_deserialize_flags_get_type
    end
  end

  @[Flags]
  enum LayoutSerializeFlags : UInt32
    Default = 0
    Context = 1
    Output  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_layout_serialize_flags_get_type
    end
  end

  @[Flags]
  enum ShapeFlags : UInt32
    RoundPositions = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_shape_flags_get_type
    end
  end

  @[Flags]
  enum ShowFlags : UInt32
    Spaces     = 1
    LineBreaks = 2
    Ignorables = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_show_flags_get_type
    end
  end

  def self.attr_allow_breaks_new(allow_breaks : Bool) : Pango::Attribute
    # pango_attr_allow_breaks_new: (None)
    # @allow_breaks:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_allow_breaks_new(allow_breaks)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_background_alpha_new(alpha : UInt16) : Pango::Attribute
    # pango_attr_background_alpha_new: (None)
    # @alpha:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_background_alpha_new(alpha)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_background_new(red : UInt16, green : UInt16, blue : UInt16) : Pango::Attribute
    # pango_attr_background_new: (None)
    # @red:
    # @green:
    # @blue:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_background_new(red, green, blue)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_baseline_shift_new(shift : Int32) : Pango::Attribute
    # pango_attr_baseline_shift_new: (None)
    # @shift:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_baseline_shift_new(shift)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_break(text : ::String, length : Int32, attr_list : Pango::AttrList, offset : Int32, attrs : Enumerable(Pango::LogAttr)) : Nil
    # pango_attr_break: (None)
    # @text:
    # @length:
    # @attr_list:
    # @offset:
    # @attrs: (out) (caller-allocates) (array length=attrs_len element-type Interface)
    # @attrs_len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    attrs_len = attrs.size
    # Generator::ArrayArgPlan
    attrs = attrs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibPango::LogAttr))

    # C call
    LibPango.pango_attr_break(text, length, attr_list, offset, attrs, attrs_len)

    # Return value handling
  end

  def self.attr_fallback_new(enable_fallback : Bool) : Pango::Attribute
    # pango_attr_fallback_new: (None)
    # @enable_fallback:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_fallback_new(enable_fallback)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_family_new(family : ::String) : Pango::Attribute
    # pango_attr_family_new: (None)
    # @family:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_family_new(family)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_font_desc_new(desc : Pango::FontDescription) : Pango::Attribute
    # pango_attr_font_desc_new: (None)
    # @desc:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_font_desc_new(desc)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_font_features_new(features : ::String) : Pango::Attribute
    # pango_attr_font_features_new: (None)
    # @features:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_font_features_new(features)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_font_scale_new(scale : Pango::FontScale) : Pango::Attribute
    # pango_attr_font_scale_new: (None)
    # @scale:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_font_scale_new(scale)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_foreground_alpha_new(alpha : UInt16) : Pango::Attribute
    # pango_attr_foreground_alpha_new: (None)
    # @alpha:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_foreground_alpha_new(alpha)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_foreground_new(red : UInt16, green : UInt16, blue : UInt16) : Pango::Attribute
    # pango_attr_foreground_new: (None)
    # @red:
    # @green:
    # @blue:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_foreground_new(red, green, blue)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_gravity_hint_new(hint : Pango::GravityHint) : Pango::Attribute
    # pango_attr_gravity_hint_new: (None)
    # @hint:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_gravity_hint_new(hint)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_gravity_new(gravity : Pango::Gravity) : Pango::Attribute
    # pango_attr_gravity_new: (None)
    # @gravity:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_gravity_new(gravity)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_insert_hyphens_new(insert_hyphens : Bool) : Pango::Attribute
    # pango_attr_insert_hyphens_new: (None)
    # @insert_hyphens:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_insert_hyphens_new(insert_hyphens)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_language_new(language : Pango::Language) : Pango::Attribute
    # pango_attr_language_new: (None)
    # @language:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_language_new(language)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_letter_spacing_new(letter_spacing : Int32) : Pango::Attribute
    # pango_attr_letter_spacing_new: (None)
    # @letter_spacing:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_letter_spacing_new(letter_spacing)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_line_height_new(factor : Float64) : Pango::Attribute
    # pango_attr_line_height_new: (None)
    # @factor:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_line_height_new(factor)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_line_height_new_absolute(height : Int32) : Pango::Attribute
    # pango_attr_line_height_new_absolute: (None)
    # @height:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_line_height_new_absolute(height)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_list_from_string(text : ::String) : Pango::AttrList?
    # pango_attr_list_from_string: (None)
    # @text:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibPango.pango_attr_list_from_string(text)

    # Return value handling
    Pango::AttrList.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.attr_overline_color_new(red : UInt16, green : UInt16, blue : UInt16) : Pango::Attribute
    # pango_attr_overline_color_new: (None)
    # @red:
    # @green:
    # @blue:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_overline_color_new(red, green, blue)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_overline_new(overline : Pango::Overline) : Pango::Attribute
    # pango_attr_overline_new: (None)
    # @overline:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_overline_new(overline)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_rise_new(rise : Int32) : Pango::Attribute
    # pango_attr_rise_new: (None)
    # @rise:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_rise_new(rise)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_scale_new(scale_factor : Float64) : Pango::Attribute
    # pango_attr_scale_new: (None)
    # @scale_factor:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_scale_new(scale_factor)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_sentence_new : Pango::Attribute
    # pango_attr_sentence_new: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_sentence_new

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_shape_new(ink_rect : Pango::Rectangle, logical_rect : Pango::Rectangle) : Pango::Attribute
    # pango_attr_shape_new: (None)
    # @ink_rect:
    # @logical_rect:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_shape_new(ink_rect, logical_rect)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_shape_new_with_data(ink_rect : Pango::Rectangle, logical_rect : Pango::Rectangle, data : Pointer(Void)?, copy_func : Pango::AttrDataCopyFunc?, destroy_func : GLib::DestroyNotify?) : Pango::Attribute
    # pango_attr_shape_new_with_data: (None)
    # @ink_rect:
    # @logical_rect:
    # @data: (nullable)
    # @copy_func: (nullable)
    # @destroy_func: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    data = if data.nil?
             Pointer(Void).null
           else
             data.to_unsafe
           end

    # C call
    _retval = LibPango.pango_attr_shape_new_with_data(ink_rect, logical_rect, data, copy_func, destroy_func)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_show_new(flags : Pango::ShowFlags) : Pango::Attribute
    # pango_attr_show_new: (None)
    # @flags:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_show_new(flags)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_size_new(size : Int32) : Pango::Attribute
    # pango_attr_size_new: (None)
    # @size:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_size_new(size)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_size_new_absolute(size : Int32) : Pango::Attribute
    # pango_attr_size_new_absolute: (None)
    # @size:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_size_new_absolute(size)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_stretch_new(stretch : Pango::Stretch) : Pango::Attribute
    # pango_attr_stretch_new: (None)
    # @stretch:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_stretch_new(stretch)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_strikethrough_color_new(red : UInt16, green : UInt16, blue : UInt16) : Pango::Attribute
    # pango_attr_strikethrough_color_new: (None)
    # @red:
    # @green:
    # @blue:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_strikethrough_color_new(red, green, blue)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_strikethrough_new(strikethrough : Bool) : Pango::Attribute
    # pango_attr_strikethrough_new: (None)
    # @strikethrough:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_strikethrough_new(strikethrough)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_style_new(style : Pango::Style) : Pango::Attribute
    # pango_attr_style_new: (None)
    # @style:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_style_new(style)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_text_transform_new(transform : Pango::TextTransform) : Pango::Attribute
    # pango_attr_text_transform_new: (None)
    # @transform:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_text_transform_new(transform)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_type_get_name(type : Pango::AttrType) : ::String?
    # pango_attr_type_get_name: (None)
    # @type:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibPango.pango_attr_type_get_name(type)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.attr_type_register(name : ::String) : Pango::AttrType
    # pango_attr_type_register: (None)
    # @name:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_attr_type_register(name)

    # Return value handling
    Pango::AttrType.new(_retval)
  end

  def self.attr_underline_color_new(red : UInt16, green : UInt16, blue : UInt16) : Pango::Attribute
    # pango_attr_underline_color_new: (None)
    # @red:
    # @green:
    # @blue:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_underline_color_new(red, green, blue)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_underline_new(underline : Pango::Underline) : Pango::Attribute
    # pango_attr_underline_new: (None)
    # @underline:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_underline_new(underline)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_variant_new(variant : Pango::Variant) : Pango::Attribute
    # pango_attr_variant_new: (None)
    # @variant:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_variant_new(variant)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_weight_new(weight : Pango::Weight) : Pango::Attribute
    # pango_attr_weight_new: (None)
    # @weight:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_weight_new(weight)

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.attr_word_new : Pango::Attribute
    # pango_attr_word_new: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_attr_word_new

    # Return value handling
    Pango::Attribute.new(_retval, GICrystal::Transfer::Full)
  end

  def self.bidi_type_for_unichar(ch : Char) : Pango::BidiType
    # pango_bidi_type_for_unichar: (None)
    # @ch:
    # Returns: (transfer none)

    # Generator::BuiltInTypeArgPlan
    ch = ch.ord.to_u32

    # C call
    _retval = LibPango.pango_bidi_type_for_unichar(ch)

    # Return value handling
    Pango::BidiType.new(_retval)
  end

  @[Deprecated]
  def self.break(text : ::String, length : Int32, analysis : Pango::Analysis, attrs : Enumerable(Pango::LogAttr)) : Nil
    # pango_break: (None)
    # @text:
    # @length:
    # @analysis:
    # @attrs: (out) (caller-allocates) (array length=attrs_len element-type Interface)
    # @attrs_len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    attrs_len = attrs.size
    # Generator::ArrayArgPlan
    attrs = attrs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibPango::LogAttr))

    # C call
    LibPango.pango_break(text, length, analysis, attrs, attrs_len)

    # Return value handling
  end

  def self.default_break(text : ::String, length : Int32, analysis : Pango::Analysis?, attrs : Enumerable(Pango::LogAttr)) : Nil
    # pango_default_break: (None)
    # @text:
    # @length:
    # @analysis: (nullable)
    # @attrs: (out) (caller-allocates) (array length=attrs_len element-type Interface)
    # @attrs_len:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    analysis = if analysis.nil?
                 Pointer(Void).null
               else
                 analysis.to_unsafe
               end
    # Generator::ArrayLengthArgPlan
    attrs_len = attrs.size
    # Generator::ArrayArgPlan
    attrs = attrs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibPango::LogAttr))

    # C call
    LibPango.pango_default_break(text, length, analysis, attrs, attrs_len)

    # Return value handling
  end

  def self.extents_to_pixels(inclusive : Pango::Rectangle?, nearest : Pango::Rectangle?) : Nil
    # pango_extents_to_pixels: (None)
    # @inclusive: (nullable)
    # @nearest: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    inclusive = if inclusive.nil?
                  Pointer(Void).null
                else
                  inclusive.to_unsafe
                end
    # Generator::NullableArrayPlan
    nearest = if nearest.nil?
                Pointer(Void).null
              else
                nearest.to_unsafe
              end

    # C call
    LibPango.pango_extents_to_pixels(inclusive, nearest)

    # Return value handling
  end

  def self.find_base_dir(text : ::String, length : Int32) : Pango::Direction
    # pango_find_base_dir: (None)
    # @text:
    # @length:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_find_base_dir(text, length)

    # Return value handling
    Pango::Direction.new(_retval)
  end

  def self.find_paragraph_boundary(text : ::String, length : Int32, paragraph_delimiter_index : Int32, next_paragraph_start : Int32) : Nil
    # pango_find_paragraph_boundary: (None)
    # @text:
    # @length:
    # @paragraph_delimiter_index: (out) (transfer full)
    # @next_paragraph_start: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibPango.pango_find_paragraph_boundary(text, length, paragraph_delimiter_index, next_paragraph_start)

    # Return value handling
  end

  def self.font_description_from_string(str : ::String) : Pango::FontDescription
    # pango_font_description_from_string: (None)
    # @str:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_font_description_from_string(str)

    # Return value handling
    Pango::FontDescription.new(_retval, GICrystal::Transfer::Full)
  end

  def self.log_attrs(text : ::String, length : Int32, level : Int32, language : Pango::Language, attrs : Enumerable(Pango::LogAttr)) : Nil
    # pango_get_log_attrs: (None)
    # @text:
    # @length:
    # @level:
    # @language:
    # @attrs: (out) (caller-allocates) (array length=attrs_len element-type Interface)
    # @attrs_len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    attrs_len = attrs.size
    # Generator::ArrayArgPlan
    attrs = attrs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibPango::LogAttr))

    # C call
    LibPango.pango_get_log_attrs(text, length, level, language, attrs, attrs_len)

    # Return value handling
  end

  @[Deprecated]
  def self.mirror_char(ch : Char) : Bool
    # pango_get_mirror_char: (None)
    # @ch:
    # @mirrored_ch: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::BuiltInTypeArgPlan
    ch = ch.ord.to_u32
    # Generator::OutArgUsedInReturnPlan
    mirrored_ch = Pointer(UInt32).null
    # C call
    _retval = LibPango.pango_get_mirror_char(ch, mirrored_ch)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.gravity_get_for_matrix(matrix : Pango::Matrix?) : Pango::Gravity
    # pango_gravity_get_for_matrix: (None)
    # @matrix: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    matrix = if matrix.nil?
               Pointer(Void).null
             else
               matrix.to_unsafe
             end

    # C call
    _retval = LibPango.pango_gravity_get_for_matrix(matrix)

    # Return value handling
    Pango::Gravity.new(_retval)
  end

  def self.gravity_get_for_script(script : Pango::Script, base_gravity : Pango::Gravity, hint : Pango::GravityHint) : Pango::Gravity
    # pango_gravity_get_for_script: (None)
    # @script:
    # @base_gravity:
    # @hint:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_gravity_get_for_script(script, base_gravity, hint)

    # Return value handling
    Pango::Gravity.new(_retval)
  end

  def self.gravity_get_for_script_and_width(script : Pango::Script, wide : Bool, base_gravity : Pango::Gravity, hint : Pango::GravityHint) : Pango::Gravity
    # pango_gravity_get_for_script_and_width: (None)
    # @script:
    # @wide:
    # @base_gravity:
    # @hint:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_gravity_get_for_script_and_width(script, wide, base_gravity, hint)

    # Return value handling
    Pango::Gravity.new(_retval)
  end

  def self.gravity_to_rotation(gravity : Pango::Gravity) : Float64
    # pango_gravity_to_rotation: (None)
    # @gravity:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_gravity_to_rotation(gravity)

    # Return value handling
    _retval
  end

  def self.is_zero_width(ch : Char) : Bool
    # pango_is_zero_width: (None)
    # @ch:
    # Returns: (transfer none)

    # Generator::BuiltInTypeArgPlan
    ch = ch.ord.to_u32

    # C call
    _retval = LibPango.pango_is_zero_width(ch)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.itemize(context : Pango::Context, text : ::String, start_index : Int32, length : Int32, attrs : Pango::AttrList, cached_iter : Pango::AttrIterator?) : GLib::List
    # pango_itemize: (None)
    # @context:
    # @text:
    # @start_index:
    # @length:
    # @attrs:
    # @cached_iter: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    cached_iter = if cached_iter.nil?
                    Pointer(Void).null
                  else
                    cached_iter.to_unsafe
                  end

    # C call
    _retval = LibPango.pango_itemize(context, text, start_index, length, attrs, cached_iter)

    # Return value handling
    GLib::List(Pango::Item).new(_retval, GICrystal::Transfer::Full)
  end

  def self.itemize_with_base_dir(context : Pango::Context, base_dir : Pango::Direction, text : ::String, start_index : Int32, length : Int32, attrs : Pango::AttrList, cached_iter : Pango::AttrIterator?) : GLib::List
    # pango_itemize_with_base_dir: (None)
    # @context:
    # @base_dir:
    # @text:
    # @start_index:
    # @length:
    # @attrs:
    # @cached_iter: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    cached_iter = if cached_iter.nil?
                    Pointer(Void).null
                  else
                    cached_iter.to_unsafe
                  end

    # C call
    _retval = LibPango.pango_itemize_with_base_dir(context, base_dir, text, start_index, length, attrs, cached_iter)

    # Return value handling
    GLib::List(Pango::Item).new(_retval, GICrystal::Transfer::Full)
  end

  def self.language_from_string(language : ::String?) : Pango::Language?
    # pango_language_from_string: (None)
    # @language: (nullable)
    # Returns: (transfer none) (nullable)

    # Generator::NullableArrayPlan
    language = if language.nil?
                 Pointer(LibC::Char).null
               else
                 language.to_unsafe
               end

    # C call
    _retval = LibPango.pango_language_from_string(language)

    # Return value handling
    Pango::Language.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.language_get_default : Pango::Language
    # pango_language_get_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_language_get_default

    # Return value handling
    Pango::Language.new(_retval, GICrystal::Transfer::None)
  end

  def self.language_get_preferred : Enumerable(Pango::Language)?
    # pango_language_get_preferred: (None)
    # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Interface)

    # C call
    _retval = LibPango.pango_language_get_preferred

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.layout_deserialize_error_quark : UInt32
    # pango_layout_deserialize_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_layout_deserialize_error_quark

    # Return value handling
    _retval
  end

  def self.log2vis_get_embedding_levels(text : ::String, length : Int32, pbase_dir : Pango::Direction) : ::Bytes
    # pango_log2vis_get_embedding_levels: (None)
    # @text:
    # @length:
    # @pbase_dir: (inout) (transfer full)
    # Returns: (transfer full) (array element-type UInt8)

    # C call
    _retval = LibPango.pango_log2vis_get_embedding_levels(text, length, pbase_dir)

    # Return value handling
    _retval
  end

  def markup_parser_finish(context : GLib::MarkupParseContext) : Bool
    # pango_markup_parser_finish: (Throws)
    # @context:
    # @attr_list: (out) (transfer full) (optional)
    # @text: (out) (transfer full) (optional)
    # @accel_char: (out) (transfer full) (optional)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::OutArgUsedInReturnPlan
    attr_list = Pointer(Pointer(Void)).null  # Generator::OutArgUsedInReturnPlan
    text = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
    accel_char = Pointer(UInt32).null
    # C call
    _retval = LibPango.pango_markup_parser_finish(context, attr_list, text, accel_char, pointerof(_error))

    # Error check
    Pango.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.markup_parser_new(accel_marker : Char) : GLib::MarkupParseContext
    # pango_markup_parser_new: (None)
    # @accel_marker:
    # Returns: (transfer none)

    # Generator::BuiltInTypeArgPlan
    accel_marker = accel_marker.ord.to_u32

    # C call
    _retval = LibPango.pango_markup_parser_new(accel_marker)

    # Return value handling
    GLib::MarkupParseContext.new(_retval, GICrystal::Transfer::None)
  end

  @[Deprecated]
  def self.parse_enum(type : UInt64, str : ::String?, warn : Bool) : Bool
    # pango_parse_enum: (None)
    # @type:
    # @str: (nullable)
    # @value: (out) (transfer full) (optional)
    # @warn:
    # @possible_values: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    str = if str.nil?
            Pointer(LibC::Char).null
          else
            str.to_unsafe
          end
    # Generator::OutArgUsedInReturnPlan
    value = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
    possible_values = Pointer(Pointer(LibC::Char)).null
    # C call
    _retval = LibPango.pango_parse_enum(type, str, value, warn, possible_values)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def parse_markup(markup_text : ::String, length : Int32, accel_marker : Char) : Bool
    # pango_parse_markup: (Throws)
    # @markup_text:
    # @length:
    # @accel_marker:
    # @attr_list: (out) (transfer full) (optional)
    # @text: (out) (transfer full) (optional)
    # @accel_char: (out) (transfer full) (optional)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::BuiltInTypeArgPlan
    accel_marker = accel_marker.ord.to_u32
    # Generator::OutArgUsedInReturnPlan
    attr_list = Pointer(Pointer(Void)).null  # Generator::OutArgUsedInReturnPlan
    text = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
    accel_char = Pointer(UInt32).null
    # C call
    _retval = LibPango.pango_parse_markup(markup_text, length, accel_marker, attr_list, text, accel_char, pointerof(_error))

    # Error check
    Pango.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.parse_stretch(str : ::String, stretch : Pango::Stretch, warn : Bool) : Bool
    # pango_parse_stretch: (None)
    # @str:
    # @stretch: (out) (transfer full)
    # @warn:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_parse_stretch(str, stretch, warn)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.parse_style(str : ::String, style : Pango::Style, warn : Bool) : Bool
    # pango_parse_style: (None)
    # @str:
    # @style: (out) (transfer full)
    # @warn:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_parse_style(str, style, warn)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.parse_variant(str : ::String, variant : Pango::Variant, warn : Bool) : Bool
    # pango_parse_variant: (None)
    # @str:
    # @variant: (out) (transfer full)
    # @warn:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_parse_variant(str, variant, warn)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.parse_weight(str : ::String, weight : Pango::Weight, warn : Bool) : Bool
    # pango_parse_weight: (None)
    # @str:
    # @weight: (out) (transfer full)
    # @warn:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_parse_weight(str, weight, warn)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.quantize_line_geometry(thickness : Int32, position : Int32) : Nil
    # pango_quantize_line_geometry: (None)
    # @thickness: (inout) (transfer full)
    # @position: (inout) (transfer full)
    # Returns: (transfer none)

    # C call
    LibPango.pango_quantize_line_geometry(thickness, position)

    # Return value handling
  end

  @[Deprecated]
  def self.read_line(stream : Pointer(Void)?, str : GLib::String) : Int32
    # pango_read_line: (None)
    # @stream: (nullable)
    # @str:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    stream = if stream.nil?
               Pointer(Void).null
             else
               stream.to_unsafe
             end

    # C call
    _retval = LibPango.pango_read_line(stream, str)

    # Return value handling
    _retval
  end

  def self.reorder_items(items : GLib::List) : GLib::List
    # pango_reorder_items: (None)
    # @items:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_reorder_items(items)

    # Return value handling
    GLib::List(Pango::Item).new(_retval, GICrystal::Transfer::Full)
  end

  @[Deprecated]
  def self.scan_int(pos : ::String, out _out : Int32) : Bool
    # pango_scan_int: (None)
    # @pos: (inout)
    # @out: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_scan_int(pos, _out)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.scan_string(pos : ::String, out _out : GLib::String) : Bool
    # pango_scan_string: (None)
    # @pos: (inout)
    # @out:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_scan_string(pos, _out)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.scan_word(pos : ::String, out _out : GLib::String) : Bool
    # pango_scan_word: (None)
    # @pos: (inout)
    # @out:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_scan_word(pos, _out)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.script_for_unichar(ch : Char) : Pango::Script
    # pango_script_for_unichar: (None)
    # @ch:
    # Returns: (transfer none)

    # Generator::BuiltInTypeArgPlan
    ch = ch.ord.to_u32

    # C call
    _retval = LibPango.pango_script_for_unichar(ch)

    # Return value handling
    Pango::Script.new(_retval)
  end

  def self.script_get_sample_language(script : Pango::Script) : Pango::Language?
    # pango_script_get_sample_language: (None)
    # @script:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibPango.pango_script_get_sample_language(script)

    # Return value handling
    Pango::Language.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.shape(text : ::String, length : Int32, analysis : Pango::Analysis) : Pango::GlyphString
    # pango_shape: (None)
    # @text:
    # @length:
    # @analysis:
    # @glyphs: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    glyphs = Pango::GlyphString.new
    # C call
    LibPango.pango_shape(text, length, analysis, glyphs)

    # Return value handling
    glyphs
  end

  def self.shape_full(item_text : ::String, item_length : Int32, paragraph_text : ::String?, paragraph_length : Int32, analysis : Pango::Analysis) : Pango::GlyphString
    # pango_shape_full: (None)
    # @item_text:
    # @item_length:
    # @paragraph_text: (nullable)
    # @paragraph_length:
    # @analysis:
    # @glyphs: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paragraph_text = if paragraph_text.nil?
                       Pointer(LibC::Char).null
                     else
                       paragraph_text.to_unsafe
                     end
    # Generator::CallerAllocatesPlan
    glyphs = Pango::GlyphString.new
    # C call
    LibPango.pango_shape_full(item_text, item_length, paragraph_text, paragraph_length, analysis, glyphs)

    # Return value handling
    glyphs
  end

  def self.shape_item(item : Pango::Item, paragraph_text : ::String?, paragraph_length : Int32, log_attrs : Pango::LogAttr?, flags : Pango::ShapeFlags) : Pango::GlyphString
    # pango_shape_item: (None)
    # @item:
    # @paragraph_text: (nullable)
    # @paragraph_length:
    # @log_attrs: (nullable)
    # @glyphs: (out) (caller-allocates)
    # @flags:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paragraph_text = if paragraph_text.nil?
                       Pointer(LibC::Char).null
                     else
                       paragraph_text.to_unsafe
                     end
    # Generator::NullableArrayPlan
    log_attrs = if log_attrs.nil?
                  Pointer(Void).null
                else
                  log_attrs.to_unsafe
                end
    # Generator::CallerAllocatesPlan
    glyphs = Pango::GlyphString.new
    # C call
    LibPango.pango_shape_item(item, paragraph_text, paragraph_length, log_attrs, glyphs, flags)

    # Return value handling
    glyphs
  end

  def self.shape_with_flags(item_text : ::String, item_length : Int32, paragraph_text : ::String?, paragraph_length : Int32, analysis : Pango::Analysis, flags : Pango::ShapeFlags) : Pango::GlyphString
    # pango_shape_with_flags: (None)
    # @item_text:
    # @item_length:
    # @paragraph_text: (nullable)
    # @paragraph_length:
    # @analysis:
    # @glyphs: (out) (caller-allocates)
    # @flags:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paragraph_text = if paragraph_text.nil?
                       Pointer(LibC::Char).null
                     else
                       paragraph_text.to_unsafe
                     end
    # Generator::CallerAllocatesPlan
    glyphs = Pango::GlyphString.new
    # C call
    LibPango.pango_shape_with_flags(item_text, item_length, paragraph_text, paragraph_length, analysis, glyphs, flags)

    # Return value handling
    glyphs
  end

  @[Deprecated]
  def self.skip_space(pos : ::String) : Bool
    # pango_skip_space: (None)
    # @pos: (inout)
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_skip_space(pos)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  @[Deprecated]
  def self.split_file_list(str : ::String) : Enumerable(::String)
    # pango_split_file_list: (None)
    # @str:
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibPango.pango_split_file_list(str)

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
  end

  def self.tab_array_from_string(text : ::String) : Pango::TabArray?
    # pango_tab_array_from_string: (None)
    # @text:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibPango.pango_tab_array_from_string(text)

    # Return value handling
    Pango::TabArray.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.tailor_break(text : ::String, length : Int32, analysis : Pango::Analysis, offset : Int32, attrs : Enumerable(Pango::LogAttr)) : Nil
    # pango_tailor_break: (None)
    # @text:
    # @length:
    # @analysis:
    # @offset:
    # @attrs: (out) (caller-allocates) (array length=attrs_len element-type Interface)
    # @attrs_len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    attrs_len = attrs.size
    # Generator::ArrayArgPlan
    attrs = attrs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibPango::LogAttr))

    # C call
    LibPango.pango_tailor_break(text, length, analysis, offset, attrs, attrs_len)

    # Return value handling
  end

  @[Deprecated]
  def self.trim_string(str : ::String) : ::String
    # pango_trim_string: (None)
    # @str:
    # Returns: (transfer full)

    # C call
    _retval = LibPango.pango_trim_string(str)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.unichar_direction(ch : Char) : Pango::Direction
    # pango_unichar_direction: (None)
    # @ch:
    # Returns: (transfer none)

    # Generator::BuiltInTypeArgPlan
    ch = ch.ord.to_u32

    # C call
    _retval = LibPango.pango_unichar_direction(ch)

    # Return value handling
    Pango::Direction.new(_retval)
  end

  def self.units_from_double(d : Float64) : Int32
    # pango_units_from_double: (None)
    # @d:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_units_from_double(d)

    # Return value handling
    _retval
  end

  def self.units_to_double(i : Int32) : Float64
    # pango_units_to_double: (None)
    # @i:
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_units_to_double(i)

    # Return value handling
    _retval
  end

  def self.version : Int32
    # pango_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_version

    # Return value handling
    _retval
  end

  def self.version_check(required_major : Int32, required_minor : Int32, required_micro : Int32) : ::String?
    # pango_version_check: (None)
    # @required_major:
    # @required_minor:
    # @required_micro:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibPango.pango_version_check(required_major, required_minor, required_micro)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.version_string : ::String
    # pango_version_string: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibPango.pango_version_string

    # Return value handling
    ::String.new(_retval)
  end

  # Errors

  class LayoutDeserializeError < PangoError
    class Invalid < LayoutDeserializeError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("pango-layout-deserialize-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidValue < LayoutDeserializeError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("pango-layout-deserialize-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingValue < LayoutDeserializeError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("pango-layout-deserialize-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
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

    if error_domain == LibGLib.g_quark_try_string("pango-layout-deserialize-error-quark")
      return LayoutDeserializeError::Invalid.new(error, transfer) if error_code == 0
      return LayoutDeserializeError::InvalidValue.new(error, transfer) if error_code == 1
      return LayoutDeserializeError::MissingValue.new(error, transfer) if error_code == 2
    end

    Cairo.gerror_to_crystal?(error, transfer)
    HarfBuzz.gerror_to_crystal?(error, transfer)
    Gio.gerror_to_crystal?(error, transfer)
    GObject.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../../../pango/src/bindings/pango/attribute.cr"
require "../../../../pango/src/bindings/pango/font_metrics.cr"
require "../../../../pango/src/bindings/pango/layout.cr"
