module Gio
  class IOSchedulerJob
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = pointer
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

    @[Deprecated]
    def send_to_mainloop(func : GLib::SourceFunc) : Bool
      # g_io_scheduler_job_send_to_mainloop: (Method)
      # @func:
      # @user_data: (nullable)
      # @notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_user_data : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(lib_user_data).call
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = user_data = notify = Pointer(Void).null
      end

      # C call
      _retval = LibGio.g_io_scheduler_job_send_to_mainloop(to_unsafe, func, user_data, notify)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def send_to_mainloop_async(func : GLib::SourceFunc) : Nil
      # g_io_scheduler_job_send_to_mainloop_async: (Method)
      # @func:
      # @user_data: (nullable)
      # @notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_user_data : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(lib_user_data).call
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = user_data = notify = Pointer(Void).null
      end

      # C call
      LibGio.g_io_scheduler_job_send_to_mainloop_async(to_unsafe, func, user_data, notify)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
