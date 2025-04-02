# Dependencies
require "../gio-2.0/gio.cr"
require "../g_module-2.0/g_module.cr"

# C lib declaration
require "./lib_gdk_pixbuf.cr"

# Wrappers
require "./pixbuf.cr"
require "./pixbuf_animation.cr"
require "./pixbuf_animation_iter.cr"
require "./pixbuf_format.cr"
require "./pixbuf_loader.cr"
require "./pixbuf_module.cr"
require "./pixbuf_module_pattern.cr"
require "./pixbuf_non_anim.cr"
require "./pixbuf_simple_anim.cr"
require "./pixbuf_simple_anim_iter.cr"

module GdkPixbuf
  PIXBUF_MAJOR   =  2
  PIXBUF_MICRO   = 12
  PIXBUF_MINOR   = 42
  PIXBUF_VERSION = "2.42.12"

  # Callbacks

  alias PixbufDestroyNotify = Proc(::Bytes, Nil)

  alias PixbufModuleFillInfoFunc = Proc(GdkPixbuf::PixbufFormat, Nil)

  alias PixbufModuleFillVtableFunc = Proc(GdkPixbuf::PixbufModule, Nil)

  alias PixbufModuleIncrementLoadFunc = Proc(Pointer(Void), ::Bytes, UInt32, Bool)

  alias PixbufModuleLoadAnimationFunc = Proc(GdkPixbuf::PixbufAnimation)

  alias PixbufModuleLoadFunc = Proc(GdkPixbuf::Pixbuf)

  alias PixbufModuleLoadXpmDataFunc = Proc(Enumerable(::String), GdkPixbuf::Pixbuf)

  alias PixbufModulePreparedFunc = Proc(GdkPixbuf::Pixbuf, GdkPixbuf::PixbufAnimation, Nil)

  alias PixbufModuleSaveFunc = Proc(Pointer(Void), GdkPixbuf::Pixbuf, Enumerable(::String)?, Enumerable(::String)?, Bool)

  alias PixbufModuleSaveOptionSupportedFunc = Proc(::String, Bool)

  alias PixbufModuleSizeFunc = Proc(Pointer(Int32), Pointer(Int32), Nil)

  alias PixbufModuleStopLoadFunc = Proc(Bool)

  alias PixbufModuleUpdatedFunc = Proc(GdkPixbuf::Pixbuf, Int32, Int32, Int32, Int32, Nil)

  alias PixbufSaveFunc = Proc(::Bytes, UInt64, GLib::Error, Bool)

  # Base class for all errors in this module.
  class GdkPixbufError < GLib::Error
  end

  # Enums

  enum Colorspace : UInt32
    Rgb = 0

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdkPixbuf.gdk_colorspace_get_type
    end
  end

  enum InterpType : UInt32
    Nearest  = 0
    Tiles    = 1
    Bilinear = 2
    Hyper    = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdkPixbuf.gdk_interp_type_get_type
    end
  end

  enum PixbufAlphaMode : UInt32
    Bilevel = 0
    Full    = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdkPixbuf.gdk_pixbuf_alpha_mode_get_type
    end
  end

  enum PixbufRotation : UInt32
    None             =   0
    Counterclockwise =  90
    Upsidedown       = 180
    Clockwise        = 270

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdkPixbuf.gdk_pixbuf_rotation_get_type
    end
  end

  # Flags

  @[Flags]
  enum PixbufFormatFlags : UInt32
    Writable   = 1
    Scalable   = 2
    Threadsafe = 4
  end

  def self.pixbuf_error_quark : UInt32
    # gdk_pixbuf_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGdkPixbuf.gdk_pixbuf_error_quark

    # Return value handling
    _retval
  end

  # Errors

  class PixbufError < GdkPixbufError
    class CorruptImage < PixbufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-pixbuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class InsufficientMemory < PixbufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-pixbuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class BadOption < PixbufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-pixbuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnknownType < PixbufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-pixbuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnsupportedOperation < PixbufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-pixbuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class Failed < PixbufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-pixbuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 5, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class IncompleteAnimation < PixbufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-pixbuf-error-quark")
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

    if error_domain == LibGLib.g_quark_try_string("gdk-pixbuf-error-quark")
      return PixbufError::CorruptImage.new(error, transfer) if error_code == 0
      return PixbufError::InsufficientMemory.new(error, transfer) if error_code == 1
      return PixbufError::BadOption.new(error, transfer) if error_code == 2
      return PixbufError::UnknownType.new(error, transfer) if error_code == 3
      return PixbufError::UnsupportedOperation.new(error, transfer) if error_code == 4
      return PixbufError::Failed.new(error, transfer) if error_code == 5
      return PixbufError::IncompleteAnimation.new(error, transfer) if error_code == 6
    end

    Gio.gerror_to_crystal?(error, transfer)
    GModule.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end
