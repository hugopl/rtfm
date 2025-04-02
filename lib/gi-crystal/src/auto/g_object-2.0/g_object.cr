# Dependencies
require "../g_lib-2.0/g_lib.cr"

# C lib declaration
require "./lib_g_object.cr"

require "../../bindings/g_object/gc.cr"
require "../../bindings/g_object/enum.cr"
require "../../bindings/g_object/lib_g_object.cr"
require "../../bindings/g_object/type.cr"
require "../../bindings/g_object/signal.cr"

# Wrappers
require "./binding.cr"
require "./binding_group.cr"
require "./c_closure.cr"
require "./closure.cr"
require "./closure_notify_data.cr"
require "./enum_class.cr"
require "./enum_value.cr"
require "./flags_class.cr"
require "./flags_value.cr"
require "./initially_unowned.cr"
require "./interface_info.cr"
require "./object.cr"
require "./object_construct_param.cr"
require "./param_spec.cr"
require "./param_spec_pool.cr"
require "./parameter.cr"
require "./signal_group.cr"
require "./signal_invocation_hint.cr"
require "./type_class.cr"
require "./type_fundamental_info.cr"
require "./type_info.cr"
require "./type_instance.cr"
require "./type_interface.cr"
require "./type_module.cr"
require "./type_plugin.cr"
require "./type_plugin_class.cr"
require "./type_query.cr"
require "./type_value_table.cr"

module GObject
  VALUE_COLLECT_FORMAT_MAX_LENGTH = 8

  # Callbacks

  alias BaseFinalizeFunc = Proc(GObject::TypeClass, Nil)

  alias BaseInitFunc = Proc(GObject::TypeClass, Nil)

  alias BindingTransformFunc = Proc(GObject::Binding, GObject::Value, GObject::Value, Bool)

  alias BoxedCopyFunc = Proc(Pointer(Void))

  alias BoxedFreeFunc = Proc(Nil)

  alias Callback = Proc(Nil)

  alias ClassFinalizeFunc = Proc(GObject::TypeClass, Nil)

  alias ClassInitFunc = Proc(GObject::TypeClass, Nil)

  alias ClosureMarshal = Proc(GObject::Closure, GObject::Value?, UInt32, Enumerable(GObject::Value), Pointer(Void), Nil)

  alias ClosureNotify = Proc(Pointer(Void), GObject::Closure, Nil)

  alias InstanceInitFunc = Proc(GObject::TypeInstance, GObject::TypeClass, Nil)

  alias InterfaceFinalizeFunc = Proc(GObject::TypeInterface, Nil)

  alias InterfaceInitFunc = Proc(GObject::TypeInterface, Nil)

  alias ObjectFinalizeFunc = Proc(GObject::Object, Nil)

  alias ObjectGetPropertyFunc = Proc(GObject::Object, UInt32, GObject::Value, GObject::ParamSpec, Nil)

  alias ObjectSetPropertyFunc = Proc(GObject::Object, UInt32, GObject::Value, GObject::ParamSpec, Nil)

  alias SignalAccumulator = Proc(GObject::SignalInvocationHint, GObject::Value, GObject::Value, Bool)

  alias SignalEmissionHook = Proc(GObject::SignalInvocationHint, UInt32, Enumerable(GObject::Value), Bool)

  alias ToggleNotify = Proc(Pointer(Void), GObject::Object, Bool, Nil)

  alias TypeClassCacheFunc = Proc(Pointer(Void), GObject::TypeClass, Bool)

  alias TypeInterfaceCheckFunc = Proc(Pointer(Void), GObject::TypeInterface, Nil)

  alias TypePluginCompleteInterfaceInfo = Proc(GObject::TypePlugin, UInt64, UInt64, GObject::InterfaceInfo, Nil)

  alias TypePluginCompleteTypeInfo = Proc(GObject::TypePlugin, UInt64, GObject::TypeInfo, GObject::TypeValueTable, Nil)

  alias TypePluginUnuse = Proc(GObject::TypePlugin, Nil)

  alias TypePluginUse = Proc(GObject::TypePlugin, Nil)

  alias TypeValueCopyFunc = Proc(GObject::Value, GObject::Value, Nil)

  alias TypeValueFreeFunc = Proc(GObject::Value, Nil)

  alias TypeValueInitFunc = Proc(GObject::Value, Nil)

  alias TypeValuePeekPointerFunc = Proc(GObject::Value, Pointer(Void))

  alias ValueTransform = Proc(GObject::Value, GObject::Value, Nil)

  alias WeakNotify = Proc(Pointer(Void), GObject::Object, Nil)

  # Enums

  # Flags

  @[Flags]
  enum BindingFlags : UInt32
    Default       = 0
    Bidirectional = 1
    SyncCreate    = 2
    InvertBoolean = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGObject.g_binding_flags_get_type
    end
  end

  @[Flags]
  enum ConnectFlags : UInt32
    Default = 0
    After   = 1
    Swapped = 2
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
      LibGObject.g_io_condition_get_type
    end
  end

  @[Flags]
  enum ParamFlags : UInt32
    Readable       =          1
    Writable       =          2
    Readwrite      =          3
    Construct      =          4
    ConstructOnly  =          8
    LaxValidation  =         16
    StaticName     =         32
    Private        =         32
    StaticNick     =         64
    StaticBlurb    =        128
    ExplicitNotify = 1073741824
    Deprecated     = 2147483648
  end

  @[Flags]
  enum SignalFlags : UInt32
    RunFirst            =      1
    RunLast             =      2
    RunCleanup          =      4
    NoRecurse           =      8
    Detailed            =     16
    Action              =     32
    NoHooks             =     64
    MustCollect         =    128
    Deprecated          =    256
    AccumulatorFirstRun = 131072
  end

  @[Flags]
  enum SignalMatchType : UInt32
    Id        =  1
    Detail    =  2
    Closure   =  4
    Func      =  8
    Data      = 16
    Unblocked = 32
  end

  @[Flags]
  enum TypeDebugFlags : UInt32
    Objects       = 1
    Signals       = 2
    InstanceCount = 4
    Mask          = 7
  end

  @[Flags]
  enum TypeFlags : UInt32
    Abstract      =  16
    ValueAbstract =  32
    Final         =  64
    Deprecated    = 128
  end

  @[Flags]
  enum TypeFundamentalFlags : UInt32
    Classed        = 1
    Instantiatable = 2
    Derivable      = 4
    DeepDerivable  = 8
  end

  def self.boxed_type_register_static(name : ::String, boxed_copy : GObject::BoxedCopyFunc, boxed_free : GObject::BoxedFreeFunc) : UInt64
    # g_boxed_type_register_static: (None)
    # @name:
    # @boxed_copy:
    # @boxed_free:
    # Returns: (transfer none)

    # C call
    _retval = LibGObject.g_boxed_type_register_static(name, boxed_copy, boxed_free)

    # Return value handling
    _retval
  end

  def self.param_spec_boolean(name : ::String, nick : ::String?, blurb : ::String?, default_value : Bool, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_boolean: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_boolean(name, nick, blurb, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_char(name : ::String, nick : ::String?, blurb : ::String?, minimum : Int8, maximum : Int8, default_value : Int8, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_char: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_char(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_double(name : ::String, nick : ::String?, blurb : ::String?, minimum : Float64, maximum : Float64, default_value : Float64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_double: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_double(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_enum(name : ::String, nick : ::String?, blurb : ::String?, enum_type : UInt64, default_value : Int32, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_enum: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @enum_type:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_enum(name, nick, blurb, enum_type, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_flags(name : ::String, nick : ::String?, blurb : ::String?, flags_type : UInt64, default_value : UInt32, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_flags: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @flags_type:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_flags(name, nick, blurb, flags_type, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_float(name : ::String, nick : ::String?, blurb : ::String?, minimum : Float32, maximum : Float32, default_value : Float32, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_float: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_float(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_gtype(name : ::String, nick : ::String?, blurb : ::String?, is_a_type : UInt64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_gtype: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @is_a_type:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_gtype(name, nick, blurb, is_a_type, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_int(name : ::String, nick : ::String?, blurb : ::String?, minimum : Int32, maximum : Int32, default_value : Int32, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_int: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_int(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_int64(name : ::String, nick : ::String?, blurb : ::String?, minimum : Int64, maximum : Int64, default_value : Int64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_int64: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_int64(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_long(name : ::String, nick : ::String?, blurb : ::String?, minimum : Int64, maximum : Int64, default_value : Int64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_long: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_long(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_object(name : ::String, nick : ::String?, blurb : ::String?, object_type : UInt64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_object: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @object_type:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_object(name, nick, blurb, object_type, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_param(name : ::String, nick : ::String?, blurb : ::String?, param_type : UInt64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_param: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @param_type:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_param(name, nick, blurb, param_type, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_pointer(name : ::String, nick : ::String?, blurb : ::String?, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_pointer: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_pointer(name, nick, blurb, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_string(name : ::String, nick : ::String?, blurb : ::String?, default_value : ::String?, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_string: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @default_value: (nullable)
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end
    # Generator::NullableArrayPlan
    default_value = if default_value.nil?
                      Pointer(LibC::Char).null
                    else
                      default_value.to_unsafe
                    end

    # C call
    _retval = LibGObject.g_param_spec_string(name, nick, blurb, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_uchar(name : ::String, nick : ::String?, blurb : ::String?, minimum : UInt8, maximum : UInt8, default_value : UInt8, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_uchar: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_uchar(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_uint(name : ::String, nick : ::String?, blurb : ::String?, minimum : UInt32, maximum : UInt32, default_value : UInt32, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_uint: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_uint(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_uint64(name : ::String, nick : ::String?, blurb : ::String?, minimum : UInt64, maximum : UInt64, default_value : UInt64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_uint64: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_uint64(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_ulong(name : ::String, nick : ::String?, blurb : ::String?, minimum : UInt64, maximum : UInt64, default_value : UInt64, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_ulong: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @minimum:
    # @maximum:
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_spec_ulong(name, nick, blurb, minimum, maximum, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_unichar(name : ::String, nick : ::String?, blurb : ::String?, default_value : Char, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_unichar: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @default_value:
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end
    # Generator::BuiltInTypeArgPlan
    default_value = default_value.ord.to_u32

    # C call
    _retval = LibGObject.g_param_spec_unichar(name, nick, blurb, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_spec_variant(name : ::String, nick : ::String?, blurb : ::String?, type : GLib::VariantType, default_value : _?, flags : GObject::ParamFlags) : GObject::ParamSpec
    # g_param_spec_variant: (None)
    # @name:
    # @nick: (nullable)
    # @blurb: (nullable)
    # @type:
    # @default_value: (transfer full) (nullable)
    # @flags:
    # Returns: (transfer full)

    # Generator::NullableArrayPlan
    nick = if nick.nil?
             Pointer(LibC::Char).null
           else
             nick.to_unsafe
           end
    # Generator::NullableArrayPlan
    blurb = if blurb.nil?
              Pointer(LibC::Char).null
            else
              blurb.to_unsafe
            end
    # Generator::HandmadeArgPlan
    default_value = if default_value.nil?
                      Pointer(Void).null
                    elsif !default_value.is_a?(GLib::Variant)
                      GLib::Variant.new(default_value).to_unsafe
                    else
                      default_value.to_unsafe
                    end

    # C call
    _retval = LibGObject.g_param_spec_variant(name, nick, blurb, type, default_value, flags)

    # Return value handling
    GObject::ParamSpec.new(_retval, GICrystal::Transfer::Full)
  end

  def self.param_value_is_valid(pspec : GObject::ParamSpec, value : _) : Bool
    # g_param_value_is_valid: (None)
    # @pspec:
    # @value:
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end

    # C call
    _retval = LibGObject.g_param_value_is_valid(pspec, value)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.signal_override_class_handler(signal_name : ::String, instance_type : UInt64, class_handler : GObject::Callback) : Nil
    # g_signal_override_class_handler: (None)
    # @signal_name:
    # @instance_type:
    # @class_handler:
    # Returns: (transfer none)

    # C call
    LibGObject.g_signal_override_class_handler(signal_name, instance_type, class_handler)

    # Return value handling
  end

  def self.type_class_get(type : UInt64) : GObject::TypeClass
    # g_type_class_get: (None)
    # @type:
    # Returns: (transfer none)

    # C call
    _retval = LibGObject.g_type_class_get(type)

    # Return value handling
    GObject::TypeClass.new(_retval, GICrystal::Transfer::None)
  end

  def self.type_default_interface_get(g_type : UInt64) : GObject::TypeInterface
    # g_type_default_interface_get: (None)
    # @g_type:
    # Returns: (transfer none)

    # C call
    _retval = LibGObject.g_type_default_interface_get(g_type)

    # Return value handling
    GObject::TypeInterface.new(_retval, GICrystal::Transfer::None)
  end

  def self.variant_get_gtype : UInt64
    # g_variant_get_gtype: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGObject.g_variant_get_gtype

    # Return value handling
    _retval
  end

  # Errors

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    GLib.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../bindings/g_object/param_spec.cr"
require "../../bindings/g_object/object.cr"
require "../../bindings/g_object/value.cr"
require "../../bindings/g_object/signal_connection.cr"
require "../../bindings/g_object/gi_crystal.cr"
