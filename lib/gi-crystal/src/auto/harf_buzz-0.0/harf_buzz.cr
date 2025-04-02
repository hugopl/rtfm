# Dependencies
require "../freetype2-2.0/freetype2.cr"
require "../g_object-2.0/g_object.cr"

# C lib declaration
require "./lib_harf_buzz.cr"

# Wrappers
require "./aat_layout_feature_selector_info_t.cr"
require "./blob_t.cr"
require "./buffer_t.cr"
require "./color_line_t.cr"
require "./color_stop_t.cr"
require "./draw_funcs_t.cr"
require "./draw_state_t.cr"
require "./face_t.cr"
require "./feature_t.cr"
require "./font_extents_t.cr"
require "./font_funcs_t.cr"
require "./font_t.cr"
require "./glyph_extents_t.cr"
require "./glyph_info_t.cr"
require "./glyph_position_t.cr"
require "./language_t.cr"
require "./map_t.cr"
require "./ot_color_layer_t.cr"
require "./ot_math_glyph_part_t.cr"
require "./ot_math_glyph_variant_t.cr"
require "./ot_math_kern_entry_t.cr"
require "./ot_name_entry_t.cr"
require "./ot_var_axis_info_t.cr"
require "./ot_var_axis_t.cr"
require "./paint_funcs_t.cr"
require "./segment_properties_t.cr"
require "./set_t.cr"
require "./shape_plan_t.cr"
require "./unicode_funcs_t.cr"
require "./user_data_key_t.cr"
require "./variation_t.cr"

module HarfBuzz
  AAT_LAYOUT_NO_SELECTOR_INDEX         =          65535
  BUFFER_REPLACEMENT_CODEPOINT_DEFAULT =          65533
  CODEPOINT_INVALID                    = 4294967295_u32
  FEATURE_GLOBAL_START                 =              0
  FONT_NO_VAR_NAMED_INSTANCE           =             -1
  LANGUAGE_INVALID                     =              0 # Interface constants not supported!
  OT_LAYOUT_DEFAULT_LANGUAGE_INDEX     =          65535
  OT_LAYOUT_NO_FEATURE_INDEX           =          65535
  OT_LAYOUT_NO_SCRIPT_INDEX            =          65535
  OT_LAYOUT_NO_VARIATIONS_INDEX        =             -1
  OT_MAX_TAGS_PER_LANGUAGE             =              3
  OT_MAX_TAGS_PER_SCRIPT               =              3
  OT_VAR_NO_AXIS_INDEX                 =             -1
  UNICODE_COMBINING_CLASS_CCC133       =            133
  UNICODE_MAX                          =        1114111
  UNICODE_MAX_DECOMPOSITION_LEN        =             19
  VERSION_MAJOR                        =             11
  VERSION_MICRO                        =              0
  VERSION_MINOR                        =              0
  VERSION_STRING                       = "11.0.0"

  # Callbacks

  alias BufferMessageFuncT = Proc(HarfBuzz::BufferT, HarfBuzz::FontT, ::String, Int32)

  alias ColorLineGetColorStopsFuncT = Proc(HarfBuzz::ColorLineT, Pointer(Void), UInt32, UInt32, Enumerable(HarfBuzz::ColorStopT), UInt32)

  alias ColorLineGetExtendFuncT = Proc(HarfBuzz::ColorLineT, Pointer(Void), HarfBuzz::PaintExtendT)

  alias DestroyFuncT = Proc(Nil)

  alias DrawClosePathFuncT = Proc(HarfBuzz::DrawFuncsT, Pointer(Void), HarfBuzz::DrawStateT, Nil)

  alias DrawCubicToFuncT = Proc(HarfBuzz::DrawFuncsT, Pointer(Void), HarfBuzz::DrawStateT, Float32, Float32, Float32, Float32, Float32, Float32, Nil)

  alias DrawLineToFuncT = Proc(HarfBuzz::DrawFuncsT, Pointer(Void), HarfBuzz::DrawStateT, Float32, Float32, Nil)

  alias DrawMoveToFuncT = Proc(HarfBuzz::DrawFuncsT, Pointer(Void), HarfBuzz::DrawStateT, Float32, Float32, Nil)

  alias DrawQuadraticToFuncT = Proc(HarfBuzz::DrawFuncsT, Pointer(Void), HarfBuzz::DrawStateT, Float32, Float32, Float32, Float32, Nil)

  alias FontDrawGlyphFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, HarfBuzz::DrawFuncsT, Pointer(Void), Nil)

  alias FontGetFontExtentsFuncT = Proc(HarfBuzz::FontT, Pointer(Void), HarfBuzz::FontExtentsT, Int32)

  alias FontGetGlyphAdvanceFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, Int32)

  alias FontGetGlyphAdvancesFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, Pointer(UInt32), UInt32, Int32, UInt32, Nil)

  alias FontGetGlyphContourPointFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, UInt32, Int32, Int32, Int32)

  alias FontGetGlyphExtentsFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, HarfBuzz::GlyphExtentsT, Int32)

  alias FontGetGlyphFromNameFuncT = Proc(HarfBuzz::FontT, Pointer(Void), Enumerable(::String), Int32, UInt32, Int32)

  alias FontGetGlyphFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, UInt32, UInt32, Int32)

  alias FontGetGlyphKerningFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, UInt32, Int32)

  alias FontGetGlyphNameFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, Enumerable(::String), UInt32, Int32)

  alias FontGetGlyphOriginFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, Int32, Int32, Int32)

  alias FontGetGlyphShapeFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, HarfBuzz::DrawFuncsT, Pointer(Void), Nil)

  alias FontGetNominalGlyphFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, UInt32, Int32)

  alias FontGetNominalGlyphsFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, Pointer(UInt32), UInt32, UInt32, UInt32, UInt32)

  alias FontGetVariationGlyphFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, UInt32, UInt32, Int32)

  alias FontPaintGlyphFuncT = Proc(HarfBuzz::FontT, Pointer(Void), UInt32, HarfBuzz::PaintFuncsT, Pointer(Void), UInt32, UInt32, Nil)

  alias GetTableTagsFuncT = Proc(HarfBuzz::FaceT, UInt32, UInt32, Enumerable(UInt32), UInt32)

  alias PaintColorFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), Int32, UInt32, Nil)

  alias PaintColorGlyphFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), UInt32, HarfBuzz::FontT, Int32)

  alias PaintCustomPaletteColorFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), UInt32, UInt32, Int32)

  alias PaintImageFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), HarfBuzz::BlobT, UInt32, UInt32, UInt32, Float32, HarfBuzz::GlyphExtentsT?, Int32)

  alias PaintLinearGradientFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), HarfBuzz::ColorLineT, Float32, Float32, Float32, Float32, Float32, Float32, Nil)

  alias PaintPopClipFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), Nil)

  alias PaintPopGroupFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), HarfBuzz::PaintCompositeModeT, Nil)

  alias PaintPopTransformFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), Nil)

  alias PaintPushClipGlyphFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), UInt32, HarfBuzz::FontT, Nil)

  alias PaintPushClipRectangleFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), Float32, Float32, Float32, Float32, Nil)

  alias PaintPushGroupFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), Nil)

  alias PaintPushTransformFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), Float32, Float32, Float32, Float32, Float32, Float32, Nil)

  alias PaintRadialGradientFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), HarfBuzz::ColorLineT, Float32, Float32, Float32, Float32, Float32, Float32, Nil)

  alias PaintSweepGradientFuncT = Proc(HarfBuzz::PaintFuncsT, Pointer(Void), HarfBuzz::ColorLineT, Float32, Float32, Float32, Float32, Nil)

  alias ReferenceTableFuncT = Proc(HarfBuzz::FaceT, UInt32, HarfBuzz::BlobT)

  alias UnicodeCombiningClassFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, HarfBuzz::UnicodeCombiningClassT)

  alias UnicodeComposeFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, UInt32, UInt32, Int32)

  alias UnicodeDecomposeCompatibilityFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, Pointer(UInt32), UInt32)

  alias UnicodeDecomposeFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, UInt32, UInt32, Int32)

  alias UnicodeEastasianWidthFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, UInt32)

  alias UnicodeGeneralCategoryFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, HarfBuzz::UnicodeGeneralCategoryT)

  alias UnicodeMirroringFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, UInt32)

  alias UnicodeScriptFuncT = Proc(HarfBuzz::UnicodeFuncsT, UInt32, HarfBuzz::ScriptT)

  # Enums

  enum BufferClusterLevelT : UInt32
    MonotoneGraphemes  = 0
    MonotoneCharacters = 1
    Characters         = 2
    Graphemes          = 3
    Default            = 0
  end

  enum BufferContentTypeT : UInt32
    Invalid = 0
    Unicode = 1
    Glyphs  = 2
  end

  enum DirectionT : UInt32
    Invalid = 0
    Ltr     = 4
    Rtl     = 5
    Ttb     = 6
    Btt     = 7
  end

  enum MemoryModeT : UInt32
    Duplicate               = 0
    Readonly                = 1
    Writable                = 2
    ReadonlyMayMakeWritable = 3
  end

  enum OtLayoutGlyphClassT : UInt32
    Unclassified = 0
    BaseGlyph    = 1
    Ligature     = 2
    Mark         = 3
    Component    = 4
  end

  enum OtMathConstantT : UInt32
    ScriptPercentScaleDown                   =  0
    ScriptScriptPercentScaleDown             =  1
    DelimitedSubFormulaMinHeight             =  2
    DisplayOperatorMinHeight                 =  3
    MathLeading                              =  4
    AxisHeight                               =  5
    AccentBaseHeight                         =  6
    FlattenedAccentBaseHeight                =  7
    SubscriptShiftDown                       =  8
    SubscriptTopMax                          =  9
    SubscriptBaselineDropMin                 = 10
    SuperscriptShiftUp                       = 11
    SuperscriptShiftUpCramped                = 12
    SuperscriptBottomMin                     = 13
    SuperscriptBaselineDropMax               = 14
    SubSuperscriptGapMin                     = 15
    SuperscriptBottomMaxWithSubscript        = 16
    SpaceAfterScript                         = 17
    UpperLimitGapMin                         = 18
    UpperLimitBaselineRiseMin                = 19
    LowerLimitGapMin                         = 20
    LowerLimitBaselineDropMin                = 21
    StackTopShiftUp                          = 22
    StackTopDisplayStyleShiftUp              = 23
    StackBottomShiftDown                     = 24
    StackBottomDisplayStyleShiftDown         = 25
    StackGapMin                              = 26
    StackDisplayStyleGapMin                  = 27
    StretchStackTopShiftUp                   = 28
    StretchStackBottomShiftDown              = 29
    StretchStackGapAboveMin                  = 30
    StretchStackGapBelowMin                  = 31
    FractionNumeratorShiftUp                 = 32
    FractionNumeratorDisplayStyleShiftUp     = 33
    FractionDenominatorShiftDown             = 34
    FractionDenominatorDisplayStyleShiftDown = 35
    FractionNumeratorGapMin                  = 36
    FractionNumDisplayStyleGapMin            = 37
    FractionRuleThickness                    = 38
    FractionDenominatorGapMin                = 39
    FractionDenomDisplayStyleGapMin          = 40
    SkewedFractionHorizontalGap              = 41
    SkewedFractionVerticalGap                = 42
    OverbarVerticalGap                       = 43
    OverbarRuleThickness                     = 44
    OverbarExtraAscender                     = 45
    UnderbarVerticalGap                      = 46
    UnderbarRuleThickness                    = 47
    UnderbarExtraDescender                   = 48
    RadicalVerticalGap                       = 49
    RadicalDisplayStyleVerticalGap           = 50
    RadicalRuleThickness                     = 51
    RadicalExtraAscender                     = 52
    RadicalKernBeforeDegree                  = 53
    RadicalKernAfterDegree                   = 54
    RadicalDegreeBottomRaisePercent          = 55
  end

  enum OtMathKernT : UInt32
    TopRight    = 0
    TopLeft     = 1
    BottomRight = 2
    BottomLeft  = 3
  end

  enum OtNameIdPredefinedT : UInt32
    Copyright            =     0
    FontFamily           =     1
    FontSubfamily        =     2
    UniqueId             =     3
    FullName             =     4
    VersionString        =     5
    PostscriptName       =     6
    Trademark            =     7
    Manufacturer         =     8
    Designer             =     9
    Description          =    10
    VendorUrl            =    11
    DesignerUrl          =    12
    License              =    13
    LicenseUrl           =    14
    TypographicFamily    =    16
    TypographicSubfamily =    17
    MacFullName          =    18
    SampleText           =    19
    CidFindfontName      =    20
    WwsFamily            =    21
    WwsSubfamily         =    22
    LightBackground      =    23
    DarkBackground       =    24
    VariationsPsPrefix   =    25
    Invalid              = 65535
  end

  enum PaintCompositeModeT : UInt32
    Clear         =  0
    Src           =  1
    Dest          =  2
    SrcOver       =  3
    DestOver      =  4
    SrcIn         =  5
    DestIn        =  6
    SrcOut        =  7
    DestOut       =  8
    SrcAtop       =  9
    DestAtop      = 10
    Xor           = 11
    Plus          = 12
    Screen        = 13
    Overlay       = 14
    Darken        = 15
    Lighten       = 16
    ColorDodge    = 17
    ColorBurn     = 18
    HardLight     = 19
    SoftLight     = 20
    Difference    = 21
    Exclusion     = 22
    Multiply      = 23
    HslHue        = 24
    HslSaturation = 25
    HslColor      = 26
    HslLuminosity = 27
  end

  enum PaintExtendT : UInt32
    Pad     = 0
    Repeat  = 1
    Reflect = 2
  end

  enum UnicodeCombiningClassT : UInt32
    NotReordered       =   0
    Overlay            =   1
    Nukta              =   7
    KanaVoicing        =   8
    Virama             =   9
    Ccc10              =  10
    Ccc11              =  11
    Ccc12              =  12
    Ccc13              =  13
    Ccc14              =  14
    Ccc15              =  15
    Ccc16              =  16
    Ccc17              =  17
    Ccc18              =  18
    Ccc19              =  19
    Ccc20              =  20
    Ccc21              =  21
    Ccc22              =  22
    Ccc23              =  23
    Ccc24              =  24
    Ccc25              =  25
    Ccc26              =  26
    Ccc27              =  27
    Ccc28              =  28
    Ccc29              =  29
    Ccc30              =  30
    Ccc31              =  31
    Ccc32              =  32
    Ccc33              =  33
    Ccc34              =  34
    Ccc35              =  35
    Ccc36              =  36
    Ccc84              =  84
    Ccc91              =  91
    Ccc103             = 103
    Ccc107             = 107
    Ccc118             = 118
    Ccc122             = 122
    Ccc129             = 129
    Ccc130             = 130
    Ccc132             = 132
    AttachedBelowLeft  = 200
    AttachedBelow      = 202
    AttachedAbove      = 214
    AttachedAboveRight = 216
    BelowLeft          = 218
    Below              = 220
    BelowRight         = 222
    Left               = 224
    Right              = 226
    AboveLeft          = 228
    Above              = 230
    AboveRight         = 232
    DoubleBelow        = 233
    DoubleAbove        = 234
    IotaSubscript      = 240
    Invalid            = 255
  end

  enum UnicodeGeneralCategoryT : UInt32
    Control            =  0
    Format             =  1
    Unassigned         =  2
    PrivateUse         =  3
    Surrogate          =  4
    LowercaseLetter    =  5
    ModifierLetter     =  6
    OtherLetter        =  7
    TitlecaseLetter    =  8
    UppercaseLetter    =  9
    SpacingMark        = 10
    EnclosingMark      = 11
    NonSpacingMark     = 12
    DecimalNumber      = 13
    LetterNumber       = 14
    OtherNumber        = 15
    ConnectPunctuation = 16
    DashPunctuation    = 17
    ClosePunctuation   = 18
    FinalPunctuation   = 19
    InitialPunctuation = 20
    OtherPunctuation   = 21
    OpenPunctuation    = 22
    CurrencySymbol     = 23
    ModifierSymbol     = 24
    MathSymbol         = 25
    OtherSymbol        = 26
    LineSeparator      = 27
    ParagraphSeparator = 28
    SpaceSeparator     = 29
  end

  # Flags

  @[Flags]
  enum AatLayoutFeatureSelectorT : UInt32
    BAatLayoutFeatureSelectorInvalid                      = 65535
    BAatLayoutFeatureSelectorAllTypeFeaturesOn            =     0
    BAatLayoutFeatureSelectorAllTypeFeaturesOff           =     1
    BAatLayoutFeatureSelectorRequiredLigaturesOn          =     0
    BAatLayoutFeatureSelectorRequiredLigaturesOff         =     1
    BAatLayoutFeatureSelectorCommonLigaturesOn            =     2
    BAatLayoutFeatureSelectorCommonLigaturesOff           =     3
    BAatLayoutFeatureSelectorRareLigaturesOn              =     4
    BAatLayoutFeatureSelectorRareLigaturesOff             =     5
    BAatLayoutFeatureSelectorLogosOn                      =     6
    BAatLayoutFeatureSelectorLogosOff                     =     7
    BAatLayoutFeatureSelectorRebusPicturesOn              =     8
    BAatLayoutFeatureSelectorRebusPicturesOff             =     9
    BAatLayoutFeatureSelectorDiphthongLigaturesOn         =    10
    BAatLayoutFeatureSelectorDiphthongLigaturesOff        =    11
    BAatLayoutFeatureSelectorSquaredLigaturesOn           =    12
    BAatLayoutFeatureSelectorSquaredLigaturesOff          =    13
    BAatLayoutFeatureSelectorAbbrevSquaredLigaturesOn     =    14
    BAatLayoutFeatureSelectorAbbrevSquaredLigaturesOff    =    15
    BAatLayoutFeatureSelectorSymbolLigaturesOn            =    16
    BAatLayoutFeatureSelectorSymbolLigaturesOff           =    17
    BAatLayoutFeatureSelectorContextualLigaturesOn        =    18
    BAatLayoutFeatureSelectorContextualLigaturesOff       =    19
    BAatLayoutFeatureSelectorHistoricalLigaturesOn        =    20
    BAatLayoutFeatureSelectorHistoricalLigaturesOff       =    21
    BAatLayoutFeatureSelectorUnconnected                  =     0
    BAatLayoutFeatureSelectorPartiallyConnected           =     1
    BAatLayoutFeatureSelectorCursive                      =     2
    BAatLayoutFeatureSelectorUpperAndLowerCase            =     0
    BAatLayoutFeatureSelectorAllCaps                      =     1
    BAatLayoutFeatureSelectorAllLowerCase                 =     2
    BAatLayoutFeatureSelectorSmallCaps                    =     3
    BAatLayoutFeatureSelectorInitialCaps                  =     4
    BAatLayoutFeatureSelectorInitialCapsAndSmallCaps      =     5
    BAatLayoutFeatureSelectorSubstituteVerticalFormsOn    =     0
    BAatLayoutFeatureSelectorSubstituteVerticalFormsOff   =     1
    BAatLayoutFeatureSelectorLinguisticRearrangementOn    =     0
    BAatLayoutFeatureSelectorLinguisticRearrangementOff   =     1
    BAatLayoutFeatureSelectorMonospacedNumbers            =     0
    BAatLayoutFeatureSelectorProportionalNumbers          =     1
    BAatLayoutFeatureSelectorThirdWidthNumbers            =     2
    BAatLayoutFeatureSelectorQuarterWidthNumbers          =     3
    BAatLayoutFeatureSelectorWordInitialSwashesOn         =     0
    BAatLayoutFeatureSelectorWordInitialSwashesOff        =     1
    BAatLayoutFeatureSelectorWordFinalSwashesOn           =     2
    BAatLayoutFeatureSelectorWordFinalSwashesOff          =     3
    BAatLayoutFeatureSelectorLineInitialSwashesOn         =     4
    BAatLayoutFeatureSelectorLineInitialSwashesOff        =     5
    BAatLayoutFeatureSelectorLineFinalSwashesOn           =     6
    BAatLayoutFeatureSelectorLineFinalSwashesOff          =     7
    BAatLayoutFeatureSelectorNonFinalSwashesOn            =     8
    BAatLayoutFeatureSelectorNonFinalSwashesOff           =     9
    BAatLayoutFeatureSelectorShowDiacritics               =     0
    BAatLayoutFeatureSelectorHideDiacritics               =     1
    BAatLayoutFeatureSelectorDecomposeDiacritics          =     2
    BAatLayoutFeatureSelectorNormalPosition               =     0
    BAatLayoutFeatureSelectorSuperiors                    =     1
    BAatLayoutFeatureSelectorInferiors                    =     2
    BAatLayoutFeatureSelectorOrdinals                     =     3
    BAatLayoutFeatureSelectorScientificInferiors          =     4
    BAatLayoutFeatureSelectorNoFractions                  =     0
    BAatLayoutFeatureSelectorVerticalFractions            =     1
    BAatLayoutFeatureSelectorDiagonalFractions            =     2
    BAatLayoutFeatureSelectorPreventOverlapOn             =     0
    BAatLayoutFeatureSelectorPreventOverlapOff            =     1
    BAatLayoutFeatureSelectorHyphensToEmDashOn            =     0
    BAatLayoutFeatureSelectorHyphensToEmDashOff           =     1
    BAatLayoutFeatureSelectorHyphenToEnDashOn             =     2
    BAatLayoutFeatureSelectorHyphenToEnDashOff            =     3
    BAatLayoutFeatureSelectorSlashedZeroOn                =     4
    BAatLayoutFeatureSelectorSlashedZeroOff               =     5
    BAatLayoutFeatureSelectorFormInterrobangOn            =     6
    BAatLayoutFeatureSelectorFormInterrobangOff           =     7
    BAatLayoutFeatureSelectorSmartQuotesOn                =     8
    BAatLayoutFeatureSelectorSmartQuotesOff               =     9
    BAatLayoutFeatureSelectorPeriodsToEllipsisOn          =    10
    BAatLayoutFeatureSelectorPeriodsToEllipsisOff         =    11
    BAatLayoutFeatureSelectorHyphenToMinusOn              =     0
    BAatLayoutFeatureSelectorHyphenToMinusOff             =     1
    BAatLayoutFeatureSelectorAsteriskToMultiplyOn         =     2
    BAatLayoutFeatureSelectorAsteriskToMultiplyOff        =     3
    BAatLayoutFeatureSelectorSlashToDivideOn              =     4
    BAatLayoutFeatureSelectorSlashToDivideOff             =     5
    BAatLayoutFeatureSelectorInequalityLigaturesOn        =     6
    BAatLayoutFeatureSelectorInequalityLigaturesOff       =     7
    BAatLayoutFeatureSelectorExponentsOn                  =     8
    BAatLayoutFeatureSelectorExponentsOff                 =     9
    BAatLayoutFeatureSelectorMathematicalGreekOn          =    10
    BAatLayoutFeatureSelectorMathematicalGreekOff         =    11
    BAatLayoutFeatureSelectorNoOrnaments                  =     0
    BAatLayoutFeatureSelectorDingbats                     =     1
    BAatLayoutFeatureSelectorPiCharacters                 =     2
    BAatLayoutFeatureSelectorFleurons                     =     3
    BAatLayoutFeatureSelectorDecorativeBorders            =     4
    BAatLayoutFeatureSelectorInternationalSymbols         =     5
    BAatLayoutFeatureSelectorMathSymbols                  =     6
    BAatLayoutFeatureSelectorNoAlternates                 =     0
    BAatLayoutFeatureSelectorDesignLevel1                 =     0
    BAatLayoutFeatureSelectorDesignLevel2                 =     1
    BAatLayoutFeatureSelectorDesignLevel3                 =     2
    BAatLayoutFeatureSelectorDesignLevel4                 =     3
    BAatLayoutFeatureSelectorDesignLevel5                 =     4
    BAatLayoutFeatureSelectorNoStyleOptions               =     0
    BAatLayoutFeatureSelectorDisplayText                  =     1
    BAatLayoutFeatureSelectorEngravedText                 =     2
    BAatLayoutFeatureSelectorIlluminatedCaps              =     3
    BAatLayoutFeatureSelectorTitlingCaps                  =     4
    BAatLayoutFeatureSelectorTallCaps                     =     5
    BAatLayoutFeatureSelectorTraditionalCharacters        =     0
    BAatLayoutFeatureSelectorSimplifiedCharacters         =     1
    BAatLayoutFeatureSelectorJis1978Characters            =     2
    BAatLayoutFeatureSelectorJis1983Characters            =     3
    BAatLayoutFeatureSelectorJis1990Characters            =     4
    BAatLayoutFeatureSelectorTraditionalAltOne            =     5
    BAatLayoutFeatureSelectorTraditionalAltTwo            =     6
    BAatLayoutFeatureSelectorTraditionalAltThree          =     7
    BAatLayoutFeatureSelectorTraditionalAltFour           =     8
    BAatLayoutFeatureSelectorTraditionalAltFive           =     9
    BAatLayoutFeatureSelectorExpertCharacters             =    10
    BAatLayoutFeatureSelectorJis2004Characters            =    11
    BAatLayoutFeatureSelectorHojoCharacters               =    12
    BAatLayoutFeatureSelectorNlccharacters                =    13
    BAatLayoutFeatureSelectorTraditionalNamesCharacters   =    14
    BAatLayoutFeatureSelectorLowerCaseNumbers             =     0
    BAatLayoutFeatureSelectorUpperCaseNumbers             =     1
    BAatLayoutFeatureSelectorProportionalText             =     0
    BAatLayoutFeatureSelectorMonospacedText               =     1
    BAatLayoutFeatureSelectorHalfWidthText                =     2
    BAatLayoutFeatureSelectorThirdWidthText               =     3
    BAatLayoutFeatureSelectorQuarterWidthText             =     4
    BAatLayoutFeatureSelectorAltProportionalText          =     5
    BAatLayoutFeatureSelectorAltHalfWidthText             =     6
    BAatLayoutFeatureSelectorNoTransliteration            =     0
    BAatLayoutFeatureSelectorHanjaToHangul                =     1
    BAatLayoutFeatureSelectorHiraganaToKatakana           =     2
    BAatLayoutFeatureSelectorKatakanaToHiragana           =     3
    BAatLayoutFeatureSelectorKanaToRomanization           =     4
    BAatLayoutFeatureSelectorRomanizationToHiragana       =     5
    BAatLayoutFeatureSelectorRomanizationToKatakana       =     6
    BAatLayoutFeatureSelectorHanjaToHangulAltOne          =     7
    BAatLayoutFeatureSelectorHanjaToHangulAltTwo          =     8
    BAatLayoutFeatureSelectorHanjaToHangulAltThree        =     9
    BAatLayoutFeatureSelectorNoAnnotation                 =     0
    BAatLayoutFeatureSelectorBoxAnnotation                =     1
    BAatLayoutFeatureSelectorRoundedBoxAnnotation         =     2
    BAatLayoutFeatureSelectorCircleAnnotation             =     3
    BAatLayoutFeatureSelectorInvertedCircleAnnotation     =     4
    BAatLayoutFeatureSelectorParenthesisAnnotation        =     5
    BAatLayoutFeatureSelectorPeriodAnnotation             =     6
    BAatLayoutFeatureSelectorRomanNumeralAnnotation       =     7
    BAatLayoutFeatureSelectorDiamondAnnotation            =     8
    BAatLayoutFeatureSelectorInvertedBoxAnnotation        =     9
    BAatLayoutFeatureSelectorInvertedRoundedBoxAnnotation =    10
    BAatLayoutFeatureSelectorFullWidthKana                =     0
    BAatLayoutFeatureSelectorProportionalKana             =     1
    BAatLayoutFeatureSelectorFullWidthIdeographs          =     0
    BAatLayoutFeatureSelectorProportionalIdeographs       =     1
    BAatLayoutFeatureSelectorHalfWidthIdeographs          =     2
    BAatLayoutFeatureSelectorCanonicalCompositionOn       =     0
    BAatLayoutFeatureSelectorCanonicalCompositionOff      =     1
    BAatLayoutFeatureSelectorCompatibilityCompositionOn   =     2
    BAatLayoutFeatureSelectorCompatibilityCompositionOff  =     3
    BAatLayoutFeatureSelectorTranscodingCompositionOn     =     4
    BAatLayoutFeatureSelectorTranscodingCompositionOff    =     5
    BAatLayoutFeatureSelectorNoRubyKana                   =     0
    BAatLayoutFeatureSelectorRubyKana                     =     1
    BAatLayoutFeatureSelectorRubyKanaOn                   =     2
    BAatLayoutFeatureSelectorRubyKanaOff                  =     3
    BAatLayoutFeatureSelectorNoCjkSymbolAlternatives      =     0
    BAatLayoutFeatureSelectorCjkSymbolAltOne              =     1
    BAatLayoutFeatureSelectorCjkSymbolAltTwo              =     2
    BAatLayoutFeatureSelectorCjkSymbolAltThree            =     3
    BAatLayoutFeatureSelectorCjkSymbolAltFour             =     4
    BAatLayoutFeatureSelectorCjkSymbolAltFive             =     5
    BAatLayoutFeatureSelectorNoIdeographicAlternatives    =     0
    BAatLayoutFeatureSelectorIdeographicAltOne            =     1
    BAatLayoutFeatureSelectorIdeographicAltTwo            =     2
    BAatLayoutFeatureSelectorIdeographicAltThree          =     3
    BAatLayoutFeatureSelectorIdeographicAltFour           =     4
    BAatLayoutFeatureSelectorIdeographicAltFive           =     5
    BAatLayoutFeatureSelectorCjkVerticalRomanCentered     =     0
    BAatLayoutFeatureSelectorCjkVerticalRomanHbaseline    =     1
    BAatLayoutFeatureSelectorNoCjkItalicRoman             =     0
    BAatLayoutFeatureSelectorCjkItalicRoman               =     1
    BAatLayoutFeatureSelectorCjkItalicRomanOn             =     2
    BAatLayoutFeatureSelectorCjkItalicRomanOff            =     3
    BAatLayoutFeatureSelectorCaseSensitiveLayoutOn        =     0
    BAatLayoutFeatureSelectorCaseSensitiveLayoutOff       =     1
    BAatLayoutFeatureSelectorCaseSensitiveSpacingOn       =     2
    BAatLayoutFeatureSelectorCaseSensitiveSpacingOff      =     3
    BAatLayoutFeatureSelectorAlternateHorizKanaOn         =     0
    BAatLayoutFeatureSelectorAlternateHorizKanaOff        =     1
    BAatLayoutFeatureSelectorAlternateVertKanaOn          =     2
    BAatLayoutFeatureSelectorAlternateVertKanaOff         =     3
    BAatLayoutFeatureSelectorNoStylisticAlternates        =     0
    BAatLayoutFeatureSelectorStylisticAltOneOn            =     2
    BAatLayoutFeatureSelectorStylisticAltOneOff           =     3
    BAatLayoutFeatureSelectorStylisticAltTwoOn            =     4
    BAatLayoutFeatureSelectorStylisticAltTwoOff           =     5
    BAatLayoutFeatureSelectorStylisticAltThreeOn          =     6
    BAatLayoutFeatureSelectorStylisticAltThreeOff         =     7
    BAatLayoutFeatureSelectorStylisticAltFourOn           =     8
    BAatLayoutFeatureSelectorStylisticAltFourOff          =     9
    BAatLayoutFeatureSelectorStylisticAltFiveOn           =    10
    BAatLayoutFeatureSelectorStylisticAltFiveOff          =    11
    BAatLayoutFeatureSelectorStylisticAltSixOn            =    12
    BAatLayoutFeatureSelectorStylisticAltSixOff           =    13
    BAatLayoutFeatureSelectorStylisticAltSevenOn          =    14
    BAatLayoutFeatureSelectorStylisticAltSevenOff         =    15
    BAatLayoutFeatureSelectorStylisticAltEightOn          =    16
    BAatLayoutFeatureSelectorStylisticAltEightOff         =    17
    BAatLayoutFeatureSelectorStylisticAltNineOn           =    18
    BAatLayoutFeatureSelectorStylisticAltNineOff          =    19
    BAatLayoutFeatureSelectorStylisticAltTenOn            =    20
    BAatLayoutFeatureSelectorStylisticAltTenOff           =    21
    BAatLayoutFeatureSelectorStylisticAltElevenOn         =    22
    BAatLayoutFeatureSelectorStylisticAltElevenOff        =    23
    BAatLayoutFeatureSelectorStylisticAltTwelveOn         =    24
    BAatLayoutFeatureSelectorStylisticAltTwelveOff        =    25
    BAatLayoutFeatureSelectorStylisticAltThirteenOn       =    26
    BAatLayoutFeatureSelectorStylisticAltThirteenOff      =    27
    BAatLayoutFeatureSelectorStylisticAltFourteenOn       =    28
    BAatLayoutFeatureSelectorStylisticAltFourteenOff      =    29
    BAatLayoutFeatureSelectorStylisticAltFifteenOn        =    30
    BAatLayoutFeatureSelectorStylisticAltFifteenOff       =    31
    BAatLayoutFeatureSelectorStylisticAltSixteenOn        =    32
    BAatLayoutFeatureSelectorStylisticAltSixteenOff       =    33
    BAatLayoutFeatureSelectorStylisticAltSeventeenOn      =    34
    BAatLayoutFeatureSelectorStylisticAltSeventeenOff     =    35
    BAatLayoutFeatureSelectorStylisticAltEighteenOn       =    36
    BAatLayoutFeatureSelectorStylisticAltEighteenOff      =    37
    BAatLayoutFeatureSelectorStylisticAltNineteenOn       =    38
    BAatLayoutFeatureSelectorStylisticAltNineteenOff      =    39
    BAatLayoutFeatureSelectorStylisticAltTwentyOn         =    40
    BAatLayoutFeatureSelectorStylisticAltTwentyOff        =    41
    BAatLayoutFeatureSelectorContextualAlternatesOn       =     0
    BAatLayoutFeatureSelectorContextualAlternatesOff      =     1
    BAatLayoutFeatureSelectorSwashAlternatesOn            =     2
    BAatLayoutFeatureSelectorSwashAlternatesOff           =     3
    BAatLayoutFeatureSelectorContextualSwashAlternatesOn  =     4
    BAatLayoutFeatureSelectorContextualSwashAlternatesOff =     5
    BAatLayoutFeatureSelectorDefaultLowerCase             =     0
    BAatLayoutFeatureSelectorLowerCaseSmallCaps           =     1
    BAatLayoutFeatureSelectorLowerCasePetiteCaps          =     2
    BAatLayoutFeatureSelectorDefaultUpperCase             =     0
    BAatLayoutFeatureSelectorUpperCaseSmallCaps           =     1
    BAatLayoutFeatureSelectorUpperCasePetiteCaps          =     2
    BAatLayoutFeatureSelectorHalfWidthCjkRoman            =     0
    BAatLayoutFeatureSelectorProportionalCjkRoman         =     1
    BAatLayoutFeatureSelectorDefaultCjkRoman              =     2
    BAatLayoutFeatureSelectorFullWidthCjkRoman            =     3
  end

  @[Flags]
  enum AatLayoutFeatureTypeT : UInt32
    BAatLayoutFeatureTypeInvalid                       = 65535
    BAatLayoutFeatureTypeAllTypographic                =     0
    BAatLayoutFeatureTypeLigatures                     =     1
    BAatLayoutFeatureTypeCursiveConnection             =     2
    BAatLayoutFeatureTypeLetterCase                    =     3
    BAatLayoutFeatureTypeVerticalSubstitution          =     4
    BAatLayoutFeatureTypeLinguisticRearrangement       =     5
    BAatLayoutFeatureTypeNumberSpacing                 =     6
    BAatLayoutFeatureTypeSmartSwashType                =     8
    BAatLayoutFeatureTypeDiacriticsType                =     9
    BAatLayoutFeatureTypeVerticalPosition              =    10
    BAatLayoutFeatureTypeFractions                     =    11
    BAatLayoutFeatureTypeOverlappingCharactersType     =    13
    BAatLayoutFeatureTypeTypographicExtras             =    14
    BAatLayoutFeatureTypeMathematicalExtras            =    15
    BAatLayoutFeatureTypeOrnamentSetsType              =    16
    BAatLayoutFeatureTypeCharacterAlternatives         =    17
    BAatLayoutFeatureTypeDesignComplexityType          =    18
    BAatLayoutFeatureTypeStyleOptions                  =    19
    BAatLayoutFeatureTypeCharacterShape                =    20
    BAatLayoutFeatureTypeNumberCase                    =    21
    BAatLayoutFeatureTypeTextSpacing                   =    22
    BAatLayoutFeatureTypeTransliteration               =    23
    BAatLayoutFeatureTypeAnnotationType                =    24
    BAatLayoutFeatureTypeKanaSpacingType               =    25
    BAatLayoutFeatureTypeIdeographicSpacingType        =    26
    BAatLayoutFeatureTypeUnicodeDecompositionType      =    27
    BAatLayoutFeatureTypeRubyKana                      =    28
    BAatLayoutFeatureTypeCjkSymbolAlternativesType     =    29
    BAatLayoutFeatureTypeIdeographicAlternativesType   =    30
    BAatLayoutFeatureTypeCjkVerticalRomanPlacementType =    31
    BAatLayoutFeatureTypeItalicCjkRoman                =    32
    BAatLayoutFeatureTypeCaseSensitiveLayout           =    33
    BAatLayoutFeatureTypeAlternateKana                 =    34
    BAatLayoutFeatureTypeStylisticAlternatives         =    35
    BAatLayoutFeatureTypeContextualAlternatives        =    36
    BAatLayoutFeatureTypeLowerCase                     =    37
    BAatLayoutFeatureTypeUpperCase                     =    38
    BAatLayoutFeatureTypeLanguageTagType               =    39
    BAatLayoutFeatureTypeCjkRomanSpacingType           =   103
  end

  @[Flags]
  enum BufferDiffFlagsT : UInt32
    Equal               =   0
    ContentTypeMismatch =   1
    LengthMismatch      =   2
    NotdefPresent       =   4
    DottedCirclePresent =   8
    CodepointMismatch   =  16
    ClusterMismatch     =  32
    GlyphFlagsMismatch  =  64
    PositionMismatch    = 128
  end

  @[Flags]
  enum BufferFlagsT : UInt32
    Default                    =   0
    Bot                        =   1
    Eot                        =   2
    PreserveDefaultIgnorables  =   4
    RemoveDefaultIgnorables    =   8
    DoNotInsertDottedCircle    =  16
    Verify                     =  32
    ProduceUnsafeToConcat      =  64
    ProduceSafeToInsertTatweel = 128
    Defined                    = 255
  end

  @[Flags]
  enum BufferSerializeFlagsT : UInt32
    Default      =  0
    NoClusters   =  1
    NoPositions  =  2
    NoGlyphNames =  4
    GlyphExtents =  8
    GlyphFlags   = 16
    NoAdvances   = 32
    Defined      = 63
  end

  @[Flags]
  enum BufferSerializeFormatT : UInt32
    Text    = 1413830740
    Json    = 1246973774
    Invalid =          0
  end

  @[Flags]
  enum GlyphFlagsT : UInt32
    UnsafeToBreak       = 1
    UnsafeToConcat      = 2
    SafeToInsertTatweel = 4
    Defined             = 7
  end

  @[Flags]
  enum OtColorPaletteFlagsT : UInt32
    Default                   = 0
    UsableWithLightBackground = 1
    UsableWithDarkBackground  = 2
  end

  @[Flags]
  enum OtLayoutBaselineTagT : UInt32
    BOtLayoutBaselineTagRoman                 = 1919905134
    BOtLayoutBaselineTagHanging               = 1751215719
    BOtLayoutBaselineTagIdeoFaceBottomOrLeft  = 1768121954
    BOtLayoutBaselineTagIdeoFaceTopOrRight    = 1768121972
    BOtLayoutBaselineTagIdeoFaceCentral       = 1231251043
    BOtLayoutBaselineTagIdeoEmboxBottomOrLeft = 1768187247
    BOtLayoutBaselineTagIdeoEmboxTopOrRight   = 1768191088
    BOtLayoutBaselineTagIdeoEmboxCentral      = 1231315813
    BOtLayoutBaselineTagMath                  = 1835103336
  end

  @[Flags]
  enum OtMathGlyphPartFlagsT : UInt32
    OtMathGlyphPartFlagExtender = 1
  end

  @[Flags]
  enum OtMetaTagT : UInt32
    BOtMetaTagDesignLanguages    = 1684827751
    BOtMetaTagSupportedLanguages = 1936485991
  end

  @[Flags]
  enum OtMetricsTagT : UInt32
    BOtMetricsTagHorizontalAscender        = 1751216995
    BOtMetricsTagHorizontalDescender       = 1751413603
    BOtMetricsTagHorizontalLineGap         = 1751934832
    BOtMetricsTagHorizontalClippingAscent  = 1751346273
    BOtMetricsTagHorizontalClippingDescent = 1751346276
    BOtMetricsTagVerticalAscender          = 1986098019
    BOtMetricsTagVerticalDescender         = 1986294627
    BOtMetricsTagVerticalLineGap           = 1986815856
    BOtMetricsTagHorizontalCaretRise       = 1751347827
    BOtMetricsTagHorizontalCaretRun        = 1751347822
    BOtMetricsTagHorizontalCaretOffset     = 1751347046
    BOtMetricsTagVerticalCaretRise         = 1986228851
    BOtMetricsTagVerticalCaretRun          = 1986228846
    BOtMetricsTagVerticalCaretOffset       = 1986228070
    BOtMetricsTagXHeight                   = 2020108148
    BOtMetricsTagCapHeight                 = 1668311156
    BOtMetricsTagSubscriptEmXSize          = 1935833203
    BOtMetricsTagSubscriptEmYSize          = 1935833459
    BOtMetricsTagSubscriptEmXOffset        = 1935833199
    BOtMetricsTagSubscriptEmYOffset        = 1935833455
    BOtMetricsTagSuperscriptEmXSize        = 1936750707
    BOtMetricsTagSuperscriptEmYSize        = 1936750963
    BOtMetricsTagSuperscriptEmXOffset      = 1936750703
    BOtMetricsTagSuperscriptEmYOffset      = 1936750959
    BOtMetricsTagStrikeoutSize             = 1937011315
    BOtMetricsTagStrikeoutOffset           = 1937011311
    BOtMetricsTagUnderlineSize             = 1970168947
    BOtMetricsTagUnderlineOffset           = 1970168943
  end

  @[Flags]
  enum OtVarAxisFlagsT : UInt32
    BOtVarAxisFlagHidden = 1
  end

  @[Flags]
  enum ScriptT : UInt32
    BScriptCommon                = 1517910393
    BScriptInherited             = 1516858984
    BScriptUnknown               = 1517976186
    BScriptArabic                = 1098015074
    BScriptArmenian              = 1098018158
    BScriptBengali               = 1113943655
    BScriptCyrillic              = 1132032620
    BScriptDevanagari            = 1147500129
    BScriptGeorgian              = 1197830002
    BScriptGreek                 = 1198679403
    BScriptGujarati              = 1198877298
    BScriptGurmukhi              = 1198879349
    BScriptHangul                = 1214344807
    BScriptHan                   = 1214344809
    BScriptHebrew                = 1214603890
    BScriptHiragana              = 1214870113
    BScriptKannada               = 1265525857
    BScriptKatakana              = 1264676449
    BScriptLao                   = 1281453935
    BScriptLatin                 = 1281455214
    BScriptMalayalam             = 1298954605
    BScriptOriya                 = 1332902241
    BScriptTamil                 = 1415671148
    BScriptTelugu                = 1415933045
    BScriptThai                  = 1416126825
    BScriptTibetan               = 1416192628
    BScriptBopomofo              = 1114599535
    BScriptBraille               = 1114792297
    BScriptCanadianSyllabics     = 1130458739
    BScriptCherokee              = 1130915186
    BScriptEthiopic              = 1165256809
    BScriptKhmer                 = 1265134962
    BScriptMongolian             = 1299148391
    BScriptMyanmar               = 1299803506
    BScriptOgham                 = 1332175213
    BScriptRunic                 = 1383427698
    BScriptSinhala               = 1399418472
    BScriptSyriac                = 1400468067
    BScriptThaana                = 1416126817
    BScriptYi                    = 1500080489
    BScriptDeseret               = 1148416628
    BScriptGothic                = 1198486632
    BScriptOldItalic             = 1232363884
    BScriptBuhid                 = 1114990692
    BScriptHanunoo               = 1214344815
    BScriptTagalog               = 1416064103
    BScriptTagbanwa              = 1415669602
    BScriptCypriot               = 1131442804
    BScriptLimbu                 = 1281977698
    BScriptLinearB               = 1281977954
    BScriptOsmanya               = 1332964705
    BScriptShavian               = 1399349623
    BScriptTaiLe                 = 1415670885
    BScriptUgaritic              = 1432838514
    BScriptBuginese              = 1114990441
    BScriptCoptic                = 1131376756
    BScriptGlagolitic            = 1198285159
    BScriptKharoshthi            = 1265131890
    BScriptNewTaiLue             = 1415670901
    BScriptOldPersian            = 1483761007
    BScriptSylotiNagri           = 1400466543
    BScriptTifinagh              = 1415999079
    BScriptBalinese              = 1113681001
    BScriptCuneiform             = 1483961720
    BScriptNko                   = 1315663727
    BScriptPhagsPa               = 1349017959
    BScriptPhoenician            = 1349021304
    BScriptCarian                = 1130459753
    BScriptCham                  = 1130914157
    BScriptKayahLi               = 1264675945
    BScriptLepcha                = 1281716323
    BScriptLycian                = 1283023721
    BScriptLydian                = 1283023977
    BScriptOlChiki               = 1332503403
    BScriptRejang                = 1382706791
    BScriptSaurashtra            = 1398895986
    BScriptSundanese             = 1400204900
    BScriptVai                   = 1449224553
    BScriptAvestan               = 1098281844
    BScriptBamum                 = 1113681269
    BScriptEgyptianHieroglyphs   = 1164409200
    BScriptImperialAramaic       = 1098018153
    BScriptInscriptionalPahlavi  = 1349020777
    BScriptInscriptionalParthian = 1349678185
    BScriptJavanese              = 1247901281
    BScriptKaithi                = 1265920105
    BScriptLisu                  = 1281979253
    BScriptMeeteiMayek           = 1299473769
    BScriptOldSouthArabian       = 1398895202
    BScriptOldTurkic             = 1332898664
    BScriptSamaritan             = 1398893938
    BScriptTaiTham               = 1281453665
    BScriptTaiViet               = 1415673460
    BScriptBatak                 = 1113683051
    BScriptBrahmi                = 1114792296
    BScriptMandaic               = 1298230884
    BScriptChakma                = 1130457965
    BScriptMeroiticCursive       = 1298494051
    BScriptMeroiticHieroglyphs   = 1298494063
    BScriptMiao                  = 1349284452
    BScriptSharada               = 1399353956
    BScriptSoraSompeng           = 1399812705
    BScriptTakri                 = 1415670642
    BScriptBassaVah              = 1113682803
    BScriptCaucasianAlbanian     = 1097295970
    BScriptDuployan              = 1148547180
    BScriptElbasan               = 1164730977
    BScriptGrantha               = 1198678382
    BScriptKhojki                = 1265135466
    BScriptKhudawadi             = 1399418468
    BScriptLinearA               = 1281977953
    BScriptMahajani              = 1298229354
    BScriptManichaean            = 1298230889
    BScriptMendeKikakui          = 1298493028
    BScriptModi                  = 1299145833
    BScriptMro                   = 1299345263
    BScriptNabataean             = 1315070324
    BScriptOldNorthArabian       = 1315009122
    BScriptOldPermic             = 1348825709
    BScriptPahawhHmong           = 1215131239
    BScriptPalmyrene             = 1348562029
    BScriptPauCinHau             = 1348564323
    BScriptPsalterPahlavi        = 1349020784
    BScriptSiddham               = 1399415908
    BScriptTirhuta               = 1416196712
    BScriptWarangCiti            = 1466004065
    BScriptAhom                  = 1097363309
    BScriptAnatolianHieroglyphs  = 1215067511
    BScriptHatran                = 1214346354
    BScriptMultani               = 1299541108
    BScriptOldHungarian          = 1215655527
    BScriptSignwriting           = 1399287415
    BScriptAdlam                 = 1097100397
    BScriptBhaiksuki             = 1114139507
    BScriptMarchen               = 1298231907
    BScriptOsage                 = 1332963173
    BScriptTangut                = 1415671399
    BScriptNewa                  = 1315272545
    BScriptMasaramGondi          = 1198485101
    BScriptNushu                 = 1316186229
    BScriptSoyombo               = 1399814511
    BScriptZanabazarSquare       = 1516334690
    BScriptDogra                 = 1148151666
    BScriptGunjalaGondi          = 1198485095
    BScriptHanifiRohingya        = 1383032935
    BScriptMakasar               = 1298230113
    BScriptMedefaidrin           = 1298490470
    BScriptOldSogdian            = 1399809903
    BScriptSogdian               = 1399809892
    BScriptElymaic               = 1164736877
    BScriptNandinagari           = 1315008100
    BScriptNyiakengPuachueHmong  = 1215131248
    BScriptWancho                = 1466132591
    BScriptChorasmian            = 1130918515
    BScriptDivesAkuru            = 1147756907
    BScriptKhitanSmallScript     = 1265202291
    BScriptYezidi                = 1499822697
    BScriptCyproMinoan           = 1131441518
    BScriptOldUyghur             = 1333094258
    BScriptTangsa                = 1416524641
    BScriptToto                  = 1416590447
    BScriptVithkuqi              = 1449751656
    BScriptMath                  = 1517122664
    BScriptKawi                  = 1264678761
    BScriptNagMundari            = 1315006317
    BScriptGaray                 = 1197568609
    BScriptGurungKhema           = 1198877544
    BScriptKiratRai              = 1265787241
    BScriptOlOnal                = 1332633967
    BScriptSunuwar               = 1400204917
    BScriptTodhri                = 1416586354
    BScriptTuluTigalari          = 1416983655
    BScriptInvalid               =          0
  end

  @[Flags]
  enum StyleTagT : UInt32
    BStyleTagItalic      = 1769234796
    BStyleTagOpticalSize = 1869640570
    BStyleTagSlantAngle  = 1936486004
    BStyleTagSlantRatio  = 1399615092
    BStyleTagWidth       = 2003072104
    BStyleTagWeight      = 2003265652
  end

  def self.aat_layout_feature_type_get_name_id(face : HarfBuzz::FaceT, feature_type : HarfBuzz::AatLayoutFeatureTypeT) : UInt32
    # hb_aat_layout_feature_type_get_name_id: (None)
    # @face:
    # @feature_type:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_aat_layout_feature_type_get_name_id(face, feature_type)

    # Return value handling
    _retval
  end

  def self.aat_layout_feature_type_get_selector_infos(face : HarfBuzz::FaceT, feature_type : HarfBuzz::AatLayoutFeatureTypeT, start_offset : UInt32) : UInt32
    # hb_aat_layout_feature_type_get_selector_infos: (None)
    # @face:
    # @feature_type:
    # @start_offset:
    # @selector_count: (out) (transfer full) (optional)
    # @selectors: (out) (caller-allocates) (optional) (array length=selector_count element-type Interface)
    # @default_index: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    selector_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    selector_count = selectors.size
    # Generator::OutArgUsedInReturnPlan
    selectors = Pointer(Pointer(LibHarfBuzz::AatLayoutFeatureSelectorInfoT)).null # Generator::ArrayArgPlan
    selectors = selectors.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::AatLayoutFeatureSelectorInfoT))
    # Generator::OutArgUsedInReturnPlan
    default_index = Pointer(UInt32).null
    # C call
    _retval = LibHarfBuzz.hb_aat_layout_feature_type_get_selector_infos(face, feature_type, start_offset, selector_count, selectors, default_index)

    # Return value handling
    _retval
  end

  def self.aat_layout_get_feature_types(face : HarfBuzz::FaceT, start_offset : UInt32, features : Enumerable(HarfBuzz::AatLayoutFeatureTypeT)) : UInt32
    # hb_aat_layout_get_feature_types: (None)
    # @face:
    # @start_offset:
    # @feature_count: (out) (transfer full) (optional)
    # @features: (out) (caller-allocates) (array length=feature_count element-type Interface)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    feature_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    feature_count = features.size
    # Generator::ArrayArgPlan
    features = features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_aat_layout_get_feature_types(face, start_offset, feature_count, features)

    # Return value handling
    _retval
  end

  def self.aat_layout_has_positioning(face : HarfBuzz::FaceT) : Int32
    # hb_aat_layout_has_positioning: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_aat_layout_has_positioning(face)

    # Return value handling
    _retval
  end

  def self.aat_layout_has_substitution(face : HarfBuzz::FaceT) : Int32
    # hb_aat_layout_has_substitution: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_aat_layout_has_substitution(face)

    # Return value handling
    _retval
  end

  def self.aat_layout_has_tracking(face : HarfBuzz::FaceT) : Int32
    # hb_aat_layout_has_tracking: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_aat_layout_has_tracking(face)

    # Return value handling
    _retval
  end

  def self.blob_copy_writable_or_fail(blob : HarfBuzz::BlobT) : HarfBuzz::BlobT
    # hb_blob_copy_writable_or_fail: (None)
    # @blob:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_blob_copy_writable_or_fail(blob)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.blob_create_from_file(file_name : ::String) : HarfBuzz::BlobT
    # hb_blob_create_from_file: (None)
    # @file_name:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_blob_create_from_file(file_name)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.blob_create_from_file_or_fail(file_name : ::String) : HarfBuzz::BlobT
    # hb_blob_create_from_file_or_fail: (None)
    # @file_name:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_blob_create_from_file_or_fail(file_name)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.blob_create_sub_blob(parent : HarfBuzz::BlobT, offset : UInt32, length : UInt32) : HarfBuzz::BlobT
    # hb_blob_create_sub_blob: (None)
    # @parent:
    # @offset:
    # @length:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_blob_create_sub_blob(parent, offset, length)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.blob_get_data(blob : HarfBuzz::BlobT) : Enumerable(::String)?
    # hb_blob_get_data: (None)
    # @blob:
    # @length: (out) (transfer full)
    # Returns: (transfer none) (nullable) (array length=length element-type Utf8)

    # Generator::OutArgUsedInReturnPlan
    length = 0_u32
    # C call
    _retval = LibHarfBuzz.hb_blob_get_data(blob, pointerof(length))

    # Return value handling
    GICrystal.transfer_array(_retval, length, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.blob_get_data_writable(blob : HarfBuzz::BlobT) : Enumerable(::String)
    # hb_blob_get_data_writable: (None)
    # @blob:
    # @length: (out) (transfer full)
    # Returns: (transfer none) (array length=length element-type Utf8)

    # Generator::OutArgUsedInReturnPlan
    length = 0_u32
    # C call
    _retval = LibHarfBuzz.hb_blob_get_data_writable(blob, pointerof(length))

    # Return value handling
    GICrystal.transfer_array(_retval, length, GICrystal::Transfer::None)
  end

  def self.blob_get_empty : HarfBuzz::BlobT
    # hb_blob_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_blob_get_empty

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.blob_get_length(blob : HarfBuzz::BlobT) : UInt32
    # hb_blob_get_length: (None)
    # @blob:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_blob_get_length(blob)

    # Return value handling
    _retval
  end

  def self.blob_is_immutable(blob : HarfBuzz::BlobT) : Int32
    # hb_blob_is_immutable: (None)
    # @blob:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_blob_is_immutable(blob)

    # Return value handling
    _retval
  end

  def self.blob_make_immutable(blob : HarfBuzz::BlobT) : Nil
    # hb_blob_make_immutable: (None)
    # @blob:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_blob_make_immutable(blob)

    # Return value handling
  end

  def self.buffer_add(buffer : HarfBuzz::BufferT, codepoint : UInt32, cluster : UInt32) : Nil
    # hb_buffer_add: (None)
    # @buffer:
    # @codepoint:
    # @cluster:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_add(buffer, codepoint, cluster)

    # Return value handling
  end

  def self.buffer_add_codepoints(buffer : HarfBuzz::BufferT, text : Enumerable(UInt32), item_offset : UInt32, item_length : Int32) : Nil
    # hb_buffer_add_codepoints: (None)
    # @buffer:
    # @text: (array length=text_length element-type UInt32)
    # @text_length:
    # @item_offset:
    # @item_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    text_length = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    LibHarfBuzz.hb_buffer_add_codepoints(buffer, text, text_length, item_offset, item_length)

    # Return value handling
  end

  def self.buffer_add_latin1(buffer : HarfBuzz::BufferT, text : ::Bytes, item_offset : UInt32, item_length : Int32) : Nil
    # hb_buffer_add_latin1: (None)
    # @buffer:
    # @text: (array length=text_length element-type UInt8)
    # @text_length:
    # @item_offset:
    # @item_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    text_length = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    LibHarfBuzz.hb_buffer_add_latin1(buffer, text, text_length, item_offset, item_length)

    # Return value handling
  end

  def self.buffer_add_utf16(buffer : HarfBuzz::BufferT, text : Enumerable(UInt16), item_offset : UInt32, item_length : Int32) : Nil
    # hb_buffer_add_utf16: (None)
    # @buffer:
    # @text: (array length=text_length element-type UInt16)
    # @text_length:
    # @item_offset:
    # @item_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    text_length = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.to_unsafe.as(Pointer(UInt16))

    # C call
    LibHarfBuzz.hb_buffer_add_utf16(buffer, text, text_length, item_offset, item_length)

    # Return value handling
  end

  def self.buffer_add_utf32(buffer : HarfBuzz::BufferT, text : Enumerable(UInt32), item_offset : UInt32, item_length : Int32) : Nil
    # hb_buffer_add_utf32: (None)
    # @buffer:
    # @text: (array length=text_length element-type UInt32)
    # @text_length:
    # @item_offset:
    # @item_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    text_length = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    LibHarfBuzz.hb_buffer_add_utf32(buffer, text, text_length, item_offset, item_length)

    # Return value handling
  end

  def self.buffer_add_utf8(buffer : HarfBuzz::BufferT, text : ::Bytes, item_offset : UInt32, item_length : Int32) : Nil
    # hb_buffer_add_utf8: (None)
    # @buffer:
    # @text: (array length=text_length element-type UInt8)
    # @text_length:
    # @item_offset:
    # @item_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    text_length = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    LibHarfBuzz.hb_buffer_add_utf8(buffer, text, text_length, item_offset, item_length)

    # Return value handling
  end

  def self.buffer_allocation_successful(buffer : HarfBuzz::BufferT) : Int32
    # hb_buffer_allocation_successful: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_allocation_successful(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_append(buffer : HarfBuzz::BufferT, source : HarfBuzz::BufferT, start : UInt32, end _end : UInt32) : Nil
    # hb_buffer_append: (None)
    # @buffer:
    # @source:
    # @start:
    # @end:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_append(buffer, source, start, _end)

    # Return value handling
  end

  def self.buffer_clear_contents(buffer : HarfBuzz::BufferT) : Nil
    # hb_buffer_clear_contents: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_clear_contents(buffer)

    # Return value handling
  end

  def self.buffer_create : HarfBuzz::BufferT
    # hb_buffer_create: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_buffer_create

    # Return value handling
    HarfBuzz::BufferT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.buffer_create_similar(src : HarfBuzz::BufferT) : HarfBuzz::BufferT
    # hb_buffer_create_similar: (None)
    # @src:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_buffer_create_similar(src)

    # Return value handling
    HarfBuzz::BufferT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.buffer_deserialize_glyphs(buffer : HarfBuzz::BufferT, buf : Enumerable(::String), font : HarfBuzz::FontT?, format : HarfBuzz::BufferSerializeFormatT) : Int32
    # hb_buffer_deserialize_glyphs: (None)
    # @buffer:
    # @buf: (array length=buf_len element-type Utf8)
    # @buf_len:
    # @end_ptr: (out) (transfer full) (optional)
    # @font: (nullable)
    # @format:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    buf_len = buf.size
    # Generator::ArrayArgPlan
    buf = buf.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
    # Generator::OutArgUsedInReturnPlan
    end_ptr = Pointer(Pointer(LibC::Char)).null # Generator::NullableArrayPlan
    font = if font.nil?
             Pointer(Void).null
           else
             font.to_unsafe
           end

    # C call
    _retval = LibHarfBuzz.hb_buffer_deserialize_glyphs(buffer, buf, buf_len, end_ptr, font, format)

    # Return value handling
    _retval
  end

  def self.buffer_deserialize_unicode(buffer : HarfBuzz::BufferT, buf : Enumerable(::String), format : HarfBuzz::BufferSerializeFormatT) : Int32
    # hb_buffer_deserialize_unicode: (None)
    # @buffer:
    # @buf: (array length=buf_len element-type Utf8)
    # @buf_len:
    # @end_ptr: (out) (transfer full) (optional)
    # @format:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    buf_len = buf.size
    # Generator::ArrayArgPlan
    buf = buf.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
    # Generator::OutArgUsedInReturnPlan
    end_ptr = Pointer(Pointer(LibC::Char)).null
    # C call
    _retval = LibHarfBuzz.hb_buffer_deserialize_unicode(buffer, buf, buf_len, end_ptr, format)

    # Return value handling
    _retval
  end

  def self.buffer_diff(buffer : HarfBuzz::BufferT, reference : HarfBuzz::BufferT, dottedcircle_glyph : UInt32, position_fuzz : UInt32) : HarfBuzz::BufferDiffFlagsT
    # hb_buffer_diff: (None)
    # @buffer:
    # @reference:
    # @dottedcircle_glyph:
    # @position_fuzz:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_diff(buffer, reference, dottedcircle_glyph, position_fuzz)

    # Return value handling
    HarfBuzz::BufferDiffFlagsT.new(_retval)
  end

  def self.buffer_get_cluster_level(buffer : HarfBuzz::BufferT) : HarfBuzz::BufferClusterLevelT
    # hb_buffer_get_cluster_level: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_cluster_level(buffer)

    # Return value handling
    HarfBuzz::BufferClusterLevelT.new(_retval)
  end

  def self.buffer_get_content_type(buffer : HarfBuzz::BufferT) : HarfBuzz::BufferContentTypeT
    # hb_buffer_get_content_type: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_content_type(buffer)

    # Return value handling
    HarfBuzz::BufferContentTypeT.new(_retval)
  end

  def self.buffer_get_direction(buffer : HarfBuzz::BufferT) : HarfBuzz::DirectionT
    # hb_buffer_get_direction: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_direction(buffer)

    # Return value handling
    HarfBuzz::DirectionT.new(_retval)
  end

  def self.buffer_get_empty : HarfBuzz::BufferT
    # hb_buffer_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_empty

    # Return value handling
    HarfBuzz::BufferT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.buffer_get_flags(buffer : HarfBuzz::BufferT) : HarfBuzz::BufferFlagsT
    # hb_buffer_get_flags: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_flags(buffer)

    # Return value handling
    HarfBuzz::BufferFlagsT.new(_retval)
  end

  def self.buffer_get_glyph_infos(buffer : HarfBuzz::BufferT) : Enumerable(HarfBuzz::GlyphInfoT)
    # hb_buffer_get_glyph_infos: (None)
    # @buffer:
    # @length: (out) (transfer full)
    # Returns: (transfer none) (array length=length element-type Interface)

    # Generator::OutArgUsedInReturnPlan
    length = 0_u32
    # C call
    _retval = LibHarfBuzz.hb_buffer_get_glyph_infos(buffer, pointerof(length))

    # Return value handling
    GICrystal.transfer_array(_retval, length, GICrystal::Transfer::None)
  end

  def self.buffer_get_glyph_positions(buffer : HarfBuzz::BufferT) : Enumerable(HarfBuzz::GlyphPositionT)
    # hb_buffer_get_glyph_positions: (None)
    # @buffer:
    # @length: (out) (transfer full)
    # Returns: (transfer none) (array length=length element-type Interface)

    # Generator::OutArgUsedInReturnPlan
    length = 0_u32
    # C call
    _retval = LibHarfBuzz.hb_buffer_get_glyph_positions(buffer, pointerof(length))

    # Return value handling
    GICrystal.transfer_array(_retval, length, GICrystal::Transfer::None)
  end

  def self.buffer_get_invisible_glyph(buffer : HarfBuzz::BufferT) : UInt32
    # hb_buffer_get_invisible_glyph: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_invisible_glyph(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_get_language(buffer : HarfBuzz::BufferT) : HarfBuzz::LanguageT
    # hb_buffer_get_language: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_language(buffer)

    # Return value handling
    HarfBuzz::LanguageT.new(_retval, GICrystal::Transfer::None)
  end

  def self.buffer_get_length(buffer : HarfBuzz::BufferT) : UInt32
    # hb_buffer_get_length: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_length(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_get_not_found_glyph(buffer : HarfBuzz::BufferT) : UInt32
    # hb_buffer_get_not_found_glyph: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_not_found_glyph(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_get_not_found_variation_selector_glyph(buffer : HarfBuzz::BufferT) : UInt32
    # hb_buffer_get_not_found_variation_selector_glyph: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_not_found_variation_selector_glyph(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_get_random_state(buffer : HarfBuzz::BufferT) : UInt32
    # hb_buffer_get_random_state: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_random_state(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_get_replacement_codepoint(buffer : HarfBuzz::BufferT) : UInt32
    # hb_buffer_get_replacement_codepoint: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_replacement_codepoint(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_get_script(buffer : HarfBuzz::BufferT) : HarfBuzz::ScriptT
    # hb_buffer_get_script: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_script(buffer)

    # Return value handling
    HarfBuzz::ScriptT.new(_retval)
  end

  def self.buffer_get_segment_properties(buffer : HarfBuzz::BufferT) : HarfBuzz::SegmentPropertiesT
    # hb_buffer_get_segment_properties: (None)
    # @buffer:
    # @props: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    props = HarfBuzz::SegmentPropertiesT.new
    # C call
    LibHarfBuzz.hb_buffer_get_segment_properties(buffer, props)

    # Return value handling
    props
  end

  def self.buffer_get_unicode_funcs(buffer : HarfBuzz::BufferT) : HarfBuzz::UnicodeFuncsT
    # hb_buffer_get_unicode_funcs: (None)
    # @buffer:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_buffer_get_unicode_funcs(buffer)

    # Return value handling
    HarfBuzz::UnicodeFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.buffer_guess_segment_properties(buffer : HarfBuzz::BufferT) : Nil
    # hb_buffer_guess_segment_properties: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_guess_segment_properties(buffer)

    # Return value handling
  end

  def self.buffer_has_positions(buffer : HarfBuzz::BufferT) : Int32
    # hb_buffer_has_positions: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_has_positions(buffer)

    # Return value handling
    _retval
  end

  def self.buffer_normalize_glyphs(buffer : HarfBuzz::BufferT) : Nil
    # hb_buffer_normalize_glyphs: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_normalize_glyphs(buffer)

    # Return value handling
  end

  def self.buffer_pre_allocate(buffer : HarfBuzz::BufferT, size : UInt32) : Int32
    # hb_buffer_pre_allocate: (None)
    # @buffer:
    # @size:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_pre_allocate(buffer, size)

    # Return value handling
    _retval
  end

  def self.buffer_reset(buffer : HarfBuzz::BufferT) : Nil
    # hb_buffer_reset: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_reset(buffer)

    # Return value handling
  end

  def self.buffer_reverse(buffer : HarfBuzz::BufferT) : Nil
    # hb_buffer_reverse: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_reverse(buffer)

    # Return value handling
  end

  def self.buffer_reverse_clusters(buffer : HarfBuzz::BufferT) : Nil
    # hb_buffer_reverse_clusters: (None)
    # @buffer:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_reverse_clusters(buffer)

    # Return value handling
  end

  def self.buffer_reverse_range(buffer : HarfBuzz::BufferT, start : UInt32, end _end : UInt32) : Nil
    # hb_buffer_reverse_range: (None)
    # @buffer:
    # @start:
    # @end:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_reverse_range(buffer, start, _end)

    # Return value handling
  end

  def self.buffer_serialize(buffer : HarfBuzz::BufferT, start : UInt32, end _end : UInt32, buf : ::Bytes, font : HarfBuzz::FontT?, format : HarfBuzz::BufferSerializeFormatT, flags : HarfBuzz::BufferSerializeFlagsT) : UInt32
    # hb_buffer_serialize: (None)
    # @buffer:
    # @start:
    # @end:
    # @buf: (out) (transfer full) (array length=buf_size element-type UInt8)
    # @buf_size: (out) (transfer full)
    # @buf_consumed: (out) (transfer full) (optional)
    # @font: (nullable)
    # @format:
    # @flags:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    buf_size = buf.size
    # Generator::ArrayArgPlan
    buf = buf.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::OutArgUsedInReturnPlan
    buf_consumed = Pointer(UInt32).null # Generator::NullableArrayPlan
    font = if font.nil?
             Pointer(Void).null
           else
             font.to_unsafe
           end

    # C call
    _retval = LibHarfBuzz.hb_buffer_serialize(buffer, start, _end, buf, buf_size, buf_consumed, font, format, flags)

    # Return value handling
    _retval
  end

  def self.buffer_serialize_format_from_string(str : ::Bytes) : HarfBuzz::BufferSerializeFormatT
    # hb_buffer_serialize_format_from_string: (None)
    # @str: (array length=len element-type UInt8)
    # @len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = str.size
    # Generator::ArrayArgPlan
    str = str.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibHarfBuzz.hb_buffer_serialize_format_from_string(str, len)

    # Return value handling
    HarfBuzz::BufferSerializeFormatT.new(_retval)
  end

  def self.buffer_serialize_format_from_string(*str : UInt8)
    self.buffer_serialize_format_from_string(str)
  end

  def self.buffer_serialize_format_to_string(format : HarfBuzz::BufferSerializeFormatT) : ::String
    # hb_buffer_serialize_format_to_string: (None)
    # @format:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_serialize_format_to_string(format)

    # Return value handling
    ::String.new(_retval)
  end

  def self.buffer_serialize_glyphs(buffer : HarfBuzz::BufferT, start : UInt32, end _end : UInt32, buf : ::Bytes, font : HarfBuzz::FontT?, format : HarfBuzz::BufferSerializeFormatT, flags : HarfBuzz::BufferSerializeFlagsT) : UInt32
    # hb_buffer_serialize_glyphs: (None)
    # @buffer:
    # @start:
    # @end:
    # @buf: (out) (transfer full) (array length=buf_size element-type UInt8)
    # @buf_size: (out) (transfer full)
    # @buf_consumed: (out) (transfer full) (optional)
    # @font: (nullable)
    # @format:
    # @flags:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    buf_size = buf.size
    # Generator::ArrayArgPlan
    buf = buf.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::OutArgUsedInReturnPlan
    buf_consumed = Pointer(UInt32).null # Generator::NullableArrayPlan
    font = if font.nil?
             Pointer(Void).null
           else
             font.to_unsafe
           end

    # C call
    _retval = LibHarfBuzz.hb_buffer_serialize_glyphs(buffer, start, _end, buf, buf_size, buf_consumed, font, format, flags)

    # Return value handling
    _retval
  end

  def self.buffer_serialize_list_formats : Enumerable(::String)
    # hb_buffer_serialize_list_formats: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibHarfBuzz.hb_buffer_serialize_list_formats

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.buffer_serialize_unicode(buffer : HarfBuzz::BufferT, start : UInt32, end _end : UInt32, buf : ::Bytes, format : HarfBuzz::BufferSerializeFormatT, flags : HarfBuzz::BufferSerializeFlagsT) : UInt32
    # hb_buffer_serialize_unicode: (None)
    # @buffer:
    # @start:
    # @end:
    # @buf: (out) (transfer full) (array length=buf_size element-type UInt8)
    # @buf_size: (out) (transfer full)
    # @buf_consumed: (out) (transfer full) (optional)
    # @format:
    # @flags:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    buf_size = buf.size
    # Generator::ArrayArgPlan
    buf = buf.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::OutArgUsedInReturnPlan
    buf_consumed = Pointer(UInt32).null
    # C call
    _retval = LibHarfBuzz.hb_buffer_serialize_unicode(buffer, start, _end, buf, buf_size, buf_consumed, format, flags)

    # Return value handling
    _retval
  end

  def self.buffer_set_cluster_level(buffer : HarfBuzz::BufferT, cluster_level : HarfBuzz::BufferClusterLevelT) : Nil
    # hb_buffer_set_cluster_level: (None)
    # @buffer:
    # @cluster_level:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_cluster_level(buffer, cluster_level)

    # Return value handling
  end

  def self.buffer_set_content_type(buffer : HarfBuzz::BufferT, content_type : HarfBuzz::BufferContentTypeT) : Nil
    # hb_buffer_set_content_type: (None)
    # @buffer:
    # @content_type:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_content_type(buffer, content_type)

    # Return value handling
  end

  def self.buffer_set_direction(buffer : HarfBuzz::BufferT, direction : HarfBuzz::DirectionT) : Nil
    # hb_buffer_set_direction: (None)
    # @buffer:
    # @direction:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_direction(buffer, direction)

    # Return value handling
  end

  def self.buffer_set_flags(buffer : HarfBuzz::BufferT, flags : HarfBuzz::BufferFlagsT) : Nil
    # hb_buffer_set_flags: (None)
    # @buffer:
    # @flags:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_flags(buffer, flags)

    # Return value handling
  end

  def self.buffer_set_invisible_glyph(buffer : HarfBuzz::BufferT, invisible : UInt32) : Nil
    # hb_buffer_set_invisible_glyph: (None)
    # @buffer:
    # @invisible:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_invisible_glyph(buffer, invisible)

    # Return value handling
  end

  def self.buffer_set_language(buffer : HarfBuzz::BufferT, language : HarfBuzz::LanguageT) : Nil
    # hb_buffer_set_language: (None)
    # @buffer:
    # @language:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_language(buffer, language)

    # Return value handling
  end

  def self.buffer_set_length(buffer : HarfBuzz::BufferT, length : UInt32) : Int32
    # hb_buffer_set_length: (None)
    # @buffer:
    # @length:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_buffer_set_length(buffer, length)

    # Return value handling
    _retval
  end

  def self.buffer_set_message_func(buffer : HarfBuzz::BufferT, func : HarfBuzz::BufferMessageFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_buffer_set_message_func: (None)
    # @buffer:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_buffer_set_message_func(buffer, func, user_data, destroy)

    # Return value handling
  end

  def self.buffer_set_not_found_glyph(buffer : HarfBuzz::BufferT, not_found : UInt32) : Nil
    # hb_buffer_set_not_found_glyph: (None)
    # @buffer:
    # @not_found:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_not_found_glyph(buffer, not_found)

    # Return value handling
  end

  def self.buffer_set_not_found_variation_selector_glyph(buffer : HarfBuzz::BufferT, not_found_variation_selector : UInt32) : Nil
    # hb_buffer_set_not_found_variation_selector_glyph: (None)
    # @buffer:
    # @not_found_variation_selector:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_not_found_variation_selector_glyph(buffer, not_found_variation_selector)

    # Return value handling
  end

  def self.buffer_set_random_state(buffer : HarfBuzz::BufferT, state : UInt32) : Nil
    # hb_buffer_set_random_state: (None)
    # @buffer:
    # @state:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_random_state(buffer, state)

    # Return value handling
  end

  def self.buffer_set_replacement_codepoint(buffer : HarfBuzz::BufferT, replacement : UInt32) : Nil
    # hb_buffer_set_replacement_codepoint: (None)
    # @buffer:
    # @replacement:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_replacement_codepoint(buffer, replacement)

    # Return value handling
  end

  def self.buffer_set_script(buffer : HarfBuzz::BufferT, script : HarfBuzz::ScriptT) : Nil
    # hb_buffer_set_script: (None)
    # @buffer:
    # @script:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_script(buffer, script)

    # Return value handling
  end

  def self.buffer_set_segment_properties(buffer : HarfBuzz::BufferT, props : HarfBuzz::SegmentPropertiesT) : Nil
    # hb_buffer_set_segment_properties: (None)
    # @buffer:
    # @props:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_segment_properties(buffer, props)

    # Return value handling
  end

  def self.buffer_set_unicode_funcs(buffer : HarfBuzz::BufferT, unicode_funcs : HarfBuzz::UnicodeFuncsT) : Nil
    # hb_buffer_set_unicode_funcs: (None)
    # @buffer:
    # @unicode_funcs:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_buffer_set_unicode_funcs(buffer, unicode_funcs)

    # Return value handling
  end

  def self.calloc(nmemb : UInt64, size : UInt64) : Pointer(Void)?
    # hb_calloc: (None)
    # @nmemb:
    # @size:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibHarfBuzz.hb_calloc(nmemb, size)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.color_get_alpha(color : UInt32) : UInt8
    # hb_color_get_alpha: (None)
    # @color:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_color_get_alpha(color)

    # Return value handling
    _retval
  end

  def self.color_get_blue(color : UInt32) : UInt8
    # hb_color_get_blue: (None)
    # @color:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_color_get_blue(color)

    # Return value handling
    _retval
  end

  def self.color_get_green(color : UInt32) : UInt8
    # hb_color_get_green: (None)
    # @color:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_color_get_green(color)

    # Return value handling
    _retval
  end

  def self.color_get_red(color : UInt32) : UInt8
    # hb_color_get_red: (None)
    # @color:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_color_get_red(color)

    # Return value handling
    _retval
  end

  def self.color_line_get_color_stops(color_line : HarfBuzz::ColorLineT, start : UInt32) : UInt32
    # hb_color_line_get_color_stops: (None)
    # @color_line:
    # @start:
    # @count: (out) (transfer full) (optional)
    # @color_stops: (out) (caller-allocates) (optional) (array length=count element-type Interface)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    count = color_stops.size
    # Generator::OutArgUsedInReturnPlan
    color_stops = Pointer(Pointer(LibHarfBuzz::ColorStopT)).null # Generator::ArrayArgPlan
    color_stops = color_stops.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::ColorStopT))

    # C call
    _retval = LibHarfBuzz.hb_color_line_get_color_stops(color_line, start, count, color_stops)

    # Return value handling
    _retval
  end

  def self.color_line_get_extend(color_line : HarfBuzz::ColorLineT) : HarfBuzz::PaintExtendT
    # hb_color_line_get_extend: (None)
    # @color_line:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_color_line_get_extend(color_line)

    # Return value handling
    HarfBuzz::PaintExtendT.new(_retval)
  end

  def self.direction_from_string(str : ::Bytes) : HarfBuzz::DirectionT
    # hb_direction_from_string: (None)
    # @str: (array length=len element-type UInt8)
    # @len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = str.size
    # Generator::ArrayArgPlan
    str = str.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibHarfBuzz.hb_direction_from_string(str, len)

    # Return value handling
    HarfBuzz::DirectionT.new(_retval)
  end

  def self.direction_from_string(*str : UInt8)
    self.direction_from_string(str)
  end

  def self.direction_to_string(direction : HarfBuzz::DirectionT) : ::String
    # hb_direction_to_string: (None)
    # @direction:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_direction_to_string(direction)

    # Return value handling
    ::String.new(_retval)
  end

  def self.draw_close_path(dfuncs : HarfBuzz::DrawFuncsT, draw_data : Pointer(Void)?, st : HarfBuzz::DrawStateT) : Nil
    # hb_draw_close_path: (None)
    # @dfuncs:
    # @draw_data: (nullable)
    # @st:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    draw_data = if draw_data.nil?
                  Pointer(Void).null
                else
                  draw_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_close_path(dfuncs, draw_data, st)

    # Return value handling
  end

  def self.draw_cubic_to(dfuncs : HarfBuzz::DrawFuncsT, draw_data : Pointer(Void)?, st : HarfBuzz::DrawStateT, control1_x : Float32, control1_y : Float32, control2_x : Float32, control2_y : Float32, to_x : Float32, to_y : Float32) : Nil
    # hb_draw_cubic_to: (None)
    # @dfuncs:
    # @draw_data: (nullable)
    # @st:
    # @control1_x:
    # @control1_y:
    # @control2_x:
    # @control2_y:
    # @to_x:
    # @to_y:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    draw_data = if draw_data.nil?
                  Pointer(Void).null
                else
                  draw_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_cubic_to(dfuncs, draw_data, st, control1_x, control1_y, control2_x, control2_y, to_x, to_y)

    # Return value handling
  end

  def self.draw_funcs_create : HarfBuzz::DrawFuncsT
    # hb_draw_funcs_create: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_draw_funcs_create

    # Return value handling
    HarfBuzz::DrawFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.draw_funcs_get_empty : HarfBuzz::DrawFuncsT
    # hb_draw_funcs_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_draw_funcs_get_empty

    # Return value handling
    HarfBuzz::DrawFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.draw_funcs_is_immutable(dfuncs : HarfBuzz::DrawFuncsT) : Int32
    # hb_draw_funcs_is_immutable: (None)
    # @dfuncs:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_draw_funcs_is_immutable(dfuncs)

    # Return value handling
    _retval
  end

  def self.draw_funcs_make_immutable(dfuncs : HarfBuzz::DrawFuncsT) : Nil
    # hb_draw_funcs_make_immutable: (None)
    # @dfuncs:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_draw_funcs_make_immutable(dfuncs)

    # Return value handling
  end

  def self.draw_funcs_set_close_path_func(dfuncs : HarfBuzz::DrawFuncsT, func : HarfBuzz::DrawClosePathFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_draw_funcs_set_close_path_func: (None)
    # @dfuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_funcs_set_close_path_func(dfuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.draw_funcs_set_cubic_to_func(dfuncs : HarfBuzz::DrawFuncsT, func : HarfBuzz::DrawCubicToFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_draw_funcs_set_cubic_to_func: (None)
    # @dfuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_funcs_set_cubic_to_func(dfuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.draw_funcs_set_line_to_func(dfuncs : HarfBuzz::DrawFuncsT, func : HarfBuzz::DrawLineToFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_draw_funcs_set_line_to_func: (None)
    # @dfuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_funcs_set_line_to_func(dfuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.draw_funcs_set_move_to_func(dfuncs : HarfBuzz::DrawFuncsT, func : HarfBuzz::DrawMoveToFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_draw_funcs_set_move_to_func: (None)
    # @dfuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_funcs_set_move_to_func(dfuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.draw_funcs_set_quadratic_to_func(dfuncs : HarfBuzz::DrawFuncsT, func : HarfBuzz::DrawQuadraticToFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_draw_funcs_set_quadratic_to_func: (None)
    # @dfuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_funcs_set_quadratic_to_func(dfuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.draw_line_to(dfuncs : HarfBuzz::DrawFuncsT, draw_data : Pointer(Void)?, st : HarfBuzz::DrawStateT, to_x : Float32, to_y : Float32) : Nil
    # hb_draw_line_to: (None)
    # @dfuncs:
    # @draw_data: (nullable)
    # @st:
    # @to_x:
    # @to_y:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    draw_data = if draw_data.nil?
                  Pointer(Void).null
                else
                  draw_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_line_to(dfuncs, draw_data, st, to_x, to_y)

    # Return value handling
  end

  def self.draw_move_to(dfuncs : HarfBuzz::DrawFuncsT, draw_data : Pointer(Void)?, st : HarfBuzz::DrawStateT, to_x : Float32, to_y : Float32) : Nil
    # hb_draw_move_to: (None)
    # @dfuncs:
    # @draw_data: (nullable)
    # @st:
    # @to_x:
    # @to_y:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    draw_data = if draw_data.nil?
                  Pointer(Void).null
                else
                  draw_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_move_to(dfuncs, draw_data, st, to_x, to_y)

    # Return value handling
  end

  def self.draw_quadratic_to(dfuncs : HarfBuzz::DrawFuncsT, draw_data : Pointer(Void)?, st : HarfBuzz::DrawStateT, control_x : Float32, control_y : Float32, to_x : Float32, to_y : Float32) : Nil
    # hb_draw_quadratic_to: (None)
    # @dfuncs:
    # @draw_data: (nullable)
    # @st:
    # @control_x:
    # @control_y:
    # @to_x:
    # @to_y:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    draw_data = if draw_data.nil?
                  Pointer(Void).null
                else
                  draw_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_draw_quadratic_to(dfuncs, draw_data, st, control_x, control_y, to_x, to_y)

    # Return value handling
  end

  def self.face_builder_add_table(face : HarfBuzz::FaceT, tag : UInt32, blob : HarfBuzz::BlobT) : Int32
    # hb_face_builder_add_table: (None)
    # @face:
    # @tag:
    # @blob:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_face_builder_add_table(face, tag, blob)

    # Return value handling
    _retval
  end

  def self.face_builder_create : HarfBuzz::FaceT
    # hb_face_builder_create: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_face_builder_create

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_builder_sort_tables(face : HarfBuzz::FaceT, tags : Enumerable(UInt32)) : Nil
    # hb_face_builder_sort_tables: (None)
    # @face:
    # @tags: (array zero-terminated=1 element-type UInt32)
    # Returns: (transfer none)

    # Generator::ArrayArgPlan
    tags = tags.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    LibHarfBuzz.hb_face_builder_sort_tables(face, tags)

    # Return value handling
  end

  def self.face_collect_unicodes(face : HarfBuzz::FaceT) : HarfBuzz::SetT
    # hb_face_collect_unicodes: (None)
    # @face:
    # @out: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    _out = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_face_collect_unicodes(face, _out)

    # Return value handling
    _out
  end

  def self.face_collect_variation_selectors(face : HarfBuzz::FaceT) : HarfBuzz::SetT
    # hb_face_collect_variation_selectors: (None)
    # @face:
    # @out: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    _out = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_face_collect_variation_selectors(face, _out)

    # Return value handling
    _out
  end

  def self.face_collect_variation_unicodes(face : HarfBuzz::FaceT, variation_selector : UInt32) : HarfBuzz::SetT
    # hb_face_collect_variation_unicodes: (None)
    # @face:
    # @variation_selector:
    # @out: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    _out = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_face_collect_variation_unicodes(face, variation_selector, _out)

    # Return value handling
    _out
  end

  def self.face_count(blob : HarfBuzz::BlobT) : UInt32
    # hb_face_count: (None)
    # @blob:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_face_count(blob)

    # Return value handling
    _retval
  end

  def self.face_create(blob : HarfBuzz::BlobT, index : UInt32) : HarfBuzz::FaceT
    # hb_face_create: (None)
    # @blob:
    # @index:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_face_create(blob, index)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_create_for_tables(reference_table_func : HarfBuzz::ReferenceTableFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : HarfBuzz::FaceT
    # hb_face_create_for_tables: (None)
    # @reference_table_func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    _retval = LibHarfBuzz.hb_face_create_for_tables(reference_table_func, user_data, destroy)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_create_from_file_or_fail(file_name : ::String, index : UInt32) : HarfBuzz::FaceT
    # hb_face_create_from_file_or_fail: (None)
    # @file_name:
    # @index:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_face_create_from_file_or_fail(file_name, index)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_create_from_file_or_fail_using(file_name : ::String, index : UInt32, loader_name : ::String?) : HarfBuzz::FaceT
    # hb_face_create_from_file_or_fail_using: (None)
    # @file_name:
    # @index:
    # @loader_name: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    loader_name = if loader_name.nil?
                    Pointer(LibC::Char).null
                  else
                    loader_name.to_unsafe
                  end

    # C call
    _retval = LibHarfBuzz.hb_face_create_from_file_or_fail_using(file_name, index, loader_name)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_create_or_fail(blob : HarfBuzz::BlobT, index : UInt32) : HarfBuzz::FaceT
    # hb_face_create_or_fail: (None)
    # @blob:
    # @index:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_face_create_or_fail(blob, index)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_create_or_fail_using(blob : HarfBuzz::BlobT, index : UInt32, loader_name : ::String?) : HarfBuzz::FaceT
    # hb_face_create_or_fail_using: (None)
    # @blob:
    # @index:
    # @loader_name: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    loader_name = if loader_name.nil?
                    Pointer(LibC::Char).null
                  else
                    loader_name.to_unsafe
                  end

    # C call
    _retval = LibHarfBuzz.hb_face_create_or_fail_using(blob, index, loader_name)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_get_empty : HarfBuzz::FaceT
    # hb_face_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_face_get_empty

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_get_glyph_count(face : HarfBuzz::FaceT) : UInt32
    # hb_face_get_glyph_count: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_face_get_glyph_count(face)

    # Return value handling
    _retval
  end

  def self.face_get_index(face : HarfBuzz::FaceT) : UInt32
    # hb_face_get_index: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_face_get_index(face)

    # Return value handling
    _retval
  end

  def self.face_get_table_tags(face : HarfBuzz::FaceT, start_offset : UInt32, table_tags : Enumerable(UInt32)) : UInt32
    # hb_face_get_table_tags: (None)
    # @face:
    # @start_offset:
    # @table_count: (out) (transfer full)
    # @table_tags: (out) (transfer full) (array length=table_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    table_count = table_tags.size
    # Generator::ArrayArgPlan
    table_tags = table_tags.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_face_get_table_tags(face, start_offset, table_count, table_tags)

    # Return value handling
    _retval
  end

  def self.face_get_upem(face : HarfBuzz::FaceT) : UInt32
    # hb_face_get_upem: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_face_get_upem(face)

    # Return value handling
    _retval
  end

  def self.face_is_immutable(face : HarfBuzz::FaceT) : Int32
    # hb_face_is_immutable: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_face_is_immutable(face)

    # Return value handling
    _retval
  end

  def self.face_list_loaders : Enumerable(::String)
    # hb_face_list_loaders: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibHarfBuzz.hb_face_list_loaders

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.face_make_immutable(face : HarfBuzz::FaceT) : Nil
    # hb_face_make_immutable: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_face_make_immutable(face)

    # Return value handling
  end

  def self.face_reference_blob(face : HarfBuzz::FaceT) : HarfBuzz::BlobT
    # hb_face_reference_blob: (None)
    # @face:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_face_reference_blob(face)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_reference_table(face : HarfBuzz::FaceT, tag : UInt32) : HarfBuzz::BlobT
    # hb_face_reference_table: (None)
    # @face:
    # @tag:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_face_reference_table(face, tag)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.face_set_get_table_tags_func(face : HarfBuzz::FaceT, func : HarfBuzz::GetTableTagsFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_face_set_get_table_tags_func: (None)
    # @face:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_face_set_get_table_tags_func(face, func, user_data, destroy)

    # Return value handling
  end

  def self.face_set_glyph_count(face : HarfBuzz::FaceT, glyph_count : UInt32) : Nil
    # hb_face_set_glyph_count: (None)
    # @face:
    # @glyph_count:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_face_set_glyph_count(face, glyph_count)

    # Return value handling
  end

  def self.face_set_index(face : HarfBuzz::FaceT, index : UInt32) : Nil
    # hb_face_set_index: (None)
    # @face:
    # @index:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_face_set_index(face, index)

    # Return value handling
  end

  def self.face_set_upem(face : HarfBuzz::FaceT, upem : UInt32) : Nil
    # hb_face_set_upem: (None)
    # @face:
    # @upem:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_face_set_upem(face, upem)

    # Return value handling
  end

  def self.feature_from_string(str : ::Bytes) : HarfBuzz::FeatureT
    # hb_feature_from_string: (None)
    # @str: (array length=len element-type UInt8)
    # @len:
    # @feature: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = str.size
    # Generator::ArrayArgPlan
    str = str.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::CallerAllocatesPlan
    feature = HarfBuzz::FeatureT.new
    # C call
    _retval = LibHarfBuzz.hb_feature_from_string(str, len, feature)

    # Return value handling
    feature
  end

  def self.feature_from_string(*str : UInt8)
    self.feature_from_string(str)
  end

  def self.feature_to_string(feature : HarfBuzz::FeatureT, buf : Enumerable(::String)) : Nil
    # hb_feature_to_string: (None)
    # @feature:
    # @buf: (out) (transfer full) (array length=size element-type Utf8)
    # @size: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    size = buf.size
    # Generator::ArrayArgPlan
    buf = buf.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    LibHarfBuzz.hb_feature_to_string(feature, buf, size)

    # Return value handling
  end

  def self.font_add_glyph_origin_for_direction(font : HarfBuzz::FontT, glyph : UInt32, direction : HarfBuzz::DirectionT, x : Int32, y : Int32) : Nil
    # hb_font_add_glyph_origin_for_direction: (None)
    # @font:
    # @glyph:
    # @direction:
    # @x: (inout) (transfer full)
    # @y: (inout) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_add_glyph_origin_for_direction(font, glyph, direction, x, y)

    # Return value handling
  end

  def self.font_changed(font : HarfBuzz::FontT) : Nil
    # hb_font_changed: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_changed(font)

    # Return value handling
  end

  def self.font_create(face : HarfBuzz::FaceT) : HarfBuzz::FontT
    # hb_font_create: (None)
    # @face:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_font_create(face)

    # Return value handling
    HarfBuzz::FontT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.font_create_sub_font(parent : HarfBuzz::FontT) : HarfBuzz::FontT
    # hb_font_create_sub_font: (None)
    # @parent:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_font_create_sub_font(parent)

    # Return value handling
    HarfBuzz::FontT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.font_draw_glyph(font : HarfBuzz::FontT, glyph : UInt32, dfuncs : HarfBuzz::DrawFuncsT, draw_data : Pointer(Void)?) : Nil
    # hb_font_draw_glyph: (None)
    # @font:
    # @glyph:
    # @dfuncs:
    # @draw_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    draw_data = if draw_data.nil?
                  Pointer(Void).null
                else
                  draw_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_draw_glyph(font, glyph, dfuncs, draw_data)

    # Return value handling
  end

  def self.font_funcs_create : HarfBuzz::FontFuncsT
    # hb_font_funcs_create: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_font_funcs_create

    # Return value handling
    HarfBuzz::FontFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.font_funcs_get_empty : HarfBuzz::FontFuncsT
    # hb_font_funcs_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_font_funcs_get_empty

    # Return value handling
    HarfBuzz::FontFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.font_funcs_is_immutable(ffuncs : HarfBuzz::FontFuncsT) : Int32
    # hb_font_funcs_is_immutable: (None)
    # @ffuncs:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_funcs_is_immutable(ffuncs)

    # Return value handling
    _retval
  end

  def self.font_funcs_make_immutable(ffuncs : HarfBuzz::FontFuncsT) : Nil
    # hb_font_funcs_make_immutable: (None)
    # @ffuncs:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_funcs_make_immutable(ffuncs)

    # Return value handling
  end

  def self.font_funcs_set_draw_glyph_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontDrawGlyphFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_draw_glyph_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_draw_glyph_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_font_h_extents_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetFontExtentsFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_font_h_extents_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_font_h_extents_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_font_v_extents_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetFontExtentsFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_font_v_extents_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_font_v_extents_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_contour_point_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphContourPointFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_contour_point_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_contour_point_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_extents_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphExtentsFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_extents_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_extents_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_from_name_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphFromNameFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_from_name_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_from_name_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  @[Deprecated]
  def self.font_funcs_set_glyph_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_h_advance_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphAdvanceFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_h_advance_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_h_advance_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_h_advances_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphAdvancesFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_h_advances_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_h_advances_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_h_kerning_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphKerningFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_h_kerning_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_h_kerning_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_h_origin_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphOriginFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_h_origin_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_h_origin_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_name_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphNameFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_name_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_name_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  @[Deprecated]
  def self.font_funcs_set_glyph_shape_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphShapeFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_shape_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_shape_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_v_advance_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphAdvanceFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_v_advance_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_v_advance_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_v_advances_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphAdvancesFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_v_advances_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_v_advances_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  @[Deprecated]
  def self.font_funcs_set_glyph_v_kerning_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphKerningFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_v_kerning_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_v_kerning_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_glyph_v_origin_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetGlyphOriginFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_glyph_v_origin_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_glyph_v_origin_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_nominal_glyph_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetNominalGlyphFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_nominal_glyph_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_nominal_glyph_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_nominal_glyphs_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetNominalGlyphsFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_nominal_glyphs_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_nominal_glyphs_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_paint_glyph_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontPaintGlyphFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_paint_glyph_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_paint_glyph_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_funcs_set_variation_glyph_func(ffuncs : HarfBuzz::FontFuncsT, func : HarfBuzz::FontGetVariationGlyphFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_font_funcs_set_variation_glyph_func: (None)
    # @ffuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_funcs_set_variation_glyph_func(ffuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.font_get_empty : HarfBuzz::FontT
    # hb_font_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_font_get_empty

    # Return value handling
    HarfBuzz::FontT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.font_get_extents_for_direction(font : HarfBuzz::FontT, direction : HarfBuzz::DirectionT) : HarfBuzz::FontExtentsT
    # hb_font_get_extents_for_direction: (None)
    # @font:
    # @direction:
    # @extents: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    extents = HarfBuzz::FontExtentsT.new
    # C call
    LibHarfBuzz.hb_font_get_extents_for_direction(font, direction, extents)

    # Return value handling
    extents
  end

  def self.font_get_face(font : HarfBuzz::FontT) : HarfBuzz::FaceT
    # hb_font_get_face: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_face(font)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::None)
  end

  def self.font_get_glyph(font : HarfBuzz::FontT, unicode : UInt32, variation_selector : UInt32, glyph : UInt32) : Int32
    # hb_font_get_glyph: (None)
    # @font:
    # @unicode:
    # @variation_selector:
    # @glyph: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph(font, unicode, variation_selector, glyph)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_advance_for_direction(font : HarfBuzz::FontT, glyph : UInt32, direction : HarfBuzz::DirectionT, x : Int32, y : Int32) : Nil
    # hb_font_get_glyph_advance_for_direction: (None)
    # @font:
    # @glyph:
    # @direction:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_glyph_advance_for_direction(font, glyph, direction, x, y)

    # Return value handling
  end

  def self.font_get_glyph_advances_for_direction(font : HarfBuzz::FontT, direction : HarfBuzz::DirectionT, count : UInt32, first_glyph : Pointer(UInt32), glyph_stride : UInt32, first_advance : Int32, advance_stride : UInt32) : Nil
    # hb_font_get_glyph_advances_for_direction: (None)
    # @font:
    # @direction:
    # @count:
    # @first_glyph:
    # @glyph_stride:
    # @first_advance: (out) (transfer full)
    # @advance_stride: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_glyph_advances_for_direction(font, direction, count, first_glyph, glyph_stride, first_advance, advance_stride)

    # Return value handling
  end

  def self.font_get_glyph_contour_point(font : HarfBuzz::FontT, glyph : UInt32, point_index : UInt32, x : Int32, y : Int32) : Int32
    # hb_font_get_glyph_contour_point: (None)
    # @font:
    # @glyph:
    # @point_index:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_contour_point(font, glyph, point_index, x, y)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_contour_point_for_origin(font : HarfBuzz::FontT, glyph : UInt32, point_index : UInt32, direction : HarfBuzz::DirectionT, x : Int32, y : Int32) : Int32
    # hb_font_get_glyph_contour_point_for_origin: (None)
    # @font:
    # @glyph:
    # @point_index:
    # @direction:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_contour_point_for_origin(font, glyph, point_index, direction, x, y)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_extents(font : HarfBuzz::FontT, glyph : UInt32) : HarfBuzz::GlyphExtentsT
    # hb_font_get_glyph_extents: (None)
    # @font:
    # @glyph:
    # @extents: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    extents = HarfBuzz::GlyphExtentsT.new
    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_extents(font, glyph, extents)

    # Return value handling
    extents
  end

  def self.font_get_glyph_extents_for_origin(font : HarfBuzz::FontT, glyph : UInt32, direction : HarfBuzz::DirectionT) : HarfBuzz::GlyphExtentsT
    # hb_font_get_glyph_extents_for_origin: (None)
    # @font:
    # @glyph:
    # @direction:
    # @extents: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    extents = HarfBuzz::GlyphExtentsT.new
    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_extents_for_origin(font, glyph, direction, extents)

    # Return value handling
    extents
  end

  def self.font_get_glyph_from_name(font : HarfBuzz::FontT, name : Enumerable(::String), glyph : UInt32) : Int32
    # hb_font_get_glyph_from_name: (None)
    # @font:
    # @name: (array length=len element-type Utf8)
    # @len:
    # @glyph: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = name.size
    # Generator::ArrayArgPlan
    name = name.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_from_name(font, name, len, glyph)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_h_advance(font : HarfBuzz::FontT, glyph : UInt32) : Int32
    # hb_font_get_glyph_h_advance: (None)
    # @font:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_h_advance(font, glyph)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_h_advances(font : HarfBuzz::FontT, count : UInt32, first_glyph : Pointer(UInt32), glyph_stride : UInt32, first_advance : Int32, advance_stride : UInt32) : Nil
    # hb_font_get_glyph_h_advances: (None)
    # @font:
    # @count:
    # @first_glyph:
    # @glyph_stride:
    # @first_advance: (out) (transfer full)
    # @advance_stride:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_glyph_h_advances(font, count, first_glyph, glyph_stride, first_advance, advance_stride)

    # Return value handling
  end

  def self.font_get_glyph_h_kerning(font : HarfBuzz::FontT, left_glyph : UInt32, right_glyph : UInt32) : Int32
    # hb_font_get_glyph_h_kerning: (None)
    # @font:
    # @left_glyph:
    # @right_glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_h_kerning(font, left_glyph, right_glyph)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_h_origin(font : HarfBuzz::FontT, glyph : UInt32, x : Int32, y : Int32) : Int32
    # hb_font_get_glyph_h_origin: (None)
    # @font:
    # @glyph:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_h_origin(font, glyph, x, y)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_kerning_for_direction(font : HarfBuzz::FontT, first_glyph : UInt32, second_glyph : UInt32, direction : HarfBuzz::DirectionT, x : Int32, y : Int32) : Nil
    # hb_font_get_glyph_kerning_for_direction: (None)
    # @font:
    # @first_glyph:
    # @second_glyph:
    # @direction:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_glyph_kerning_for_direction(font, first_glyph, second_glyph, direction, x, y)

    # Return value handling
  end

  def self.font_get_glyph_name(font : HarfBuzz::FontT, glyph : UInt32, name : Enumerable(::String)) : Int32
    # hb_font_get_glyph_name: (None)
    # @font:
    # @glyph:
    # @name: (out) (transfer full) (array length=size element-type Utf8)
    # @size: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    size = name.size
    # Generator::ArrayArgPlan
    name = name.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_name(font, glyph, name, size)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_origin_for_direction(font : HarfBuzz::FontT, glyph : UInt32, direction : HarfBuzz::DirectionT, x : Int32, y : Int32) : Nil
    # hb_font_get_glyph_origin_for_direction: (None)
    # @font:
    # @glyph:
    # @direction:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_glyph_origin_for_direction(font, glyph, direction, x, y)

    # Return value handling
  end

  @[Deprecated]
  def self.font_get_glyph_shape(font : HarfBuzz::FontT, glyph : UInt32, dfuncs : HarfBuzz::DrawFuncsT, draw_data : Pointer(Void)?) : Nil
    # hb_font_get_glyph_shape: (None)
    # @font:
    # @glyph:
    # @dfuncs:
    # @draw_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    draw_data = if draw_data.nil?
                  Pointer(Void).null
                else
                  draw_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_font_get_glyph_shape(font, glyph, dfuncs, draw_data)

    # Return value handling
  end

  def self.font_get_glyph_v_advance(font : HarfBuzz::FontT, glyph : UInt32) : Int32
    # hb_font_get_glyph_v_advance: (None)
    # @font:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_v_advance(font, glyph)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_v_advances(font : HarfBuzz::FontT, count : UInt32, first_glyph : Pointer(UInt32), glyph_stride : UInt32, first_advance : Int32, advance_stride : UInt32) : Nil
    # hb_font_get_glyph_v_advances: (None)
    # @font:
    # @count:
    # @first_glyph:
    # @glyph_stride:
    # @first_advance: (out) (transfer full)
    # @advance_stride: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_glyph_v_advances(font, count, first_glyph, glyph_stride, first_advance, advance_stride)

    # Return value handling
  end

  @[Deprecated]
  def self.font_get_glyph_v_kerning(font : HarfBuzz::FontT, top_glyph : UInt32, bottom_glyph : UInt32) : Int32
    # hb_font_get_glyph_v_kerning: (None)
    # @font:
    # @top_glyph:
    # @bottom_glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_v_kerning(font, top_glyph, bottom_glyph)

    # Return value handling
    _retval
  end

  def self.font_get_glyph_v_origin(font : HarfBuzz::FontT, glyph : UInt32, x : Int32, y : Int32) : Int32
    # hb_font_get_glyph_v_origin: (None)
    # @font:
    # @glyph:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_glyph_v_origin(font, glyph, x, y)

    # Return value handling
    _retval
  end

  def self.font_get_h_extents(font : HarfBuzz::FontT) : HarfBuzz::FontExtentsT
    # hb_font_get_h_extents: (None)
    # @font:
    # @extents: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    extents = HarfBuzz::FontExtentsT.new
    # C call
    _retval = LibHarfBuzz.hb_font_get_h_extents(font, extents)

    # Return value handling
    extents
  end

  def self.font_get_nominal_glyph(font : HarfBuzz::FontT, unicode : UInt32, glyph : UInt32) : Int32
    # hb_font_get_nominal_glyph: (None)
    # @font:
    # @unicode:
    # @glyph: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_nominal_glyph(font, unicode, glyph)

    # Return value handling
    _retval
  end

  def self.font_get_nominal_glyphs(font : HarfBuzz::FontT, count : UInt32, first_unicode : Pointer(UInt32), unicode_stride : UInt32, first_glyph : UInt32, glyph_stride : UInt32) : UInt32
    # hb_font_get_nominal_glyphs: (None)
    # @font:
    # @count:
    # @first_unicode:
    # @unicode_stride:
    # @first_glyph: (out) (transfer full)
    # @glyph_stride:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_nominal_glyphs(font, count, first_unicode, unicode_stride, first_glyph, glyph_stride)

    # Return value handling
    _retval
  end

  def self.font_get_parent(font : HarfBuzz::FontT) : HarfBuzz::FontT
    # hb_font_get_parent: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_parent(font)

    # Return value handling
    HarfBuzz::FontT.new(_retval, GICrystal::Transfer::None)
  end

  def self.font_get_ppem(font : HarfBuzz::FontT, x_ppem : UInt32, y_ppem : UInt32) : Nil
    # hb_font_get_ppem: (None)
    # @font:
    # @x_ppem: (out) (transfer full)
    # @y_ppem: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_ppem(font, x_ppem, y_ppem)

    # Return value handling
  end

  def self.font_get_ptem(font : HarfBuzz::FontT) : Float32
    # hb_font_get_ptem: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_ptem(font)

    # Return value handling
    _retval
  end

  def self.font_get_scale(font : HarfBuzz::FontT, x_scale : Int32, y_scale : Int32) : Nil
    # hb_font_get_scale: (None)
    # @font:
    # @x_scale: (out) (transfer full)
    # @y_scale: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_scale(font, x_scale, y_scale)

    # Return value handling
  end

  def self.font_get_serial(font : HarfBuzz::FontT) : UInt32
    # hb_font_get_serial: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_serial(font)

    # Return value handling
    _retval
  end

  def self.font_get_synthetic_bold(font : HarfBuzz::FontT, x_embolden : Float32, y_embolden : Float32, in_place : Int32) : Nil
    # hb_font_get_synthetic_bold: (None)
    # @font:
    # @x_embolden: (out) (transfer full)
    # @y_embolden: (out) (transfer full)
    # @in_place: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_get_synthetic_bold(font, x_embolden, y_embolden, in_place)

    # Return value handling
  end

  def self.font_get_synthetic_slant(font : HarfBuzz::FontT) : Float32
    # hb_font_get_synthetic_slant: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_synthetic_slant(font)

    # Return value handling
    _retval
  end

  def self.font_get_v_extents(font : HarfBuzz::FontT) : HarfBuzz::FontExtentsT
    # hb_font_get_v_extents: (None)
    # @font:
    # @extents: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    extents = HarfBuzz::FontExtentsT.new
    # C call
    _retval = LibHarfBuzz.hb_font_get_v_extents(font, extents)

    # Return value handling
    extents
  end

  def self.font_get_var_coords_design(font : HarfBuzz::FontT, length : UInt32) : Pointer(Float32)
    # hb_font_get_var_coords_design: (None)
    # @font:
    # @length: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_var_coords_design(font, length)

    # Return value handling
    _retval
  end

  def self.font_get_var_coords_normalized(font : HarfBuzz::FontT, length : UInt32) : Pointer(Int32)
    # hb_font_get_var_coords_normalized: (None)
    # @font:
    # @length: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_var_coords_normalized(font, length)

    # Return value handling
    _retval
  end

  def self.font_get_var_named_instance(font : HarfBuzz::FontT) : UInt32
    # hb_font_get_var_named_instance: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_var_named_instance(font)

    # Return value handling
    _retval
  end

  def self.font_get_variation_glyph(font : HarfBuzz::FontT, unicode : UInt32, variation_selector : UInt32, glyph : UInt32) : Int32
    # hb_font_get_variation_glyph: (None)
    # @font:
    # @unicode:
    # @variation_selector:
    # @glyph: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_get_variation_glyph(font, unicode, variation_selector, glyph)

    # Return value handling
    _retval
  end

  def self.font_glyph_from_string(font : HarfBuzz::FontT, s : ::Bytes, glyph : UInt32) : Int32
    # hb_font_glyph_from_string: (None)
    # @font:
    # @s: (array length=len element-type UInt8)
    # @len:
    # @glyph: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = s.size
    # Generator::ArrayArgPlan
    s = s.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibHarfBuzz.hb_font_glyph_from_string(font, s, len, glyph)

    # Return value handling
    _retval
  end

  def self.font_glyph_to_string(font : HarfBuzz::FontT, glyph : UInt32, s : Enumerable(::String)) : Nil
    # hb_font_glyph_to_string: (None)
    # @font:
    # @glyph:
    # @s: (out) (transfer full) (array length=size element-type Utf8)
    # @size: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    size = s.size
    # Generator::ArrayArgPlan
    s = s.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    LibHarfBuzz.hb_font_glyph_to_string(font, glyph, s, size)

    # Return value handling
  end

  def self.font_is_immutable(font : HarfBuzz::FontT) : Int32
    # hb_font_is_immutable: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_is_immutable(font)

    # Return value handling
    _retval
  end

  def self.font_list_funcs : Enumerable(::String)
    # hb_font_list_funcs: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibHarfBuzz.hb_font_list_funcs

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.font_make_immutable(font : HarfBuzz::FontT) : Nil
    # hb_font_make_immutable: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_make_immutable(font)

    # Return value handling
  end

  def self.font_paint_glyph(font : HarfBuzz::FontT, glyph : UInt32, pfuncs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, palette_index : UInt32, foreground : UInt32) : Nil
    # hb_font_paint_glyph: (None)
    # @font:
    # @glyph:
    # @pfuncs:
    # @paint_data: (nullable)
    # @palette_index:
    # @foreground:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_font_paint_glyph(font, glyph, pfuncs, paint_data, palette_index, foreground)

    # Return value handling
  end

  def self.font_set_face(font : HarfBuzz::FontT, face : HarfBuzz::FaceT) : Nil
    # hb_font_set_face: (None)
    # @font:
    # @face:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_face(font, face)

    # Return value handling
  end

  def self.font_set_funcs_using(font : HarfBuzz::FontT, name : ::String) : Int32
    # hb_font_set_funcs_using: (None)
    # @font:
    # @name:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_font_set_funcs_using(font, name)

    # Return value handling
    _retval
  end

  def self.font_set_parent(font : HarfBuzz::FontT, parent : HarfBuzz::FontT) : Nil
    # hb_font_set_parent: (None)
    # @font:
    # @parent:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_parent(font, parent)

    # Return value handling
  end

  def self.font_set_ppem(font : HarfBuzz::FontT, x_ppem : UInt32, y_ppem : UInt32) : Nil
    # hb_font_set_ppem: (None)
    # @font:
    # @x_ppem:
    # @y_ppem:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_ppem(font, x_ppem, y_ppem)

    # Return value handling
  end

  def self.font_set_ptem(font : HarfBuzz::FontT, ptem : Float32) : Nil
    # hb_font_set_ptem: (None)
    # @font:
    # @ptem:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_ptem(font, ptem)

    # Return value handling
  end

  def self.font_set_scale(font : HarfBuzz::FontT, x_scale : Int32, y_scale : Int32) : Nil
    # hb_font_set_scale: (None)
    # @font:
    # @x_scale:
    # @y_scale:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_scale(font, x_scale, y_scale)

    # Return value handling
  end

  def self.font_set_synthetic_bold(font : HarfBuzz::FontT, x_embolden : Float32, y_embolden : Float32, in_place : Int32) : Nil
    # hb_font_set_synthetic_bold: (None)
    # @font:
    # @x_embolden:
    # @y_embolden:
    # @in_place:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_synthetic_bold(font, x_embolden, y_embolden, in_place)

    # Return value handling
  end

  def self.font_set_synthetic_slant(font : HarfBuzz::FontT, slant : Float32) : Nil
    # hb_font_set_synthetic_slant: (None)
    # @font:
    # @slant:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_synthetic_slant(font, slant)

    # Return value handling
  end

  def self.font_set_var_coords_design(font : HarfBuzz::FontT, coords : Enumerable(Float32)) : Nil
    # hb_font_set_var_coords_design: (None)
    # @font:
    # @coords: (array length=coords_length element-type Float)
    # @coords_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    coords_length = coords.size
    # Generator::ArrayArgPlan
    coords = coords.to_a.to_unsafe.as(Pointer(Float32))

    # C call
    LibHarfBuzz.hb_font_set_var_coords_design(font, coords, coords_length)

    # Return value handling
  end

  def self.font_set_var_coords_normalized(font : HarfBuzz::FontT, coords : Enumerable(Int32)) : Nil
    # hb_font_set_var_coords_normalized: (None)
    # @font:
    # @coords: (array length=coords_length element-type Int32)
    # @coords_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    coords_length = coords.size
    # Generator::ArrayArgPlan
    coords = coords.to_a.to_unsafe.as(Pointer(Int32))

    # C call
    LibHarfBuzz.hb_font_set_var_coords_normalized(font, coords, coords_length)

    # Return value handling
  end

  def self.font_set_var_named_instance(font : HarfBuzz::FontT, instance_index : UInt32) : Nil
    # hb_font_set_var_named_instance: (None)
    # @font:
    # @instance_index:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_var_named_instance(font, instance_index)

    # Return value handling
  end

  def self.font_set_variation(font : HarfBuzz::FontT, tag : UInt32, value : Float32) : Nil
    # hb_font_set_variation: (None)
    # @font:
    # @tag:
    # @value:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_set_variation(font, tag, value)

    # Return value handling
  end

  def self.font_set_variations(font : HarfBuzz::FontT, variations : Enumerable(HarfBuzz::VariationT)) : Nil
    # hb_font_set_variations: (None)
    # @font:
    # @variations: (array length=variations_length element-type Interface)
    # @variations_length:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    variations_length = variations.size
    # Generator::ArrayArgPlan
    variations = variations.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::VariationT))

    # C call
    LibHarfBuzz.hb_font_set_variations(font, variations, variations_length)

    # Return value handling
  end

  def self.font_subtract_glyph_origin_for_direction(font : HarfBuzz::FontT, glyph : UInt32, direction : HarfBuzz::DirectionT, x : Int32, y : Int32) : Nil
    # hb_font_subtract_glyph_origin_for_direction: (None)
    # @font:
    # @glyph:
    # @direction:
    # @x: (inout) (transfer full)
    # @y: (inout) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_font_subtract_glyph_origin_for_direction(font, glyph, direction, x, y)

    # Return value handling
  end

  def self.free(ptr : Pointer(Void)?) : Nil
    # hb_free: (None)
    # @ptr: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    ptr = if ptr.nil?
            Pointer(Void).null
          else
            ptr.to_unsafe
          end

    # C call
    LibHarfBuzz.hb_free(ptr)

    # Return value handling
  end

  def self.ft_face_create_from_blob_or_fail(blob : HarfBuzz::BlobT, index : UInt32) : HarfBuzz::FaceT
    # hb_ft_face_create_from_blob_or_fail: (None)
    # @blob:
    # @index:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_ft_face_create_from_blob_or_fail(blob, index)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.ft_face_create_from_file_or_fail(file_name : ::String, index : UInt32) : HarfBuzz::FaceT
    # hb_ft_face_create_from_file_or_fail: (None)
    # @file_name:
    # @index:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_ft_face_create_from_file_or_fail(file_name, index)

    # Return value handling
    HarfBuzz::FaceT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.ft_font_changed(font : HarfBuzz::FontT) : Nil
    # hb_ft_font_changed: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_ft_font_changed(font)

    # Return value handling
  end

  def self.ft_font_get_load_flags(font : HarfBuzz::FontT) : Int32
    # hb_ft_font_get_load_flags: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ft_font_get_load_flags(font)

    # Return value handling
    _retval
  end

  def self.ft_font_set_funcs(font : HarfBuzz::FontT) : Nil
    # hb_ft_font_set_funcs: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_ft_font_set_funcs(font)

    # Return value handling
  end

  def self.ft_font_set_load_flags(font : HarfBuzz::FontT, load_flags : Int32) : Nil
    # hb_ft_font_set_load_flags: (None)
    # @font:
    # @load_flags:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_ft_font_set_load_flags(font, load_flags)

    # Return value handling
  end

  def self.ft_hb_font_changed(font : HarfBuzz::FontT) : Int32
    # hb_ft_hb_font_changed: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ft_hb_font_changed(font)

    # Return value handling
    _retval
  end

  def self.glib_blob_create(gbytes : GLib::Bytes) : HarfBuzz::BlobT
    # hb_glib_blob_create: (None)
    # @gbytes:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_glib_blob_create(gbytes)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.glib_get_unicode_funcs : HarfBuzz::UnicodeFuncsT
    # hb_glib_get_unicode_funcs: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_glib_get_unicode_funcs

    # Return value handling
    HarfBuzz::UnicodeFuncsT.new(_retval, GICrystal::Transfer::None)
  end

  def self.glib_script_from_script(script : HarfBuzz::ScriptT) : GLib::UnicodeScript
    # hb_glib_script_from_script: (None)
    # @script:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_glib_script_from_script(script)

    # Return value handling
    GLib::UnicodeScript.new(_retval)
  end

  def self.glib_script_to_script(script : GLib::UnicodeScript) : HarfBuzz::ScriptT
    # hb_glib_script_to_script: (None)
    # @script:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_glib_script_to_script(script)

    # Return value handling
    HarfBuzz::ScriptT.new(_retval)
  end

  def self.glyph_info_get_glyph_flags(info : HarfBuzz::GlyphInfoT) : HarfBuzz::GlyphFlagsT
    # hb_glyph_info_get_glyph_flags: (None)
    # @info:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_glyph_info_get_glyph_flags(info)

    # Return value handling
    HarfBuzz::GlyphFlagsT.new(_retval)
  end

  def self.language_from_string(str : ::Bytes) : HarfBuzz::LanguageT
    # hb_language_from_string: (None)
    # @str: (array length=len element-type UInt8)
    # @len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = str.size
    # Generator::ArrayArgPlan
    str = str.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibHarfBuzz.hb_language_from_string(str, len)

    # Return value handling
    HarfBuzz::LanguageT.new(_retval, GICrystal::Transfer::None)
  end

  def self.language_from_string(*str : UInt8)
    self.language_from_string(str)
  end

  def self.language_get_default : HarfBuzz::LanguageT
    # hb_language_get_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_language_get_default

    # Return value handling
    HarfBuzz::LanguageT.new(_retval, GICrystal::Transfer::None)
  end

  def self.language_matches(language : HarfBuzz::LanguageT, specific : HarfBuzz::LanguageT) : Int32
    # hb_language_matches: (None)
    # @language:
    # @specific:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_language_matches(language, specific)

    # Return value handling
    _retval
  end

  def self.language_to_string(language : HarfBuzz::LanguageT) : ::String
    # hb_language_to_string: (None)
    # @language:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_language_to_string(language)

    # Return value handling
    ::String.new(_retval)
  end

  def self.malloc(size : UInt64) : Pointer(Void)?
    # hb_malloc: (None)
    # @size:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibHarfBuzz.hb_malloc(size)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.map_allocation_successful(map : HarfBuzz::MapT) : Int32
    # hb_map_allocation_successful: (None)
    # @map:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_allocation_successful(map)

    # Return value handling
    _retval
  end

  def self.map_clear(map : HarfBuzz::MapT) : Nil
    # hb_map_clear: (None)
    # @map:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_map_clear(map)

    # Return value handling
  end

  def self.map_copy(map : HarfBuzz::MapT) : HarfBuzz::MapT
    # hb_map_copy: (None)
    # @map:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_map_copy(map)

    # Return value handling
    HarfBuzz::MapT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.map_create : HarfBuzz::MapT
    # hb_map_create: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_map_create

    # Return value handling
    HarfBuzz::MapT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.map_del(map : HarfBuzz::MapT, key : UInt32) : Nil
    # hb_map_del: (None)
    # @map:
    # @key:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_map_del(map, key)

    # Return value handling
  end

  def self.map_get(map : HarfBuzz::MapT, key : UInt32) : UInt32
    # hb_map_get: (None)
    # @map:
    # @key:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_get(map, key)

    # Return value handling
    _retval
  end

  def self.map_get_empty : HarfBuzz::MapT
    # hb_map_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_map_get_empty

    # Return value handling
    HarfBuzz::MapT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.map_get_population(map : HarfBuzz::MapT) : UInt32
    # hb_map_get_population: (None)
    # @map:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_get_population(map)

    # Return value handling
    _retval
  end

  def self.map_has(map : HarfBuzz::MapT, key : UInt32) : Int32
    # hb_map_has: (None)
    # @map:
    # @key:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_has(map, key)

    # Return value handling
    _retval
  end

  def self.map_hash(map : HarfBuzz::MapT) : UInt32
    # hb_map_hash: (None)
    # @map:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_hash(map)

    # Return value handling
    _retval
  end

  def self.map_is_empty(map : HarfBuzz::MapT) : Int32
    # hb_map_is_empty: (None)
    # @map:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_is_empty(map)

    # Return value handling
    _retval
  end

  def self.map_is_equal(map : HarfBuzz::MapT, other : HarfBuzz::MapT) : Int32
    # hb_map_is_equal: (None)
    # @map:
    # @other:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_is_equal(map, other)

    # Return value handling
    _retval
  end

  def self.map_keys(map : HarfBuzz::MapT, keys : HarfBuzz::SetT) : Nil
    # hb_map_keys: (None)
    # @map:
    # @keys:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_map_keys(map, keys)

    # Return value handling
  end

  def self.map_next(map : HarfBuzz::MapT, idx : Int32, key : UInt32, value : UInt32) : Int32
    # hb_map_next: (None)
    # @map:
    # @idx: (inout) (transfer full)
    # @key: (out) (transfer full)
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_map_next(map, idx, key, value)

    # Return value handling
    _retval
  end

  def self.map_set(map : HarfBuzz::MapT, key : UInt32, value : UInt32) : Nil
    # hb_map_set: (None)
    # @map:
    # @key:
    # @value:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_map_set(map, key, value)

    # Return value handling
  end

  def self.map_update(map : HarfBuzz::MapT, other : HarfBuzz::MapT) : Nil
    # hb_map_update: (None)
    # @map:
    # @other:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_map_update(map, other)

    # Return value handling
  end

  def self.map_values(map : HarfBuzz::MapT, values : HarfBuzz::SetT) : Nil
    # hb_map_values: (None)
    # @map:
    # @values:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_map_values(map, values)

    # Return value handling
  end

  def self.ot_color_glyph_get_layers(face : HarfBuzz::FaceT, glyph : UInt32, start_offset : UInt32, layers : Enumerable(HarfBuzz::OtColorLayerT)?) : UInt32
    # hb_ot_color_glyph_get_layers: (None)
    # @face:
    # @glyph:
    # @start_offset:
    # @layer_count: (out) (transfer full) (optional)
    # @layers: (out) (nullable) (caller-allocates) (array length=layer_count element-type Interface)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    layer_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    layer_count = layers.try(&.size) || 0
    # Generator::NullableArrayPlan
    layers = if layers.nil?
               Pointer(LibHarfBuzz::OtColorLayerT).null
             else
               layers.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::OtColorLayerT))
             end

    # C call
    _retval = LibHarfBuzz.hb_ot_color_glyph_get_layers(face, glyph, start_offset, layer_count, layers)

    # Return value handling
    _retval
  end

  def self.ot_color_glyph_has_paint(face : HarfBuzz::FaceT, glyph : UInt32) : Int32
    # hb_ot_color_glyph_has_paint: (None)
    # @face:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_glyph_has_paint(face, glyph)

    # Return value handling
    _retval
  end

  def self.ot_color_glyph_reference_png(font : HarfBuzz::FontT, glyph : UInt32) : HarfBuzz::BlobT
    # hb_ot_color_glyph_reference_png: (None)
    # @font:
    # @glyph:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_glyph_reference_png(font, glyph)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.ot_color_glyph_reference_svg(face : HarfBuzz::FaceT, glyph : UInt32) : HarfBuzz::BlobT
    # hb_ot_color_glyph_reference_svg: (None)
    # @face:
    # @glyph:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_glyph_reference_svg(face, glyph)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.ot_color_has_layers(face : HarfBuzz::FaceT) : Int32
    # hb_ot_color_has_layers: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_has_layers(face)

    # Return value handling
    _retval
  end

  def self.ot_color_has_paint(face : HarfBuzz::FaceT) : Int32
    # hb_ot_color_has_paint: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_has_paint(face)

    # Return value handling
    _retval
  end

  def self.ot_color_has_palettes(face : HarfBuzz::FaceT) : Int32
    # hb_ot_color_has_palettes: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_has_palettes(face)

    # Return value handling
    _retval
  end

  def self.ot_color_has_png(face : HarfBuzz::FaceT) : Int32
    # hb_ot_color_has_png: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_has_png(face)

    # Return value handling
    _retval
  end

  def self.ot_color_has_svg(face : HarfBuzz::FaceT) : Int32
    # hb_ot_color_has_svg: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_has_svg(face)

    # Return value handling
    _retval
  end

  def self.ot_color_palette_color_get_name_id(face : HarfBuzz::FaceT, color_index : UInt32) : UInt32
    # hb_ot_color_palette_color_get_name_id: (None)
    # @face:
    # @color_index:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_palette_color_get_name_id(face, color_index)

    # Return value handling
    _retval
  end

  def self.ot_color_palette_get_colors(face : HarfBuzz::FaceT, palette_index : UInt32, start_offset : UInt32, colors : Enumerable(UInt32)?) : UInt32
    # hb_ot_color_palette_get_colors: (None)
    # @face:
    # @palette_index:
    # @start_offset:
    # @color_count: (out) (transfer full) (optional)
    # @colors: (out) (transfer full) (nullable) (array length=color_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    color_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    color_count = colors.try(&.size) || 0
    # Generator::NullableArrayPlan
    colors = if colors.nil?
               Pointer(UInt32).null
             else
               colors.to_a.to_unsafe.as(Pointer(UInt32))
             end

    # C call
    _retval = LibHarfBuzz.hb_ot_color_palette_get_colors(face, palette_index, start_offset, color_count, colors)

    # Return value handling
    _retval
  end

  def self.ot_color_palette_get_count(face : HarfBuzz::FaceT) : UInt32
    # hb_ot_color_palette_get_count: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_palette_get_count(face)

    # Return value handling
    _retval
  end

  def self.ot_color_palette_get_flags(face : HarfBuzz::FaceT, palette_index : UInt32) : HarfBuzz::OtColorPaletteFlagsT
    # hb_ot_color_palette_get_flags: (None)
    # @face:
    # @palette_index:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_palette_get_flags(face, palette_index)

    # Return value handling
    HarfBuzz::OtColorPaletteFlagsT.new(_retval)
  end

  def self.ot_color_palette_get_name_id(face : HarfBuzz::FaceT, palette_index : UInt32) : UInt32
    # hb_ot_color_palette_get_name_id: (None)
    # @face:
    # @palette_index:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_color_palette_get_name_id(face, palette_index)

    # Return value handling
    _retval
  end

  def self.ot_font_set_funcs(font : HarfBuzz::FontT) : Nil
    # hb_ot_font_set_funcs: (None)
    # @font:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_ot_font_set_funcs(font)

    # Return value handling
  end

  def self.ot_layout_collect_features(face : HarfBuzz::FaceT, table_tag : UInt32, scripts : Enumerable(UInt32)?, languages : Enumerable(UInt32)?, features : Enumerable(UInt32)?) : HarfBuzz::SetT
    # hb_ot_layout_collect_features: (None)
    # @face:
    # @table_tag:
    # @scripts: (nullable) (array zero-terminated=1 element-type UInt32)
    # @languages: (nullable) (array zero-terminated=1 element-type UInt32)
    # @features: (nullable) (array zero-terminated=1 element-type UInt32)
    # @feature_indexes: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    scripts = if scripts.nil?
                Pointer(UInt32).null
              else
                scripts.to_a.to_unsafe.as(Pointer(UInt32))
              end
    # Generator::NullableArrayPlan
    languages = if languages.nil?
                  Pointer(UInt32).null
                else
                  languages.to_a.to_unsafe.as(Pointer(UInt32))
                end
    # Generator::NullableArrayPlan
    features = if features.nil?
                 Pointer(UInt32).null
               else
                 features.to_a.to_unsafe.as(Pointer(UInt32))
               end
    # Generator::CallerAllocatesPlan
    feature_indexes = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_layout_collect_features(face, table_tag, scripts, languages, features, feature_indexes)

    # Return value handling
    feature_indexes
  end

  def self.ot_layout_collect_features_map(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_index : UInt32) : HarfBuzz::MapT
    # hb_ot_layout_collect_features_map: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_index:
    # @feature_map: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    feature_map = HarfBuzz::MapT.new
    # C call
    LibHarfBuzz.hb_ot_layout_collect_features_map(face, table_tag, script_index, language_index, feature_map)

    # Return value handling
    feature_map
  end

  def self.ot_layout_collect_lookups(face : HarfBuzz::FaceT, table_tag : UInt32, scripts : Enumerable(UInt32)?, languages : Enumerable(UInt32)?, features : Enumerable(UInt32)?) : HarfBuzz::SetT
    # hb_ot_layout_collect_lookups: (None)
    # @face:
    # @table_tag:
    # @scripts: (nullable) (array zero-terminated=1 element-type UInt32)
    # @languages: (nullable) (array zero-terminated=1 element-type UInt32)
    # @features: (nullable) (array zero-terminated=1 element-type UInt32)
    # @lookup_indexes: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    scripts = if scripts.nil?
                Pointer(UInt32).null
              else
                scripts.to_a.to_unsafe.as(Pointer(UInt32))
              end
    # Generator::NullableArrayPlan
    languages = if languages.nil?
                  Pointer(UInt32).null
                else
                  languages.to_a.to_unsafe.as(Pointer(UInt32))
                end
    # Generator::NullableArrayPlan
    features = if features.nil?
                 Pointer(UInt32).null
               else
                 features.to_a.to_unsafe.as(Pointer(UInt32))
               end
    # Generator::CallerAllocatesPlan
    lookup_indexes = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_layout_collect_lookups(face, table_tag, scripts, languages, features, lookup_indexes)

    # Return value handling
    lookup_indexes
  end

  def self.ot_layout_feature_get_characters(face : HarfBuzz::FaceT, table_tag : UInt32, feature_index : UInt32, start_offset : UInt32, characters : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_feature_get_characters: (None)
    # @face:
    # @table_tag:
    # @feature_index:
    # @start_offset:
    # @char_count: (out) (transfer full) (optional)
    # @characters: (out) (caller-allocates) (array length=char_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    char_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    char_count = characters.size
    # Generator::ArrayArgPlan
    characters = characters.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_feature_get_characters(face, table_tag, feature_index, start_offset, char_count, characters)

    # Return value handling
    _retval
  end

  def self.ot_layout_feature_get_lookups(face : HarfBuzz::FaceT, table_tag : UInt32, feature_index : UInt32, start_offset : UInt32, lookup_indexes : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_feature_get_lookups: (None)
    # @face:
    # @table_tag:
    # @feature_index:
    # @start_offset:
    # @lookup_count: (out) (transfer full) (optional)
    # @lookup_indexes: (out) (transfer full) (array length=lookup_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    lookup_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    lookup_count = lookup_indexes.size
    # Generator::ArrayArgPlan
    lookup_indexes = lookup_indexes.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_feature_get_lookups(face, table_tag, feature_index, start_offset, lookup_count, lookup_indexes)

    # Return value handling
    _retval
  end

  def self.ot_layout_feature_get_name_ids(face : HarfBuzz::FaceT, table_tag : UInt32, feature_index : UInt32) : Int32
    # hb_ot_layout_feature_get_name_ids: (None)
    # @face:
    # @table_tag:
    # @feature_index:
    # @label_id: (out) (transfer full) (optional)
    # @tooltip_id: (out) (transfer full) (optional)
    # @sample_id: (out) (transfer full) (optional)
    # @num_named_parameters: (out) (transfer full) (optional)
    # @first_param_id: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    label_id = Pointer(UInt32).null             # Generator::OutArgUsedInReturnPlan
    tooltip_id = Pointer(UInt32).null           # Generator::OutArgUsedInReturnPlan
    sample_id = Pointer(UInt32).null            # Generator::OutArgUsedInReturnPlan
    num_named_parameters = Pointer(UInt32).null # Generator::OutArgUsedInReturnPlan
    first_param_id = Pointer(UInt32).null
    # C call
    _retval = LibHarfBuzz.hb_ot_layout_feature_get_name_ids(face, table_tag, feature_index, label_id, tooltip_id, sample_id, num_named_parameters, first_param_id)

    # Return value handling
    _retval
  end

  def self.ot_layout_feature_with_variations_get_lookups(face : HarfBuzz::FaceT, table_tag : UInt32, feature_index : UInt32, variations_index : UInt32, start_offset : UInt32, lookup_indexes : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_feature_with_variations_get_lookups: (None)
    # @face:
    # @table_tag:
    # @feature_index:
    # @variations_index:
    # @start_offset:
    # @lookup_count: (out) (transfer full) (optional)
    # @lookup_indexes: (out) (transfer full) (array length=lookup_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    lookup_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    lookup_count = lookup_indexes.size
    # Generator::ArrayArgPlan
    lookup_indexes = lookup_indexes.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_feature_with_variations_get_lookups(face, table_tag, feature_index, variations_index, start_offset, lookup_count, lookup_indexes)

    # Return value handling
    _retval
  end

  def self.ot_layout_get_attach_points(face : HarfBuzz::FaceT, glyph : UInt32, start_offset : UInt32, point_array : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_get_attach_points: (None)
    # @face:
    # @glyph:
    # @start_offset:
    # @point_count: (out) (transfer full) (optional)
    # @point_array: (out) (transfer full) (array length=point_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    point_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    point_count = point_array.size
    # Generator::ArrayArgPlan
    point_array = point_array.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_get_attach_points(face, glyph, start_offset, point_count, point_array)

    # Return value handling
    _retval
  end

  def self.ot_layout_get_baseline(font : HarfBuzz::FontT, baseline_tag : HarfBuzz::OtLayoutBaselineTagT, direction : HarfBuzz::DirectionT, script_tag : UInt32, language_tag : UInt32, coord : Int32?) : Int32
    # hb_ot_layout_get_baseline: (None)
    # @font:
    # @baseline_tag:
    # @direction:
    # @script_tag:
    # @language_tag:
    # @coord: (out) (transfer full) (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    coord = if coord.nil?
              Int32.null
            else
              coord.to_unsafe
            end

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_get_baseline(font, baseline_tag, direction, script_tag, language_tag, coord)

    # Return value handling
    _retval
  end

  def self.ot_layout_get_baseline2(font : HarfBuzz::FontT, baseline_tag : HarfBuzz::OtLayoutBaselineTagT, direction : HarfBuzz::DirectionT, script : HarfBuzz::ScriptT, language : HarfBuzz::LanguageT?, coord : Int32?) : Int32
    # hb_ot_layout_get_baseline2: (None)
    # @font:
    # @baseline_tag:
    # @direction:
    # @script:
    # @language: (nullable)
    # @coord: (out) (transfer full) (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    language = if language.nil?
                 Pointer(Void).null
               else
                 language.to_unsafe
               end
    # Generator::NullableArrayPlan
    coord = if coord.nil?
              Int32.null
            else
              coord.to_unsafe
            end

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_get_baseline2(font, baseline_tag, direction, script, language, coord)

    # Return value handling
    _retval
  end

  def self.ot_layout_get_baseline_with_fallback(font : HarfBuzz::FontT, baseline_tag : HarfBuzz::OtLayoutBaselineTagT, direction : HarfBuzz::DirectionT, script_tag : UInt32, language_tag : UInt32, coord : Int32) : Nil
    # hb_ot_layout_get_baseline_with_fallback: (None)
    # @font:
    # @baseline_tag:
    # @direction:
    # @script_tag:
    # @language_tag:
    # @coord: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_ot_layout_get_baseline_with_fallback(font, baseline_tag, direction, script_tag, language_tag, coord)

    # Return value handling
  end

  def self.ot_layout_get_baseline_with_fallback2(font : HarfBuzz::FontT, baseline_tag : HarfBuzz::OtLayoutBaselineTagT, direction : HarfBuzz::DirectionT, script : HarfBuzz::ScriptT, language : HarfBuzz::LanguageT?, coord : Int32) : Nil
    # hb_ot_layout_get_baseline_with_fallback2: (None)
    # @font:
    # @baseline_tag:
    # @direction:
    # @script:
    # @language: (nullable)
    # @coord: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    language = if language.nil?
                 Pointer(Void).null
               else
                 language.to_unsafe
               end

    # C call
    LibHarfBuzz.hb_ot_layout_get_baseline_with_fallback2(font, baseline_tag, direction, script, language, coord)

    # Return value handling
  end

  def self.ot_layout_get_glyph_class(face : HarfBuzz::FaceT, glyph : UInt32) : HarfBuzz::OtLayoutGlyphClassT
    # hb_ot_layout_get_glyph_class: (None)
    # @face:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_get_glyph_class(face, glyph)

    # Return value handling
    HarfBuzz::OtLayoutGlyphClassT.new(_retval)
  end

  def self.ot_layout_get_glyphs_in_class(face : HarfBuzz::FaceT, klass : HarfBuzz::OtLayoutGlyphClassT) : HarfBuzz::SetT
    # hb_ot_layout_get_glyphs_in_class: (None)
    # @face:
    # @klass:
    # @glyphs: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    glyphs = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_layout_get_glyphs_in_class(face, klass, glyphs)

    # Return value handling
    glyphs
  end

  def self.ot_layout_get_horizontal_baseline_tag_for_script(script : HarfBuzz::ScriptT) : HarfBuzz::OtLayoutBaselineTagT
    # hb_ot_layout_get_horizontal_baseline_tag_for_script: (None)
    # @script:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_get_horizontal_baseline_tag_for_script(script)

    # Return value handling
    HarfBuzz::OtLayoutBaselineTagT.new(_retval)
  end

  def self.ot_layout_get_ligature_carets(font : HarfBuzz::FontT, direction : HarfBuzz::DirectionT, glyph : UInt32, start_offset : UInt32, caret_array : Enumerable(Int32)) : UInt32
    # hb_ot_layout_get_ligature_carets: (None)
    # @font:
    # @direction:
    # @glyph:
    # @start_offset:
    # @caret_count: (out) (transfer full) (optional)
    # @caret_array: (out) (transfer full) (array length=caret_count element-type Int32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    caret_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    caret_count = caret_array.size
    # Generator::ArrayArgPlan
    caret_array = caret_array.to_a.to_unsafe.as(Pointer(Int32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_get_ligature_carets(font, direction, glyph, start_offset, caret_count, caret_array)

    # Return value handling
    _retval
  end

  def self.ot_layout_get_size_params(face : HarfBuzz::FaceT, design_size : UInt32, subfamily_id : UInt32, subfamily_name_id : UInt32, range_start : UInt32, range_end : UInt32) : Int32
    # hb_ot_layout_get_size_params: (None)
    # @face:
    # @design_size: (out) (transfer full)
    # @subfamily_id: (out) (transfer full)
    # @subfamily_name_id: (out) (transfer full)
    # @range_start: (out) (transfer full)
    # @range_end: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_get_size_params(face, design_size, subfamily_id, subfamily_name_id, range_start, range_end)

    # Return value handling
    _retval
  end

  def self.ot_layout_has_glyph_classes(face : HarfBuzz::FaceT) : Int32
    # hb_ot_layout_has_glyph_classes: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_has_glyph_classes(face)

    # Return value handling
    _retval
  end

  def self.ot_layout_has_positioning(face : HarfBuzz::FaceT) : Int32
    # hb_ot_layout_has_positioning: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_has_positioning(face)

    # Return value handling
    _retval
  end

  def self.ot_layout_has_substitution(face : HarfBuzz::FaceT) : Int32
    # hb_ot_layout_has_substitution: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_has_substitution(face)

    # Return value handling
    _retval
  end

  def self.ot_layout_language_find_feature(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_index : UInt32, feature_tag : UInt32, feature_index : UInt32) : Int32
    # hb_ot_layout_language_find_feature: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_index:
    # @feature_tag:
    # @feature_index: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_language_find_feature(face, table_tag, script_index, language_index, feature_tag, feature_index)

    # Return value handling
    _retval
  end

  def self.ot_layout_language_get_feature_indexes(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_index : UInt32, start_offset : UInt32, feature_indexes : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_language_get_feature_indexes: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_index:
    # @start_offset:
    # @feature_count: (out) (transfer full) (optional)
    # @feature_indexes: (out) (transfer full) (array length=feature_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    feature_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    feature_count = feature_indexes.size
    # Generator::ArrayArgPlan
    feature_indexes = feature_indexes.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_language_get_feature_indexes(face, table_tag, script_index, language_index, start_offset, feature_count, feature_indexes)

    # Return value handling
    _retval
  end

  def self.ot_layout_language_get_feature_tags(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_index : UInt32, start_offset : UInt32, feature_tags : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_language_get_feature_tags: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_index:
    # @start_offset:
    # @feature_count: (out) (transfer full) (optional)
    # @feature_tags: (out) (transfer full) (array length=feature_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    feature_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    feature_count = feature_tags.size
    # Generator::ArrayArgPlan
    feature_tags = feature_tags.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_language_get_feature_tags(face, table_tag, script_index, language_index, start_offset, feature_count, feature_tags)

    # Return value handling
    _retval
  end

  def self.ot_layout_language_get_required_feature(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_index : UInt32, feature_index : UInt32, feature_tag : UInt32) : Int32
    # hb_ot_layout_language_get_required_feature: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_index:
    # @feature_index: (out) (transfer full)
    # @feature_tag: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_language_get_required_feature(face, table_tag, script_index, language_index, feature_index, feature_tag)

    # Return value handling
    _retval
  end

  def self.ot_layout_language_get_required_feature_index(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_index : UInt32, feature_index : UInt32) : Int32
    # hb_ot_layout_language_get_required_feature_index: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_index:
    # @feature_index: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_language_get_required_feature_index(face, table_tag, script_index, language_index, feature_index)

    # Return value handling
    _retval
  end

  def self.ot_layout_lookup_collect_glyphs(face : HarfBuzz::FaceT, table_tag : UInt32, lookup_index : UInt32) : HarfBuzz::SetT
    # hb_ot_layout_lookup_collect_glyphs: (None)
    # @face:
    # @table_tag:
    # @lookup_index:
    # @glyphs_before: (out) (caller-allocates)
    # @glyphs_input: (out) (caller-allocates)
    # @glyphs_after: (out) (caller-allocates)
    # @glyphs_output: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    glyphs_before = HarfBuzz::SetT.new # Generator::CallerAllocatesPlan
    glyphs_input = HarfBuzz::SetT.new  # Generator::CallerAllocatesPlan
    glyphs_after = HarfBuzz::SetT.new  # Generator::CallerAllocatesPlan
    glyphs_output = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_layout_lookup_collect_glyphs(face, table_tag, lookup_index, glyphs_before, glyphs_input, glyphs_after, glyphs_output)

    # Return value handling
    glyphs_before
  end

  def self.ot_layout_lookup_get_glyph_alternates(face : HarfBuzz::FaceT, lookup_index : UInt32, glyph : UInt32, start_offset : UInt32, alternate_glyphs : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_lookup_get_glyph_alternates: (None)
    # @face:
    # @lookup_index:
    # @glyph:
    # @start_offset:
    # @alternate_count: (out) (transfer full) (optional)
    # @alternate_glyphs: (out) (caller-allocates) (array length=alternate_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    alternate_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    alternate_count = alternate_glyphs.size
    # Generator::ArrayArgPlan
    alternate_glyphs = alternate_glyphs.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_lookup_get_glyph_alternates(face, lookup_index, glyph, start_offset, alternate_count, alternate_glyphs)

    # Return value handling
    _retval
  end

  def self.ot_layout_lookup_get_optical_bound(font : HarfBuzz::FontT, lookup_index : UInt32, direction : HarfBuzz::DirectionT, glyph : UInt32) : Int32
    # hb_ot_layout_lookup_get_optical_bound: (None)
    # @font:
    # @lookup_index:
    # @direction:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_lookup_get_optical_bound(font, lookup_index, direction, glyph)

    # Return value handling
    _retval
  end

  def self.ot_layout_lookup_substitute_closure(face : HarfBuzz::FaceT, lookup_index : UInt32) : HarfBuzz::SetT
    # hb_ot_layout_lookup_substitute_closure: (None)
    # @face:
    # @lookup_index:
    # @glyphs: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    glyphs = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_layout_lookup_substitute_closure(face, lookup_index, glyphs)

    # Return value handling
    glyphs
  end

  def self.ot_layout_lookup_would_substitute(face : HarfBuzz::FaceT, lookup_index : UInt32, glyphs : Pointer(UInt32), glyphs_length : UInt32, zero_context : Int32) : Int32
    # hb_ot_layout_lookup_would_substitute: (None)
    # @face:
    # @lookup_index:
    # @glyphs:
    # @glyphs_length:
    # @zero_context:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_lookup_would_substitute(face, lookup_index, glyphs, glyphs_length, zero_context)

    # Return value handling
    _retval
  end

  def self.ot_layout_lookups_substitute_closure(face : HarfBuzz::FaceT, lookups : HarfBuzz::SetT) : HarfBuzz::SetT
    # hb_ot_layout_lookups_substitute_closure: (None)
    # @face:
    # @lookups:
    # @glyphs: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    glyphs = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_layout_lookups_substitute_closure(face, lookups, glyphs)

    # Return value handling
    glyphs
  end

  @[Deprecated]
  def self.ot_layout_script_find_language(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_tag : UInt32, language_index : Pointer(UInt32)) : Int32
    # hb_ot_layout_script_find_language: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_tag:
    # @language_index:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_script_find_language(face, table_tag, script_index, language_tag, language_index)

    # Return value handling
    _retval
  end

  def self.ot_layout_script_get_language_tags(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, start_offset : UInt32, language_tags : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_script_get_language_tags: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @start_offset:
    # @language_count: (out) (transfer full) (optional)
    # @language_tags: (out) (transfer full) (array length=language_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    language_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    language_count = language_tags.size
    # Generator::ArrayArgPlan
    language_tags = language_tags.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_script_get_language_tags(face, table_tag, script_index, start_offset, language_count, language_tags)

    # Return value handling
    _retval
  end

  def self.ot_layout_script_select_language(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_count : UInt32, language_tags : Pointer(UInt32), language_index : UInt32) : Int32
    # hb_ot_layout_script_select_language: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_count:
    # @language_tags:
    # @language_index: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_script_select_language(face, table_tag, script_index, language_count, language_tags, language_index)

    # Return value handling
    _retval
  end

  def self.ot_layout_script_select_language2(face : HarfBuzz::FaceT, table_tag : UInt32, script_index : UInt32, language_count : UInt32, language_tags : Pointer(UInt32), language_index : UInt32, chosen_language : UInt32) : Int32
    # hb_ot_layout_script_select_language2: (None)
    # @face:
    # @table_tag:
    # @script_index:
    # @language_count:
    # @language_tags:
    # @language_index: (out) (transfer full)
    # @chosen_language: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_script_select_language2(face, table_tag, script_index, language_count, language_tags, language_index, chosen_language)

    # Return value handling
    _retval
  end

  def self.ot_layout_table_choose_script(face : HarfBuzz::FaceT, table_tag : UInt32, script_tags : Pointer(UInt32), script_index : UInt32, chosen_script : UInt32) : Int32
    # hb_ot_layout_table_choose_script: (None)
    # @face:
    # @table_tag:
    # @script_tags:
    # @script_index: (out) (transfer full)
    # @chosen_script: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_table_choose_script(face, table_tag, script_tags, script_index, chosen_script)

    # Return value handling
    _retval
  end

  def self.ot_layout_table_find_feature_variations(face : HarfBuzz::FaceT, table_tag : UInt32, coords : Pointer(Int32), num_coords : UInt32, variations_index : UInt32) : Int32
    # hb_ot_layout_table_find_feature_variations: (None)
    # @face:
    # @table_tag:
    # @coords:
    # @num_coords:
    # @variations_index: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_table_find_feature_variations(face, table_tag, coords, num_coords, variations_index)

    # Return value handling
    _retval
  end

  def self.ot_layout_table_find_script(face : HarfBuzz::FaceT, table_tag : UInt32, script_tag : UInt32, script_index : UInt32) : Int32
    # hb_ot_layout_table_find_script: (None)
    # @face:
    # @table_tag:
    # @script_tag:
    # @script_index: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_table_find_script(face, table_tag, script_tag, script_index)

    # Return value handling
    _retval
  end

  def self.ot_layout_table_get_feature_tags(face : HarfBuzz::FaceT, table_tag : UInt32, start_offset : UInt32, feature_tags : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_table_get_feature_tags: (None)
    # @face:
    # @table_tag:
    # @start_offset:
    # @feature_count: (out) (transfer full) (optional)
    # @feature_tags: (out) (transfer full) (array length=feature_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    feature_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    feature_count = feature_tags.size
    # Generator::ArrayArgPlan
    feature_tags = feature_tags.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_table_get_feature_tags(face, table_tag, start_offset, feature_count, feature_tags)

    # Return value handling
    _retval
  end

  def self.ot_layout_table_get_lookup_count(face : HarfBuzz::FaceT, table_tag : UInt32) : UInt32
    # hb_ot_layout_table_get_lookup_count: (None)
    # @face:
    # @table_tag:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_table_get_lookup_count(face, table_tag)

    # Return value handling
    _retval
  end

  def self.ot_layout_table_get_script_tags(face : HarfBuzz::FaceT, table_tag : UInt32, start_offset : UInt32, script_tags : Enumerable(UInt32)) : UInt32
    # hb_ot_layout_table_get_script_tags: (None)
    # @face:
    # @table_tag:
    # @start_offset:
    # @script_count: (out) (transfer full) (optional)
    # @script_tags: (out) (transfer full) (array length=script_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    script_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    script_count = script_tags.size
    # Generator::ArrayArgPlan
    script_tags = script_tags.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_layout_table_get_script_tags(face, table_tag, start_offset, script_count, script_tags)

    # Return value handling
    _retval
  end

  def self.ot_layout_table_select_script(face : HarfBuzz::FaceT, table_tag : UInt32, script_count : UInt32, script_tags : Pointer(UInt32)) : Int32
    # hb_ot_layout_table_select_script: (None)
    # @face:
    # @table_tag:
    # @script_count:
    # @script_tags:
    # @script_index: (out) (transfer full) (optional)
    # @chosen_script: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    script_index = Pointer(UInt32).null # Generator::OutArgUsedInReturnPlan
    chosen_script = Pointer(UInt32).null
    # C call
    _retval = LibHarfBuzz.hb_ot_layout_table_select_script(face, table_tag, script_count, script_tags, script_index, chosen_script)

    # Return value handling
    _retval
  end

  def self.ot_math_get_constant(font : HarfBuzz::FontT, constant : HarfBuzz::OtMathConstantT) : Int32
    # hb_ot_math_get_constant: (None)
    # @font:
    # @constant:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_constant(font, constant)

    # Return value handling
    _retval
  end

  def self.ot_math_get_glyph_assembly(font : HarfBuzz::FontT, glyph : UInt32, direction : HarfBuzz::DirectionT, start_offset : UInt32, parts : Enumerable(HarfBuzz::OtMathGlyphPartT), italics_correction : Int32) : UInt32
    # hb_ot_math_get_glyph_assembly: (None)
    # @font:
    # @glyph:
    # @direction:
    # @start_offset:
    # @parts_count: (out) (transfer full)
    # @parts: (out) (caller-allocates) (array length=parts_count element-type Interface)
    # @italics_correction: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    parts_count = parts.size
    # Generator::ArrayArgPlan
    parts = parts.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::OtMathGlyphPartT))

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_glyph_assembly(font, glyph, direction, start_offset, parts_count, parts, italics_correction)

    # Return value handling
    _retval
  end

  def self.ot_math_get_glyph_italics_correction(font : HarfBuzz::FontT, glyph : UInt32) : Int32
    # hb_ot_math_get_glyph_italics_correction: (None)
    # @font:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_glyph_italics_correction(font, glyph)

    # Return value handling
    _retval
  end

  def self.ot_math_get_glyph_kerning(font : HarfBuzz::FontT, glyph : UInt32, kern : HarfBuzz::OtMathKernT, correction_height : Int32) : Int32
    # hb_ot_math_get_glyph_kerning: (None)
    # @font:
    # @glyph:
    # @kern:
    # @correction_height:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_glyph_kerning(font, glyph, kern, correction_height)

    # Return value handling
    _retval
  end

  def self.ot_math_get_glyph_kernings(font : HarfBuzz::FontT, glyph : UInt32, kern : HarfBuzz::OtMathKernT, start_offset : UInt32, kern_entries : Enumerable(HarfBuzz::OtMathKernEntryT)) : UInt32
    # hb_ot_math_get_glyph_kernings: (None)
    # @font:
    # @glyph:
    # @kern:
    # @start_offset:
    # @entries_count: (out) (transfer full) (optional)
    # @kern_entries: (out) (caller-allocates) (array length=entries_count element-type Interface)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    entries_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    entries_count = kern_entries.size
    # Generator::ArrayArgPlan
    kern_entries = kern_entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::OtMathKernEntryT))

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_glyph_kernings(font, glyph, kern, start_offset, entries_count, kern_entries)

    # Return value handling
    _retval
  end

  def self.ot_math_get_glyph_top_accent_attachment(font : HarfBuzz::FontT, glyph : UInt32) : Int32
    # hb_ot_math_get_glyph_top_accent_attachment: (None)
    # @font:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_glyph_top_accent_attachment(font, glyph)

    # Return value handling
    _retval
  end

  def self.ot_math_get_glyph_variants(font : HarfBuzz::FontT, glyph : UInt32, direction : HarfBuzz::DirectionT, start_offset : UInt32, variants : Enumerable(HarfBuzz::OtMathGlyphVariantT)) : UInt32
    # hb_ot_math_get_glyph_variants: (None)
    # @font:
    # @glyph:
    # @direction:
    # @start_offset:
    # @variants_count: (out) (transfer full)
    # @variants: (out) (caller-allocates) (array length=variants_count element-type Interface)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    variants_count = variants.size
    # Generator::ArrayArgPlan
    variants = variants.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::OtMathGlyphVariantT))

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_glyph_variants(font, glyph, direction, start_offset, variants_count, variants)

    # Return value handling
    _retval
  end

  def self.ot_math_get_min_connector_overlap(font : HarfBuzz::FontT, direction : HarfBuzz::DirectionT) : Int32
    # hb_ot_math_get_min_connector_overlap: (None)
    # @font:
    # @direction:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_math_get_min_connector_overlap(font, direction)

    # Return value handling
    _retval
  end

  def self.ot_math_has_data(face : HarfBuzz::FaceT) : Int32
    # hb_ot_math_has_data: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_math_has_data(face)

    # Return value handling
    _retval
  end

  def self.ot_math_is_glyph_extended_shape(face : HarfBuzz::FaceT, glyph : UInt32) : Int32
    # hb_ot_math_is_glyph_extended_shape: (None)
    # @face:
    # @glyph:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_math_is_glyph_extended_shape(face, glyph)

    # Return value handling
    _retval
  end

  def self.ot_meta_get_entry_tags(face : HarfBuzz::FaceT, start_offset : UInt32, entries : Enumerable(HarfBuzz::OtMetaTagT)) : UInt32
    # hb_ot_meta_get_entry_tags: (None)
    # @face:
    # @start_offset:
    # @entries_count: (out) (transfer full) (optional)
    # @entries: (out) (caller-allocates) (array length=entries_count element-type Interface)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    entries_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    entries_count = entries.size
    # Generator::ArrayArgPlan
    entries = entries.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_meta_get_entry_tags(face, start_offset, entries_count, entries)

    # Return value handling
    _retval
  end

  def self.ot_meta_reference_entry(face : HarfBuzz::FaceT, meta_tag : HarfBuzz::OtMetaTagT) : HarfBuzz::BlobT
    # hb_ot_meta_reference_entry: (None)
    # @face:
    # @meta_tag:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_ot_meta_reference_entry(face, meta_tag)

    # Return value handling
    HarfBuzz::BlobT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.ot_metrics_get_position(font : HarfBuzz::FontT, metrics_tag : HarfBuzz::OtMetricsTagT) : Int32
    # hb_ot_metrics_get_position: (None)
    # @font:
    # @metrics_tag:
    # @position: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    position = Pointer(Int32).null
    # C call
    _retval = LibHarfBuzz.hb_ot_metrics_get_position(font, metrics_tag, position)

    # Return value handling
    _retval
  end

  def self.ot_metrics_get_position_with_fallback(font : HarfBuzz::FontT, metrics_tag : HarfBuzz::OtMetricsTagT) : Nil
    # hb_ot_metrics_get_position_with_fallback: (None)
    # @font:
    # @metrics_tag:
    # @position: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    position = Pointer(Int32).null
    # C call
    LibHarfBuzz.hb_ot_metrics_get_position_with_fallback(font, metrics_tag, position)

    # Return value handling
  end

  def self.ot_metrics_get_variation(font : HarfBuzz::FontT, metrics_tag : HarfBuzz::OtMetricsTagT) : Float32
    # hb_ot_metrics_get_variation: (None)
    # @font:
    # @metrics_tag:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_metrics_get_variation(font, metrics_tag)

    # Return value handling
    _retval
  end

  def self.ot_metrics_get_x_variation(font : HarfBuzz::FontT, metrics_tag : HarfBuzz::OtMetricsTagT) : Int32
    # hb_ot_metrics_get_x_variation: (None)
    # @font:
    # @metrics_tag:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_metrics_get_x_variation(font, metrics_tag)

    # Return value handling
    _retval
  end

  def self.ot_metrics_get_y_variation(font : HarfBuzz::FontT, metrics_tag : HarfBuzz::OtMetricsTagT) : Int32
    # hb_ot_metrics_get_y_variation: (None)
    # @font:
    # @metrics_tag:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_metrics_get_y_variation(font, metrics_tag)

    # Return value handling
    _retval
  end

  def self.ot_name_get_utf16(face : HarfBuzz::FaceT, name_id : UInt32, language : HarfBuzz::LanguageT, text : Enumerable(UInt16)) : UInt32
    # hb_ot_name_get_utf16: (None)
    # @face:
    # @name_id:
    # @language:
    # @text_size: (out) (transfer full) (optional)
    # @text: (out) (caller-allocates) (array length=text_size element-type UInt16)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    text_size = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    text_size = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.to_unsafe.as(Pointer(UInt16))

    # C call
    _retval = LibHarfBuzz.hb_ot_name_get_utf16(face, name_id, language, text_size, text)

    # Return value handling
    _retval
  end

  def self.ot_name_get_utf32(face : HarfBuzz::FaceT, name_id : UInt32, language : HarfBuzz::LanguageT, text : Enumerable(UInt32)) : UInt32
    # hb_ot_name_get_utf32: (None)
    # @face:
    # @name_id:
    # @language:
    # @text_size: (out) (transfer full) (optional)
    # @text: (out) (caller-allocates) (array length=text_size element-type UInt32)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    text_size = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    text_size = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_name_get_utf32(face, name_id, language, text_size, text)

    # Return value handling
    _retval
  end

  def self.ot_name_get_utf8(face : HarfBuzz::FaceT, name_id : UInt32, language : HarfBuzz::LanguageT, text : Enumerable(::String)) : UInt32
    # hb_ot_name_get_utf8: (None)
    # @face:
    # @name_id:
    # @language:
    # @text_size: (out) (transfer full) (optional)
    # @text: (out) (caller-allocates) (array length=text_size element-type Utf8)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    text_size = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    text_size = text.size
    # Generator::ArrayArgPlan
    text = text.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    _retval = LibHarfBuzz.hb_ot_name_get_utf8(face, name_id, language, text_size, text)

    # Return value handling
    _retval
  end

  def self.ot_name_list_names(face : HarfBuzz::FaceT) : Enumerable(HarfBuzz::OtNameEntryT)
    # hb_ot_name_list_names: (None)
    # @face:
    # @num_entries: (out) (transfer full) (optional)
    # Returns: (transfer none) (array length=num_entries element-type Interface)

    # Generator::OutArgUsedInReturnPlan
    num_entries = 0_u32
    # C call
    _retval = LibHarfBuzz.hb_ot_name_list_names(face, pointerof(num_entries))

    # Return value handling
    GICrystal.transfer_array(_retval, num_entries, GICrystal::Transfer::None)
  end

  def self.ot_shape_glyphs_closure(font : HarfBuzz::FontT, buffer : HarfBuzz::BufferT, features : Enumerable(HarfBuzz::FeatureT)) : HarfBuzz::SetT
    # hb_ot_shape_glyphs_closure: (None)
    # @font:
    # @buffer:
    # @features: (array length=num_features element-type Interface)
    # @num_features:
    # @glyphs: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    num_features = features.size
    # Generator::ArrayArgPlan
    features = features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))
    # Generator::CallerAllocatesPlan
    glyphs = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_shape_glyphs_closure(font, buffer, features, num_features, glyphs)

    # Return value handling
    glyphs
  end

  def self.ot_shape_plan_collect_lookups(shape_plan : HarfBuzz::ShapePlanT, table_tag : UInt32) : HarfBuzz::SetT
    # hb_ot_shape_plan_collect_lookups: (None)
    # @shape_plan:
    # @table_tag:
    # @lookup_indexes: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    lookup_indexes = HarfBuzz::SetT.new
    # C call
    LibHarfBuzz.hb_ot_shape_plan_collect_lookups(shape_plan, table_tag, lookup_indexes)

    # Return value handling
    lookup_indexes
  end

  def self.ot_shape_plan_get_feature_tags(shape_plan : HarfBuzz::ShapePlanT, start_offset : UInt32, tags : Enumerable(UInt32)) : UInt32
    # hb_ot_shape_plan_get_feature_tags: (None)
    # @shape_plan:
    # @start_offset:
    # @tag_count: (out) (transfer full)
    # @tags: (out) (transfer full) (array length=tag_count element-type UInt32)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    tag_count = tags.size
    # Generator::ArrayArgPlan
    tags = tags.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_ot_shape_plan_get_feature_tags(shape_plan, start_offset, tag_count, tags)

    # Return value handling
    _retval
  end

  @[Deprecated]
  def self.ot_tag_from_language(language : HarfBuzz::LanguageT) : UInt32
    # hb_ot_tag_from_language: (None)
    # @language:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_tag_from_language(language)

    # Return value handling
    _retval
  end

  def self.ot_tag_to_language(tag : UInt32) : HarfBuzz::LanguageT?
    # hb_ot_tag_to_language: (None)
    # @tag:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibHarfBuzz.hb_ot_tag_to_language(tag)

    # Return value handling
    HarfBuzz::LanguageT.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.ot_tag_to_script(tag : UInt32) : HarfBuzz::ScriptT
    # hb_ot_tag_to_script: (None)
    # @tag:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_tag_to_script(tag)

    # Return value handling
    HarfBuzz::ScriptT.new(_retval)
  end

  @[Deprecated]
  def self.ot_tags_from_script(script : HarfBuzz::ScriptT, script_tag_1 : UInt32, script_tag_2 : UInt32) : Nil
    # hb_ot_tags_from_script: (None)
    # @script:
    # @script_tag_1: (out) (transfer full)
    # @script_tag_2: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_ot_tags_from_script(script, script_tag_1, script_tag_2)

    # Return value handling
  end

  def self.ot_tags_from_script_and_language(script : HarfBuzz::ScriptT, language : HarfBuzz::LanguageT?) : Nil
    # hb_ot_tags_from_script_and_language: (None)
    # @script:
    # @language: (nullable)
    # @script_count: (inout) (transfer full) (optional)
    # @script_tags: (out) (transfer full) (optional)
    # @language_count: (inout) (transfer full) (optional)
    # @language_tags: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    language = if language.nil?
                 Pointer(Void).null
               else
                 language.to_unsafe
               end
    # Generator::OutArgUsedInReturnPlan
    script_count = Pointer(UInt32).null   # Generator::OutArgUsedInReturnPlan
    script_tags = Pointer(UInt32).null    # Generator::OutArgUsedInReturnPlan
    language_count = Pointer(UInt32).null # Generator::OutArgUsedInReturnPlan
    language_tags = Pointer(UInt32).null
    # C call
    LibHarfBuzz.hb_ot_tags_from_script_and_language(script, language, script_count, script_tags, language_count, language_tags)

    # Return value handling
  end

  def self.ot_tags_to_script_and_language(script_tag : UInt32, language_tag : UInt32) : HarfBuzz::LanguageT
    # hb_ot_tags_to_script_and_language: (None)
    # @script_tag:
    # @language_tag:
    # @script: (out) (transfer full) (optional)
    # @language: (out) (caller-allocates) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    script = Pointer(UInt32).null          # Generator::OutArgUsedInReturnPlan
    language = Pointer(Pointer(Void)).null # Generator::CallerAllocatesPlan
    language = HarfBuzz::LanguageT.new
    # C call
    LibHarfBuzz.hb_ot_tags_to_script_and_language(script_tag, language_tag, script, language)

    # Return value handling
    language
  end

  @[Deprecated]
  def self.ot_var_find_axis(face : HarfBuzz::FaceT, axis_tag : UInt32, axis_index : Pointer(UInt32)) : HarfBuzz::OtVarAxisT
    # hb_ot_var_find_axis: (None)
    # @face:
    # @axis_tag:
    # @axis_index:
    # @axis_info: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    axis_info = HarfBuzz::OtVarAxisT.new
    # C call
    _retval = LibHarfBuzz.hb_ot_var_find_axis(face, axis_tag, axis_index, axis_info)

    # Return value handling
    axis_info
  end

  def self.ot_var_find_axis_info(face : HarfBuzz::FaceT, axis_tag : UInt32) : HarfBuzz::OtVarAxisInfoT
    # hb_ot_var_find_axis_info: (None)
    # @face:
    # @axis_tag:
    # @axis_info: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::CallerAllocatesPlan
    axis_info = HarfBuzz::OtVarAxisInfoT.new
    # C call
    _retval = LibHarfBuzz.hb_ot_var_find_axis_info(face, axis_tag, axis_info)

    # Return value handling
    axis_info
  end

  @[Deprecated]
  def self.ot_var_get_axes(face : HarfBuzz::FaceT, start_offset : UInt32, axes_array : Enumerable(HarfBuzz::OtVarAxisT)) : UInt32
    # hb_ot_var_get_axes: (None)
    # @face:
    # @start_offset:
    # @axes_count: (out) (transfer full) (optional)
    # @axes_array: (out) (caller-allocates) (array length=axes_count element-type Interface)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    axes_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    axes_count = axes_array.size
    # Generator::ArrayArgPlan
    axes_array = axes_array.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisT))

    # C call
    _retval = LibHarfBuzz.hb_ot_var_get_axes(face, start_offset, axes_count, axes_array)

    # Return value handling
    _retval
  end

  def self.ot_var_get_axis_count(face : HarfBuzz::FaceT) : UInt32
    # hb_ot_var_get_axis_count: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_var_get_axis_count(face)

    # Return value handling
    _retval
  end

  def self.ot_var_get_axis_infos(face : HarfBuzz::FaceT, start_offset : UInt32, axes_array : Enumerable(HarfBuzz::OtVarAxisInfoT)) : UInt32
    # hb_ot_var_get_axis_infos: (None)
    # @face:
    # @start_offset:
    # @axes_count: (out) (transfer full) (optional)
    # @axes_array: (out) (caller-allocates) (array length=axes_count element-type Interface)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    axes_count = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    axes_count = axes_array.size
    # Generator::ArrayArgPlan
    axes_array = axes_array.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::OtVarAxisInfoT))

    # C call
    _retval = LibHarfBuzz.hb_ot_var_get_axis_infos(face, start_offset, axes_count, axes_array)

    # Return value handling
    _retval
  end

  def self.ot_var_get_named_instance_count(face : HarfBuzz::FaceT) : UInt32
    # hb_ot_var_get_named_instance_count: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_var_get_named_instance_count(face)

    # Return value handling
    _retval
  end

  def self.ot_var_has_data(face : HarfBuzz::FaceT) : Int32
    # hb_ot_var_has_data: (None)
    # @face:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_var_has_data(face)

    # Return value handling
    _retval
  end

  def self.ot_var_named_instance_get_design_coords(face : HarfBuzz::FaceT, instance_index : UInt32, coords : Enumerable(Float32)) : UInt32
    # hb_ot_var_named_instance_get_design_coords: (None)
    # @face:
    # @instance_index:
    # @coords_length: (out) (transfer full) (optional)
    # @coords: (out) (transfer full) (array length=coords_length element-type Float)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    coords_length = Pointer(UInt32).null # Generator::ArrayLengthArgPlan
    coords_length = coords.size
    # Generator::ArrayArgPlan
    coords = coords.to_a.to_unsafe.as(Pointer(Float32))

    # C call
    _retval = LibHarfBuzz.hb_ot_var_named_instance_get_design_coords(face, instance_index, coords_length, coords)

    # Return value handling
    _retval
  end

  def self.ot_var_named_instance_get_postscript_name_id(face : HarfBuzz::FaceT, instance_index : UInt32) : UInt32
    # hb_ot_var_named_instance_get_postscript_name_id: (None)
    # @face:
    # @instance_index:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_var_named_instance_get_postscript_name_id(face, instance_index)

    # Return value handling
    _retval
  end

  def self.ot_var_named_instance_get_subfamily_name_id(face : HarfBuzz::FaceT, instance_index : UInt32) : UInt32
    # hb_ot_var_named_instance_get_subfamily_name_id: (None)
    # @face:
    # @instance_index:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_ot_var_named_instance_get_subfamily_name_id(face, instance_index)

    # Return value handling
    _retval
  end

  def self.ot_var_normalize_coords(face : HarfBuzz::FaceT, coords_length : UInt32, design_coords : Pointer(Float32), normalized_coords : Int32) : Nil
    # hb_ot_var_normalize_coords: (None)
    # @face:
    # @coords_length:
    # @design_coords:
    # @normalized_coords: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_ot_var_normalize_coords(face, coords_length, design_coords, normalized_coords)

    # Return value handling
  end

  def self.ot_var_normalize_variations(face : HarfBuzz::FaceT, variations : HarfBuzz::VariationT, variations_length : UInt32, coords : Enumerable(Int32)) : Nil
    # hb_ot_var_normalize_variations: (None)
    # @face:
    # @variations:
    # @variations_length:
    # @coords: (out) (transfer full) (array length=coords_length element-type Int32)
    # @coords_length: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    coords_length = coords.size
    # Generator::ArrayArgPlan
    coords = coords.to_a.to_unsafe.as(Pointer(Int32))

    # C call
    LibHarfBuzz.hb_ot_var_normalize_variations(face, variations, variations_length, coords, coords_length)

    # Return value handling
  end

  def self.paint_color(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, is_foreground : Int32, color : UInt32) : Nil
    # hb_paint_color: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @is_foreground:
    # @color:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_color(funcs, paint_data, is_foreground, color)

    # Return value handling
  end

  def self.paint_color_glyph(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, glyph : UInt32, font : HarfBuzz::FontT) : Int32
    # hb_paint_color_glyph: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @glyph:
    # @font:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    _retval = LibHarfBuzz.hb_paint_color_glyph(funcs, paint_data, glyph, font)

    # Return value handling
    _retval
  end

  def self.paint_custom_palette_color(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, color_index : UInt32, color : UInt32) : Int32
    # hb_paint_custom_palette_color: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @color_index:
    # @color: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    _retval = LibHarfBuzz.hb_paint_custom_palette_color(funcs, paint_data, color_index, color)

    # Return value handling
    _retval
  end

  def self.paint_funcs_create : HarfBuzz::PaintFuncsT
    # hb_paint_funcs_create: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_paint_funcs_create

    # Return value handling
    HarfBuzz::PaintFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.paint_funcs_get_empty : HarfBuzz::PaintFuncsT
    # hb_paint_funcs_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_paint_funcs_get_empty

    # Return value handling
    HarfBuzz::PaintFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.paint_funcs_is_immutable(funcs : HarfBuzz::PaintFuncsT) : Int32
    # hb_paint_funcs_is_immutable: (None)
    # @funcs:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_paint_funcs_is_immutable(funcs)

    # Return value handling
    _retval
  end

  def self.paint_funcs_make_immutable(funcs : HarfBuzz::PaintFuncsT) : Nil
    # hb_paint_funcs_make_immutable: (None)
    # @funcs:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_paint_funcs_make_immutable(funcs)

    # Return value handling
  end

  def self.paint_funcs_set_color_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintColorFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_color_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_color_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_color_glyph_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintColorGlyphFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_color_glyph_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_color_glyph_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_custom_palette_color_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintCustomPaletteColorFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_custom_palette_color_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_custom_palette_color_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_image_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintImageFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_image_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_image_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_linear_gradient_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintLinearGradientFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_linear_gradient_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_linear_gradient_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_pop_clip_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintPopClipFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_pop_clip_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_pop_clip_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_pop_group_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintPopGroupFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_pop_group_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_pop_group_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_pop_transform_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintPopTransformFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_pop_transform_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_pop_transform_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_push_clip_glyph_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintPushClipGlyphFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_push_clip_glyph_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_push_clip_glyph_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_push_clip_rectangle_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintPushClipRectangleFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_push_clip_rectangle_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_push_clip_rectangle_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_push_group_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintPushGroupFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_push_group_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_push_group_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_push_transform_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintPushTransformFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_push_transform_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_push_transform_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_radial_gradient_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintRadialGradientFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_radial_gradient_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_radial_gradient_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_funcs_set_sweep_gradient_func(funcs : HarfBuzz::PaintFuncsT, func : HarfBuzz::PaintSweepGradientFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_paint_funcs_set_sweep_gradient_func: (None)
    # @funcs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_paint_funcs_set_sweep_gradient_func(funcs, func, user_data, destroy)

    # Return value handling
  end

  def self.paint_image(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, image : HarfBuzz::BlobT, width : UInt32, height : UInt32, format : UInt32, slant : Float32, extents : HarfBuzz::GlyphExtentsT?) : Nil
    # hb_paint_image: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @image:
    # @width:
    # @height:
    # @format:
    # @slant:
    # @extents: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end
    # Generator::NullableArrayPlan
    extents = if extents.nil?
                Pointer(Void).null
              else
                extents.to_unsafe
              end

    # C call
    LibHarfBuzz.hb_paint_image(funcs, paint_data, image, width, height, format, slant, extents)

    # Return value handling
  end

  def self.paint_linear_gradient(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, color_line : HarfBuzz::ColorLineT, x0 : Float32, y0 : Float32, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Nil
    # hb_paint_linear_gradient: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @color_line:
    # @x0:
    # @y0:
    # @x1:
    # @y1:
    # @x2:
    # @y2:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_linear_gradient(funcs, paint_data, color_line, x0, y0, x1, y1, x2, y2)

    # Return value handling
  end

  def self.paint_pop_clip(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?) : Nil
    # hb_paint_pop_clip: (None)
    # @funcs:
    # @paint_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_pop_clip(funcs, paint_data)

    # Return value handling
  end

  def self.paint_pop_group(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, mode : HarfBuzz::PaintCompositeModeT) : Nil
    # hb_paint_pop_group: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @mode:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_pop_group(funcs, paint_data, mode)

    # Return value handling
  end

  def self.paint_pop_transform(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?) : Nil
    # hb_paint_pop_transform: (None)
    # @funcs:
    # @paint_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_pop_transform(funcs, paint_data)

    # Return value handling
  end

  def self.paint_push_clip_glyph(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, glyph : UInt32, font : HarfBuzz::FontT) : Nil
    # hb_paint_push_clip_glyph: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @glyph:
    # @font:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_push_clip_glyph(funcs, paint_data, glyph, font)

    # Return value handling
  end

  def self.paint_push_clip_rectangle(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, xmin : Float32, ymin : Float32, xmax : Float32, ymax : Float32) : Nil
    # hb_paint_push_clip_rectangle: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @xmin:
    # @ymin:
    # @xmax:
    # @ymax:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_push_clip_rectangle(funcs, paint_data, xmin, ymin, xmax, ymax)

    # Return value handling
  end

  def self.paint_push_font_transform(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, font : HarfBuzz::FontT) : Nil
    # hb_paint_push_font_transform: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @font:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_push_font_transform(funcs, paint_data, font)

    # Return value handling
  end

  def self.paint_push_group(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?) : Nil
    # hb_paint_push_group: (None)
    # @funcs:
    # @paint_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_push_group(funcs, paint_data)

    # Return value handling
  end

  def self.paint_push_inverse_font_transform(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, font : HarfBuzz::FontT) : Nil
    # hb_paint_push_inverse_font_transform: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @font:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_push_inverse_font_transform(funcs, paint_data, font)

    # Return value handling
  end

  def self.paint_push_transform(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, xx : Float32, yx : Float32, xy : Float32, yy : Float32, dx : Float32, dy : Float32) : Nil
    # hb_paint_push_transform: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @xx:
    # @yx:
    # @xy:
    # @yy:
    # @dx:
    # @dy:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_push_transform(funcs, paint_data, xx, yx, xy, yy, dx, dy)

    # Return value handling
  end

  def self.paint_radial_gradient(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, color_line : HarfBuzz::ColorLineT, x0 : Float32, y0 : Float32, r0 : Float32, x1 : Float32, y1 : Float32, r1 : Float32) : Nil
    # hb_paint_radial_gradient: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @color_line:
    # @x0:
    # @y0:
    # @r0:
    # @x1:
    # @y1:
    # @r1:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_radial_gradient(funcs, paint_data, color_line, x0, y0, r0, x1, y1, r1)

    # Return value handling
  end

  def self.paint_sweep_gradient(funcs : HarfBuzz::PaintFuncsT, paint_data : Pointer(Void)?, color_line : HarfBuzz::ColorLineT, x0 : Float32, y0 : Float32, start_angle : Float32, end_angle : Float32) : Nil
    # hb_paint_sweep_gradient: (None)
    # @funcs:
    # @paint_data: (nullable)
    # @color_line:
    # @x0:
    # @y0:
    # @start_angle:
    # @end_angle:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    paint_data = if paint_data.nil?
                   Pointer(Void).null
                 else
                   paint_data.to_unsafe
                 end

    # C call
    LibHarfBuzz.hb_paint_sweep_gradient(funcs, paint_data, color_line, x0, y0, start_angle, end_angle)

    # Return value handling
  end

  def self.realloc(ptr : Pointer(Void)?, size : UInt64) : Pointer(Void)?
    # hb_realloc: (None)
    # @ptr: (nullable)
    # @size:
    # Returns: (transfer none) (nullable)

    # Generator::NullableArrayPlan
    ptr = if ptr.nil?
            Pointer(Void).null
          else
            ptr.to_unsafe
          end

    # C call
    _retval = LibHarfBuzz.hb_realloc(ptr, size)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.script_from_iso15924_tag(tag : UInt32) : HarfBuzz::ScriptT
    # hb_script_from_iso15924_tag: (None)
    # @tag:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_script_from_iso15924_tag(tag)

    # Return value handling
    HarfBuzz::ScriptT.new(_retval)
  end

  def self.script_from_string(str : ::Bytes) : HarfBuzz::ScriptT
    # hb_script_from_string: (None)
    # @str: (array length=len element-type UInt8)
    # @len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = str.size
    # Generator::ArrayArgPlan
    str = str.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibHarfBuzz.hb_script_from_string(str, len)

    # Return value handling
    HarfBuzz::ScriptT.new(_retval)
  end

  def self.script_from_string(*str : UInt8)
    self.script_from_string(str)
  end

  def self.script_get_horizontal_direction(script : HarfBuzz::ScriptT) : HarfBuzz::DirectionT
    # hb_script_get_horizontal_direction: (None)
    # @script:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_script_get_horizontal_direction(script)

    # Return value handling
    HarfBuzz::DirectionT.new(_retval)
  end

  def self.script_to_iso15924_tag(script : HarfBuzz::ScriptT) : UInt32
    # hb_script_to_iso15924_tag: (None)
    # @script:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_script_to_iso15924_tag(script)

    # Return value handling
    _retval
  end

  def self.segment_properties_equal(a : HarfBuzz::SegmentPropertiesT, b : HarfBuzz::SegmentPropertiesT) : Int32
    # hb_segment_properties_equal: (None)
    # @a:
    # @b:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_segment_properties_equal(a, b)

    # Return value handling
    _retval
  end

  def self.segment_properties_hash(p : HarfBuzz::SegmentPropertiesT) : UInt32
    # hb_segment_properties_hash: (None)
    # @p:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_segment_properties_hash(p)

    # Return value handling
    _retval
  end

  def self.segment_properties_overlay(p : HarfBuzz::SegmentPropertiesT, src : HarfBuzz::SegmentPropertiesT) : Nil
    # hb_segment_properties_overlay: (None)
    # @p:
    # @src:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_segment_properties_overlay(p, src)

    # Return value handling
  end

  def self.set_add(set : HarfBuzz::SetT, codepoint : UInt32) : Nil
    # hb_set_add: (None)
    # @set:
    # @codepoint:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_add(set, codepoint)

    # Return value handling
  end

  def self.set_add_range(set : HarfBuzz::SetT, first : UInt32, last : UInt32) : Nil
    # hb_set_add_range: (None)
    # @set:
    # @first:
    # @last:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_add_range(set, first, last)

    # Return value handling
  end

  def self.set_add_sorted_array(set : HarfBuzz::SetT, sorted_codepoints : Enumerable(UInt32)) : Nil
    # hb_set_add_sorted_array: (None)
    # @set:
    # @sorted_codepoints: (array length=num_codepoints element-type UInt32)
    # @num_codepoints:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    num_codepoints = sorted_codepoints.size
    # Generator::ArrayArgPlan
    sorted_codepoints = sorted_codepoints.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    LibHarfBuzz.hb_set_add_sorted_array(set, sorted_codepoints, num_codepoints)

    # Return value handling
  end

  def self.allocation_successful=(set : HarfBuzz::SetT) : Int32
    # hb_set_allocation_successful: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_allocation_successful(set)

    # Return value handling
    _retval
  end

  def self.clear=(set : HarfBuzz::SetT) : Nil
    # hb_set_clear: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_clear(set)

    # Return value handling
  end

  def self.copy=(set : HarfBuzz::SetT) : HarfBuzz::SetT
    # hb_set_copy: (None)
    # @set:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_set_copy(set)

    # Return value handling
    HarfBuzz::SetT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.set_create : HarfBuzz::SetT
    # hb_set_create: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_set_create

    # Return value handling
    HarfBuzz::SetT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.set_del(set : HarfBuzz::SetT, codepoint : UInt32) : Nil
    # hb_set_del: (None)
    # @set:
    # @codepoint:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_del(set, codepoint)

    # Return value handling
  end

  def self.set_del_range(set : HarfBuzz::SetT, first : UInt32, last : UInt32) : Nil
    # hb_set_del_range: (None)
    # @set:
    # @first:
    # @last:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_del_range(set, first, last)

    # Return value handling
  end

  def self.set_get_empty : HarfBuzz::SetT
    # hb_set_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_set_get_empty

    # Return value handling
    HarfBuzz::SetT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.get_max=(set : HarfBuzz::SetT) : UInt32
    # hb_set_get_max: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_get_max(set)

    # Return value handling
    _retval
  end

  def self.get_min=(set : HarfBuzz::SetT) : UInt32
    # hb_set_get_min: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_get_min(set)

    # Return value handling
    _retval
  end

  def self.get_population=(set : HarfBuzz::SetT) : UInt32
    # hb_set_get_population: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_get_population(set)

    # Return value handling
    _retval
  end

  def self.set_has(set : HarfBuzz::SetT, codepoint : UInt32) : Int32
    # hb_set_has: (None)
    # @set:
    # @codepoint:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_has(set, codepoint)

    # Return value handling
    _retval
  end

  def self.hash=(set : HarfBuzz::SetT) : UInt32
    # hb_set_hash: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_hash(set)

    # Return value handling
    _retval
  end

  def self.set_intersect(set : HarfBuzz::SetT, other : HarfBuzz::SetT) : Nil
    # hb_set_intersect: (None)
    # @set:
    # @other:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_intersect(set, other)

    # Return value handling
  end

  def self.invert=(set : HarfBuzz::SetT) : Nil
    # hb_set_invert: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_invert(set)

    # Return value handling
  end

  def self.is_empty=(set : HarfBuzz::SetT) : Int32
    # hb_set_is_empty: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_is_empty(set)

    # Return value handling
    _retval
  end

  def self.set_is_equal(set : HarfBuzz::SetT, other : HarfBuzz::SetT) : Int32
    # hb_set_is_equal: (None)
    # @set:
    # @other:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_is_equal(set, other)

    # Return value handling
    _retval
  end

  def self.is_inverted=(set : HarfBuzz::SetT) : Int32
    # hb_set_is_inverted: (None)
    # @set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_is_inverted(set)

    # Return value handling
    _retval
  end

  def self.set_is_subset(set : HarfBuzz::SetT, larger_set : HarfBuzz::SetT) : Int32
    # hb_set_is_subset: (None)
    # @set:
    # @larger_set:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_is_subset(set, larger_set)

    # Return value handling
    _retval
  end

  def self.set_next(set : HarfBuzz::SetT, codepoint : UInt32) : Int32
    # hb_set_next: (None)
    # @set:
    # @codepoint: (inout) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_next(set, codepoint)

    # Return value handling
    _retval
  end

  def self.set_next_many(set : HarfBuzz::SetT, codepoint : UInt32, out _out : Enumerable(UInt32)) : UInt32
    # hb_set_next_many: (None)
    # @set:
    # @codepoint:
    # @out: (array length=size element-type UInt32)
    # @size:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    size = _out.size
    # Generator::ArrayArgPlan
    _out = _out.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    _retval = LibHarfBuzz.hb_set_next_many(set, codepoint, _out, size)

    # Return value handling
    _retval
  end

  def self.set_next_range(set : HarfBuzz::SetT, first : UInt32, last : UInt32) : Int32
    # hb_set_next_range: (None)
    # @set:
    # @first: (out) (transfer full)
    # @last: (inout) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_next_range(set, first, last)

    # Return value handling
    _retval
  end

  def self.set_previous(set : HarfBuzz::SetT, codepoint : UInt32) : Int32
    # hb_set_previous: (None)
    # @set:
    # @codepoint: (inout) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_previous(set, codepoint)

    # Return value handling
    _retval
  end

  def self.set_previous_range(set : HarfBuzz::SetT, first : UInt32, last : UInt32) : Int32
    # hb_set_previous_range: (None)
    # @set:
    # @first: (inout) (transfer full)
    # @last: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_set_previous_range(set, first, last)

    # Return value handling
    _retval
  end

  def self.set_set(set : HarfBuzz::SetT, other : HarfBuzz::SetT) : Nil
    # hb_set_set: (None)
    # @set:
    # @other:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_set(set, other)

    # Return value handling
  end

  def self.set_subtract(set : HarfBuzz::SetT, other : HarfBuzz::SetT) : Nil
    # hb_set_subtract: (None)
    # @set:
    # @other:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_subtract(set, other)

    # Return value handling
  end

  def self.set_symmetric_difference(set : HarfBuzz::SetT, other : HarfBuzz::SetT) : Nil
    # hb_set_symmetric_difference: (None)
    # @set:
    # @other:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_symmetric_difference(set, other)

    # Return value handling
  end

  def self.set_union(set : HarfBuzz::SetT, other : HarfBuzz::SetT) : Nil
    # hb_set_union: (None)
    # @set:
    # @other:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_set_union(set, other)

    # Return value handling
  end

  def self.shape(font : HarfBuzz::FontT, buffer : HarfBuzz::BufferT, features : Enumerable(HarfBuzz::FeatureT)?) : Nil
    # hb_shape: (None)
    # @font:
    # @buffer:
    # @features: (nullable) (array length=num_features element-type Interface)
    # @num_features:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    num_features = features.try(&.size) || 0
    # Generator::NullableArrayPlan
    features = if features.nil?
                 Pointer(LibHarfBuzz::FeatureT).null
               else
                 features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))
               end

    # C call
    LibHarfBuzz.hb_shape(font, buffer, features, num_features)

    # Return value handling
  end

  def self.shape_full(font : HarfBuzz::FontT, buffer : HarfBuzz::BufferT, features : Enumerable(HarfBuzz::FeatureT)?, shaper_list : Enumerable(::String)?) : Int32
    # hb_shape_full: (None)
    # @font:
    # @buffer:
    # @features: (nullable) (array length=num_features element-type Interface)
    # @num_features:
    # @shaper_list: (nullable) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    num_features = features.try(&.size) || 0
    # Generator::NullableArrayPlan
    features = if features.nil?
                 Pointer(LibHarfBuzz::FeatureT).null
               else
                 features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))
               end
    # Generator::NullableArrayPlan
    shaper_list = if shaper_list.nil?
                    Pointer(Pointer(LibC::Char)).null
                  else
                    shaper_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                  end

    # C call
    _retval = LibHarfBuzz.hb_shape_full(font, buffer, features, num_features, shaper_list)

    # Return value handling
    _retval
  end

  def self.shape_list_shapers : Enumerable(::String)
    # hb_shape_list_shapers: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibHarfBuzz.hb_shape_list_shapers

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.shape_plan_create(face : HarfBuzz::FaceT, props : HarfBuzz::SegmentPropertiesT, user_features : Enumerable(HarfBuzz::FeatureT), shaper_list : Enumerable(::String)) : HarfBuzz::ShapePlanT
    # hb_shape_plan_create: (None)
    # @face:
    # @props:
    # @user_features: (array length=num_user_features element-type Interface)
    # @num_user_features:
    # @shaper_list: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer full)

    # Generator::ArrayLengthArgPlan
    num_user_features = user_features.size
    # Generator::ArrayArgPlan
    user_features = user_features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))
    # Generator::ArrayArgPlan
    shaper_list = shaper_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    _retval = LibHarfBuzz.hb_shape_plan_create(face, props, user_features, num_user_features, shaper_list)

    # Return value handling
    HarfBuzz::ShapePlanT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.shape_plan_create2(face : HarfBuzz::FaceT, props : HarfBuzz::SegmentPropertiesT, user_features : Enumerable(HarfBuzz::FeatureT), coords : Enumerable(Int32), shaper_list : Enumerable(::String)) : HarfBuzz::ShapePlanT
    # hb_shape_plan_create2: (None)
    # @face:
    # @props:
    # @user_features: (array length=num_user_features element-type Interface)
    # @num_user_features:
    # @coords: (array length=num_coords element-type Int32)
    # @num_coords:
    # @shaper_list: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer full)

    # Generator::ArrayLengthArgPlan
    num_user_features = user_features.size
    # Generator::ArrayArgPlan
    user_features = user_features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))
    # Generator::ArrayLengthArgPlan
    num_coords = coords.size
    # Generator::ArrayArgPlan
    coords = coords.to_a.to_unsafe.as(Pointer(Int32))
    # Generator::ArrayArgPlan
    shaper_list = shaper_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    _retval = LibHarfBuzz.hb_shape_plan_create2(face, props, user_features, num_user_features, coords, num_coords, shaper_list)

    # Return value handling
    HarfBuzz::ShapePlanT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.shape_plan_create_cached(face : HarfBuzz::FaceT, props : HarfBuzz::SegmentPropertiesT, user_features : Enumerable(HarfBuzz::FeatureT), shaper_list : Enumerable(::String)) : HarfBuzz::ShapePlanT
    # hb_shape_plan_create_cached: (None)
    # @face:
    # @props:
    # @user_features: (array length=num_user_features element-type Interface)
    # @num_user_features:
    # @shaper_list: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer full)

    # Generator::ArrayLengthArgPlan
    num_user_features = user_features.size
    # Generator::ArrayArgPlan
    user_features = user_features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))
    # Generator::ArrayArgPlan
    shaper_list = shaper_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    _retval = LibHarfBuzz.hb_shape_plan_create_cached(face, props, user_features, num_user_features, shaper_list)

    # Return value handling
    HarfBuzz::ShapePlanT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.shape_plan_create_cached2(face : HarfBuzz::FaceT, props : HarfBuzz::SegmentPropertiesT, user_features : Enumerable(HarfBuzz::FeatureT), coords : Enumerable(Int32), shaper_list : Enumerable(::String)) : HarfBuzz::ShapePlanT
    # hb_shape_plan_create_cached2: (None)
    # @face:
    # @props:
    # @user_features: (array length=num_user_features element-type Interface)
    # @num_user_features:
    # @coords: (array length=num_coords element-type Int32)
    # @num_coords:
    # @shaper_list: (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer full)

    # Generator::ArrayLengthArgPlan
    num_user_features = user_features.size
    # Generator::ArrayArgPlan
    user_features = user_features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))
    # Generator::ArrayLengthArgPlan
    num_coords = coords.size
    # Generator::ArrayArgPlan
    coords = coords.to_a.to_unsafe.as(Pointer(Int32))
    # Generator::ArrayArgPlan
    shaper_list = shaper_list.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    _retval = LibHarfBuzz.hb_shape_plan_create_cached2(face, props, user_features, num_user_features, coords, num_coords, shaper_list)

    # Return value handling
    HarfBuzz::ShapePlanT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.shape_plan_execute(shape_plan : HarfBuzz::ShapePlanT, font : HarfBuzz::FontT, buffer : HarfBuzz::BufferT, features : Enumerable(HarfBuzz::FeatureT)) : Int32
    # hb_shape_plan_execute: (None)
    # @shape_plan:
    # @font:
    # @buffer:
    # @features: (array length=num_features element-type Interface)
    # @num_features:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    num_features = features.size
    # Generator::ArrayArgPlan
    features = features.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibHarfBuzz::FeatureT))

    # C call
    _retval = LibHarfBuzz.hb_shape_plan_execute(shape_plan, font, buffer, features, num_features)

    # Return value handling
    _retval
  end

  def self.shape_plan_get_empty : HarfBuzz::ShapePlanT
    # hb_shape_plan_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_shape_plan_get_empty

    # Return value handling
    HarfBuzz::ShapePlanT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.shape_plan_get_shaper(shape_plan : HarfBuzz::ShapePlanT) : ::String
    # hb_shape_plan_get_shaper: (None)
    # @shape_plan:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_shape_plan_get_shaper(shape_plan)

    # Return value handling
    ::String.new(_retval)
  end

  def self.style_get_value(font : HarfBuzz::FontT, style_tag : HarfBuzz::StyleTagT) : Float32
    # hb_style_get_value: (None)
    # @font:
    # @style_tag:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_style_get_value(font, style_tag)

    # Return value handling
    _retval
  end

  def self.tag_from_string(str : ::Bytes) : UInt32
    # hb_tag_from_string: (None)
    # @str: (array length=len element-type UInt8)
    # @len:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = str.size
    # Generator::ArrayArgPlan
    str = str.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibHarfBuzz.hb_tag_from_string(str, len)

    # Return value handling
    _retval
  end

  def self.tag_from_string(*str : UInt8)
    self.tag_from_string(str)
  end

  def self.tag_to_string(tag : UInt32, buf : ::Bytes) : Nil
    # hb_tag_to_string: (None)
    # @tag:
    # @buf: (out) (caller-allocates) (array fixed-size=4 element-type UInt8)
    # Returns: (transfer none)

    # Generator::ArrayArgPlan
    raise ArgumentError.new("Enumerable of size < 4") if buf.size < 4

    buf = buf.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    LibHarfBuzz.hb_tag_to_string(tag, buf)

    # Return value handling
  end

  def self.unicode_combining_class(ufuncs : HarfBuzz::UnicodeFuncsT, unicode : UInt32) : HarfBuzz::UnicodeCombiningClassT
    # hb_unicode_combining_class: (None)
    # @ufuncs:
    # @unicode:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_combining_class(ufuncs, unicode)

    # Return value handling
    HarfBuzz::UnicodeCombiningClassT.new(_retval)
  end

  def self.unicode_compose(ufuncs : HarfBuzz::UnicodeFuncsT, a : UInt32, b : UInt32, ab : UInt32) : Int32
    # hb_unicode_compose: (None)
    # @ufuncs:
    # @a:
    # @b:
    # @ab: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_compose(ufuncs, a, b, ab)

    # Return value handling
    _retval
  end

  def self.unicode_decompose(ufuncs : HarfBuzz::UnicodeFuncsT, ab : UInt32, a : UInt32, b : UInt32) : Int32
    # hb_unicode_decompose: (None)
    # @ufuncs:
    # @ab:
    # @a: (out) (transfer full)
    # @b: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_decompose(ufuncs, ab, a, b)

    # Return value handling
    _retval
  end

  @[Deprecated]
  def self.unicode_decompose_compatibility(ufuncs : HarfBuzz::UnicodeFuncsT, u : UInt32, decomposed : UInt32) : UInt32
    # hb_unicode_decompose_compatibility: (None)
    # @ufuncs:
    # @u:
    # @decomposed: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_decompose_compatibility(ufuncs, u, decomposed)

    # Return value handling
    _retval
  end

  @[Deprecated]
  def self.unicode_eastasian_width(ufuncs : HarfBuzz::UnicodeFuncsT, unicode : UInt32) : UInt32
    # hb_unicode_eastasian_width: (None)
    # @ufuncs:
    # @unicode:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_eastasian_width(ufuncs, unicode)

    # Return value handling
    _retval
  end

  def self.unicode_funcs_create(parent : HarfBuzz::UnicodeFuncsT?) : HarfBuzz::UnicodeFuncsT
    # hb_unicode_funcs_create: (None)
    # @parent: (nullable)
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    parent = if parent.nil?
               Pointer(Void).null
             else
               parent.to_unsafe
             end

    # C call
    _retval = LibHarfBuzz.hb_unicode_funcs_create(parent)

    # Return value handling
    HarfBuzz::UnicodeFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.unicode_funcs_get_default : HarfBuzz::UnicodeFuncsT
    # hb_unicode_funcs_get_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_funcs_get_default

    # Return value handling
    HarfBuzz::UnicodeFuncsT.new(_retval, GICrystal::Transfer::None)
  end

  def self.unicode_funcs_get_empty : HarfBuzz::UnicodeFuncsT
    # hb_unicode_funcs_get_empty: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_unicode_funcs_get_empty

    # Return value handling
    HarfBuzz::UnicodeFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.unicode_funcs_get_parent(ufuncs : HarfBuzz::UnicodeFuncsT) : HarfBuzz::UnicodeFuncsT
    # hb_unicode_funcs_get_parent: (None)
    # @ufuncs:
    # Returns: (transfer full)

    # C call
    _retval = LibHarfBuzz.hb_unicode_funcs_get_parent(ufuncs)

    # Return value handling
    HarfBuzz::UnicodeFuncsT.new(_retval, GICrystal::Transfer::Full)
  end

  def self.unicode_funcs_is_immutable(ufuncs : HarfBuzz::UnicodeFuncsT) : Int32
    # hb_unicode_funcs_is_immutable: (None)
    # @ufuncs:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_funcs_is_immutable(ufuncs)

    # Return value handling
    _retval
  end

  def self.unicode_funcs_make_immutable(ufuncs : HarfBuzz::UnicodeFuncsT) : Nil
    # hb_unicode_funcs_make_immutable: (None)
    # @ufuncs:
    # Returns: (transfer none)

    # C call
    LibHarfBuzz.hb_unicode_funcs_make_immutable(ufuncs)

    # Return value handling
  end

  def self.unicode_funcs_set_combining_class_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeCombiningClassFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_combining_class_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_combining_class_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.unicode_funcs_set_compose_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeComposeFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_compose_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_compose_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  @[Deprecated]
  def self.unicode_funcs_set_decompose_compatibility_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeDecomposeCompatibilityFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_decompose_compatibility_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_decompose_compatibility_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.unicode_funcs_set_decompose_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeDecomposeFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_decompose_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_decompose_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  @[Deprecated]
  def self.unicode_funcs_set_eastasian_width_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeEastasianWidthFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_eastasian_width_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_eastasian_width_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.unicode_funcs_set_general_category_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeGeneralCategoryFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_general_category_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_general_category_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.unicode_funcs_set_mirroring_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeMirroringFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_mirroring_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_mirroring_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.unicode_funcs_set_script_func(ufuncs : HarfBuzz::UnicodeFuncsT, func : HarfBuzz::UnicodeScriptFuncT, user_data : Pointer(Void)?, destroy : HarfBuzz::DestroyFuncT?) : Nil
    # hb_unicode_funcs_set_script_func: (None)
    # @ufuncs:
    # @func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibHarfBuzz.hb_unicode_funcs_set_script_func(ufuncs, func, user_data, destroy)

    # Return value handling
  end

  def self.unicode_general_category(ufuncs : HarfBuzz::UnicodeFuncsT, unicode : UInt32) : HarfBuzz::UnicodeGeneralCategoryT
    # hb_unicode_general_category: (None)
    # @ufuncs:
    # @unicode:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_general_category(ufuncs, unicode)

    # Return value handling
    HarfBuzz::UnicodeGeneralCategoryT.new(_retval)
  end

  def self.unicode_mirroring(ufuncs : HarfBuzz::UnicodeFuncsT, unicode : UInt32) : UInt32
    # hb_unicode_mirroring: (None)
    # @ufuncs:
    # @unicode:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_mirroring(ufuncs, unicode)

    # Return value handling
    _retval
  end

  def self.unicode_script(ufuncs : HarfBuzz::UnicodeFuncsT, unicode : UInt32) : HarfBuzz::ScriptT
    # hb_unicode_script: (None)
    # @ufuncs:
    # @unicode:
    # Returns: (transfer none)

    # C call
    _retval = LibHarfBuzz.hb_unicode_script(ufuncs, unicode)

    # Return value handling
    HarfBuzz::ScriptT.new(_retval)
  end

  def self.variation_from_string(str : ::Bytes) : HarfBuzz::VariationT
    # hb_variation_from_string: (None)
    # @str: (array length=len element-type UInt8)
    # @len:
    # @variation: (out) (caller-allocates)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    len = str.size
    # Generator::ArrayArgPlan
    str = str.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::CallerAllocatesPlan
    variation = HarfBuzz::VariationT.new
    # C call
    _retval = LibHarfBuzz.hb_variation_from_string(str, len, variation)

    # Return value handling
    variation
  end

  def self.variation_from_string(*str : UInt8)
    self.variation_from_string(str)
  end

  def self.variation_to_string(variation : HarfBuzz::VariationT, buf : Enumerable(::String)) : Nil
    # hb_variation_to_string: (None)
    # @variation:
    # @buf: (out) (caller-allocates) (array length=size element-type Utf8)
    # @size: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    size = buf.size
    # Generator::ArrayArgPlan
    buf = buf.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

    # C call
    LibHarfBuzz.hb_variation_to_string(variation, buf, size)

    # Return value handling
  end

  # Errors

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    Freetype2.gerror_to_crystal?(error, transfer)
    GObject.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end
