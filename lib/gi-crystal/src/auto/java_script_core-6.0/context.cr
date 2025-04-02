require "../g_object-2.0/object"

module JavaScriptCore
  @[GICrystal::GeneratedWrapper]
  class Context < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Context, g_object_get_qdata)

    # Initialize a new `Context`.
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

    def initialize(*, virtual_machine : JavaScriptCore::VirtualMachine? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !virtual_machine.nil?
        (_names.to_unsafe + _n).value = "virtual-machine".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, virtual_machine)
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
      @@g_type ||= LibJavaScriptCore.jsc_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->JavaScriptCore::Context.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def virtual_machine=(value : JavaScriptCore::VirtualMachine?) : JavaScriptCore::VirtualMachine?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "virtual-machine", unsafe_value, Pointer(Void).null)
      value
    end

    def virtual_machine : JavaScriptCore::VirtualMachine?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "virtual-machine", pointerof(value), Pointer(Void).null)
      JavaScriptCore::VirtualMachine.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new : self
      # jsc_context_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_context_new

      # Return value handling
      JavaScriptCore::Context.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_virtual_machine(vm : JavaScriptCore::VirtualMachine) : self
      # jsc_context_new_with_virtual_machine: (Constructor)
      # @vm:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_context_new_with_virtual_machine(vm)

      # Return value handling
      JavaScriptCore::Context.new(_retval, GICrystal::Transfer::Full)
    end

    def self.current : JavaScriptCore::Context?
      # jsc_context_get_current: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibJavaScriptCore.jsc_context_get_current

      # Return value handling
      JavaScriptCore::Context.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def check_syntax(code : ::String, length : Int64, mode : JavaScriptCore::CheckSyntaxMode, uri : ::String, line_number : UInt32) : JavaScriptCore::CheckSyntaxResult
      # jsc_context_check_syntax: (Method)
      # @code:
      # @length:
      # @mode:
      # @uri:
      # @line_number:
      # @exception: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::TransferFullArgPlan
      GICrystal.ref(exception)
      # Generator::OutArgUsedInReturnPlan
      exception = Pointer(Pointer(Void)).null
      # C call
      _retval = LibJavaScriptCore.jsc_context_check_syntax(to_unsafe, code, length, mode, uri, line_number, exception)

      # Return value handling
      JavaScriptCore::CheckSyntaxResult.new(_retval)
    end

    def clear_exception : Nil
      # jsc_context_clear_exception: (Method)
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_context_clear_exception(to_unsafe)

      # Return value handling
    end

    def evaluate(code : ::String, length : Int64) : JavaScriptCore::Value
      # jsc_context_evaluate: (Method)
      # @code:
      # @length:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_context_evaluate(to_unsafe, code, length)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def evaluate_in_object(code : ::String, length : Int64, object_instance : Pointer(Void)?, object_class : JavaScriptCore::Class?, uri : ::String, line_number : UInt32, object : JavaScriptCore::Value) : JavaScriptCore::Value
      # jsc_context_evaluate_in_object: (Method)
      # @code:
      # @length:
      # @object_instance: (nullable)
      # @object_class: (nullable)
      # @uri:
      # @line_number:
      # @object: (out) (transfer full)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      object_instance = if object_instance.nil?
                          Pointer(Void).null
                        else
                          object_instance.to_unsafe
                        end
      # Generator::NullableArrayPlan
      object_class = if object_class.nil?
                       Pointer(Void).null
                     else
                       object_class.to_unsafe
                     end
      # Generator::TransferFullArgPlan
      GICrystal.ref(object)

      # C call
      _retval = LibJavaScriptCore.jsc_context_evaluate_in_object(to_unsafe, code, length, object_instance, object_class, uri, line_number, object)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def evaluate_with_source_uri(code : ::String, length : Int64, uri : ::String, line_number : UInt32) : JavaScriptCore::Value
      # jsc_context_evaluate_with_source_uri: (Method)
      # @code:
      # @length:
      # @uri:
      # @line_number:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_context_evaluate_with_source_uri(to_unsafe, code, length, uri, line_number)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def exception : JavaScriptCore::Exception?
      # jsc_context_get_exception: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibJavaScriptCore.jsc_context_get_exception(to_unsafe)

      # Return value handling
      JavaScriptCore::Exception.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def global_object : JavaScriptCore::Value
      # jsc_context_get_global_object: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_context_get_global_object(to_unsafe)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def value(name : ::String) : JavaScriptCore::Value
      # jsc_context_get_value: (Method)
      # @name:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_context_get_value(to_unsafe, name)

      # Return value handling
      JavaScriptCore::Value.new(_retval, GICrystal::Transfer::Full)
    end

    def virtual_machine : JavaScriptCore::VirtualMachine
      # jsc_context_get_virtual_machine: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_context_get_virtual_machine(to_unsafe)

      # Return value handling
      JavaScriptCore::VirtualMachine.new(_retval, GICrystal::Transfer::None)
    end

    def pop_exception_handler : Nil
      # jsc_context_pop_exception_handler: (Method)
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_context_pop_exception_handler(to_unsafe)

      # Return value handling
    end

    def push_exception_handler(handler : JavaScriptCore::ExceptionHandler) : Nil
      # jsc_context_push_exception_handler: (Method)
      # @handler:
      # @user_data: (nullable)
      # @destroy_notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if handler
        _box = ::Box.box(handler)
        handler = ->(lib_context : Pointer(Void), lib_exception : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          context = JavaScriptCore::Context.new(lib_context, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          exception = JavaScriptCore::Exception.new(lib_exception, GICrystal::Transfer::None)
          ::Box(Proc(JavaScriptCore::Context, JavaScriptCore::Exception, Nil)).unbox(lib_user_data).call(context, exception)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy_notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        handler = user_data = destroy_notify = Pointer(Void).null
      end

      # C call
      LibJavaScriptCore.jsc_context_push_exception_handler(to_unsafe, handler, user_data, destroy_notify)

      # Return value handling
    end

    def register_class(name : ::String, parent_class : JavaScriptCore::Class?, vtable : JavaScriptCore::ClassVTable?, destroy_notify : GLib::DestroyNotify?) : JavaScriptCore::Class
      # jsc_context_register_class: (Method)
      # @name:
      # @parent_class: (nullable)
      # @vtable: (nullable)
      # @destroy_notify: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent_class = if parent_class.nil?
                       Pointer(Void).null
                     else
                       parent_class.to_unsafe
                     end
      # Generator::NullableArrayPlan
      vtable = if vtable.nil?
                 Pointer(Void).null
               else
                 vtable.to_unsafe
               end

      # C call
      _retval = LibJavaScriptCore.jsc_context_register_class(to_unsafe, name, parent_class, vtable, destroy_notify)

      # Return value handling
      JavaScriptCore::Class.new(_retval, GICrystal::Transfer::None)
    end

    def set_value(name : ::String, value : JavaScriptCore::Value) : Nil
      # jsc_context_set_value: (Method)
      # @name:
      # @value:
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_context_set_value(to_unsafe, name, value)

      # Return value handling
    end

    def throw(error_message : ::String) : Nil
      # jsc_context_throw: (Method)
      # @error_message:
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_context_throw(to_unsafe, error_message)

      # Return value handling
    end

    def throw_exception(exception : JavaScriptCore::Exception) : Nil
      # jsc_context_throw_exception: (Method)
      # @exception:
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_context_throw_exception(to_unsafe, exception)

      # Return value handling
    end

    def throw_with_name(error_name : ::String, error_message : ::String) : Nil
      # jsc_context_throw_with_name: (Method)
      # @error_name:
      # @error_message:
      # Returns: (transfer none)

      # C call
      LibJavaScriptCore.jsc_context_throw_with_name(to_unsafe, error_name, error_message)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
