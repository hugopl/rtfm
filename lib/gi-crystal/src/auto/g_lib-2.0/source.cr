module GLib
  class Source
    @data : LibGLib::Source

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::Source)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(ref_count : UInt32? = nil, priority : Int32? = nil, flags : UInt32? = nil, source_id : UInt32? = nil)
      _instance = allocate
      _instance.ref_count = ref_count unless ref_count.nil?
      _instance.priority = priority unless priority.nil?
      _instance.flags = flags unless flags.nil?
      _instance.source_id = source_id unless source_id.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::Source)).zero?
    end

    def callback_data!
      self.callback_data.not_nil!
    end

    def callback_data : Pointer(Void)?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.callback_data
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def callback_funcs!
      self.callback_funcs.not_nil!
    end

    def callback_funcs : GLib::SourceCallbackFuncs?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.callback_funcs
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::SourceCallbackFuncs.new(value, GICrystal::Transfer::None)
    end

    def source_funcs!
      self.source_funcs.not_nil!
    end

    def source_funcs : GLib::SourceFuncs?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.source_funcs
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::SourceFuncs.new(value, GICrystal::Transfer::None)
    end

    def ref_count : UInt32
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.ref_count
      value
    end

    def ref_count=(value : UInt32)
      _var = (to_unsafe + 24).as(Pointer(UInt32)).value = value
      value
    end

    def context!
      self.context.not_nil!
    end

    def context : GLib::MainContext?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.context
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::MainContext.new(value, GICrystal::Transfer::None)
    end

    def priority : Int32
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.priority
      value
    end

    def priority=(value : Int32)
      _var = (to_unsafe + 40).as(Pointer(Int32)).value = value
      value
    end

    def flags : UInt32
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.flags
      value
    end

    def flags=(value : UInt32)
      _var = (to_unsafe + 44).as(Pointer(UInt32)).value = value
      value
    end

    def source_id : UInt32
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.source_id
      value
    end

    def source_id=(value : UInt32)
      _var = (to_unsafe + 48).as(Pointer(UInt32)).value = value
      value
    end

    def poll_fds!
      self.poll_fds.not_nil!
    end

    def poll_fds : GLib::SList?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.poll_fds
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::SList(Pointer(Void)).new(value, GICrystal::Transfer::None)
    end

    def prev!
      self.prev.not_nil!
    end

    def prev : GLib::Source?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.prev
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::Source.new(value, GICrystal::Transfer::None)
    end

    def next!
      self.next.not_nil!
    end

    def next : GLib::Source?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value._next
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::Source.new(value, GICrystal::Transfer::None)
    end

    def name!
      self.name.not_nil!
    end

    def name : ::String?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.name
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def priv!
      self.priv.not_nil!
    end

    def priv : GLib::SourcePrivate?
      value = to_unsafe.as(Pointer(LibGLib::Source)).value.priv
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::SourcePrivate.new(value, GICrystal::Transfer::None)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_source_get_type
    end

    def self.new(source_funcs : GLib::SourceFuncs, struct_size : UInt32) : self
      # g_source_new: (Constructor)
      # @source_funcs:
      # @struct_size:
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_source_new(source_funcs, struct_size)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::Full)
    end

    def add_child_source(child_source : GLib::Source) : Nil
      # g_source_add_child_source: (Method)
      # @child_source:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_add_child_source(to_unsafe, child_source)

      # Return value handling
    end

    def add_unix_fd(fd : Int32, events : GLib::IOCondition) : Pointer(Void)
      # g_source_add_unix_fd: (Method)
      # @fd:
      # @events:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_add_unix_fd(to_unsafe, fd, events)

      # Return value handling
      _retval
    end

    def attach(context : GLib::MainContext?) : UInt32
      # g_source_attach: (Method)
      # @context: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end

      # C call
      _retval = LibGLib.g_source_attach(to_unsafe, context)

      # Return value handling
      _retval
    end

    def destroy : Nil
      # g_source_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_destroy(to_unsafe)

      # Return value handling
    end

    def can_recurse : Bool
      # g_source_get_can_recurse: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_get_can_recurse(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def context : GLib::MainContext?
      # g_source_get_context: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_source_get_context(to_unsafe)

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def current_time(timeval : GLib::TimeVal) : Nil
      # g_source_get_current_time: (Method)
      # @timeval:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_get_current_time(to_unsafe, timeval)

      # Return value handling
    end

    def id : UInt32
      # g_source_get_id: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_get_id(to_unsafe)

      # Return value handling
      _retval
    end

    def name : ::String?
      # g_source_get_name: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_source_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def priority : Int32
      # g_source_get_priority: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_get_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def ready_time : Int64
      # g_source_get_ready_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_get_ready_time(to_unsafe)

      # Return value handling
      _retval
    end

    def time : Int64
      # g_source_get_time: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_get_time(to_unsafe)

      # Return value handling
      _retval
    end

    def is_destroyed : Bool
      # g_source_is_destroyed: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_is_destroyed(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def modify_unix_fd(tag : Pointer(Void), new_events : GLib::IOCondition) : Nil
      # g_source_modify_unix_fd: (Method)
      # @tag:
      # @new_events:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_modify_unix_fd(to_unsafe, tag, new_events)

      # Return value handling
    end

    def query_unix_fd(tag : Pointer(Void)) : GLib::IOCondition
      # g_source_query_unix_fd: (Method)
      # @tag:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_query_unix_fd(to_unsafe, tag)

      # Return value handling
      GLib::IOCondition.new(_retval)
    end

    def ref : GLib::Source
      # g_source_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_source_ref(to_unsafe)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::Full)
    end

    def remove_child_source(child_source : GLib::Source) : Nil
      # g_source_remove_child_source: (Method)
      # @child_source:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_remove_child_source(to_unsafe, child_source)

      # Return value handling
    end

    def remove_unix_fd(tag : Pointer(Void)) : Nil
      # g_source_remove_unix_fd: (Method)
      # @tag:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_remove_unix_fd(to_unsafe, tag)

      # Return value handling
    end

    def callback=(func : GLib::SourceFunc) : Nil
      # g_source_set_callback: (Method)
      # @func:
      # @data: (nullable)
      # @notify: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_user_data : Pointer(Void)) {
          ::Box(Proc(Bool)).unbox(lib_user_data).call
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = data = notify = Pointer(Void).null
      end

      # C call
      LibGLib.g_source_set_callback(to_unsafe, func, data, notify)

      # Return value handling
    end

    def set_callback_indirect(callback_data : Pointer(Void)?, callback_funcs : GLib::SourceCallbackFuncs) : Nil
      # g_source_set_callback_indirect: (Method)
      # @callback_data: (nullable)
      # @callback_funcs:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      callback_data = if callback_data.nil?
                        Pointer(Void).null
                      else
                        callback_data.to_unsafe
                      end

      # C call
      LibGLib.g_source_set_callback_indirect(to_unsafe, callback_data, callback_funcs)

      # Return value handling
    end

    def can_recurse=(can_recurse : Bool) : Nil
      # g_source_set_can_recurse: (Method)
      # @can_recurse:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_set_can_recurse(to_unsafe, can_recurse)

      # Return value handling
    end

    def funcs=(funcs : GLib::SourceFuncs) : Nil
      # g_source_set_funcs: (Method)
      # @funcs:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_set_funcs(to_unsafe, funcs)

      # Return value handling
    end

    def name=(name : ::String) : Nil
      # g_source_set_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_set_name(to_unsafe, name)

      # Return value handling
    end

    def priority=(priority : Int32) : Nil
      # g_source_set_priority: (Method)
      # @priority:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_set_priority(to_unsafe, priority)

      # Return value handling
    end

    def ready_time=(ready_time : Int64) : Nil
      # g_source_set_ready_time: (Method)
      # @ready_time:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_set_ready_time(to_unsafe, ready_time)

      # Return value handling
    end

    def static_name=(name : ::String) : Nil
      # g_source_set_static_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_set_static_name(to_unsafe, name)

      # Return value handling
    end

    def unref : Nil
      # g_source_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_unref(to_unsafe)

      # Return value handling
    end

    def self.remove(tag : UInt32) : Bool
      # g_source_remove: (None)
      # @tag:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_source_remove(tag)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.set_name_by_id(tag : UInt32, name : ::String) : Nil
      # g_source_set_name_by_id: (None)
      # @tag:
      # @name:
      # Returns: (transfer none)

      # C call
      LibGLib.g_source_set_name_by_id(tag, name)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
