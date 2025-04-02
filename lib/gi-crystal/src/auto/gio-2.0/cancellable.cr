require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class Cancellable < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::CancellableClass), class_init,
        sizeof(LibGio::Cancellable), instance_init, 0)
    end

    GICrystal.declare_new_method(Cancellable, g_object_get_qdata)

    # Initialize a new `Cancellable`.
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
      @@g_type ||= LibGio.g_cancellable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::Cancellable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_cancellable_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_cancellable_new

      # Return value handling
      Gio::Cancellable.new(_retval, GICrystal::Transfer::Full)
    end

    def self.current : Gio::Cancellable?
      # g_cancellable_get_current: (None)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_cancellable_get_current

      # Return value handling
      Gio::Cancellable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def cancel : Nil
      # g_cancellable_cancel: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_cancellable_cancel(to_unsafe)

      # Return value handling
    end

    def connect(callback : GObject::Callback) : UInt64
      # g_cancellable_connect: (Method)
      # @callback:
      # @data: (nullable)
      # @data_destroy_func: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = -> {
          ::Box(Proc(Nil)).unbox(Pointer(Void).null).call
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        data_destroy_func = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = data = data_destroy_func = Pointer(Void).null
      end

      # C call
      _retval = LibGio.g_cancellable_connect(to_unsafe, callback, data, data_destroy_func)

      # Return value handling
      _retval
    end

    def disconnect(handler_id : UInt64) : Nil
      # g_cancellable_disconnect: (Method)
      # @handler_id:
      # Returns: (transfer none)

      # C call
      LibGio.g_cancellable_disconnect(to_unsafe, handler_id)

      # Return value handling
    end

    def fd : Int32
      # g_cancellable_get_fd: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_cancellable_get_fd(to_unsafe)

      # Return value handling
      _retval
    end

    def is_cancelled : Bool
      # g_cancellable_is_cancelled: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_cancellable_is_cancelled(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def make_pollfd(pollfd : GLib::PollFD) : Bool
      # g_cancellable_make_pollfd: (Method)
      # @pollfd:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_cancellable_make_pollfd(to_unsafe, pollfd)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pop_current : Nil
      # g_cancellable_pop_current: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_cancellable_pop_current(to_unsafe)

      # Return value handling
    end

    def push_current : Nil
      # g_cancellable_push_current: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_cancellable_push_current(to_unsafe)

      # Return value handling
    end

    def release_fd : Nil
      # g_cancellable_release_fd: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_cancellable_release_fd(to_unsafe)

      # Return value handling
    end

    def reset : Nil
      # g_cancellable_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_cancellable_reset(to_unsafe)

      # Return value handling
    end

    def set_error_if_cancelled : Bool
      # g_cancellable_set_error_if_cancelled: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_cancellable_set_error_if_cancelled(to_unsafe, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def source_new : GLib::Source
      # g_cancellable_source_new: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_cancellable_source_new(to_unsafe)

      # Return value handling
      GLib::Source.new(_retval, GICrystal::Transfer::Full)
    end

    struct CancelledSignal < GObject::Signal
      def name : String
        @detail ? "cancelled::#{@detail}" : "cancelled"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::Cancellable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::Cancellable.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Cancellable, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "cancelled")
      end
    end

    def cancelled_signal
      CancelledSignal.new(self)
    end

    # cancelled: (None)
    # Returns: (transfer none)
    private macro _register_cancelled_vfunc(impl_method_name)
      private def self._vfunc_cancelled(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_cancelled(Pointer(Void))).pointer
        previous_def
      end
    end

    # cancelled: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_cancelled_vfunc(impl_method_name)
      private def self._vfunc_unsafe_cancelled(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_cancelled = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_cancelled(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_cancelled : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
