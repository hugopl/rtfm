# Dependencies
require "../g_object-2.0/g_object.cr"

# C lib declaration
require "./lib_java_script_core.cr"

# Wrappers
require "./class.cr"
require "./class_v_table.cr"
require "./context.cr"
require "./exception.cr"
require "./value.cr"
require "./virtual_machine.cr"
require "./weak_value.cr"

module JavaScriptCore
  MAJOR_VERSION     =  2
  MICRO_VERSION     =  0
  MINOR_VERSION     = 48
  OPTIONS_USE_DFG   = "useDFGJIT"
  OPTIONS_USE_FTL   = "useFTLJIT"
  OPTIONS_USE_JIT   = "useJIT"
  OPTIONS_USE_LLINT = "useLLInt"

  # Callbacks

  alias ClassDeletePropertyFunction = Proc(JavaScriptCore::Class, JavaScriptCore::Context, Pointer(Void), ::String, Bool)

  alias ClassEnumeratePropertiesFunction = Proc(JavaScriptCore::Class, JavaScriptCore::Context, Enumerable(::String))

  alias ClassGetPropertyFunction = Proc(JavaScriptCore::Class, JavaScriptCore::Context, Pointer(Void), ::String, JavaScriptCore::Value)

  alias ClassHasPropertyFunction = Proc(JavaScriptCore::Class, JavaScriptCore::Context, Pointer(Void), ::String, Bool)

  alias ClassSetPropertyFunction = Proc(JavaScriptCore::Class, JavaScriptCore::Context, Pointer(Void), ::String, JavaScriptCore::Value, Bool)

  alias ExceptionHandler = Proc(JavaScriptCore::Context, JavaScriptCore::Exception, Nil)

  alias Executor = Proc(JavaScriptCore::Value, JavaScriptCore::Value, Nil)

  alias OptionsFunc = Proc(::String, JavaScriptCore::OptionType, ::String?, Bool)

  # Enums

  enum CheckSyntaxMode : UInt32
    Script = 0
    Module = 1
  end

  enum CheckSyntaxResult : UInt32
    Success                  = 0
    RecoverableError         = 1
    IrrecoverableError       = 2
    UnterminatedLiteralError = 3
    OutOfMemoryError         = 4
    StackOverflowError       = 5
  end

  enum OptionType : UInt32
    Boolean     = 0
    Int         = 1
    Uint        = 2
    Size        = 3
    Double      = 4
    String      = 5
    RangeString = 6
  end

  enum TypedArrayType : UInt32
    None         =  0
    Int8         =  1
    Int16        =  2
    Int32        =  3
    Int64        =  4
    Uint8        =  5
    Uint8Clamped =  6
    Uint16       =  7
    Uint32       =  8
    Uint64       =  9
    Float32      = 10
    Float64      = 11
  end

  # Flags

  @[Flags]
  enum ValuePropertyFlags : UInt32
    Configurable = 1
    Enumerable   = 2
    Writable     = 4
  end

  def self.major_version : UInt32
    # jsc_get_major_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_get_major_version

    # Return value handling
    _retval
  end

  def self.micro_version : UInt32
    # jsc_get_micro_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_get_micro_version

    # Return value handling
    _retval
  end

  def self.minor_version : UInt32
    # jsc_get_minor_version: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_get_minor_version

    # Return value handling
    _retval
  end

  def self.options_foreach(function : JavaScriptCore::OptionsFunc, user_data : Pointer(Void)?) : Nil
    # jsc_options_foreach: (None)
    # @function:
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    user_data = if user_data.nil?
                  Pointer(Void).null
                else
                  user_data.to_unsafe
                end

    # C call
    LibJavaScriptCore.jsc_options_foreach(function, user_data)

    # Return value handling
  end

  def self.options_get_boolean(option : ::String, value : Bool) : Bool
    # jsc_options_get_boolean: (None)
    # @option:
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_boolean(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_get_double(option : ::String, value : Float64) : Bool
    # jsc_options_get_double: (None)
    # @option:
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_double(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_get_int(option : ::String, value : Int32) : Bool
    # jsc_options_get_int: (None)
    # @option:
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_int(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_get_option_group : GLib::OptionGroup
    # jsc_options_get_option_group: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_option_group

    # Return value handling
    GLib::OptionGroup.new(_retval, GICrystal::Transfer::Full)
  end

  def self.options_get_range_string(option : ::String, value : ::String) : Bool
    # jsc_options_get_range_string: (None)
    # @option:
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_range_string(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_get_size(option : ::String, value : UInt64) : Bool
    # jsc_options_get_size: (None)
    # @option:
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_size(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_get_string(option : ::String, value : ::String) : Bool
    # jsc_options_get_string: (None)
    # @option:
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_string(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_get_uint(option : ::String, value : UInt32) : Bool
    # jsc_options_get_uint: (None)
    # @option:
    # @value: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_get_uint(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_set_boolean(option : ::String, value : Bool) : Bool
    # jsc_options_set_boolean: (None)
    # @option:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_set_boolean(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_set_double(option : ::String, value : Float64) : Bool
    # jsc_options_set_double: (None)
    # @option:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_set_double(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_set_int(option : ::String, value : Int32) : Bool
    # jsc_options_set_int: (None)
    # @option:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_set_int(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_set_range_string(option : ::String, value : ::String) : Bool
    # jsc_options_set_range_string: (None)
    # @option:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_set_range_string(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_set_size(option : ::String, value : UInt64) : Bool
    # jsc_options_set_size: (None)
    # @option:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_set_size(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_set_string(option : ::String, value : ::String) : Bool
    # jsc_options_set_string: (None)
    # @option:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_set_string(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.options_set_uint(option : ::String, value : UInt32) : Bool
    # jsc_options_set_uint: (None)
    # @option:
    # @value:
    # Returns: (transfer none)

    # C call
    _retval = LibJavaScriptCore.jsc_options_set_uint(option, value)

    # Return value handling
    GICrystal.to_bool(_retval)
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
