# Dependencies
require "../g_lib-2.0/g_lib.cr"

# C lib declaration
require "./lib_g_module.cr"

# Wrappers
require "./module.cr"

module GModule
  MODULE_IMPL_AR    = 7
  MODULE_IMPL_DL    = 1
  MODULE_IMPL_NONE  = 0
  MODULE_IMPL_WIN32 = 3

  # Callbacks

  alias ModuleCheckInit = Proc(GModule::Module, ::String)

  alias ModuleUnload = Proc(GModule::Module, Nil)

  # Base class for all errors in this module.
  class GModuleError < GLib::Error
  end

  # Enums

  # Flags

  @[Flags]
  enum ModuleFlags : UInt32
    Lazy  = 1
    Local = 2
    Mask  = 3
  end

  @[Deprecated]
  def self.module_build_path(directory : ::String?, module_name : ::String) : ::String
    # g_module_build_path: (None)
    # @directory: (nullable)
    # @module_name:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    directory = if directory.nil?
                  Pointer(LibC::Char).null
                else
                  directory.to_unsafe
                end

    # C call
    _retval = LibGModule.g_module_build_path(directory, module_name)

    # Return value handling
    GICrystal.transfer_full(_retval)
  end

  def self.module_error : ::String
    # g_module_error: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGModule.g_module_error

    # Return value handling
    ::String.new(_retval)
  end

  def self.module_error_quark : UInt32
    # g_module_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGModule.g_module_error_quark

    # Return value handling
    _retval
  end

  def self.module_supported : Bool
    # g_module_supported: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGModule.g_module_supported

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  # Errors

  class ModuleError < GModuleError
    class Failed < ModuleError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-module-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CheckFailed < ModuleError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("g-module-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
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

    if error_domain == LibGLib.g_quark_try_string("g-module-error-quark")
      return ModuleError::Failed.new(error, transfer) if error_code == 0
      return ModuleError::CheckFailed.new(error, transfer) if error_code == 1
    end

    GLib.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end
