require "../g_object-2.0/object"
require "./initable"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Subprocess < GObject::Object
    include Initable

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Subprocess, g_object_get_qdata)

    # Initialize a new `Subprocess`.
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

    def initialize(*, argv : Enumerable(::String)? = nil, flags : Gio::SubprocessFlags? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !argv.nil?
        (_names.to_unsafe + _n).value = "argv".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, argv)
        _n += 1
      end
      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
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
      @@g_type ||= LibGio.g_subprocess_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Subprocess.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def argv=(value : Enumerable(::String)) : Enumerable(::String)
      # handle array
      unsafe_value = value.to_a.map(&.to_unsafe).to_unsafe

      LibGObject.g_object_set(self, "argv", unsafe_value, Pointer(Void).null)
      value
    end

    def flags=(value : Gio::SubprocessFlags) : Gio::SubprocessFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def self.new(argv : Enumerable(::String), flags : Gio::SubprocessFlags) : self
      # g_subprocess_newv: (Constructor | Throws)
      # @argv: (array zero-terminated=1 element-type Filename)
      # @flags:
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayArgPlan
      argv = argv.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGio.g_subprocess_newv(argv, flags, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Subprocess.new(_retval, GICrystal::Transfer::Full)
    end

    def communicate(stdin_buf : GLib::Bytes?, cancellable : Gio::Cancellable?) : Bool
      # g_subprocess_communicate: (Method | Throws)
      # @stdin_buf: (nullable)
      # @cancellable: (nullable)
      # @stdout_buf: (out) (transfer full) (nullable) (optional)
      # @stderr_buf: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      stdin_buf = if stdin_buf.nil?
                    Pointer(Void).null
                  else
                    stdin_buf.to_unsafe
                  end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::OutArgUsedInReturnPlan
      stdout_buf = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      stderr_buf = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_subprocess_communicate(to_unsafe, stdin_buf, cancellable, stdout_buf, stderr_buf, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def communicate_async(stdin_buf : GLib::Bytes?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_subprocess_communicate_async: (Method)
      # @stdin_buf: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      stdin_buf = if stdin_buf.nil?
                    Pointer(Void).null
                  else
                    stdin_buf.to_unsafe
                  end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
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
      LibGio.g_subprocess_communicate_async(to_unsafe, stdin_buf, cancellable, callback, user_data)

      # Return value handling
    end

    def communicate_finish(result : Gio::AsyncResult) : Bool
      # g_subprocess_communicate_finish: (Method | Throws)
      # @result:
      # @stdout_buf: (out) (transfer full) (nullable) (optional)
      # @stderr_buf: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      stdout_buf = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      stderr_buf = Pointer(Pointer(Void)).null
      # C call
      _retval = LibGio.g_subprocess_communicate_finish(to_unsafe, result, stdout_buf, stderr_buf, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def communicate_utf8(stdin_buf : ::String?, cancellable : Gio::Cancellable?) : Bool
      # g_subprocess_communicate_utf8: (Method | Throws)
      # @stdin_buf: (nullable)
      # @cancellable: (nullable)
      # @stdout_buf: (out) (transfer full) (nullable) (optional)
      # @stderr_buf: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      stdin_buf = if stdin_buf.nil?
                    Pointer(LibC::Char).null
                  else
                    stdin_buf.to_unsafe
                  end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::OutArgUsedInReturnPlan
      stdout_buf = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
      stderr_buf = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_subprocess_communicate_utf8(to_unsafe, stdin_buf, cancellable, stdout_buf, stderr_buf, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def communicate_utf8_async(stdin_buf : ::String?, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_subprocess_communicate_utf8_async: (Method)
      # @stdin_buf: (nullable)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      stdin_buf = if stdin_buf.nil?
                    Pointer(LibC::Char).null
                  else
                    stdin_buf.to_unsafe
                  end
      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
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
      LibGio.g_subprocess_communicate_utf8_async(to_unsafe, stdin_buf, cancellable, callback, user_data)

      # Return value handling
    end

    def communicate_utf8_finish(result : Gio::AsyncResult) : Bool
      # g_subprocess_communicate_utf8_finish: (Method | Throws)
      # @result:
      # @stdout_buf: (out) (transfer full) (nullable) (optional)
      # @stderr_buf: (out) (transfer full) (nullable) (optional)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::OutArgUsedInReturnPlan
      stdout_buf = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
      stderr_buf = Pointer(Pointer(LibC::Char)).null
      # C call
      _retval = LibGio.g_subprocess_communicate_utf8_finish(to_unsafe, result, stdout_buf, stderr_buf, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def force_exit : Nil
      # g_subprocess_force_exit: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_force_exit(to_unsafe)

      # Return value handling
    end

    def exit_status : Int32
      # g_subprocess_get_exit_status: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_subprocess_get_exit_status(to_unsafe)

      # Return value handling
      _retval
    end

    def identifier : ::String?
      # g_subprocess_get_identifier: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_subprocess_get_identifier(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def if_exited : Bool
      # g_subprocess_get_if_exited: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_subprocess_get_if_exited(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def if_signaled : Bool
      # g_subprocess_get_if_signaled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_subprocess_get_if_signaled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def status : Int32
      # g_subprocess_get_status: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_subprocess_get_status(to_unsafe)

      # Return value handling
      _retval
    end

    def stderr_pipe : Gio::InputStream?
      # g_subprocess_get_stderr_pipe: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_subprocess_get_stderr_pipe(to_unsafe)

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def stdin_pipe : Gio::OutputStream?
      # g_subprocess_get_stdin_pipe: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_subprocess_get_stdin_pipe(to_unsafe)

      # Return value handling
      Gio::OutputStream.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def stdout_pipe : Gio::InputStream?
      # g_subprocess_get_stdout_pipe: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_subprocess_get_stdout_pipe(to_unsafe)

      # Return value handling
      Gio::InputStream.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def successful : Bool
      # g_subprocess_get_successful: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_subprocess_get_successful(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def term_sig : Int32
      # g_subprocess_get_term_sig: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_subprocess_get_term_sig(to_unsafe)

      # Return value handling
      _retval
    end

    def send_signal(signal_num : Int32) : Nil
      # g_subprocess_send_signal: (Method)
      # @signal_num:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_send_signal(to_unsafe, signal_num)

      # Return value handling
    end

    def wait(cancellable : Gio::Cancellable?) : Bool
      # g_subprocess_wait: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_subprocess_wait(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def wait_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_subprocess_wait_async: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
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
      LibGio.g_subprocess_wait_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def wait_check(cancellable : Gio::Cancellable?) : Bool
      # g_subprocess_wait_check: (Method | Throws)
      # @cancellable: (nullable)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end

      # C call
      _retval = LibGio.g_subprocess_wait_check(to_unsafe, cancellable, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def wait_check_async(cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
      # g_subprocess_wait_check_async: (Method)
      # @cancellable: (nullable)
      # @callback: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      cancellable = if cancellable.nil?
                      Pointer(Void).null
                    else
                      cancellable.to_unsafe
                    end
      # Generator::AsyncPatternArgPlan
      user_data = ::Box.box(callback)
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
      LibGio.g_subprocess_wait_check_async(to_unsafe, cancellable, callback, user_data)

      # Return value handling
    end

    def wait_check_finish(result : Gio::AsyncResult) : Bool
      # g_subprocess_wait_check_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_subprocess_wait_check_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def wait_finish(result : Gio::AsyncResult) : Bool
      # g_subprocess_wait_finish: (Method | Throws)
      # @result:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_subprocess_wait_finish(to_unsafe, result, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
