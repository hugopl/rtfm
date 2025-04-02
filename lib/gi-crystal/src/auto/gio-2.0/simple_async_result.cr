require "../g_object-2.0/object"
require "./async_result"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SimpleAsyncResult < GObject::Object
    include AsyncResult

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::SimpleAsyncResultClass), class_init,
        sizeof(LibGio::SimpleAsyncResult), instance_init, 0)
    end

    GICrystal.declare_new_method(SimpleAsyncResult, g_object_get_qdata)

    # Initialize a new `SimpleAsyncResult`.
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_simple_async_result_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SimpleAsyncResult.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.new(source_object : GObject::Object?, callback : Gio::AsyncReadyCallback?, user_data : Pointer(Void)?, source_tag : Pointer(Void)?) : self
      # g_simple_async_result_new: (Constructor)
      # @source_object: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # @source_tag: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end
      # Generator::NullableArrayPlan
      source_tag = if source_tag.nil?
                     Pointer(Void).null
                   else
                     source_tag.to_unsafe
                   end

      # C call
      _retval = LibGio.g_simple_async_result_new(source_object, callback, user_data, source_tag)

      # Return value handling
      Gio::SimpleAsyncResult.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.new_from_error(source_object : GObject::Object?, callback : Gio::AsyncReadyCallback?, user_data : Pointer(Void)?, error : GLib::Error) : self
      # g_simple_async_result_new_from_error: (Constructor)
      # @source_object: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # @error:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      source_object = if source_object.nil?
                        Pointer(Void).null
                      else
                        source_object.to_unsafe
                      end
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGio.g_simple_async_result_new_from_error(source_object, callback, user_data, error)

      # Return value handling
      Gio::SimpleAsyncResult.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def self.is_valid(result : Gio::AsyncResult, source : GObject::Object?, source_tag : Pointer(Void)?) : Bool
      # g_simple_async_result_is_valid: (None)
      # @result:
      # @source: (nullable)
      # @source_tag: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      source = if source.nil?
                 Pointer(Void).null
               else
                 source.to_unsafe
               end
      # Generator::NullableArrayPlan
      source_tag = if source_tag.nil?
                     Pointer(Void).null
                   else
                     source_tag.to_unsafe
                   end

      # C call
      _retval = LibGio.g_simple_async_result_is_valid(result, source, source_tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def complete : Nil
      # g_simple_async_result_complete: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_async_result_complete(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def complete_in_idle : Nil
      # g_simple_async_result_complete_in_idle: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_async_result_complete_in_idle(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def op_res_gboolean : Bool
      # g_simple_async_result_get_op_res_gboolean: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_simple_async_result_get_op_res_gboolean(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def op_res_gssize : Int64
      # g_simple_async_result_get_op_res_gssize: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_simple_async_result_get_op_res_gssize(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def propagate_error : Bool
      # g_simple_async_result_propagate_error: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_simple_async_result_propagate_error(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def check_cancellable=(check_cancellable : Gio::Cancellable?) : Nil
      # g_simple_async_result_set_check_cancellable: (Method)
      # @check_cancellable: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      check_cancellable = if check_cancellable.nil?
                            Pointer(Void).null
                          else
                            check_cancellable.to_unsafe
                          end

      # C call
      LibGio.g_simple_async_result_set_check_cancellable(to_unsafe, check_cancellable)

      # Return value handling
    end

    @[Deprecated]
    def from_error=(error : GLib::Error) : Nil
      # g_simple_async_result_set_from_error: (Method)
      # @error:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_async_result_set_from_error(to_unsafe, error)

      # Return value handling
    end

    @[Deprecated]
    def handle_cancellation=(handle_cancellation : Bool) : Nil
      # g_simple_async_result_set_handle_cancellation: (Method)
      # @handle_cancellation:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_async_result_set_handle_cancellation(to_unsafe, handle_cancellation)

      # Return value handling
    end

    @[Deprecated]
    def op_res_gboolean=(op_res : Bool) : Nil
      # g_simple_async_result_set_op_res_gboolean: (Method)
      # @op_res:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_async_result_set_op_res_gboolean(to_unsafe, op_res)

      # Return value handling
    end

    @[Deprecated]
    def op_res_gssize=(op_res : Int64) : Nil
      # g_simple_async_result_set_op_res_gssize: (Method)
      # @op_res:
      # Returns: (transfer none)

      # C call
      LibGio.g_simple_async_result_set_op_res_gssize(to_unsafe, op_res)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
