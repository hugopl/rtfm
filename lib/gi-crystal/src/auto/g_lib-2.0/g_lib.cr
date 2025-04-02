# Dependencies

# C lib declaration
require "./lib_g_lib.cr"

require "../../bindings/g_lib/error.cr"
require "../../bindings/g_lib/lib_g_lib.cr"

# Wrappers
require "./allocator.cr"
require "./bytes.cr"
require "./cache.cr"
require "./completion.cr"
require "./main_context.cr"
require "./main_loop.cr"
require "./mapped_file.cr"
require "./markup_parse_context.cr"
require "./markup_parser.cr"
require "./mem_chunk.cr"
require "./path_buf.cr"
require "./relation.cr"
require "./source.cr"
require "./source_callback_funcs.cr"
require "./source_funcs.cr"
require "./tuples.cr"
require "./unix_pipe.cr"
require "./variant_builder.cr"
require "./variant_dict.cr"
require "./variant_type.cr"

module GLib
  ALLOCATOR_LIST                  =    1
  ALLOCATOR_NODE                  =    3
  ALLOCATOR_SLIST                 =    2
  ALLOC_AND_FREE                  =    2
  ALLOC_ONLY                      =    1
  ATOMIC_REF_COUNT_INIT           =    1
  MAJOR_VERSION                   =    2
  MICRO_VERSION                   =    0
  MINOR_VERSION                   =   84
  PRIORITY_DEFAULT                =    0
  PRIORITY_DEFAULT_IDLE           =  200
  PRIORITY_HIGH                   = -100
  PRIORITY_HIGH_IDLE              =  100
  PRIORITY_LOW                    =  300
  REF_COUNT_INIT                  =   -1
  SOURCE_CONTINUE                 = true
  SOURCE_REMOVE                   = false
  TEST_OPTION_NONFATAL_ASSERTIONS = "nonfatal-assertions"
  TEST_OPTION_NO_PRGNAME          = "no_g_set_prgname"
  macro__has_attribute_ifunc = 0
  macro__has_attribute_no_sanitize_address = 0

  # Callbacks

  alias CacheDestroyFunc = Proc(Nil)

  alias CacheDupFunc = Proc(Pointer(Void))

  alias CacheNewFunc = Proc(Pointer(Void))

  alias ChildWatchFunc = Proc(Int32, Int32, Nil)

  alias ClearHandleFunc = Proc(UInt32, Nil)

  alias CompareDataFunc = Proc(Pointer(Void), Pointer(Void), Int32)

  alias CompareFunc = Proc(Pointer(Void), Int32)

  alias CompletionFunc = Proc(::String)

  alias CompletionStrncmpFunc = Proc(::String, ::String, UInt64, Int32)

  alias CopyFunc = Proc(Pointer(Void), Pointer(Void))

  alias DataForeachFunc = Proc(UInt32, Pointer(Void), Nil)

  alias DestroyNotify = Proc(Nil)

  alias DuplicateFunc = Proc(Pointer(Void), Pointer(Void))

  alias EqualFunc = Proc(Pointer(Void), Bool)

  alias EqualFuncFull = Proc(Pointer(Void), Pointer(Void), Bool)

  alias ErrorClearFunc = Proc(GLib::Error, Nil)

  alias ErrorInitFunc = Proc(GLib::Error, Nil)

  alias FreeFunc = Proc(Nil)

  alias Func = Proc(Pointer(Void), Nil)

  alias HFunc = Proc(Pointer(Void), Pointer(Void), Nil)

  alias HRFunc = Proc(Pointer(Void), Pointer(Void), Bool)

  alias HashFunc = Proc(UInt32)

  alias HookCheckFunc = Proc(Bool)

  alias OptionArgFunc = Proc(::String, ::String, Bool)

  alias PrintFunc = Proc(::String, Nil)

  alias SourceDisposeFunc = Proc(GLib::Source, Nil)

  alias SourceDummyMarshal = Proc(Nil)

  alias SourceFunc = Proc(Bool)

  alias SourceFuncsCheckFunc = Proc(GLib::Source, Bool)

  alias SourceFuncsFinalizeFunc = Proc(GLib::Source, Nil)

  alias SourceFuncsPrepareFunc = Proc(GLib::Source, Int32, Bool)

  alias SourceOnceFunc = Proc(Nil)

  alias SpawnChildSetupFunc = Proc(Nil)

  alias TestDataFunc = Proc(Nil)

  alias TestFixtureFunc = Proc(Pointer(Void), Nil)

  alias TestFunc = Proc(Nil)

  alias TestLogFatalFunc = Proc(::String, GLib::LogLevelFlags, ::String, Bool)

  alias ThreadFunc = Proc(Pointer(Void))

  alias TranslateFunc = Proc(::String, ::String)

  alias TraverseFunc = Proc(Pointer(Void), Pointer(Void), Bool)

  alias UnixFDSourceFunc = Proc(Int32, GLib::IOCondition, Bool)

  alias VoidFunc = Proc(Nil)

  # Base class for all errors in this module.
  class GLibError < GLib::Error
  end

  # Enums

  enum DateDMY : UInt32
    Day   = 0
    Month = 1
    Year  = 2
  end

  enum DateMonth : UInt32
    BadMonth  =  0
    January   =  1
    February  =  2
    March     =  3
    April     =  4
    May       =  5
    June      =  6
    July      =  7
    August    =  8
    September =  9
    October   = 10
    November  = 11
    December  = 12
  end

  enum DateWeekday : UInt32
    BadWeekday = 0
    Monday     = 1
    Tuesday    = 2
    Wednesday  = 3
    Thursday   = 4
    Friday     = 5
    Saturday   = 6
    Sunday     = 7
  end

  enum ErrorType : UInt32
    Unknown           = 0
    UnexpEof          = 1
    UnexpEofInString  = 2
    UnexpEofInComment = 3
    NonDigitInConst   = 4
    DigitRadix        = 5
    FloatRadix        = 6
    FloatMalformed    = 7
  end

  enum IOError : UInt32
    None    = 0
    Again   = 1
    Inval   = 2
    Unknown = 3
  end

  enum IOStatus : UInt32
    Error  = 0
    Normal = 1
    Eof    = 2
    Again  = 3
  end

  enum LogWriterOutput : UInt32
    Handled   = 1
    Unhandled = 0
  end

  enum NormalizeMode : UInt32
    Default        = 0
    Nfd            = 0
    DefaultCompose = 1
    Nfc            = 1
    All            = 2
    Nfkd           = 2
    AllCompose     = 3
    Nfkc           = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_normalize_mode_get_type
    end
  end

  enum OnceStatus : UInt32
    Notcalled = 0
    Progress  = 1
    Ready     = 2
  end

  enum OptionArg : UInt32
    None          = 0
    String        = 1
    Int           = 2
    Callback      = 3
    Filename      = 4
    StringArray   = 5
    FilenameArray = 6
    Double        = 7
    Int64         = 8
  end

  enum SeekType : UInt32
    Cur = 0
    Set = 1
    End = 2
  end

  enum SliceConfig : UInt32
    AlwaysMalloc      = 1
    BypassMagazines   = 2
    WorkingSetMsecs   = 3
    ColorIncrement    = 4
    ChunkSizes        = 5
    ContentionCounter = 6
  end

  enum TestFileType : UInt32
    Dist  = 0
    Built = 1
  end

  enum TestLogType : UInt32
    None        =  0
    Error       =  1
    StartBinary =  2
    ListCase    =  3
    SkipCase    =  4
    StartCase   =  5
    StopCase    =  6
    MinResult   =  7
    MaxResult   =  8
    Message     =  9
    StartSuite  = 10
    StopSuite   = 11
  end

  enum TestResult : UInt32
    Success    = 0
    Skipped    = 1
    Failure    = 2
    Incomplete = 3
  end

  enum TimeType : UInt32
    Standard  = 0
    Daylight  = 1
    Universal = 2
  end

  enum TokenType : UInt32
    Eof            =   0
    LeftParen      =  40
    RightParen     =  41
    LeftCurly      = 123
    RightCurly     = 125
    LeftBrace      =  91
    RightBrace     =  93
    EqualSign      =  61
    Comma          =  44
    None           = 256
    Error          = 257
    Char           = 258
    Binary         = 259
    Octal          = 260
    Int            = 261
    Hex            = 262
    Float          = 263
    String         = 264
    Symbol         = 265
    Identifier     = 266
    IdentifierNull = 267
    CommentSingle  = 268
    CommentMulti   = 269
  end

  enum TraverseType : UInt32
    InOrder    = 0
    PreOrder   = 1
    PostOrder  = 2
    LevelOrder = 3
  end

  enum UnicodeBreakType : UInt32
    Mandatory                  =  0
    CarriageReturn             =  1
    LineFeed                   =  2
    CombiningMark              =  3
    Surrogate                  =  4
    ZeroWidthSpace             =  5
    Inseparable                =  6
    NonBreakingGlue            =  7
    Contingent                 =  8
    Space                      =  9
    After                      = 10
    Before                     = 11
    BeforeAndAfter             = 12
    Hyphen                     = 13
    NonStarter                 = 14
    OpenPunctuation            = 15
    ClosePunctuation           = 16
    Quotation                  = 17
    Exclamation                = 18
    Ideographic                = 19
    Numeric                    = 20
    InfixSeparator             = 21
    Symbol                     = 22
    Alphabetic                 = 23
    Prefix                     = 24
    Postfix                    = 25
    ComplexContext             = 26
    Ambiguous                  = 27
    Unknown                    = 28
    NextLine                   = 29
    WordJoiner                 = 30
    HangulLJamo                = 31
    HangulVJamo                = 32
    HangulTJamo                = 33
    HangulLvSyllable           = 34
    HangulLvtSyllable          = 35
    CloseParanthesis           = 36
    CloseParenthesis           = 36
    ConditionalJapaneseStarter = 37
    HebrewLetter               = 38
    RegionalIndicator          = 39
    EmojiBase                  = 40
    EmojiModifier              = 41
    ZeroWidthJoiner            = 42
    Aksara                     = 43
    AksaraPreBase              = 44
    AksaraStart                = 45
    ViramaFinal                = 46
    Virama                     = 47

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_unicode_break_type_get_type
    end
  end

  enum UnicodeScript : Int32
    InvalidCode           =  -1
    Common                =   0
    Inherited             =   1
    Arabic                =   2
    Armenian              =   3
    Bengali               =   4
    Bopomofo              =   5
    Cherokee              =   6
    Coptic                =   7
    Cyrillic              =   8
    Deseret               =   9
    Devanagari            =  10
    Ethiopic              =  11
    Georgian              =  12
    Gothic                =  13
    Greek                 =  14
    Gujarati              =  15
    Gurmukhi              =  16
    Han                   =  17
    Hangul                =  18
    Hebrew                =  19
    Hiragana              =  20
    Kannada               =  21
    Katakana              =  22
    Khmer                 =  23
    Lao                   =  24
    Latin                 =  25
    Malayalam             =  26
    Mongolian             =  27
    Myanmar               =  28
    Ogham                 =  29
    OldItalic             =  30
    Oriya                 =  31
    Runic                 =  32
    Sinhala               =  33
    Syriac                =  34
    Tamil                 =  35
    Telugu                =  36
    Thaana                =  37
    Thai                  =  38
    Tibetan               =  39
    CanadianAboriginal    =  40
    Yi                    =  41
    Tagalog               =  42
    Hanunoo               =  43
    Buhid                 =  44
    Tagbanwa              =  45
    Braille               =  46
    Cypriot               =  47
    Limbu                 =  48
    Osmanya               =  49
    Shavian               =  50
    LinearB               =  51
    TaiLe                 =  52
    Ugaritic              =  53
    NewTaiLue             =  54
    Buginese              =  55
    Glagolitic            =  56
    Tifinagh              =  57
    SylotiNagri           =  58
    OldPersian            =  59
    Kharoshthi            =  60
    Unknown               =  61
    Balinese              =  62
    Cuneiform             =  63
    Phoenician            =  64
    PhagsPa               =  65
    Nko                   =  66
    KayahLi               =  67
    Lepcha                =  68
    Rejang                =  69
    Sundanese             =  70
    Saurashtra            =  71
    Cham                  =  72
    OlChiki               =  73
    Vai                   =  74
    Carian                =  75
    Lycian                =  76
    Lydian                =  77
    Avestan               =  78
    Bamum                 =  79
    EgyptianHieroglyphs   =  80
    ImperialAramaic       =  81
    InscriptionalPahlavi  =  82
    InscriptionalParthian =  83
    Javanese              =  84
    Kaithi                =  85
    Lisu                  =  86
    MeeteiMayek           =  87
    OldSouthArabian       =  88
    OldTurkic             =  89
    Samaritan             =  90
    TaiTham               =  91
    TaiViet               =  92
    Batak                 =  93
    Brahmi                =  94
    Mandaic               =  95
    Chakma                =  96
    MeroiticCursive       =  97
    MeroiticHieroglyphs   =  98
    Miao                  =  99
    Sharada               = 100
    SoraSompeng           = 101
    Takri                 = 102
    BassaVah              = 103
    CaucasianAlbanian     = 104
    Duployan              = 105
    Elbasan               = 106
    Grantha               = 107
    Khojki                = 108
    Khudawadi             = 109
    LinearA               = 110
    Mahajani              = 111
    Manichaean            = 112
    MendeKikakui          = 113
    Modi                  = 114
    Mro                   = 115
    Nabataean             = 116
    OldNorthArabian       = 117
    OldPermic             = 118
    PahawhHmong           = 119
    Palmyrene             = 120
    PauCinHau             = 121
    PsalterPahlavi        = 122
    Siddham               = 123
    Tirhuta               = 124
    WarangCiti            = 125
    Ahom                  = 126
    AnatolianHieroglyphs  = 127
    Hatran                = 128
    Multani               = 129
    OldHungarian          = 130
    Signwriting           = 131
    Adlam                 = 132
    Bhaiksuki             = 133
    Marchen               = 134
    Newa                  = 135
    Osage                 = 136
    Tangut                = 137
    MasaramGondi          = 138
    Nushu                 = 139
    Soyombo               = 140
    ZanabazarSquare       = 141
    Dogra                 = 142
    GunjalaGondi          = 143
    HanifiRohingya        = 144
    Makasar               = 145
    Medefaidrin           = 146
    OldSogdian            = 147
    Sogdian               = 148
    Elymaic               = 149
    Nandinagari           = 150
    NyiakengPuachueHmong  = 151
    Wancho                = 152
    Chorasmian            = 153
    DivesAkuru            = 154
    KhitanSmallScript     = 155
    Yezidi                = 156
    CyproMinoan           = 157
    OldUyghur             = 158
    Tangsa                = 159
    Toto                  = 160
    Vithkuqi              = 161
    Math                  = 162
    Kawi                  = 163
    NagMundari            = 164
    Todhri                = 165
    Garay                 = 166
    TuluTigalari          = 167
    Sunuwar               = 168
    GurungKhema           = 169
    KiratRai              = 170
    OlOnal                = 171

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_unicode_script_get_type
    end
  end

  enum UnicodeType : UInt32
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

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_unicode_type_get_type
    end
  end

  enum UnixPipeEnd : UInt32
    Read  = 0
    Write = 1
  end

  enum UserDirectory : UInt32
    DirectoryDesktop     = 0
    DirectoryDocuments   = 1
    DirectoryDownload    = 2
    DirectoryMusic       = 3
    DirectoryPictures    = 4
    DirectoryPublicShare = 5
    DirectoryTemplates   = 6
    DirectoryVideos      = 7
    NDirectories         = 8
  end

  enum VariantClass : UInt32
    Boolean    =  98
    Byte       = 121
    Int16      = 110
    Uint16     = 113
    Int32      = 105
    Uint32     = 117
    Int64      = 120
    Uint64     = 116
    Handle     = 104
    Double     = 100
    String     = 115
    ObjectPath = 111
    Signature  = 103
    Variant    = 118
    Maybe      = 109
    Array      =  97
    Tuple      =  40
    DictEntry  = 123
  end

  # Flags

  @[Flags]
  enum AsciiType : UInt32
    Alnum  =    1
    Alpha  =    2
    Cntrl  =    4
    Digit  =    8
    Graph  =   16
    Lower  =   32
    Print  =   64
    Punct  =  128
    Space  =  256
    Upper  =  512
    Xdigit = 1024
  end

  @[Flags]
  enum FileSetContentsFlags : UInt32
    Consistent   = 1
    Durable      = 2
    OnlyExisting = 4
  end

  @[Flags]
  enum FileTest : UInt32
    IsRegular    =  1
    IsSymlink    =  2
    IsDir        =  4
    IsExecutable =  8
    Exists       = 16
  end

  @[Flags]
  enum FormatSizeFlags : UInt32
    Default    =  0
    LongFormat =  1
    IecUnits   =  2
    Bits       =  4
    OnlyValue  =  8
    OnlyUnit   = 16
  end

  @[Flags]
  enum HookFlagMask : UInt32
    Active =  1
    InCall =  2
    Mask   = 15
  end

  @[Flags]
  enum IOCondition : UInt32
    In   =  1
    Out  =  4
    Pri  =  2
    Err  =  8
    Hup  = 16
    Nval = 32

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_io_condition_get_type
    end
  end

  @[Flags]
  enum IOFlags : UInt32
    Append      =  1
    Nonblock    =  2
    IsReadable  =  4
    IsWritable  =  8
    IsWriteable =  8
    IsSeekable  = 16
    Mask        = 31
    GetMask     = 31
    SetMask     =  3
  end

  @[Flags]
  enum KeyFileFlags : UInt32
    KeepComments     = 1
    KeepTranslations = 2
  end

  @[Flags]
  enum LogLevelFlags : Int32
    FlagRecursion =   1
    FlagFatal     =   2
    LevelError    =   4
    LevelCritical =   8
    LevelWarning  =  16
    LevelMessage  =  32
    LevelInfo     =  64
    LevelDebug    = 128
    LevelMask     =  -4
  end

  @[Flags]
  enum MainContextFlags : UInt32
    OwnerlessPolling = 1
  end

  @[Flags]
  enum MarkupCollectType : UInt32
    Invalid  =     0
    String   =     1
    Strdup   =     2
    Boolean  =     3
    Tristate =     4
    Optional = 65536
  end

  @[Flags]
  enum MarkupParseFlags : UInt32
    DefaultFlags                = 0
    DoNotUseThisUnsupportedFlag = 1
    TreatCdataAsText            = 2
    PrefixErrorPosition         = 4
    IgnoreQualified             = 8
  end

  @[Flags]
  enum OptionFlags : UInt32
    Hidden      =   1
    InMain      =   2
    Reverse     =   4
    NoArg       =   8
    Filename    =  16
    OptionalArg =  32
    Noalias     =  64
    Deprecated  = 128
  end

  @[Flags]
  enum RegexCompileFlags : UInt32
    Default          =        0
    Caseless         =        1
    Multiline        =        2
    Dotall           =        4
    Extended         =        8
    Anchored         =       16
    DollarEndonly    =       32
    Ungreedy         =      512
    Raw              =     2048
    NoAutoCapture    =     4096
    Optimize         =     8192
    Firstline        =   262144
    Dupnames         =   524288
    NewlineCr        =  1048576
    NewlineLf        =  2097152
    NewlineCrlf      =  3145728
    NewlineAnycrlf   =  5242880
    BsrAnycrlf       =  8388608
    JavascriptCompat = 33554432
  end

  @[Flags]
  enum RegexMatchFlags : UInt32
    Default         =         0
    Anchored        =        16
    Notbol          =       128
    Noteol          =       256
    Notempty        =      1024
    Partial         =     32768
    NewlineCr       =   1048576
    NewlineLf       =   2097152
    NewlineCrlf     =   3145728
    NewlineAny      =   4194304
    NewlineAnycrlf  =   5242880
    BsrAnycrlf      =   8388608
    BsrAny          =  16777216
    PartialSoft     =     32768
    PartialHard     = 134217728
    NotemptyAtstart = 268435456
  end

  @[Flags]
  enum SpawnFlags : UInt32
    Default              =    0
    LeaveDescriptorsOpen =    1
    DoNotReapChild       =    2
    SearchPath           =    4
    StdoutToDevNull      =    8
    StderrToDevNull      =   16
    ChildInheritsStdin   =   32
    FileAndArgvZero      =   64
    SearchPathFromEnvp   =  128
    CloexecPipes         =  256
    ChildInheritsStdout  =  512
    ChildInheritsStderr  = 1024
    StdinFromDevNull     = 2048
  end

  @[Flags]
  enum TestSubprocessFlags : UInt32
    Default       = 0
    InheritStdin  = 1
    InheritStdout = 2
    InheritStderr = 4
  end

  @[Flags]
  enum TestTrapFlags : UInt32
    Default       =   0
    SilenceStdout = 128
    SilenceStderr = 256
    InheritStdin  = 512
  end

  @[Flags]
  enum TraverseFlags : UInt32
    Leaves    = 1
    NonLeaves = 2
    Mask      = 3
    Leafs     = 1
    NonLeafs  = 2
  end

  @[Flags]
  enum UriFlags : UInt32
    ParseRelaxed    =   1
    HasPassword     =   2
    HasAuthParams   =   4
    Encoded         =   8
    NonDns          =  16
    EncodedQuery    =  32
    EncodedPath     =  64
    EncodedFragment = 128
    SchemeNormalize = 256
  end

  @[Flags]
  enum UriHideFlags : UInt32
    Userinfo   =  1
    Password   =  2
    AuthParams =  4
    Query      =  8
    Fragment   = 16
  end

  @[Flags]
  enum UriParamsFlags : UInt32
    CaseInsensitive = 1
    WwwForm         = 2
    ParseRelaxed    = 4
  end

  def self.aligned_free_sized(mem : Pointer(Void)?, alignment : UInt64, size : UInt64) : Nil
    # g_aligned_free_sized: (None)
    # @mem: (nullable)
    # @alignment:
    # @size:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    mem = if mem.nil?
            Pointer(Void).null
          else
            mem.to_unsafe
          end

    # C call
    LibGLib.g_aligned_free_sized(mem, alignment, size)

    # Return value handling
  end

  def self.assertion_message_cmpint(domain : ::String, file : ::String, line : Int32, func : ::String, expr : ::String, arg1 : UInt64, cmp : ::String, arg2 : UInt64, numtype : Int8) : Nil
    # g_assertion_message_cmpint: (None)
    # @domain:
    # @file:
    # @line:
    # @func:
    # @expr:
    # @arg1:
    # @cmp:
    # @arg2:
    # @numtype:
    # Returns: (transfer none)

    # C call
    LibGLib.g_assertion_message_cmpint(domain, file, line, func, expr, arg1, cmp, arg2, numtype)

    # Return value handling
  end

  def self.async_queue_new : GLib::AsyncQueue
    # g_async_queue_new: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_async_queue_new

    # Return value handling
    GLib::AsyncQueue.new(_retval, GICrystal::Transfer::Full)
  end

  def self.async_queue_new_full(item_free_func : GLib::DestroyNotify?) : GLib::AsyncQueue
    # g_async_queue_new_full: (None)
    # @item_free_func: (nullable)
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_async_queue_new_full(item_free_func)

    # Return value handling
    GLib::AsyncQueue.new(_retval, GICrystal::Transfer::Full)
  end

  def self.atomic_int_compare_and_exchange_full(atomic : Pointer(Int32), oldval : Int32, newval : Int32, preval : Int32) : Bool
    # g_atomic_int_compare_and_exchange_full: (None)
    # @atomic:
    # @oldval:
    # @newval:
    # @preval: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_atomic_int_compare_and_exchange_full(atomic, oldval, newval, preval)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.atomic_int_exchange(atomic : Pointer(Int32), newval : Int32) : Int32
    # g_atomic_int_exchange: (None)
    # @atomic:
    # @newval:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_atomic_int_exchange(atomic, newval)

    # Return value handling
    _retval
  end

  def self.atomic_pointer_compare_and_exchange_full(atomic : Pointer(Void), oldval : Pointer(Void)?, newval : Pointer(Void)?, preval : Pointer(Void)) : Bool
    # g_atomic_pointer_compare_and_exchange_full: (None)
    # @atomic:
    # @oldval: (nullable)
    # @newval: (nullable)
    # @preval: (out) (transfer full)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    oldval = if oldval.nil?
               Pointer(Void).null
             else
               oldval.to_unsafe
             end
    # Generator::NullableArrayPlan
    newval = if newval.nil?
               Pointer(Void).null
             else
               newval.to_unsafe
             end

    # C call
    _retval = LibGLib.g_atomic_pointer_compare_and_exchange_full(atomic, oldval, newval, preval)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.atomic_pointer_exchange(atomic : Pointer(Void)?, newval : Pointer(Void)?) : Pointer(Void)?
    # g_atomic_pointer_exchange: (None)
    # @atomic: (nullable)
    # @newval: (nullable)
    # Returns: (transfer none) (nullable)

    # Generator::NullableArrayPlan
    atomic = if atomic.nil?
               Pointer(Void).null
             else
               atomic.to_unsafe
             end
    # Generator::NullableArrayPlan
    newval = if newval.nil?
               Pointer(Void).null
             else
               newval.to_unsafe
             end

    # C call
    _retval = LibGLib.g_atomic_pointer_exchange(atomic, newval)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.bit_nth_lsf(mask : UInt64, nth_bit : Int32) : Int32
    # g_bit_nth_lsf: (None)
    # @mask:
    # @nth_bit:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_bit_nth_lsf(mask, nth_bit)

    # Return value handling
    _retval
  end

  def self.bit_nth_msf(mask : UInt64, nth_bit : Int32) : Int32
    # g_bit_nth_msf: (None)
    # @mask:
    # @nth_bit:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_bit_nth_msf(mask, nth_bit)

    # Return value handling
    _retval
  end

  def self.bit_storage(number : UInt64) : UInt32
    # g_bit_storage: (None)
    # @number:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_bit_storage(number)

    # Return value handling
    _retval
  end

  def self.blow_chunks : Nil
    # g_blow_chunks: (None)
    # Returns: (transfer none)

    # C call
    LibGLib.g_blow_chunks

    # Return value handling
  end

  def self.byte_array_append(array : ::Bytes, data : Pointer(UInt8), len : UInt32) : ::Bytes
    # g_byte_array_append: (None)
    # @array: (array element-type UInt8)
    # @data:
    # @len:
    # Returns: (transfer none) (array element-type UInt8)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGLib.g_byte_array_append(array, data, len)

    # Return value handling
    _retval
  end

  def self.byte_array_prepend(array : ::Bytes, data : Pointer(UInt8), len : UInt32) : ::Bytes
    # g_byte_array_prepend: (None)
    # @array: (array element-type UInt8)
    # @data:
    # @len:
    # Returns: (transfer none) (array element-type UInt8)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGLib.g_byte_array_prepend(array, data, len)

    # Return value handling
    _retval
  end

  def self.byte_array_ref(array : ::Bytes) : ::Bytes
    # g_byte_array_ref: (None)
    # @array: (array element-type UInt8)
    # Returns: (transfer full) (array element-type UInt8)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGLib.g_byte_array_ref(array)

    # Return value handling
    _retval
  end

  def self.byte_array_ref(*array : UInt8)
    self.byte_array_ref(array)
  end

  def self.byte_array_remove_index(array : ::Bytes, index_ : UInt32) : ::Bytes
    # g_byte_array_remove_index: (None)
    # @array: (array element-type UInt8)
    # @index_:
    # Returns: (transfer none) (array element-type UInt8)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGLib.g_byte_array_remove_index(array, index_)

    # Return value handling
    _retval
  end

  def self.byte_array_remove_index_fast(array : ::Bytes, index_ : UInt32) : ::Bytes
    # g_byte_array_remove_index_fast: (None)
    # @array: (array element-type UInt8)
    # @index_:
    # Returns: (transfer none) (array element-type UInt8)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGLib.g_byte_array_remove_index_fast(array, index_)

    # Return value handling
    _retval
  end

  def self.byte_array_remove_range(array : ::Bytes, index_ : UInt32, length : UInt32) : ::Bytes
    # g_byte_array_remove_range: (None)
    # @array: (array element-type UInt8)
    # @index_:
    # @length:
    # Returns: (transfer none) (array element-type UInt8)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGLib.g_byte_array_remove_range(array, index_, length)

    # Return value handling
    _retval
  end

  def self.byte_array_set_size(array : ::Bytes, length : UInt32) : ::Bytes
    # g_byte_array_set_size: (None)
    # @array: (array element-type UInt8)
    # @length:
    # Returns: (transfer none) (array element-type UInt8)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    _retval = LibGLib.g_byte_array_set_size(array, length)

    # Return value handling
    _retval
  end

  def self.byte_array_sized_new(reserved_size : UInt32) : ::Bytes
    # g_byte_array_sized_new: (None)
    # @reserved_size:
    # Returns: (transfer full) (array element-type UInt8)

    # C call
    _retval = LibGLib.g_byte_array_sized_new(reserved_size)

    # Return value handling
    _retval
  end

  def self.byte_array_sort(array : ::Bytes, compare_func : GLib::CompareFunc) : Nil
    # g_byte_array_sort: (None)
    # @array: (array element-type UInt8)
    # @compare_func:
    # Returns: (transfer none)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))

    # C call
    LibGLib.g_byte_array_sort(array, compare_func)

    # Return value handling
  end

  def self.byte_array_sort_with_data(array : ::Bytes, compare_func : GLib::CompareDataFunc, user_data : Pointer(Void)?) : Nil
    # g_byte_array_sort_with_data: (None)
    # @array: (array element-type UInt8)
    # @compare_func:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::ArrayArgPlan
    array = array.to_a.to_unsafe.as(Pointer(UInt8))
    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibGLib.g_byte_array_sort_with_data(array, compare_func, user_data)

    # Return value handling
  end

  def self.check_version(required_major : UInt32, required_minor : UInt32, required_micro : UInt32) : ::String?
    # glib_check_version: (None)
    # @required_major:
    # @required_minor:
    # @required_micro:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGLib.glib_check_version(required_major, required_minor, required_micro)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.chmod(filename : ::String, mode : Int32) : Int32
    # g_chmod: (None)
    # @filename:
    # @mode:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_chmod(filename, mode)

    # Return value handling
    _retval
  end

  def self.closefrom(lowfd : Int32) : Int32
    # g_closefrom: (None)
    # @lowfd:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_closefrom(lowfd)

    # Return value handling
    _retval
  end

  def self.creat(filename : ::String, mode : Int32) : Int32
    # g_creat: (None)
    # @filename:
    # @mode:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_creat(filename, mode)

    # Return value handling
    _retval
  end

  def self.datalist_id_remove_multiple(datalist : GLib::Data, keys : Enumerable(UInt32)) : Nil
    # g_datalist_id_remove_multiple: (None)
    # @datalist:
    # @keys: (array length=n_keys element-type UInt32)
    # @n_keys:
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    n_keys = keys.size
    # Generator::ArrayArgPlan
    keys = keys.to_a.to_unsafe.as(Pointer(UInt32))

    # C call
    LibGLib.g_datalist_id_remove_multiple(datalist, keys, n_keys)

    # Return value handling
  end

  def self.error_domain_register(error_type_name : ::String, error_type_private_size : UInt64, error_type_init : GLib::ErrorInitFunc, error_type_copy : GLib::ErrorCopyFunc, error_type_clear : GLib::ErrorClearFunc) : UInt32
    # g_error_domain_register: (None)
    # @error_type_name:
    # @error_type_private_size:
    # @error_type_init:
    # @error_type_copy:
    # @error_type_clear:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_error_domain_register(error_type_name, error_type_private_size, error_type_init, error_type_copy, error_type_clear)

    # Return value handling
    _retval
  end

  def self.error_domain_register_static(error_type_name : ::String, error_type_private_size : UInt64, error_type_init : GLib::ErrorInitFunc, error_type_copy : GLib::ErrorCopyFunc, error_type_clear : GLib::ErrorClearFunc) : UInt32
    # g_error_domain_register_static: (None)
    # @error_type_name:
    # @error_type_private_size:
    # @error_type_init:
    # @error_type_copy:
    # @error_type_clear:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_error_domain_register_static(error_type_name, error_type_private_size, error_type_init, error_type_copy, error_type_clear)

    # Return value handling
    _retval
  end

  def self.fdwalk_set_cloexec(lowfd : Int32) : Int32
    # g_fdwalk_set_cloexec: (None)
    # @lowfd:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_fdwalk_set_cloexec(lowfd)

    # Return value handling
    _retval
  end

  def self.fopen(filename : ::String, mode : ::String) : Pointer(Void)?
    # g_fopen: (None)
    # @filename:
    # @mode:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGLib.g_fopen(filename, mode)

    # Return value handling
    _retval unless _retval.null?
  end

  @[Deprecated]
  def self.format_size_for_display(size : Int64) : ::String
    # g_format_size_for_display: (None)
    # @size:
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_format_size_for_display(size)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.free_sized(mem : Pointer(Void)?, size : UInt64) : Nil
    # g_free_sized: (None)
    # @mem: (nullable)
    # @size:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    mem = if mem.nil?
            Pointer(Void).null
          else
            mem.to_unsafe
          end

    # C call
    LibGLib.g_free_sized(mem, size)

    # Return value handling
  end

  def self.freopen(filename : ::String, mode : ::String, stream : Pointer(Void)?) : Pointer(Void)?
    # g_freopen: (None)
    # @filename:
    # @mode:
    # @stream: (nullable)
    # Returns: (transfer none) (nullable)

    # Generator::NullableArrayPlan
    stream = if stream.nil?
               Pointer(Void).null
             else
               stream.to_unsafe
             end

    # C call
    _retval = LibGLib.g_freopen(filename, mode, stream)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.fsync(fd : Int32) : Int32
    # g_fsync: (None)
    # @fd:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_fsync(fd)

    # Return value handling
    _retval
  end

  def self.application_name : ::String?
    # g_get_application_name: (None)
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGLib.g_get_application_name

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.os_info(key_name : ::String) : ::String?
    # g_get_os_info: (None)
    # @key_name:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGLib.g_get_os_info(key_name)

    # Return value handling
    GICrystal.transfer_full(_retval) unless _retval.null?
  end

  def self.prgname : ::String?
    # g_get_prgname: (None)
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGLib.g_get_prgname

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.system_config_dirs : Enumerable(::String)
    # g_get_system_config_dirs: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Filename)

    # C call
    _retval = LibGLib.g_get_system_config_dirs

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.system_data_dirs : Enumerable(::String)
    # g_get_system_data_dirs: (None)
    # Returns: (transfer none) (array zero-terminated=1 element-type Filename)

    # C call
    _retval = LibGLib.g_get_system_data_dirs

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None)
  end

  def self.user_cache_dir : ::Path
    # g_get_user_cache_dir: (None)
    # Returns: (transfer none) (filename)

    # C call
    _retval = LibGLib.g_get_user_cache_dir

    # Return value handling
    ::Path.new(::String.new(_retval))
  end

  def self.user_config_dir : ::Path
    # g_get_user_config_dir: (None)
    # Returns: (transfer none) (filename)

    # C call
    _retval = LibGLib.g_get_user_config_dir

    # Return value handling
    ::Path.new(::String.new(_retval))
  end

  def self.user_data_dir : ::Path
    # g_get_user_data_dir: (None)
    # Returns: (transfer none) (filename)

    # C call
    _retval = LibGLib.g_get_user_data_dir

    # Return value handling
    ::Path.new(::String.new(_retval))
  end

  def self.user_runtime_dir : ::Path
    # g_get_user_runtime_dir: (None)
    # Returns: (transfer none) (filename)

    # C call
    _retval = LibGLib.g_get_user_runtime_dir

    # Return value handling
    ::Path.new(::String.new(_retval))
  end

  def self.user_special_dir(directory : GLib::UserDirectory) : ::Path?
    # g_get_user_special_dir: (None)
    # @directory:
    # Returns: (transfer none) (filename) (nullable)

    # C call
    _retval = LibGLib.g_get_user_special_dir(directory)

    # Return value handling
    ::Path.new(::String.new(_retval)) unless _retval.null?
  end

  def self.user_state_dir : ::Path
    # g_get_user_state_dir: (None)
    # Returns: (transfer none) (filename)

    # C call
    _retval = LibGLib.g_get_user_state_dir

    # Return value handling
    ::Path.new(::String.new(_retval))
  end

  def self.hash_table_find(hash_table : Pointer(Void), predicate : GLib::HRFunc, user_data : Pointer(Void)?) : Pointer(Void)?
    # g_hash_table_find: (None)
    # @hash_table:
    # @predicate:
    # @user_data: (nullable)
    # Returns: (transfer none) (nullable)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    _retval = LibGLib.g_hash_table_find(hash_table, predicate, user_data)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.hash_table_foreach(hash_table : Pointer(Void), func : GLib::HFunc, user_data : Pointer(Void)?) : Nil
    # g_hash_table_foreach: (None)
    # @hash_table:
    # @func:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibGLib.g_hash_table_foreach(hash_table, func, user_data)

    # Return value handling
  end

  def self.hash_table_foreach_remove(hash_table : Pointer(Void), func : GLib::HRFunc, user_data : Pointer(Void)?) : UInt32
    # g_hash_table_foreach_remove: (None)
    # @hash_table:
    # @func:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    _retval = LibGLib.g_hash_table_foreach_remove(hash_table, func, user_data)

    # Return value handling
    _retval
  end

  def self.hash_table_foreach_steal(hash_table : Pointer(Void), func : GLib::HRFunc, user_data : Pointer(Void)?) : UInt32
    # g_hash_table_foreach_steal: (None)
    # @hash_table:
    # @func:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    _retval = LibGLib.g_hash_table_foreach_steal(hash_table, func, user_data)

    # Return value handling
    _retval
  end

  def self.hash_table_ref(hash_table : Pointer(Void)) : Pointer(Void)
    # g_hash_table_ref: (None)
    # @hash_table:
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_hash_table_ref(hash_table)

    # Return value handling
    _retval
  end

  def self.hook_insert_sorted(hook_list : GLib::HookList, hook : GLib::Hook, func : GLib::HookCompareFunc) : Nil
    # g_hook_insert_sorted: (None)
    # @hook_list:
    # @hook:
    # @func:
    # Returns: (transfer none)

    # C call
    LibGLib.g_hook_insert_sorted(hook_list, hook, func)

    # Return value handling
  end

  def self.idle_remove_by_data(data : Pointer(Void)?) : Bool
    # g_idle_remove_by_data: (None)
    # @data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    data = if data.nil?
             Pointer(Void).null
           else
             data.to_unsafe
           end

    # C call
    _retval = LibGLib.g_idle_remove_by_data(data)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.idle_source_new : GLib::Source
    # g_idle_source_new: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_idle_source_new

    # Return value handling
    GLib::Source.new(_retval, GICrystal::Transfer::Full)
  end

  def self.list_pop_allocator : Nil
    # g_list_pop_allocator: (None)
    # Returns: (transfer none)

    # C call
    LibGLib.g_list_pop_allocator

    # Return value handling
  end

  def self.list_push_allocator(allocator : GLib::Allocator) : Nil
    # g_list_push_allocator: (None)
    # @allocator:
    # Returns: (transfer none)

    # C call
    LibGLib.g_list_push_allocator(allocator)

    # Return value handling
  end

  def self.log_writer_default_set_debug_domains(domains : ::String?) : Nil
    # g_log_writer_default_set_debug_domains: (None)
    # @domains: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    domains = if domains.nil?
                Pointer(LibC::Char).null
              else
                domains.to_unsafe
              end

    # C call
    LibGLib.g_log_writer_default_set_debug_domains(domains)

    # Return value handling
  end

  def self.log_writer_syslog(log_level : GLib::LogLevelFlags, fields : Enumerable(GLib::LogField), user_data : Pointer(Void)?) : GLib::LogWriterOutput
    # g_log_writer_syslog: (None)
    # @log_level:
    # @fields: (array length=n_fields element-type Interface)
    # @n_fields:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::ArrayLengthArgPlan
    n_fields = fields.size
    # Generator::ArrayArgPlan
    fields = fields.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGLib::LogField))
    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    _retval = LibGLib.g_log_writer_syslog(log_level, fields, n_fields, user_data)

    # Return value handling
    GLib::LogWriterOutput.new(_retval)
  end

  def self.lstat(filename : ::String, buf : GLib::StatBuf) : Int32
    # g_lstat: (None)
    # @filename:
    # @buf:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_lstat(filename, buf)

    # Return value handling
    _retval
  end

  def self.main_context_default : GLib::MainContext
    # g_main_context_default: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_main_context_default

    # Return value handling
    GLib::MainContext.new(_retval, GICrystal::Transfer::None)
  end

  def self.main_context_get_thread_default : GLib::MainContext?
    # g_main_context_get_thread_default: (None)
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGLib.g_main_context_get_thread_default

    # Return value handling
    GLib::MainContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.main_context_ref_thread_default : GLib::MainContext
    # g_main_context_ref_thread_default: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_main_context_ref_thread_default

    # Return value handling
    GLib::MainContext.new(_retval, GICrystal::Transfer::Full)
  end

  def self.main_current_source : GLib::Source?
    # g_main_current_source: (None)
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGLib.g_main_current_source

    # Return value handling
    GLib::Source.new(_retval, GICrystal::Transfer::None) unless _retval.null?
  end

  def self.main_depth : Int32
    # g_main_depth: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_main_depth

    # Return value handling
    _retval
  end

  def self.markup_escape_text(text : ::String, length : Int64) : ::String
    # g_markup_escape_text: (None)
    # @text:
    # @length:
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_markup_escape_text(text, length)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.mem_chunk_info : Nil
    # g_mem_chunk_info: (None)
    # Returns: (transfer none)

    # C call
    LibGLib.g_mem_chunk_info

    # Return value handling
  end

  def self.mkdir(filename : ::String, mode : Int32) : Int32
    # g_mkdir: (None)
    # @filename:
    # @mode:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_mkdir(filename, mode)

    # Return value handling
    _retval
  end

  def self.node_pop_allocator : Nil
    # g_node_pop_allocator: (None)
    # Returns: (transfer none)

    # C call
    LibGLib.g_node_pop_allocator

    # Return value handling
  end

  def self.node_push_allocator(allocator : GLib::Allocator) : Nil
    # g_node_push_allocator: (None)
    # @allocator:
    # Returns: (transfer none)

    # C call
    LibGLib.g_node_push_allocator(allocator)

    # Return value handling
  end

  def self.on_error_query(prg_name : ::String) : Nil
    # g_on_error_query: (None)
    # @prg_name:
    # Returns: (transfer none)

    # C call
    LibGLib.g_on_error_query(prg_name)

    # Return value handling
  end

  def self.on_error_stack_trace(prg_name : ::String?) : Nil
    # g_on_error_stack_trace: (None)
    # @prg_name: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    prg_name = if prg_name.nil?
                 Pointer(LibC::Char).null
               else
                 prg_name.to_unsafe
               end

    # C call
    LibGLib.g_on_error_stack_trace(prg_name)

    # Return value handling
  end

  def self.once_init_enter_impl(location : Pointer(UInt64)) : Bool
    # g_once_init_enter_impl: (None)
    # @location:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_once_init_enter_impl(location)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.open(filename : ::String, flags : Int32, mode : Int32) : Int32
    # g_open: (None)
    # @filename:
    # @flags:
    # @mode:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_open(filename, flags, mode)

    # Return value handling
    _retval
  end

  def self.path_buf_equal(v1 : Pointer(Void), v2 : Pointer(Void)) : Bool
    # g_path_buf_equal: (None)
    # @v1:
    # @v2:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_path_buf_equal(v1, v2)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.pointer_bit_lock_and_get(address : Pointer(Void), lock_bit : UInt32) : Nil
    # g_pointer_bit_lock_and_get: (None)
    # @address:
    # @lock_bit:
    # @out_ptr: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::OutArgUsedInReturnPlan
    out_ptr = Pointer(UInt64).null
    # C call
    LibGLib.g_pointer_bit_lock_and_get(address, lock_bit, out_ptr)

    # Return value handling
  end

  def self.pointer_bit_lock_mask_ptr(ptr : Pointer(Void)?, lock_bit : UInt32, set : Bool, preserve_mask : UInt64, preserve_ptr : Pointer(Void)?) : Pointer(Void)?
    # g_pointer_bit_lock_mask_ptr: (None)
    # @ptr: (nullable)
    # @lock_bit:
    # @set:
    # @preserve_mask:
    # @preserve_ptr: (nullable)
    # Returns: (transfer none) (nullable)

    # Generator::NullableArrayPlan
    ptr = if ptr.nil?
            Pointer(Void).null
          else
            ptr.to_unsafe
          end
    # Generator::NullableArrayPlan
    preserve_ptr = if preserve_ptr.nil?
                     Pointer(Void).null
                   else
                     preserve_ptr.to_unsafe
                   end

    # C call
    _retval = LibGLib.g_pointer_bit_lock_mask_ptr(ptr, lock_bit, set, preserve_mask, preserve_ptr)

    # Return value handling
    _retval unless _retval.null?
  end

  def self.pointer_bit_unlock_and_set(address : Pointer(Void), lock_bit : UInt32, ptr : Pointer(Void)?, preserve_mask : UInt64) : Nil
    # g_pointer_bit_unlock_and_set: (None)
    # @address:
    # @lock_bit:
    # @ptr: (nullable)
    # @preserve_mask:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    ptr = if ptr.nil?
            Pointer(Void).null
          else
            ptr.to_unsafe
          end

    # C call
    LibGLib.g_pointer_bit_unlock_and_set(address, lock_bit, ptr, preserve_mask)

    # Return value handling
  end

  @[Deprecated]
  def self.qsort_with_data(pbase : Pointer(Void), total_elems : Int32, size : UInt64, compare_func : GLib::CompareDataFunc, user_data : Pointer(Void)?) : Nil
    # g_qsort_with_data: (None)
    # @pbase:
    # @total_elems:
    # @size:
    # @compare_func:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibGLib.g_qsort_with_data(pbase, total_elems, size, compare_func, user_data)

    # Return value handling
  end

  def self.quark_from_string(string : ::String?) : UInt32
    # g_quark_from_string: (None)
    # @string: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    string = if string.nil?
               Pointer(LibC::Char).null
             else
               string.to_unsafe
             end

    # C call
    _retval = LibGLib.g_quark_from_string(string)

    # Return value handling
    _retval
  end

  def self.quark_to_string(quark : UInt32) : ::String
    # g_quark_to_string: (None)
    # @quark:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_quark_to_string(quark)

    # Return value handling
    ::String.new(_retval)
  end

  def self.quark_try_string(string : ::String?) : UInt32
    # g_quark_try_string: (None)
    # @string: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    string = if string.nil?
               Pointer(LibC::Char).null
             else
               string.to_unsafe
             end

    # C call
    _retval = LibGLib.g_quark_try_string(string)

    # Return value handling
    _retval
  end

  def self.ref_string_equal(str1 : ::String, str2 : ::String) : Bool
    # g_ref_string_equal: (None)
    # @str1:
    # @str2:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_ref_string_equal(str1, str2)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.reload_user_special_dirs_cache : Nil
    # g_reload_user_special_dirs_cache: (None)
    # Returns: (transfer none)

    # C call
    LibGLib.g_reload_user_special_dirs_cache

    # Return value handling
  end

  def self.remove(filename : ::String) : Int32
    # g_remove: (None)
    # @filename:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_remove(filename)

    # Return value handling
    _retval
  end

  def self.rename(oldfilename : ::String, newfilename : ::String) : Int32
    # g_rename: (None)
    # @oldfilename:
    # @newfilename:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_rename(oldfilename, newfilename)

    # Return value handling
    _retval
  end

  def self.sequence_foreach_range(begin _begin : GLib::SequenceIter, end _end : GLib::SequenceIter, func : GLib::Func, user_data : Pointer(Void)?) : Nil
    # g_sequence_foreach_range: (None)
    # @begin:
    # @end:
    # @func:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibGLib.g_sequence_foreach_range(_begin, _end, func, user_data)

    # Return value handling
  end

  def self.sequence_sort_changed(iter : GLib::SequenceIter, cmp_func : GLib::CompareDataFunc, cmp_data : Pointer(Void)?) : Nil
    # g_sequence_sort_changed: (None)
    # @iter:
    # @cmp_func:
    # @cmp_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    cmp_data = if cmp_data.nil?
                 Pointer(Void).null
               else
                 cmp_data.to_unsafe
               end

    # C call
    LibGLib.g_sequence_sort_changed(iter, cmp_func, cmp_data)

    # Return value handling
  end

  def self.sequence_sort_changed_iter(iter : GLib::SequenceIter, iter_cmp : GLib::SequenceIterCompareFunc, cmp_data : Pointer(Void)?) : Nil
    # g_sequence_sort_changed_iter: (None)
    # @iter:
    # @iter_cmp:
    # @cmp_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    cmp_data = if cmp_data.nil?
                 Pointer(Void).null
               else
                 cmp_data.to_unsafe
               end

    # C call
    LibGLib.g_sequence_sort_changed_iter(iter, iter_cmp, cmp_data)

    # Return value handling
  end

  def self.application_name=(application_name : ::String) : Nil
    # g_set_application_name: (None)
    # @application_name:
    # Returns: (transfer none)

    # C call
    LibGLib.g_set_application_name(application_name)

    # Return value handling
  end

  def self.prgname=(prgname : ::String) : Nil
    # g_set_prgname: (None)
    # @prgname:
    # Returns: (transfer none)

    # C call
    LibGLib.g_set_prgname(prgname)

    # Return value handling
  end

  def self.slist_pop_allocator : Nil
    # g_slist_pop_allocator: (None)
    # Returns: (transfer none)

    # C call
    LibGLib.g_slist_pop_allocator

    # Return value handling
  end

  def self.slist_push_allocator(allocator : GLib::Allocator) : Nil
    # g_slist_push_allocator: (None)
    # @allocator:
    # Returns: (transfer none)

    # C call
    LibGLib.g_slist_push_allocator(allocator)

    # Return value handling
  end

  def self.source_remove(tag : UInt32) : Bool
    # g_source_remove: (None)
    # @tag:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_source_remove(tag)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.source_set_name_by_id(tag : UInt32, name : ::String) : Nil
    # g_source_set_name_by_id: (None)
    # @tag:
    # @name:
    # Returns: (transfer none)

    # C call
    LibGLib.g_source_set_name_by_id(tag, name)

    # Return value handling
  end

  def self.spaced_primes_closest(num : UInt32) : UInt32
    # g_spaced_primes_closest: (None)
    # @num:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_spaced_primes_closest(num)

    # Return value handling
    _retval
  end

  def self.stat(filename : ::String, buf : GLib::StatBuf) : Int32
    # g_stat: (None)
    # @filename:
    # @buf:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_stat(filename, buf)

    # Return value handling
    _retval
  end

  def self.strdupv(str_array : Enumerable(::String)?) : Enumerable(::String)?
    # g_strdupv: (None)
    # @str_array: (nullable) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

    # Generator::NullableArrayPlan
    str_array = if str_array.nil?
                  Pointer(Pointer(LibC::Char)).null
                else
                  str_array.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
                end

    # C call
    _retval = LibGLib.g_strdupv(str_array)

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.strdupv(*str_array : ::String)
    self.strdupv(str_array)
  end

  def self.strsplit(string : ::String, delimiter : ::String, max_tokens : Int32) : Enumerable(::String)
    # g_strsplit: (None)
    # @string:
    # @delimiter:
    # @max_tokens:
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibGLib.g_strsplit(string, delimiter, max_tokens)

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
  end

  def self.strsplit_set(string : ::String, delimiters : ::String, max_tokens : Int32) : Enumerable(::String)
    # g_strsplit_set: (None)
    # @string:
    # @delimiters:
    # @max_tokens:
    # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

    # C call
    _retval = LibGLib.g_strsplit_set(string, delimiters, max_tokens)

    # Return value handling
    GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
  end

  def self.test_disable_crash_reporting : Nil
    # g_test_disable_crash_reporting: (None)
    # Returns: (transfer none)

    # C call
    LibGLib.g_test_disable_crash_reporting

    # Return value handling
  end

  def self.test_trap_subprocess_with_envp(test_path : ::String?, envp : Enumerable(::String)?, usec_timeout : UInt64, test_flags : GLib::TestSubprocessFlags) : Nil
    # g_test_trap_subprocess_with_envp: (None)
    # @test_path: (nullable)
    # @envp: (nullable) (array zero-terminated=1 element-type Filename)
    # @usec_timeout:
    # @test_flags:
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    test_path = if test_path.nil?
                  Pointer(LibC::Char).null
                else
                  test_path.to_unsafe
                end
    # Generator::NullableArrayPlan
    envp = if envp.nil?
             Pointer(Pointer(LibC::Char)).null
           else
             envp.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
           end

    # C call
    LibGLib.g_test_trap_subprocess_with_envp(test_path, envp, usec_timeout, test_flags)

    # Return value handling
  end

  def self.timeout_source_new(interval : UInt32) : GLib::Source
    # g_timeout_source_new: (None)
    # @interval:
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_timeout_source_new(interval)

    # Return value handling
    GLib::Source.new(_retval, GICrystal::Transfer::Full)
  end

  def self.timeout_source_new_seconds(interval : UInt32) : GLib::Source
    # g_timeout_source_new_seconds: (None)
    # @interval:
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_timeout_source_new_seconds(interval)

    # Return value handling
    GLib::Source.new(_retval, GICrystal::Transfer::Full)
  end

  def self.utf8_truncate_middle(string : ::String, truncate_length : UInt64) : ::String
    # g_utf8_truncate_middle: (None)
    # @string:
    # @truncate_length:
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_utf8_truncate_middle(string, truncate_length)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.utime(filename : ::String, utb : Pointer(Void)?) : Int32
    # g_utime: (None)
    # @filename:
    # @utb: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    utb = if utb.nil?
            Pointer(Void).null
          else
            utb.to_unsafe
          end

    # C call
    _retval = LibGLib.g_utime(filename, utb)

    # Return value handling
    _retval
  end

  def self.variant_get_gtype : UInt64
    # g_variant_get_gtype: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_get_gtype

    # Return value handling
    _retval
  end

  def self.variant_is_object_path(string : ::String) : Bool
    # g_variant_is_object_path: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_is_object_path(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.variant_is_signature(string : ::String) : Bool
    # g_variant_is_signature: (None)
    # @string:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_is_signature(string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def variant_parse(type : GLib::VariantType?, text : ::String, limit : ::String?, endptr : ::String?) : GLib::Variant
    # g_variant_parse: (Throws)
    # @type: (nullable)
    # @text:
    # @limit: (nullable)
    # @endptr: (nullable)
    # Returns: (transfer full)

    _error = Pointer(LibGLib::Error).null

    # Generator::NullableArrayPlan
    type = if type.nil?
             Pointer(Void).null
           else
             type.to_unsafe
           end
    # Generator::NullableArrayPlan
    limit = if limit.nil?
              Pointer(LibC::Char).null
            else
              limit.to_unsafe
            end
    # Generator::NullableArrayPlan
    endptr = if endptr.nil?
               Pointer(LibC::Char).null
             else
               endptr.to_unsafe
             end

    # C call
    _retval = LibGLib.g_variant_parse(type, text, limit, endptr, pointerof(_error))

    # Error check
    GLib.raise_gerror(_error) unless _error.null?

    # Return value handling
    GLib::Variant.new(_retval, GICrystal::Transfer::Full)
  end

  def self.variant_parse_error_print_context(error : GLib::Error, source_str : ::String) : ::String
    # g_variant_parse_error_print_context: (None)
    # @error:
    # @source_str:
    # Returns: (transfer full)

    # C call
    _retval = LibGLib.g_variant_parse_error_print_context(error, source_str)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.variant_parse_error_quark : UInt32
    # g_variant_parse_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_parse_error_quark

    # Return value handling
    _retval
  end

  @[Deprecated]
  def self.variant_parser_get_error_quark : UInt32
    # g_variant_parser_get_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_parser_get_error_quark

    # Return value handling
    _retval
  end

  def self.variant_type_checked_(type_string : ::String) : GLib::VariantType
    # g_variant_type_checked_: (None)
    # @type_string:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_type_checked_(type_string)

    # Return value handling
    GLib::VariantType.new(_retval, GICrystal::Transfer::None)
  end

  def self.variant_type_string_get_depth_(type_string : ::String) : UInt64
    # g_variant_type_string_get_depth_: (None)
    # @type_string:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_type_string_get_depth_(type_string)

    # Return value handling
    _retval
  end

  def self.variant_type_string_is_valid(type_string : ::String) : Bool
    # g_variant_type_string_is_valid: (None)
    # @type_string:
    # Returns: (transfer none)

    # C call
    _retval = LibGLib.g_variant_type_string_is_valid(type_string)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.variant_type_string_scan(string : ::String, limit : ::String?) : Bool
    # g_variant_type_string_scan: (None)
    # @string:
    # @limit: (nullable)
    # @endptr: (out) (transfer full) (optional)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    limit = if limit.nil?
              Pointer(LibC::Char).null
            else
              limit.to_unsafe
            end
    # Generator::OutArgUsedInReturnPlan
    endptr = Pointer(Pointer(LibC::Char)).null
    # C call
    _retval = LibGLib.g_variant_type_string_scan(string, limit, endptr)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  # Errors

  class BookmarkFileError < GLibError
    class InvalidUri < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidValue < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AppNotRegistered < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UriNotFound < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Read < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownEncoding < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Write < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class FileNotFound < BookmarkFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-bookmark-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class ConvertError < GLibError
    class NoConversion < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class IllegalSequence < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class PartialInput < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadUri < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotAbsolutePath < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoMemory < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class EmbeddedNul < ConvertError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_convert_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class FileError < GLibError
    class Exist < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Isdir < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Acces < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nametoolong < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Noent < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Notdir < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nxio < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nodev < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Rofs < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Txtbsy < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 9, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Fault < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 10, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Loop < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 11, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nospc < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 12, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nomem < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 13, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Mfile < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 14, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nfile < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 15, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Badf < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 16, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Inval < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 17, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Pipe < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 18, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Again < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 19, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Intr < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 20, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Io < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 21, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Perm < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 22, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nosys < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 23, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < FileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 24, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class IOChannelError < GLibError
    class Fbig < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Inval < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Io < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Isdir < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nospc < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nxio < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Overflow < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Pipe < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < IOChannelError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-io-channel-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class KeyFileError < GLibError
    class UnknownEncoding < KeyFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-key-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Parse < KeyFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-key-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotFound < KeyFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-key-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class KeyNotFound < KeyFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-key-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class GroupNotFound < KeyFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-key-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidValue < KeyFileError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-key-file-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class MarkupError < GLibError
    class BadUtf8 < MarkupError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-markup-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Empty < MarkupError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-markup-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Parse < MarkupError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-markup-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownElement < MarkupError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-markup-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownAttribute < MarkupError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-markup-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidContent < MarkupError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-markup-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingAttribute < MarkupError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-markup-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class NumberParserError < GLibError
    class Invalid < NumberParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-number-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class OutOfBounds < NumberParserError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-number-parser-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class OptionError < GLibError
    class UnknownOption < OptionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-option-context-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadValue < OptionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-option-context-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < OptionError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-option-context-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class RegexError < GLibError
    class Compile < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Optimize < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Replace < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Match < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Internal < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class StrayBackslash < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 101, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingControlChar < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 102, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnrecognizedEscape < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 103, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class QuantifiersOutOfOrder < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 104, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class QuantifierTooBig < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 105, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnterminatedCharacterClass < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 106, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidEscapeInCharacterClass < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 107, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class RangeOutOfOrder < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 108, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NothingToRepeat < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 109, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnrecognizedCharacter < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 112, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class PosixNamedClassOutsideClass < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 113, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnmatchedParenthesis < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 114, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InexistentSubpatternReference < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 115, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnterminatedComment < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 118, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ExpressionTooLarge < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 120, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MemoryError < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 121, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class VariableLengthLookbehind < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 125, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MalformedCondition < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 126, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManyConditionalBranches < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 127, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class AssertionExpected < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 128, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownPosixClassName < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 130, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class PosixCollatingElementsNotSupported < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 131, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class HexCodeTooLarge < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 134, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidCondition < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 135, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SingleByteMatchInLookbehind < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 136, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InfiniteLoop < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 140, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingSubpatternNameTerminator < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 142, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class DuplicateSubpatternName < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 143, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MalformedProperty < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 146, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownProperty < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 147, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class SubpatternNameTooLong < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 148, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManySubpatterns < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 149, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidOctalValue < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 151, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManyBranchesInDefine < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 154, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class DefineRepetion < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 155, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InconsistentNewlineOptions < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 156, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingBackReference < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 157, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidRelativeReference < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 158, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BacktrackingControlVerbArgumentForbidden < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 159, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownBacktrackingControlVerb < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 160, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NumberTooBig < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 161, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingSubpatternName < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 162, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingDigit < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 163, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidDataCharacter < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 164, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ExtraSubpatternName < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 165, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BacktrackingControlVerbArgumentRequired < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 166, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidControlChar < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 168, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class MissingName < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 169, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotSupportedInClass < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 171, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooManyForwardReferences < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 172, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NameTooLong < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 175, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CharacterValueTooLarge < RegexError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-regex-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 176, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class ShellError < GLibError
    class BadQuoting < ShellError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-shell-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class EmptyString < ShellError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-shell-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < ShellError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-shell-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class SpawnError < GLibError
    class Fork < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Read < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Chdir < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Acces < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Perm < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TooBig < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class G2big < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Noexec < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nametoolong < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Noent < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nomem < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 9, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Notdir < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 10, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Loop < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 11, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Txtbusy < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 12, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Io < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 13, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Nfile < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 14, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Mfile < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 15, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Inval < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 16, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Isdir < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 17, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Libbad < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 18, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < SpawnError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-exec-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 19, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class ThreadError < GLibError
    class ThreadErrorAgain < ThreadError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g_thread_error")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class UriError < GLibError
    class Failed < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadScheme < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadUser < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadPassword < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadAuthParams < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadHost < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadPort < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadPath < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadQuery < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadFragment < UriError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-uri-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 9, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class VariantParseError < GLibError
    class Failed < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BasicTypeExpected < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CannotInferType < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class DefiniteTypeExpected < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InputNotAtEnd < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidCharacter < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidFormatString < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 6, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidObjectPath < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 7, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidSignature < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 8, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InvalidTypeString < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 9, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NoCommonType < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 10, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NumberOutOfRange < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 11, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NumberTooBig < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 12, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class TypeError < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 13, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnexpectedToken < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 14, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownKeyword < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 15, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnterminatedStringConstant < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 16, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class ValueExpected < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 17, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Recursion < VariantParseError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-variant-parse-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 18, message)
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

    if error_domain == LibGLib.g_quark_try_string("g-bookmark-file-error-quark")
      return BookmarkFileError::InvalidUri.new(error, transfer) if error_code == 0
      return BookmarkFileError::InvalidValue.new(error, transfer) if error_code == 1
      return BookmarkFileError::AppNotRegistered.new(error, transfer) if error_code == 2
      return BookmarkFileError::UriNotFound.new(error, transfer) if error_code == 3
      return BookmarkFileError::Read.new(error, transfer) if error_code == 4
      return BookmarkFileError::UnknownEncoding.new(error, transfer) if error_code == 5
      return BookmarkFileError::Write.new(error, transfer) if error_code == 6
      return BookmarkFileError::FileNotFound.new(error, transfer) if error_code == 7
    end

    if error_domain == LibGLib.g_quark_try_string("g_convert_error")
      return ConvertError::NoConversion.new(error, transfer) if error_code == 0
      return ConvertError::IllegalSequence.new(error, transfer) if error_code == 1
      return ConvertError::Failed.new(error, transfer) if error_code == 2
      return ConvertError::PartialInput.new(error, transfer) if error_code == 3
      return ConvertError::BadUri.new(error, transfer) if error_code == 4
      return ConvertError::NotAbsolutePath.new(error, transfer) if error_code == 5
      return ConvertError::NoMemory.new(error, transfer) if error_code == 6
      return ConvertError::EmbeddedNul.new(error, transfer) if error_code == 7
    end

    if error_domain == LibGLib.g_quark_try_string("g-file-error-quark")
      return FileError::Exist.new(error, transfer) if error_code == 0
      return FileError::Isdir.new(error, transfer) if error_code == 1
      return FileError::Acces.new(error, transfer) if error_code == 2
      return FileError::Nametoolong.new(error, transfer) if error_code == 3
      return FileError::Noent.new(error, transfer) if error_code == 4
      return FileError::Notdir.new(error, transfer) if error_code == 5
      return FileError::Nxio.new(error, transfer) if error_code == 6
      return FileError::Nodev.new(error, transfer) if error_code == 7
      return FileError::Rofs.new(error, transfer) if error_code == 8
      return FileError::Txtbsy.new(error, transfer) if error_code == 9
      return FileError::Fault.new(error, transfer) if error_code == 10
      return FileError::Loop.new(error, transfer) if error_code == 11
      return FileError::Nospc.new(error, transfer) if error_code == 12
      return FileError::Nomem.new(error, transfer) if error_code == 13
      return FileError::Mfile.new(error, transfer) if error_code == 14
      return FileError::Nfile.new(error, transfer) if error_code == 15
      return FileError::Badf.new(error, transfer) if error_code == 16
      return FileError::Inval.new(error, transfer) if error_code == 17
      return FileError::Pipe.new(error, transfer) if error_code == 18
      return FileError::Again.new(error, transfer) if error_code == 19
      return FileError::Intr.new(error, transfer) if error_code == 20
      return FileError::Io.new(error, transfer) if error_code == 21
      return FileError::Perm.new(error, transfer) if error_code == 22
      return FileError::Nosys.new(error, transfer) if error_code == 23
      return FileError::Failed.new(error, transfer) if error_code == 24
    end

    if error_domain == LibGLib.g_quark_try_string("g-io-channel-error-quark")
      return IOChannelError::Fbig.new(error, transfer) if error_code == 0
      return IOChannelError::Inval.new(error, transfer) if error_code == 1
      return IOChannelError::Io.new(error, transfer) if error_code == 2
      return IOChannelError::Isdir.new(error, transfer) if error_code == 3
      return IOChannelError::Nospc.new(error, transfer) if error_code == 4
      return IOChannelError::Nxio.new(error, transfer) if error_code == 5
      return IOChannelError::Overflow.new(error, transfer) if error_code == 6
      return IOChannelError::Pipe.new(error, transfer) if error_code == 7
      return IOChannelError::Failed.new(error, transfer) if error_code == 8
    end

    if error_domain == LibGLib.g_quark_try_string("g-key-file-error-quark")
      return KeyFileError::UnknownEncoding.new(error, transfer) if error_code == 0
      return KeyFileError::Parse.new(error, transfer) if error_code == 1
      return KeyFileError::NotFound.new(error, transfer) if error_code == 2
      return KeyFileError::KeyNotFound.new(error, transfer) if error_code == 3
      return KeyFileError::GroupNotFound.new(error, transfer) if error_code == 4
      return KeyFileError::InvalidValue.new(error, transfer) if error_code == 5
    end

    if error_domain == LibGLib.g_quark_try_string("g-markup-error-quark")
      return MarkupError::BadUtf8.new(error, transfer) if error_code == 0
      return MarkupError::Empty.new(error, transfer) if error_code == 1
      return MarkupError::Parse.new(error, transfer) if error_code == 2
      return MarkupError::UnknownElement.new(error, transfer) if error_code == 3
      return MarkupError::UnknownAttribute.new(error, transfer) if error_code == 4
      return MarkupError::InvalidContent.new(error, transfer) if error_code == 5
      return MarkupError::MissingAttribute.new(error, transfer) if error_code == 6
    end

    if error_domain == LibGLib.g_quark_try_string("g-number-parser-error-quark")
      return NumberParserError::Invalid.new(error, transfer) if error_code == 0
      return NumberParserError::OutOfBounds.new(error, transfer) if error_code == 1
    end

    if error_domain == LibGLib.g_quark_try_string("g-option-context-error-quark")
      return OptionError::UnknownOption.new(error, transfer) if error_code == 0
      return OptionError::BadValue.new(error, transfer) if error_code == 1
      return OptionError::Failed.new(error, transfer) if error_code == 2
    end

    if error_domain == LibGLib.g_quark_try_string("g-regex-error-quark")
      return RegexError::Compile.new(error, transfer) if error_code == 0
      return RegexError::Optimize.new(error, transfer) if error_code == 1
      return RegexError::Replace.new(error, transfer) if error_code == 2
      return RegexError::Match.new(error, transfer) if error_code == 3
      return RegexError::Internal.new(error, transfer) if error_code == 4
      return RegexError::StrayBackslash.new(error, transfer) if error_code == 101
      return RegexError::MissingControlChar.new(error, transfer) if error_code == 102
      return RegexError::UnrecognizedEscape.new(error, transfer) if error_code == 103
      return RegexError::QuantifiersOutOfOrder.new(error, transfer) if error_code == 104
      return RegexError::QuantifierTooBig.new(error, transfer) if error_code == 105
      return RegexError::UnterminatedCharacterClass.new(error, transfer) if error_code == 106
      return RegexError::InvalidEscapeInCharacterClass.new(error, transfer) if error_code == 107
      return RegexError::RangeOutOfOrder.new(error, transfer) if error_code == 108
      return RegexError::NothingToRepeat.new(error, transfer) if error_code == 109
      return RegexError::UnrecognizedCharacter.new(error, transfer) if error_code == 112
      return RegexError::PosixNamedClassOutsideClass.new(error, transfer) if error_code == 113
      return RegexError::UnmatchedParenthesis.new(error, transfer) if error_code == 114
      return RegexError::InexistentSubpatternReference.new(error, transfer) if error_code == 115
      return RegexError::UnterminatedComment.new(error, transfer) if error_code == 118
      return RegexError::ExpressionTooLarge.new(error, transfer) if error_code == 120
      return RegexError::MemoryError.new(error, transfer) if error_code == 121
      return RegexError::VariableLengthLookbehind.new(error, transfer) if error_code == 125
      return RegexError::MalformedCondition.new(error, transfer) if error_code == 126
      return RegexError::TooManyConditionalBranches.new(error, transfer) if error_code == 127
      return RegexError::AssertionExpected.new(error, transfer) if error_code == 128
      return RegexError::UnknownPosixClassName.new(error, transfer) if error_code == 130
      return RegexError::PosixCollatingElementsNotSupported.new(error, transfer) if error_code == 131
      return RegexError::HexCodeTooLarge.new(error, transfer) if error_code == 134
      return RegexError::InvalidCondition.new(error, transfer) if error_code == 135
      return RegexError::SingleByteMatchInLookbehind.new(error, transfer) if error_code == 136
      return RegexError::InfiniteLoop.new(error, transfer) if error_code == 140
      return RegexError::MissingSubpatternNameTerminator.new(error, transfer) if error_code == 142
      return RegexError::DuplicateSubpatternName.new(error, transfer) if error_code == 143
      return RegexError::MalformedProperty.new(error, transfer) if error_code == 146
      return RegexError::UnknownProperty.new(error, transfer) if error_code == 147
      return RegexError::SubpatternNameTooLong.new(error, transfer) if error_code == 148
      return RegexError::TooManySubpatterns.new(error, transfer) if error_code == 149
      return RegexError::InvalidOctalValue.new(error, transfer) if error_code == 151
      return RegexError::TooManyBranchesInDefine.new(error, transfer) if error_code == 154
      return RegexError::DefineRepetion.new(error, transfer) if error_code == 155
      return RegexError::InconsistentNewlineOptions.new(error, transfer) if error_code == 156
      return RegexError::MissingBackReference.new(error, transfer) if error_code == 157
      return RegexError::InvalidRelativeReference.new(error, transfer) if error_code == 158
      return RegexError::BacktrackingControlVerbArgumentForbidden.new(error, transfer) if error_code == 159
      return RegexError::UnknownBacktrackingControlVerb.new(error, transfer) if error_code == 160
      return RegexError::NumberTooBig.new(error, transfer) if error_code == 161
      return RegexError::MissingSubpatternName.new(error, transfer) if error_code == 162
      return RegexError::MissingDigit.new(error, transfer) if error_code == 163
      return RegexError::InvalidDataCharacter.new(error, transfer) if error_code == 164
      return RegexError::ExtraSubpatternName.new(error, transfer) if error_code == 165
      return RegexError::BacktrackingControlVerbArgumentRequired.new(error, transfer) if error_code == 166
      return RegexError::InvalidControlChar.new(error, transfer) if error_code == 168
      return RegexError::MissingName.new(error, transfer) if error_code == 169
      return RegexError::NotSupportedInClass.new(error, transfer) if error_code == 171
      return RegexError::TooManyForwardReferences.new(error, transfer) if error_code == 172
      return RegexError::NameTooLong.new(error, transfer) if error_code == 175
      return RegexError::CharacterValueTooLarge.new(error, transfer) if error_code == 176
    end

    if error_domain == LibGLib.g_quark_try_string("g-shell-error-quark")
      return ShellError::BadQuoting.new(error, transfer) if error_code == 0
      return ShellError::EmptyString.new(error, transfer) if error_code == 1
      return ShellError::Failed.new(error, transfer) if error_code == 2
    end

    if error_domain == LibGLib.g_quark_try_string("g-exec-error-quark")
      return SpawnError::Fork.new(error, transfer) if error_code == 0
      return SpawnError::Read.new(error, transfer) if error_code == 1
      return SpawnError::Chdir.new(error, transfer) if error_code == 2
      return SpawnError::Acces.new(error, transfer) if error_code == 3
      return SpawnError::Perm.new(error, transfer) if error_code == 4
      return SpawnError::TooBig.new(error, transfer) if error_code == 5
      return SpawnError::G2big.new(error, transfer) if error_code == 5
      return SpawnError::Noexec.new(error, transfer) if error_code == 6
      return SpawnError::Nametoolong.new(error, transfer) if error_code == 7
      return SpawnError::Noent.new(error, transfer) if error_code == 8
      return SpawnError::Nomem.new(error, transfer) if error_code == 9
      return SpawnError::Notdir.new(error, transfer) if error_code == 10
      return SpawnError::Loop.new(error, transfer) if error_code == 11
      return SpawnError::Txtbusy.new(error, transfer) if error_code == 12
      return SpawnError::Io.new(error, transfer) if error_code == 13
      return SpawnError::Nfile.new(error, transfer) if error_code == 14
      return SpawnError::Mfile.new(error, transfer) if error_code == 15
      return SpawnError::Inval.new(error, transfer) if error_code == 16
      return SpawnError::Isdir.new(error, transfer) if error_code == 17
      return SpawnError::Libbad.new(error, transfer) if error_code == 18
      return SpawnError::Failed.new(error, transfer) if error_code == 19
    end

    if error_domain == LibGLib.g_quark_try_string("g_thread_error")
      return ThreadError::ThreadErrorAgain.new(error, transfer) if error_code == 0
    end

    if error_domain == LibGLib.g_quark_try_string("g-uri-quark")
      return UriError::Failed.new(error, transfer) if error_code == 0
      return UriError::BadScheme.new(error, transfer) if error_code == 1
      return UriError::BadUser.new(error, transfer) if error_code == 2
      return UriError::BadPassword.new(error, transfer) if error_code == 3
      return UriError::BadAuthParams.new(error, transfer) if error_code == 4
      return UriError::BadHost.new(error, transfer) if error_code == 5
      return UriError::BadPort.new(error, transfer) if error_code == 6
      return UriError::BadPath.new(error, transfer) if error_code == 7
      return UriError::BadQuery.new(error, transfer) if error_code == 8
      return UriError::BadFragment.new(error, transfer) if error_code == 9
    end

    if error_domain == LibGLib.g_quark_try_string("g-variant-parse-error-quark")
      return VariantParseError::Failed.new(error, transfer) if error_code == 0
      return VariantParseError::BasicTypeExpected.new(error, transfer) if error_code == 1
      return VariantParseError::CannotInferType.new(error, transfer) if error_code == 2
      return VariantParseError::DefiniteTypeExpected.new(error, transfer) if error_code == 3
      return VariantParseError::InputNotAtEnd.new(error, transfer) if error_code == 4
      return VariantParseError::InvalidCharacter.new(error, transfer) if error_code == 5
      return VariantParseError::InvalidFormatString.new(error, transfer) if error_code == 6
      return VariantParseError::InvalidObjectPath.new(error, transfer) if error_code == 7
      return VariantParseError::InvalidSignature.new(error, transfer) if error_code == 8
      return VariantParseError::InvalidTypeString.new(error, transfer) if error_code == 9
      return VariantParseError::NoCommonType.new(error, transfer) if error_code == 10
      return VariantParseError::NumberOutOfRange.new(error, transfer) if error_code == 11
      return VariantParseError::NumberTooBig.new(error, transfer) if error_code == 12
      return VariantParseError::TypeError.new(error, transfer) if error_code == 13
      return VariantParseError::UnexpectedToken.new(error, transfer) if error_code == 14
      return VariantParseError::UnknownKeyword.new(error, transfer) if error_code == 15
      return VariantParseError::UnterminatedStringConstant.new(error, transfer) if error_code == 16
      return VariantParseError::ValueExpected.new(error, transfer) if error_code == 17
      return VariantParseError::Recursion.new(error, transfer) if error_code == 18
    end
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../bindings/g_lib/bytes.cr"
require "../../bindings/g_lib/list.cr"
require "../../bindings/g_lib/slist.cr"
require "../../bindings/g_lib/timeout.cr"
require "../../bindings/g_lib/variant.cr"
require "../../bindings/g_lib/variant_dict.cr"
