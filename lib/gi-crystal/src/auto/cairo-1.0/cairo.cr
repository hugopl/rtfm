# Dependencies
require "../g_object-2.0/g_object.cr"

# C lib declaration
require "./lib_cairo.cr"

# Wrappers
require "./context.cr"
require "./device.cr"
require "./font_face.cr"
require "./font_options.cr"
require "./glyph.cr"
require "./matrix.cr"
require "./path.cr"
require "./pattern.cr"
require "./rectangle.cr"
require "./rectangle_int.cr"
require "./region.cr"
require "./scaled_font.cr"
require "./surface.cr"
require "./text_cluster.cr"

module Cairo
  # Callbacks

  # Enums

  enum Status : UInt32
    Success                 =  0
    NoMemory                =  1
    InvalidRestore          =  2
    InvalidPopGroup         =  3
    NoCurrentPoint          =  4
    InvalidMatrix           =  5
    InvalidStatus           =  6
    NullPointer             =  7
    InvalidString           =  8
    InvalidPathData         =  9
    ReadError               = 10
    WriteError              = 11
    SurfaceFinished         = 12
    SurfaceTypeMismatch     = 13
    PatternTypeMismatch     = 14
    InvalidContent          = 15
    InvalidFormat           = 16
    InvalidVisual           = 17
    FileNotFound            = 18
    InvalidDash             = 19
    InvalidDscComment       = 20
    InvalidIndex            = 21
    ClipNotRepresentable    = 22
    TempFileError           = 23
    InvalidStride           = 24
    FontTypeMismatch        = 25
    UserFontImmutable       = 26
    UserFontError           = 27
    NegativeCount           = 28
    InvalidClusters         = 29
    InvalidSlant            = 30
    InvalidWeight           = 31
    InvalidSize             = 32
    UserFontNotImplemented  = 33
    DeviceTypeMismatch      = 34
    DeviceError             = 35
    InvalidMeshConstruction = 36
    DeviceFinished          = 37
    Jbig2GlobalMissing      = 38

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_status_get_type
    end
  end

  enum Content : UInt32
    Color      =  4096
    Alpha      =  8192
    ColorAlpha = 12288

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_content_get_type
    end
  end

  enum Operator : UInt32
    Clear         =  0
    Source        =  1
    Over          =  2
    In            =  3
    Out           =  4
    Atop          =  5
    Dest          =  6
    DestOver      =  7
    DestIn        =  8
    DestOut       =  9
    DestAtop      = 10
    Xor           = 11
    Add           = 12
    Saturate      = 13
    Multiply      = 14
    Screen        = 15
    Overlay       = 16
    Darken        = 17
    Lighten       = 18
    ColorDodge    = 19
    ColorBurn     = 20
    HardLight     = 21
    SoftLight     = 22
    Difference    = 23
    Exclusion     = 24
    HslHue        = 25
    HslSaturation = 26
    HslColor      = 27
    HslLuminosity = 28

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_operator_get_type
    end
  end

  enum Antialias : UInt32
    Default  = 0
    None     = 1
    Gray     = 2
    Subpixel = 3
    Fast     = 4
    Good     = 5
    Best     = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_antialias_get_type
    end
  end

  enum FillRule : UInt32
    Winding = 0
    EvenOdd = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_fill_rule_get_type
    end
  end

  enum LineCap : UInt32
    Butt   = 0
    Round  = 1
    Square = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_line_cap_get_type
    end
  end

  enum LineJoin : UInt32
    Miter = 0
    Round = 1
    Bevel = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_line_join_get_type
    end
  end

  enum TextClusterFlags : UInt32
    Backward = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_text_cluster_flags_get_type
    end
  end

  enum FontSlant : UInt32
    Normal  = 0
    Italic  = 1
    Oblique = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_font_slant_get_type
    end
  end

  enum FontWeight : UInt32
    Normal = 0
    Bold   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_font_weight_get_type
    end
  end

  enum SubpixelOrder : UInt32
    Default = 0
    Rgb     = 1
    Bgr     = 2
    Vrgb    = 3
    Vbgr    = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_subpixel_order_get_type
    end
  end

  enum HintStyle : UInt32
    Default = 0
    None    = 1
    Slight  = 2
    Medium  = 3
    Full    = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_hint_style_get_type
    end
  end

  enum HintMetrics : UInt32
    Default = 0
    Off     = 1
    On      = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_hint_metrics_get_type
    end
  end

  enum FontType : UInt32
    Toy    = 0
    Ft     = 1
    Win32  = 2
    Quartz = 3
    User   = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_font_type_get_type
    end
  end

  enum PathDataType : UInt32
    MoveTo    = 0
    LineTo    = 1
    CurveTo   = 2
    ClosePath = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_path_data_type_get_type
    end
  end

  enum DeviceType : Int32
    Drm     =  0
    Gl      =  1
    Script  =  2
    Xcb     =  3
    Xlib    =  4
    Xml     =  5
    Cogl    =  6
    Win32   =  7
    Invalid = -1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_device_type_get_type
    end
  end

  enum SurfaceType : UInt32
    Image         =  0
    Pdf           =  1
    Ps            =  2
    Xlib          =  3
    Xcb           =  4
    Glitz         =  5
    Quartz        =  6
    Win32         =  7
    Beos          =  8
    Directfb      =  9
    Svg           = 10
    Os2           = 11
    Win32Printing = 12
    QuartzImage   = 13
    Script        = 14
    Qt            = 15
    Recording     = 16
    Vg            = 17
    Gl            = 18
    Drm           = 19
    Tee           = 20
    Xml           = 21
    Skia          = 22
    Subsurface    = 23
    Cogl          = 24

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_surface_type_get_type
    end
  end

  enum Format : Int32
    Invalid  = -1
    Argb32   =  0
    Rgb24    =  1
    A8       =  2
    A1       =  3
    Rgb16565 =  4
    Rgb30    =  5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_format_get_type
    end
  end

  enum PatternType : UInt32
    Solid        = 0
    Surface      = 1
    Linear       = 2
    Radial       = 3
    Mesh         = 4
    RasterSource = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_pattern_type_get_type
    end
  end

  enum Extend : UInt32
    None    = 0
    Repeat  = 1
    Reflect = 2
    Pad     = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_extend_get_type
    end
  end

  enum Filter : UInt32
    Fast     = 0
    Good     = 1
    Best     = 2
    Nearest  = 3
    Bilinear = 4
    Gaussian = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_filter_get_type
    end
  end

  enum RegionOverlap : UInt32
    In   = 0
    Out  = 1
    Part = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibCairo.cairo_gobject_region_overlap_get_type
    end
  end

  # Flags

  def self.image_surface_create : Nil
    # cairo_image_surface_create: (None)
    # Returns: (transfer none)

    # C call
    LibCairo.cairo_image_surface_create

    # Return value handling
  end

  # Errors

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    GObject.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end
