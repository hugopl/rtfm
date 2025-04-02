module GLib
  class MainContext
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(MainContext.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(MainContext.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_main_context_get_type
    end

    def self.new_with_flags(flags : GLib::MainContextFlags) : self
      # g_main_context_new_with_flags: (Constructor)
      # @flags:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_main_context_new_with_flags(flags)

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::Full)
    end

    def acquire : Bool
      # g_main_context_acquire: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_context_acquire(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def check(max_priority : Int32, fds : Enumerable(GLib::PollFD)) : Bool
      # g_main_context_check: (Method)
      # @max_priority:
      # @fds: (array length=n_fds element-type Interface)
      # @n_fds:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_fds = fds.size
      # Generator::ArrayArgPlan
      fds = fds.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGLib::PollFD))

      # C call
      _retval = LibGLib.g_main_context_check(to_unsafe, max_priority, fds, n_fds)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def dispatch : Nil
      # g_main_context_dispatch: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_context_dispatch(to_unsafe)

      # Return value handling
    end

    def find_source_by_funcs_user_data(funcs : GLib::SourceFuncs, user_data : Pointer(Void)?) : GLib::Source
      # g_main_context_find_source_by_funcs_user_data: (Method)
      # @funcs:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGLib.g_main_context_find_source_by_funcs_user_data(to_unsafe, funcs, user_data)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::None)
    end

    def find_source_by_id(source_id : UInt32) : GLib::Source
      # g_main_context_find_source_by_id: (Method)
      # @source_id:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_context_find_source_by_id(to_unsafe, source_id)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::None)
    end

    def find_source_by_user_data(user_data : Pointer(Void)?) : GLib::Source
      # g_main_context_find_source_by_user_data: (Method)
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGLib.g_main_context_find_source_by_user_data(to_unsafe, user_data)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::None)
    end

    def invoke_full(priority : Int32, function : GLib::SourceFunc) : Nil
      # g_main_context_invoke_full: (Method)
      # @priority:
      # @function:
      # @data: (nullable)
      # @notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if function
        _box = ::Box.box(function)
        function = ->(lib_user_data : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(lib_user_data).call
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        function = data = notify = Pointer(Void).null
      end

      # C call
      LibGLib.g_main_context_invoke_full(to_unsafe, priority, function, data, notify)

      # Return value handling
    end

    def is_owner : Bool
      # g_main_context_is_owner: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_context_is_owner(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def iteration(may_block : Bool) : Bool
      # g_main_context_iteration: (Method)
      # @may_block:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_context_iteration(to_unsafe, may_block)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pending : Bool
      # g_main_context_pending: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_context_pending(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pop_thread_default : Nil
      # g_main_context_pop_thread_default: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_context_pop_thread_default(to_unsafe)

      # Return value handling
    end

    def prepare : Bool
      # g_main_context_prepare: (Method)
      # @priority: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      priority = Pointer(Int32).null
      # C call
      _retval = LibGLib.g_main_context_prepare(to_unsafe, priority)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def push_thread_default : Nil
      # g_main_context_push_thread_default: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_context_push_thread_default(to_unsafe)

      # Return value handling
    end

    def pusher_new : Pointer(Void)
      # g_main_context_pusher_new: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_main_context_pusher_new(to_unsafe)

      # Return value handling
      _retval
    end

    def query(max_priority : Int32, timeout_ : Int32, fds : Enumerable(GLib::PollFD)) : Int32
      # g_main_context_query: (Method)
      # @max_priority:
      # @timeout_: (out) (transfer full)
      # @fds: (out) (caller-allocates) (array length=n_fds element-type Interface)
      # @n_fds:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_fds = fds.size
      # Generator::ArrayArgPlan
      fds = fds.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGLib::PollFD))

      # C call
      _retval = LibGLib.g_main_context_query(to_unsafe, max_priority, timeout_, fds, n_fds)

      # Return value handling
      _retval
    end

    def ref : GLib::MainContext
      # g_main_context_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_main_context_ref(to_unsafe)

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::Full)
    end

    def release : Nil
      # g_main_context_release: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_context_release(to_unsafe)

      # Return value handling
    end

    def unref : Nil
      # g_main_context_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_context_unref(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def wait(cond : GLib::Cond, mutex : GLib::Mutex) : Bool
      # g_main_context_wait: (Method)
      # @cond:
      # @mutex:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_context_wait(to_unsafe, cond, mutex)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def wakeup : Nil
      # g_main_context_wakeup: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_context_wakeup(to_unsafe)

      # Return value handling
    end

    def self.default : GLib::MainContext
      # g_main_context_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_context_default

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::None)
    end

    def self.thread_default : GLib::MainContext?
      # g_main_context_get_thread_default: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_main_context_get_thread_default

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def self.ref_thread_default : GLib::MainContext
      # g_main_context_ref_thread_default: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_main_context_ref_thread_default

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      @pointer
    end
  end
end
