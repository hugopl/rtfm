require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class UnixMountMonitor < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::UnixMountMonitorClass), class_init,
        sizeof(LibGio::UnixMountMonitor), instance_init, 0)
    end

    GICrystal.declare_new_method(UnixMountMonitor, g_object_get_qdata)

    # Initialize a new `UnixMountMonitor`.
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
      @@g_type ||= LibGio.g_unix_mount_monitor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::UnixMountMonitor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.new : self
      # g_unix_mount_monitor_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_mount_monitor_new

      # Return value handling
      Gio::UnixMountMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    def self.get : Gio::UnixMountMonitor
      # g_unix_mount_monitor_get: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_mount_monitor_get

      # Return value handling
      Gio::UnixMountMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def rate_limit=(limit_msec : Int32) : Nil
      # g_unix_mount_monitor_set_rate_limit: (Method)
      # @limit_msec:
      # Returns: (transfer none)

      # C call
      LibGio.g_unix_mount_monitor_set_rate_limit(to_unsafe, limit_msec)

      # Return value handling
    end

    struct MountpointsChangedSignal < GObject::Signal
      def name : String
        @detail ? "mountpoints-changed::#{@detail}" : "mountpoints-changed"
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

      def connect(handler : Proc(Gio::UnixMountMonitor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::UnixMountMonitor.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::UnixMountMonitor, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "mountpoints-changed")
      end
    end

    def mountpoints_changed_signal
      MountpointsChangedSignal.new(self)
    end

    struct MountsChangedSignal < GObject::Signal
      def name : String
        @detail ? "mounts-changed::#{@detail}" : "mounts-changed"
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

      def connect(handler : Proc(Gio::UnixMountMonitor, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::UnixMountMonitor.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gio::UnixMountMonitor, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "mounts-changed")
      end
    end

    def mounts_changed_signal
      MountsChangedSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
