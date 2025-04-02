require "../g_object-2.0/object"
require "./async_result"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Task < GObject::Object
    include AsyncResult

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::TaskClass), class_init,
        sizeof(LibGio::Task), instance_init, 0)
    end

    GICrystal.declare_new_method(Task, g_object_get_qdata)

    # Initialize a new `Task`.
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

    def initialize(*, completed : Bool? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !completed.nil?
        (_names.to_unsafe + _n).value = "completed".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, completed)
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
      @@g_type ||= LibGio.g_task_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Task.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def completed? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "completed", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def self.new(source_object : GObject::Object?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : self
      # g_task_new: (Constructor)
      # @source_object: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @callback_data: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      callback_data = ::Box.box(callback)
      callback = if callback.nil?
                   Pointer(Void).null
                 else
                   ->(gobject : Void*, result : Void*, box : Void*) {
                     unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                     GICrystal::ClosureDataManager.deregister(box)
                     unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                   }.pointer
                 end

      # C call
      _retval = LibGio.g_task_new(source_object, cancellable, callback, callback_data)

      # Return value handling
      Gio::Task.new(_retval, GICrystal::Transfer::Full)
    end

    def self.is_valid(result : Gio::AsyncResult, source_object : GObject::Object?) : Bool
      # g_task_is_valid: (None)
      # @result:
      # @source_object: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end

      # C call
      _retval = LibGio.g_task_is_valid(result, source_object)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.report_error(source_object : GObject::Object?, callback : Gio::AsyncReadyCallback?, callback_data : Pointer(Void)?, source_tag : Pointer(Void)?, error : GLib::Error) : Nil
      # g_task_report_error: (None)
      # @source_object: (nullable)
      # @callback: (nullable)
      # @callback_data: (nullable)
      # @source_tag: (nullable)
      # @error: (transfer full)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end
      # Generator::NullableArrayPlan
      callback_data = if callback_data.nil?
                        Pointer(Void).null
                      else
                        callback_data.to_unsafe
                      end
      # Generator::NullableArrayPlan
      source_tag = if source_tag.nil?
                     Pointer(Void).null
                   else
                     source_tag.to_unsafe
                   end

      # C call
      LibGio.g_task_report_error(source_object, callback, callback_data, source_tag, error)

      # Return value handling
    end

    def cancellable : Gio::Cancellable?
      # g_task_get_cancellable: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_task_get_cancellable(to_unsafe)

      # Return value handling
      Gio::Cancellable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def check_cancellable : Bool
      # g_task_get_check_cancellable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_get_check_cancellable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def completed : Bool
      # g_task_get_completed: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_get_completed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context : GLib::MainContext
      # g_task_get_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_get_context(to_unsafe)

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::None)
    end

    def name : ::String?
      # g_task_get_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_task_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def priority : Int32
      # g_task_get_priority: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_get_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def return_on_cancel : Bool
      # g_task_get_return_on_cancel: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_get_return_on_cancel(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def source_object : GObject::Object?
      # g_task_get_source_object: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_task_get_source_object(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def source_tag : Pointer(Void)?
      # g_task_get_source_tag: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_task_get_source_tag(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def task_data : Pointer(Void)?
      # g_task_get_task_data: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_task_get_task_data(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def had_error : Bool
      # g_task_had_error: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_had_error(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def propagate_boolean : Bool
      # g_task_propagate_boolean: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_task_propagate_boolean(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def propagate_int : Int64
      # g_task_propagate_int: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_task_propagate_int(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def propagate_pointer : Pointer(Void)?
      # g_task_propagate_pointer: (Method | Throws)
      # Returns: (transfer full) (nullable)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_task_propagate_pointer(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval unless _retval.null?
    end

    def propagate_value : GObject::Value
      # g_task_propagate_value: (Method | Throws)
      # @value: (out) (caller-allocates)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::CallerAllocatesPlan
      value = GObject::Value.new
      # C call
      _retval = LibGio.g_task_propagate_value(to_unsafe, value, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      value
    end

    def return_boolean(result : Bool) : Nil
      # g_task_return_boolean: (Method)
      # @result:
      # Returns: (transfer none)

      # C call
      LibGio.g_task_return_boolean(to_unsafe, result)

      # Return value handling
    end

    def return_error(error : GLib::Error) : Nil
      # g_task_return_error: (Method)
      # @error: (transfer full)
      # Returns: (transfer none)

      # C call
      LibGio.g_task_return_error(to_unsafe, error)

      # Return value handling
    end

    def return_error_if_cancelled : Bool
      # g_task_return_error_if_cancelled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_return_error_if_cancelled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def return_int(result : Int64) : Nil
      # g_task_return_int: (Method)
      # @result:
      # Returns: (transfer none)

      # C call
      LibGio.g_task_return_int(to_unsafe, result)

      # Return value handling
    end

    def return_new_error_literal(domain : UInt32, code : Int32, message : ::String) : Nil
      # g_task_return_new_error_literal: (Method)
      # @domain:
      # @code:
      # @message:
      # Returns: (transfer none)

      # C call
      LibGio.g_task_return_new_error_literal(to_unsafe, domain, code, message)

      # Return value handling
    end

    def return_pointer(result : Pointer(Void)?, result_destroy : GLib::DestroyNotify?) : Nil
      # g_task_return_pointer: (Method)
      # @result: (transfer full) (nullable)
      # @result_destroy: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      result = if result.nil?
                 Pointer(Void).null
               else
                 result.to_unsafe
               end

      # C call
      LibGio.g_task_return_pointer(to_unsafe, result, result_destroy)

      # Return value handling
    end

    def return_value(result : _?) : Nil
      # g_task_return_value: (Method)
      # @result: (nullable)
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      result = if result.nil?
                 Pointer(Void).null
               elsif !result.is_a?(GObject::Value)
                 GObject::Value.new(result).to_unsafe
               else
                 result.to_unsafe
               end

      # C call
      LibGio.g_task_return_value(to_unsafe, result)

      # Return value handling
    end

    def run_in_thread(task_func : Gio::TaskThreadFunc) : Nil
      # g_task_run_in_thread: (Method)
      # @task_func:
      # Returns: (transfer none)

      # C call
      LibGio.g_task_run_in_thread(to_unsafe, task_func)

      # Return value handling
    end

    def run_in_thread_sync(task_func : Gio::TaskThreadFunc) : Nil
      # g_task_run_in_thread_sync: (Method)
      # @task_func:
      # Returns: (transfer none)

      # C call
      LibGio.g_task_run_in_thread_sync(to_unsafe, task_func)

      # Return value handling
    end

    def check_cancellable=(check_cancellable : Bool) : Nil
      # g_task_set_check_cancellable: (Method)
      # @check_cancellable:
      # Returns: (transfer none)

      # C call
      LibGio.g_task_set_check_cancellable(to_unsafe, check_cancellable)

      # Return value handling
    end

    def name=(name : ::String?) : Nil
      # g_task_set_name: (Method)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGio.g_task_set_name(to_unsafe, name)

      # Return value handling
    end

    def priority=(priority : Int32) : Nil
      # g_task_set_priority: (Method)
      # @priority:
      # Returns: (transfer none)

      # C call
      LibGio.g_task_set_priority(to_unsafe, priority)

      # Return value handling
    end

    def return_on_cancel=(return_on_cancel : Bool) : Bool
      # g_task_set_return_on_cancel: (Method)
      # @return_on_cancel:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_task_set_return_on_cancel(to_unsafe, return_on_cancel)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def source_tag=(source_tag : Pointer(Void)?) : Nil
      # g_task_set_source_tag: (Method)
      # @source_tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      source_tag = if source_tag.nil?
                     Pointer(Void).null
                   else
                     source_tag.to_unsafe
                   end

      # C call
      LibGio.g_task_set_source_tag(to_unsafe, source_tag)

      # Return value handling
    end

    def static_name=(name : ::String?) : Nil
      # g_task_set_static_name: (Method)
      # @name: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      name = if name.nil?
               Pointer(LibC::Char).null
             else
               name.to_unsafe
             end

      # C call
      LibGio.g_task_set_static_name(to_unsafe, name)

      # Return value handling
    end

    def set_task_data(task_data : Pointer(Void)?, task_data_destroy : GLib::DestroyNotify?) : Nil
      # g_task_set_task_data: (Method)
      # @task_data: (nullable)
      # @task_data_destroy: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      task_data = if task_data.nil?
                    Pointer(Void).null
                  else
                    task_data.to_unsafe
                  end

      # C call
      LibGio.g_task_set_task_data(to_unsafe, task_data, task_data_destroy)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
