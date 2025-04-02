require "../g_object-2.0/object"

module JavaScriptCore
  @[GICrystal::GeneratedWrapper]
  class Value < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Value, g_object_get_qdata)

    # Initialize a new `Value`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
    end

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    def initialize(*, context : JavaScriptCore::Context? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !context.nil?
        (_names.to_unsafe + _n).value = "context".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, context)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibJavaScriptCore.jsc_value_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->JavaScriptCore::Value.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def context=(value : JavaScriptCore::Context?) : JavaScriptCore::Context?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "context", unsafe_value, Pointer(Void).null)
      value
    end

    def context : JavaScriptCore::Context?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "context", pointerof(value), Pointer(Void).null)
      JavaScriptCore::Context.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new_array_buffer(context : JavaScriptCore::Context, data : Pointer(Void)?, size : UInt64, destroy_notify : GLib::DestroyNotify?, user_data : Pointer(Void)?) : self?
      # jsc_value_new_array_buffer: (Constructor)
      # @context:
      # @data: (nullable)
      # @size:
      # @destroy_notify: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      data = if data.nil?
               Pointer(Void).null
             else
               data.to_unsafe
             end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_array_buffer(context, data, size, destroy_notify, user_data)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_array_from_garray(context : JavaScriptCore::Context, array : Enumerable(JavaScriptCore::Value)?) : self
      # jsc_value_new_array_from_garray: (Constructor)
      # @context:
      # @array: (nullable) (array element-type Interface)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      array = if array.nil?
                Pointer(LibJavaScriptCore::Value).null
              else
                array.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibJavaScriptCore::Value))
              end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_array_from_garray(context, array)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_array_from_strv(context : JavaScriptCore::Context, strv : Enumerable(::String)) : self
      # jsc_value_new_array_from_strv: (Constructor)
      # @context:
      # @strv: (array zero-terminated=1 element-type Utf8)
      # Returns: (transfer full)

      # Generator::ArrayArgPlan
      strv = strv.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_array_from_strv(context, strv)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_boolean(context : JavaScriptCore::Context, value : Bool) : self
      # jsc_value_new_boolean: (Constructor)
      # @context:
      # @value:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_boolean(context, value)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_json(context : JavaScriptCore::Context, json : ::String) : self
      # jsc_value_new_from_json: (Constructor)
      # @context:
      # @json:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_from_json(context, json)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_function_variadic(context : JavaScriptCore::Context, name : ::String?, callback : GObject::Callback, user_data : Pointer(Void)?, destroy_notify : GLib::DestroyNotify?, return_type : UInt64) : self
      # jsc_value_new_function_variadic: (Constructor)
      # @context:
      # @name: (nullable)
      # @callback:
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # @return_type:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_function_variadic(context, name, callback, user_data, destroy_notify, return_type)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_function(context : JavaScriptCore::Context, name : ::String?, callback : GObject::Callback, user_data : Pointer(Void)?, destroy_notify : GLib::DestroyNotify?, return_type : UInt64, parameter_types : Enumerable(UInt64)?) : self
      # jsc_value_new_functionv: (Constructor)
      # @context:
      # @name: (nullable)
      # @callback:
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # @return_type:
      # @n_parameters:
      # @parameter_types: (nullable) (array length=n_parameters element-type Gtype)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::ArrayLengthArgPlan
      n_parameters = parameter_types.try(&.size) || 0
      # Generator::NullableArrayPlan
      parameter_types = if parameter_types.nil?
                          Pointer(UInt64).null
                        else
                          parameter_types.to_a.to_unsafe.as(Pointer(UInt64))
                        end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_functionv(context, name, callback, user_data, destroy_notify, return_type, n_parameters, parameter_types)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_null(context : JavaScriptCore::Context) : self
      # jsc_value_new_null: (Constructor)
      # @context:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_null(context)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_number(context : JavaScriptCore::Context, number : Float64) : self
      # jsc_value_new_number: (Constructor)
      # @context:
      # @number:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_number(context, number)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_object(context : JavaScriptCore::Context, instance : Pointer(Void)?, jsc_class : JavaScriptCore::Class?) : self
      # jsc_value_new_object: (Constructor)
      # @context:
      # @instance: (transfer full) (nullable)
      # @jsc_class: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      instance = if instance.nil?
                   Pointer(Void).null
                 else
                   instance.to_unsafe
                 end
      # Generator::NullableArrayPlan
      jsc_class = if jsc_class.nil?
                    Pointer(Void).null
                  else
                    jsc_class.to_unsafe
                  end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_object(context, instance, jsc_class)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_promise(context : JavaScriptCore::Context, executor : JavaScriptCore::Executor, user_data : Pointer(Void)?) : self
      # jsc_value_new_promise: (Constructor)
      # @context:
      # @executor:
      # @user_data: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_promise(context, executor, user_data)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_string(context : JavaScriptCore::Context, string : ::String?) : self
      # jsc_value_new_string: (Constructor)
      # @context:
      # @string: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      string = if string.nil?
                 Pointer(LibC::Char).null
               else
                 string.to_unsafe
               end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_string(context, string)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_string_from_bytes(context : JavaScriptCore::Context, bytes : GLib::Bytes?) : self
      # jsc_value_new_string_from_bytes: (Constructor)
      # @context:
      # @bytes: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      bytes = if bytes.nil?
                Pointer(Void).null
              else
                bytes.to_unsafe
              end

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_string_from_bytes(context, bytes)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_typed_array(context : JavaScriptCore::Context, type : JavaScriptCore::TypedArrayType, length : UInt64) : self
      # jsc_value_new_typed_array: (Constructor)
      # @context:
      # @type:
      # @length:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_typed_array(context, type, length)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_undefined(context : JavaScriptCore::Context) : self
      # jsc_value_new_undefined: (Constructor)
      # @context:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_undefined(context)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def array_buffer_get_data(size : Pointer(UInt64)?) : Pointer(Void)?
      # jsc_value_array_buffer_get_data: (Method)
      # @size: (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      size = if size.nil?
               Pointer(UInt64).null
             else
               size.to_unsafe
             end

      # C call
      _retval = LibJavaScriptCore.jsc_value_array_buffer_get_data(to_unsafe, size)

      # Return value handling
      _retval unless _retval.null?
    end

    def array_buffer_get_size : UInt64
      # jsc_value_array_buffer_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_array_buffer_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def constructor_call(parameters : Enumerable(JavaScriptCore::Value)?) : JavaScriptCore::Value
      # jsc_value_constructor_callv: (Method)
      # @n_parameters:
      # @parameters: (nullable) (array length=n_parameters element-type Interface)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_parameters = parameters.try(&.size) || 0
      # Generator::NullableArrayPlan
      parameters = if parameters.nil?
                     Pointer(LibJavaScriptCore::Value).null
                   else
                     parameters.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibJavaScriptCore::Value))
                   end

      # C call
      _retval = LibJavaScriptCore.jsc_value_constructor_callv(to_unsafe, n_parameters, parameters)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def constructor_call(*parameters : JavaScriptCore::Value)
      constructor_call(parameters)
    end

    def function_call(parameters : Enumerable(JavaScriptCore::Value)?) : JavaScriptCore::Value
      # jsc_value_function_callv: (Method)
      # @n_parameters:
      # @parameters: (nullable) (array length=n_parameters element-type Interface)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_parameters = parameters.try(&.size) || 0
      # Generator::NullableArrayPlan
      parameters = if parameters.nil?
                     Pointer(LibJavaScriptCore::Value).null
                   else
                     parameters.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibJavaScriptCore::Value))
                   end

      # C call
      _retval = LibJavaScriptCore.jsc_value_function_callv(to_unsafe, n_parameters, parameters)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def function_call(*parameters : JavaScriptCore::Value)
      function_call(parameters)
    end

    def context : JavaScriptCore::Context
      # jsc_value_get_context: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_get_context(to_unsafe)

      # Return value handling
      JavaScriptCore::Context.new(_retval, GICrystal::Transfer::None)
    end

    def is_array : Bool
      # jsc_value_is_array: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_array(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_array_buffer : Bool
      # jsc_value_is_array_buffer: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_array_buffer(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_boolean : Bool
      # jsc_value_is_boolean: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_boolean(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_constructor : Bool
      # jsc_value_is_constructor: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_constructor(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_function : Bool
      # jsc_value_is_function: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_function(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_null : Bool
      # jsc_value_is_null: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_null(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_number : Bool
      # jsc_value_is_number: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_number(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_object : Bool
      # jsc_value_is_object: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_object(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_string : Bool
      # jsc_value_is_string: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_string(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_typed_array : Bool
      # jsc_value_is_typed_array: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_typed_array(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_undefined : Bool
      # jsc_value_is_undefined: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_is_undefined(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def new_typed_array_with_buffer(type : JavaScriptCore::TypedArrayType, offset : UInt64, length : Int64) : JavaScriptCore::Value
      # jsc_value_new_typed_array_with_buffer: (Method)
      # @type:
      # @offset:
      # @length:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_new_typed_array_with_buffer(to_unsafe, type, offset, length)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def object_define_property_accessor(property_name : ::String, flags : JavaScriptCore::ValuePropertyFlags, property_type : UInt64, getter : GObject::Callback?, setter : GObject::Callback?) : Nil
      # jsc_value_object_define_property_accessor: (Method)
      # @property_name:
      # @flags:
      # @property_type:
      # @getter: (nullable)
      # @setter: (nullable)
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if setter
        _box = ::Box.box(setter)
        setter = -> {
          ::Box(Proc(Nil)).unbox(Pointer(Void).null).call
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy_notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        setter = user_data = destroy_notify = Pointer(Void).null
      end

      # C call
      LibJavaScriptCore.jsc_value_object_define_property_accessor(to_unsafe, property_name, flags, property_type, getter, setter, user_data, destroy_notify)

      # Return value handling
    end

    def object_define_property_data(property_name : ::String, flags : JavaScriptCore::ValuePropertyFlags, property_value : JavaScriptCore::Value?) : Nil
      # jsc_value_object_define_property_data: (Method)
      # @property_name:
      # @flags:
      # @property_value: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      property_value = if property_value.nil?
                         Pointer(Void).null
                       else
                         property_value.to_unsafe
                       end

      # C call
      LibJavaScriptCore.jsc_value_object_define_property_data(to_unsafe, property_name, flags, property_value)

      # Return value handling
    end

    def object_delete_property(name : ::String) : Bool
      # jsc_value_object_delete_property: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_object_delete_property(to_unsafe, name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def object_enumerate_properties : Enumerable(::String)?
      # jsc_value_object_enumerate_properties: (Method)
      # Returns: (transfer full) (nullable) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibJavaScriptCore.jsc_value_object_enumerate_properties(to_unsafe)

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def object_get_property(name : ::String) : JavaScriptCore::Value
      # jsc_value_object_get_property: (Method)
      # @name:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_object_get_property(to_unsafe, name)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def object_get_property_at_index(index : UInt32) : JavaScriptCore::Value
      # jsc_value_object_get_property_at_index: (Method)
      # @index:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_object_get_property_at_index(to_unsafe, index)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def object_has_property(name : ::String) : Bool
      # jsc_value_object_has_property: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_object_has_property(to_unsafe, name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def object_invoke_method(name : ::String, parameters : Enumerable(JavaScriptCore::Value)?) : JavaScriptCore::Value
      # jsc_value_object_invoke_methodv: (Method)
      # @name:
      # @n_parameters:
      # @parameters: (nullable) (array length=n_parameters element-type Interface)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_parameters = parameters.try(&.size) || 0
      # Generator::NullableArrayPlan
      parameters = if parameters.nil?
                     Pointer(LibJavaScriptCore::Value).null
                   else
                     parameters.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibJavaScriptCore::Value))
                   end

      # C call
      _retval = LibJavaScriptCore.jsc_value_object_invoke_methodv(to_unsafe, name, n_parameters, parameters)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def object_is_instance_of(name : ::String) : Bool
      # jsc_value_object_is_instance_of: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_object_is_instance_of(to_unsafe, name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def object_set_property(name : ::String, property : JavaScriptCore::Value) : Nil
      # jsc_value_object_set_property: (Method)
      # @name:
      # @property:
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_value_object_set_property(to_unsafe, name, property)

      # Return value handling
    end

    def object_set_property_at_index(index : UInt32, property : JavaScriptCore::Value) : Nil
      # jsc_value_object_set_property_at_index: (Method)
      # @index:
      # @property:
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_value_object_set_property_at_index(to_unsafe, index, property)

      # Return value handling
    end

    def to_boolean : Bool
      # jsc_value_to_boolean: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_to_boolean(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_double : Float64
      # jsc_value_to_double: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_to_double(to_unsafe)

      # Return value handling
      _retval
    end

    def to_int32 : Int32
      # jsc_value_to_int32: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_to_int32(to_unsafe)

      # Return value handling
      _retval
    end

    def to_json(indent : UInt32) : ::String
      # jsc_value_to_json: (Method)
      # @indent:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_to_json(to_unsafe, indent)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def to_string : ::String
      # jsc_value_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def to_string_as_bytes : GLib::Bytes
      # jsc_value_to_string_as_bytes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_to_string_as_bytes(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def typed_array_get_buffer : JavaScriptCore::Value
      # jsc_value_typed_array_get_buffer: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_value_typed_array_get_buffer(to_unsafe)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def typed_array_get_data(length : UInt64?) : Pointer(Void)?
      # jsc_value_typed_array_get_data: (Method)
      # @length: (out) (transfer full) (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      length = if length.nil?
                 UInt64.null
               else
                 length.to_unsafe
               end

      # C call
      _retval = LibJavaScriptCore.jsc_value_typed_array_get_data(to_unsafe, length)

      # Return value handling
      _retval unless _retval.null?
    end

    def typed_array_get_length : UInt64
      # jsc_value_typed_array_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_typed_array_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def typed_array_get_offset : UInt64
      # jsc_value_typed_array_get_offset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_typed_array_get_offset(to_unsafe)

      # Return value handling
      _retval
    end

    def typed_array_get_size : UInt64
      # jsc_value_typed_array_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_typed_array_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def typed_array_get_type : JavaScriptCore::TypedArrayType
      # jsc_value_typed_array_get_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_value_typed_array_get_type(to_unsafe)

      # Return value handling
      JavaScriptCore::TypedArrayType.new(_retval)
    end

    def_equals_and_hash @pointer
  end
end
