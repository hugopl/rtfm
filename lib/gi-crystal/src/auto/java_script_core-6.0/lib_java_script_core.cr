@[Link("javascriptcoregtk-6.0", pkg_config: "javascriptcoregtk-6.0")]
lib LibJavaScriptCore
  # Flags
  type ValuePropertyFlags = UInt32

  # Enums
  type CheckSyntaxMode = UInt32
  type CheckSyntaxResult = UInt32
  type OptionType = UInt32
  type TypedArrayType = UInt32

  # Callbacks
  alias ClassDeletePropertyFunction = Pointer(LibJavaScriptCore::Class), Pointer(LibJavaScriptCore::Context), Pointer(Void), Pointer(LibC::Char) -> LibC::Int
  alias ClassEnumeratePropertiesFunction = Pointer(LibJavaScriptCore::Class), Pointer(LibJavaScriptCore::Context), Pointer(Void) -> Pointer(Pointer(LibC::Char))
  alias ClassGetPropertyFunction = Pointer(LibJavaScriptCore::Class), Pointer(LibJavaScriptCore::Context), Pointer(Void), Pointer(LibC::Char) -> Pointer(LibJavaScriptCore::Value)
  alias ClassHasPropertyFunction = Pointer(LibJavaScriptCore::Class), Pointer(LibJavaScriptCore::Context), Pointer(Void), Pointer(LibC::Char) -> LibC::Int
  alias ClassSetPropertyFunction = Pointer(LibJavaScriptCore::Class), Pointer(LibJavaScriptCore::Context), Pointer(Void), Pointer(LibC::Char), Pointer(LibJavaScriptCore::Value) -> LibC::Int
  alias ExceptionHandler = Pointer(LibJavaScriptCore::Context), Pointer(LibJavaScriptCore::Exception), Pointer(Void) -> Void
  alias Executor = Pointer(LibJavaScriptCore::Value), Pointer(LibJavaScriptCore::Value), Pointer(Void) -> Void
  alias OptionsFunc = Pointer(LibC::Char), UInt32, Pointer(LibC::Char), Pointer(Void) -> LibC::Int

  # Interface types

  # Structs

  struct ClassClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ClassVTable # 104 bytes long
    get_property : Void*
    set_property : Void*
    has_property : Void*
    delete_property : Void*
    enumerate_properties : Void*
    _jsc_reserved0 : Pointer(Void)
    _jsc_reserved1 : Pointer(Void)
    _jsc_reserved2 : Pointer(Void)
    _jsc_reserved3 : Pointer(Void)
    _jsc_reserved4 : Pointer(Void)
    _jsc_reserved5 : Pointer(Void)
    _jsc_reserved6 : Pointer(Void)
    _jsc_reserved7 : Pointer(Void)
  end

  struct ContextClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ExceptionClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct ValueClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct VirtualMachineClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  struct WeakValueClass # 136 bytes long
    parent_class : LibGObject::ObjectClass
  end

  # Unions

  # Objects
  type Class = Void # Object struct with no fields

  type Context = Void # Object struct with no fields

  type Exception = Void # Object struct with no fields

  type Value = Void # Object struct with no fields

  type VirtualMachine = Void # Object struct with no fields

  type WeakValue = Void # Object struct with no fields

  # All C Functions
  fun jsc_class_add_constructor_variadic(this : Void*, name : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy_notify : Void*, return_type : UInt64) : Pointer(Void)
  fun jsc_class_add_constructorv(this : Void*, name : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy_notify : Void*, return_type : UInt64, n_parameters : UInt32, parameter_types : Pointer(UInt64)) : Pointer(Void)
  fun jsc_class_add_method_variadic(this : Void*, name : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy_notify : Void*, return_type : UInt64) : Void
  fun jsc_class_add_methodv(this : Void*, name : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy_notify : Void*, return_type : UInt64, n_parameters : UInt32, parameter_types : Pointer(UInt64)) : Void
  fun jsc_class_add_property(this : Void*, name : Pointer(LibC::Char), property_type : UInt64, getter : Void*, setter : Void*, user_data : Pointer(Void), destroy_notify : Void*) : Void
  fun jsc_class_get_name(this : Void*) : Pointer(LibC::Char)
  fun jsc_class_get_parent(this : Void*) : Pointer(Void)
  fun jsc_class_get_type : UInt64
  fun jsc_context_check_syntax(this : Void*, code : Pointer(LibC::Char), length : Int64, mode : UInt32, uri : Pointer(LibC::Char), line_number : UInt32, exception : Pointer(Pointer(Void))) : UInt32
  fun jsc_context_clear_exception(this : Void*) : Void
  fun jsc_context_evaluate(this : Void*, code : Pointer(LibC::Char), length : Int64) : Pointer(Void)
  fun jsc_context_evaluate_in_object(this : Void*, code : Pointer(LibC::Char), length : Int64, object_instance : Pointer(Void), object_class : Pointer(Void), uri : Pointer(LibC::Char), line_number : UInt32, object : Pointer(Pointer(Void))) : Pointer(Void)
  fun jsc_context_evaluate_with_source_uri(this : Void*, code : Pointer(LibC::Char), length : Int64, uri : Pointer(LibC::Char), line_number : UInt32) : Pointer(Void)
  fun jsc_context_get_current : Pointer(Void)
  fun jsc_context_get_exception(this : Void*) : Pointer(Void)
  fun jsc_context_get_global_object(this : Void*) : Pointer(Void)
  fun jsc_context_get_type : UInt64
  fun jsc_context_get_value(this : Void*, name : Pointer(LibC::Char)) : Pointer(Void)
  fun jsc_context_get_virtual_machine(this : Void*) : Pointer(Void)
  fun jsc_context_new : Pointer(Void)
  fun jsc_context_new_with_virtual_machine(vm : Pointer(Void)) : Pointer(Void)
  fun jsc_context_pop_exception_handler(this : Void*) : Void
  fun jsc_context_push_exception_handler(this : Void*, handler : Void*, user_data : Pointer(Void), destroy_notify : Void*) : Void
  fun jsc_context_register_class(this : Void*, name : Pointer(LibC::Char), parent_class : Pointer(Void), vtable : Pointer(Void), destroy_notify : Void*) : Pointer(Void)
  fun jsc_context_set_value(this : Void*, name : Pointer(LibC::Char), value : Pointer(Void)) : Void
  fun jsc_context_throw(this : Void*, error_message : Pointer(LibC::Char)) : Void
  fun jsc_context_throw_exception(this : Void*, exception : Pointer(Void)) : Void
  fun jsc_context_throw_with_name(this : Void*, error_name : Pointer(LibC::Char), error_message : Pointer(LibC::Char)) : Void
  fun jsc_exception_get_backtrace_string(this : Void*) : Pointer(LibC::Char)
  fun jsc_exception_get_column_number(this : Void*) : UInt32
  fun jsc_exception_get_line_number(this : Void*) : UInt32
  fun jsc_exception_get_message(this : Void*) : Pointer(LibC::Char)
  fun jsc_exception_get_name(this : Void*) : Pointer(LibC::Char)
  fun jsc_exception_get_source_uri(this : Void*) : Pointer(LibC::Char)
  fun jsc_exception_get_type : UInt64
  fun jsc_exception_new(context : Pointer(Void), message : Pointer(LibC::Char)) : Pointer(Void)
  fun jsc_exception_new_with_name(context : Pointer(Void), name : Pointer(LibC::Char), message : Pointer(LibC::Char)) : Pointer(Void)
  fun jsc_exception_report(this : Void*) : Pointer(LibC::Char)
  fun jsc_exception_to_string(this : Void*) : Pointer(LibC::Char)
  fun jsc_get_major_version : UInt32
  fun jsc_get_micro_version : UInt32
  fun jsc_get_minor_version : UInt32
  fun jsc_options_foreach(function : Void*, user_data : Pointer(Void)) : Void
  fun jsc_options_get_boolean(option : Pointer(LibC::Char), value : Pointer(LibC::Int)) : LibC::Int
  fun jsc_options_get_double(option : Pointer(LibC::Char), value : Pointer(Float64)) : LibC::Int
  fun jsc_options_get_int(option : Pointer(LibC::Char), value : Pointer(Int32)) : LibC::Int
  fun jsc_options_get_option_group : Pointer(Void)
  fun jsc_options_get_range_string(option : Pointer(LibC::Char), value : Pointer(Pointer(LibC::Char))) : LibC::Int
  fun jsc_options_get_size(option : Pointer(LibC::Char), value : Pointer(UInt64)) : LibC::Int
  fun jsc_options_get_string(option : Pointer(LibC::Char), value : Pointer(Pointer(LibC::Char))) : LibC::Int
  fun jsc_options_get_uint(option : Pointer(LibC::Char), value : Pointer(UInt32)) : LibC::Int
  fun jsc_options_set_boolean(option : Pointer(LibC::Char), value : LibC::Int) : LibC::Int
  fun jsc_options_set_double(option : Pointer(LibC::Char), value : Float64) : LibC::Int
  fun jsc_options_set_int(option : Pointer(LibC::Char), value : Int32) : LibC::Int
  fun jsc_options_set_range_string(option : Pointer(LibC::Char), value : Pointer(LibC::Char)) : LibC::Int
  fun jsc_options_set_size(option : Pointer(LibC::Char), value : UInt64) : LibC::Int
  fun jsc_options_set_string(option : Pointer(LibC::Char), value : Pointer(LibC::Char)) : LibC::Int
  fun jsc_options_set_uint(option : Pointer(LibC::Char), value : UInt32) : LibC::Int
  fun jsc_value_array_buffer_get_data(this : Void*, size : Pointer(UInt64)) : Pointer(Void)
  fun jsc_value_array_buffer_get_size(this : Void*) : UInt64
  fun jsc_value_constructor_callv(this : Void*, n_parameters : UInt32, parameters : Pointer(LibJavaScriptCore::Value)) : Pointer(Void)
  fun jsc_value_function_callv(this : Void*, n_parameters : UInt32, parameters : Pointer(LibJavaScriptCore::Value)) : Pointer(Void)
  fun jsc_value_get_context(this : Void*) : Pointer(Void)
  fun jsc_value_get_type : UInt64
  fun jsc_value_is_array(this : Void*) : LibC::Int
  fun jsc_value_is_array_buffer(this : Void*) : LibC::Int
  fun jsc_value_is_boolean(this : Void*) : LibC::Int
  fun jsc_value_is_constructor(this : Void*) : LibC::Int
  fun jsc_value_is_function(this : Void*) : LibC::Int
  fun jsc_value_is_null(this : Void*) : LibC::Int
  fun jsc_value_is_number(this : Void*) : LibC::Int
  fun jsc_value_is_object(this : Void*) : LibC::Int
  fun jsc_value_is_string(this : Void*) : LibC::Int
  fun jsc_value_is_typed_array(this : Void*) : LibC::Int
  fun jsc_value_is_undefined(this : Void*) : LibC::Int
  fun jsc_value_new_array_buffer(context : Pointer(Void), data : Pointer(Void), size : UInt64, destroy_notify : Void*, user_data : Pointer(Void)) : Pointer(Void)
  fun jsc_value_new_array_from_garray(context : Pointer(Void), array : Pointer(LibJavaScriptCore::Value)) : Pointer(Void)
  fun jsc_value_new_array_from_strv(context : Pointer(Void), strv : Pointer(Pointer(LibC::Char))) : Pointer(Void)
  fun jsc_value_new_boolean(context : Pointer(Void), value : LibC::Int) : Pointer(Void)
  fun jsc_value_new_from_json(context : Pointer(Void), json : Pointer(LibC::Char)) : Pointer(Void)
  fun jsc_value_new_function_variadic(context : Pointer(Void), name : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy_notify : Void*, return_type : UInt64) : Pointer(Void)
  fun jsc_value_new_functionv(context : Pointer(Void), name : Pointer(LibC::Char), callback : Void*, user_data : Pointer(Void), destroy_notify : Void*, return_type : UInt64, n_parameters : UInt32, parameter_types : Pointer(UInt64)) : Pointer(Void)
  fun jsc_value_new_null(context : Pointer(Void)) : Pointer(Void)
  fun jsc_value_new_number(context : Pointer(Void), number : Float64) : Pointer(Void)
  fun jsc_value_new_object(context : Pointer(Void), instance : Pointer(Void), jsc_class : Pointer(Void)) : Pointer(Void)
  fun jsc_value_new_promise(context : Pointer(Void), executor : Void*, user_data : Pointer(Void)) : Pointer(Void)
  fun jsc_value_new_string(context : Pointer(Void), string : Pointer(LibC::Char)) : Pointer(Void)
  fun jsc_value_new_string_from_bytes(context : Pointer(Void), bytes : Pointer(Void)) : Pointer(Void)
  fun jsc_value_new_typed_array(context : Pointer(Void), type : UInt32, length : UInt64) : Pointer(Void)
  fun jsc_value_new_typed_array_with_buffer(this : Void*, type : UInt32, offset : UInt64, length : Int64) : Pointer(Void)
  fun jsc_value_new_undefined(context : Pointer(Void)) : Pointer(Void)
  fun jsc_value_object_define_property_accessor(this : Void*, property_name : Pointer(LibC::Char), flags : UInt32, property_type : UInt64, getter : Void*, setter : Void*, user_data : Pointer(Void), destroy_notify : Void*) : Void
  fun jsc_value_object_define_property_data(this : Void*, property_name : Pointer(LibC::Char), flags : UInt32, property_value : Pointer(Void)) : Void
  fun jsc_value_object_delete_property(this : Void*, name : Pointer(LibC::Char)) : LibC::Int
  fun jsc_value_object_enumerate_properties(this : Void*) : Pointer(Pointer(LibC::Char))
  fun jsc_value_object_get_property(this : Void*, name : Pointer(LibC::Char)) : Pointer(Void)
  fun jsc_value_object_get_property_at_index(this : Void*, index : UInt32) : Pointer(Void)
  fun jsc_value_object_has_property(this : Void*, name : Pointer(LibC::Char)) : LibC::Int
  fun jsc_value_object_invoke_methodv(this : Void*, name : Pointer(LibC::Char), n_parameters : UInt32, parameters : Pointer(LibJavaScriptCore::Value)) : Pointer(Void)
  fun jsc_value_object_is_instance_of(this : Void*, name : Pointer(LibC::Char)) : LibC::Int
  fun jsc_value_object_set_property(this : Void*, name : Pointer(LibC::Char), property : Pointer(Void)) : Void
  fun jsc_value_object_set_property_at_index(this : Void*, index : UInt32, property : Pointer(Void)) : Void
  fun jsc_value_to_boolean(this : Void*) : LibC::Int
  fun jsc_value_to_double(this : Void*) : Float64
  fun jsc_value_to_int32(this : Void*) : Int32
  fun jsc_value_to_json(this : Void*, indent : UInt32) : Pointer(LibC::Char)
  fun jsc_value_to_string(this : Void*) : Pointer(LibC::Char)
  fun jsc_value_to_string_as_bytes(this : Void*) : Pointer(Void)
  fun jsc_value_typed_array_get_buffer(this : Void*) : Pointer(Void)
  fun jsc_value_typed_array_get_data(this : Void*, length : Pointer(UInt64)) : Pointer(Void)
  fun jsc_value_typed_array_get_length(this : Void*) : UInt64
  fun jsc_value_typed_array_get_offset(this : Void*) : UInt64
  fun jsc_value_typed_array_get_size(this : Void*) : UInt64
  fun jsc_value_typed_array_get_type(this : Void*) : UInt32
  fun jsc_virtual_machine_get_type : UInt64
  fun jsc_virtual_machine_new : Pointer(Void)
  fun jsc_weak_value_get_type : UInt64
  fun jsc_weak_value_get_value(this : Void*) : Pointer(Void)
  fun jsc_weak_value_new(value : Pointer(Void)) : Pointer(Void)
end
