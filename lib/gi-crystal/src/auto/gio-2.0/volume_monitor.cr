require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class VolumeMonitor < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::VolumeMonitorClass), class_init,
        sizeof(LibGio::VolumeMonitor), instance_init, 0)
    end

    GICrystal.declare_new_method(VolumeMonitor, g_object_get_qdata)

    # Initialize a new `VolumeMonitor`.
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
      @@g_type ||= LibGio.g_volume_monitor_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::VolumeMonitor.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.adopt_orphan_mount(mount : Gio::Mount) : Gio::Volume
      # g_volume_monitor_adopt_orphan_mount: (None)
      # @mount:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_monitor_adopt_orphan_mount(mount)

      # Return value handling
      Gio::AbstractVolume.new(_retval, GICrystal::Transfer::Full)
    end

    def self.get : Gio::VolumeMonitor
      # g_volume_monitor_get: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_monitor_get

      # Return value handling
      Gio::VolumeMonitor.new(_retval, GICrystal::Transfer::Full)
    end

    def connected_drives : GLib::List
      # g_volume_monitor_get_connected_drives: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_monitor_get_connected_drives(to_unsafe)

      # Return value handling
      GLib::List(Gio::Drive).new(_retval, GICrystal::Transfer::Full)
    end

    def mount_for_uuid(uuid : ::String) : Gio::Mount?
      # g_volume_monitor_get_mount_for_uuid: (Method)
      # @uuid:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_volume_monitor_get_mount_for_uuid(to_unsafe, uuid)

      # Return value handling
      Gio::AbstractMount.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def mounts : GLib::List
      # g_volume_monitor_get_mounts: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_monitor_get_mounts(to_unsafe)

      # Return value handling
      GLib::List(Gio::Mount).new(_retval, GICrystal::Transfer::Full)
    end

    def volume_for_uuid(uuid : ::String) : Gio::Volume?
      # g_volume_monitor_get_volume_for_uuid: (Method)
      # @uuid:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGio.g_volume_monitor_get_volume_for_uuid(to_unsafe, uuid)

      # Return value handling
      Gio::AbstractVolume.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def volumes : GLib::List
      # g_volume_monitor_get_volumes: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_volume_monitor_get_volumes(to_unsafe)

      # Return value handling
      GLib::List(Gio::Volume).new(_retval, GICrystal::Transfer::Full)
    end

    struct DriveChangedSignal < GObject::Signal
      def name : String
        @detail ? "drive-changed::#{@detail}" : "drive-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Drive, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Drive, Nil)).unbox(_lib_box).call(drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Drive, Nil)).unbox(_lib_box).call(_sender, drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drive : Gio::Drive) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drive-changed", drive)
      end
    end

    def drive_changed_signal
      DriveChangedSignal.new(self)
    end

    struct DriveConnectedSignal < GObject::Signal
      def name : String
        @detail ? "drive-connected::#{@detail}" : "drive-connected"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Drive, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Drive, Nil)).unbox(_lib_box).call(drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Drive, Nil)).unbox(_lib_box).call(_sender, drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drive : Gio::Drive) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drive-connected", drive)
      end
    end

    def drive_connected_signal
      DriveConnectedSignal.new(self)
    end

    struct DriveDisconnectedSignal < GObject::Signal
      def name : String
        @detail ? "drive-disconnected::#{@detail}" : "drive-disconnected"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Drive, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Drive, Nil)).unbox(_lib_box).call(drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Drive, Nil)).unbox(_lib_box).call(_sender, drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drive : Gio::Drive) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drive-disconnected", drive)
      end
    end

    def drive_disconnected_signal
      DriveDisconnectedSignal.new(self)
    end

    struct DriveEjectButtonSignal < GObject::Signal
      def name : String
        @detail ? "drive-eject-button::#{@detail}" : "drive-eject-button"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Drive, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Drive, Nil)).unbox(_lib_box).call(drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Drive, Nil)).unbox(_lib_box).call(_sender, drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drive : Gio::Drive) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drive-eject-button", drive)
      end
    end

    def drive_eject_button_signal
      DriveEjectButtonSignal.new(self)
    end

    struct DriveStopButtonSignal < GObject::Signal
      def name : String
        @detail ? "drive-stop-button::#{@detail}" : "drive-stop-button"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Drive, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Drive, Nil)).unbox(_lib_box).call(drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Drive, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_drive : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          drive = Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Drive, Nil)).unbox(_lib_box).call(_sender, drive)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(drive : Gio::Drive) : Nil
        LibGObject.g_signal_emit_by_name(@source, "drive-stop-button", drive)
      end
    end

    def drive_stop_button_signal
      DriveStopButtonSignal.new(self)
    end

    struct MountAddedSignal < GObject::Signal
      def name : String
        @detail ? "mount-added::#{@detail}" : "mount-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Mount, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Mount, Nil)).unbox(_lib_box).call(mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Mount, Nil)).unbox(_lib_box).call(_sender, mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(mount : Gio::Mount) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mount-added", mount)
      end
    end

    def mount_added_signal
      MountAddedSignal.new(self)
    end

    struct MountChangedSignal < GObject::Signal
      def name : String
        @detail ? "mount-changed::#{@detail}" : "mount-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Mount, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Mount, Nil)).unbox(_lib_box).call(mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Mount, Nil)).unbox(_lib_box).call(_sender, mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(mount : Gio::Mount) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mount-changed", mount)
      end
    end

    def mount_changed_signal
      MountChangedSignal.new(self)
    end

    struct MountPreUnmountSignal < GObject::Signal
      def name : String
        @detail ? "mount-pre-unmount::#{@detail}" : "mount-pre-unmount"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Mount, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Mount, Nil)).unbox(_lib_box).call(mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Mount, Nil)).unbox(_lib_box).call(_sender, mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(mount : Gio::Mount) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mount-pre-unmount", mount)
      end
    end

    def mount_pre_unmount_signal
      MountPreUnmountSignal.new(self)
    end

    struct MountRemovedSignal < GObject::Signal
      def name : String
        @detail ? "mount-removed::#{@detail}" : "mount-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Mount, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Mount, Nil)).unbox(_lib_box).call(mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Mount, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_mount : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          mount = Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Mount, Nil)).unbox(_lib_box).call(_sender, mount)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(mount : Gio::Mount) : Nil
        LibGObject.g_signal_emit_by_name(@source, "mount-removed", mount)
      end
    end

    def mount_removed_signal
      MountRemovedSignal.new(self)
    end

    struct VolumeAddedSignal < GObject::Signal
      def name : String
        @detail ? "volume-added::#{@detail}" : "volume-added"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Volume, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_volume : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          volume = Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Volume, Nil)).unbox(_lib_box).call(volume)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_volume : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          volume = Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Volume, Nil)).unbox(_lib_box).call(_sender, volume)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(volume : Gio::Volume) : Nil
        LibGObject.g_signal_emit_by_name(@source, "volume-added", volume)
      end
    end

    def volume_added_signal
      VolumeAddedSignal.new(self)
    end

    struct VolumeChangedSignal < GObject::Signal
      def name : String
        @detail ? "volume-changed::#{@detail}" : "volume-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Volume, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_volume : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          volume = Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Volume, Nil)).unbox(_lib_box).call(volume)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_volume : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          volume = Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Volume, Nil)).unbox(_lib_box).call(_sender, volume)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(volume : Gio::Volume) : Nil
        LibGObject.g_signal_emit_by_name(@source, "volume-changed", volume)
      end
    end

    def volume_changed_signal
      VolumeChangedSignal.new(self)
    end

    struct VolumeRemovedSignal < GObject::Signal
      def name : String
        @detail ? "volume-removed::#{@detail}" : "volume-removed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gio::Volume, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_volume : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          volume = Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)
          ::Box(Proc(Gio::Volume, Nil)).unbox(_lib_box).call(volume)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gio::VolumeMonitor, Gio::Volume, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_volume : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gio::VolumeMonitor.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          volume = Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)
          ::Box(Proc(Gio::VolumeMonitor, Gio::Volume, Nil)).unbox(_lib_box).call(_sender, volume)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(volume : Gio::Volume) : Nil
        LibGObject.g_signal_emit_by_name(@source, "volume-removed", volume)
      end
    end

    def volume_removed_signal
      VolumeRemovedSignal.new(self)
    end

    # drive_changed: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_drive_changed_vfunc(impl_method_name)
      private def self._vfunc_drive_changed(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
        # @drive: 

# Generator::BuiltInTypeArgPlan
drive=Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(drive)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drive_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drive_changed: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_unsafe_drive_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drive_changed(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
# @drive: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_drive)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 208).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drive_changed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drive_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drive_changed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # drive_connected: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_drive_connected_vfunc(impl_method_name)
      private def self._vfunc_drive_connected(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
        # @drive: 

# Generator::BuiltInTypeArgPlan
drive=Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(drive)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drive_connected(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drive_connected: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_unsafe_drive_connected_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drive_connected(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
# @drive: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_drive)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 192).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drive_connected = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drive_connected(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drive_connected : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # drive_disconnected: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_drive_disconnected_vfunc(impl_method_name)
      private def self._vfunc_drive_disconnected(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
        # @drive: 

# Generator::BuiltInTypeArgPlan
drive=Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(drive)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drive_disconnected(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drive_disconnected: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_unsafe_drive_disconnected_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drive_disconnected(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
# @drive: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_drive)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 200).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drive_disconnected = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drive_disconnected(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drive_disconnected : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # drive_eject_button: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_drive_eject_button_vfunc(impl_method_name)
      private def self._vfunc_drive_eject_button(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
        # @drive: 

# Generator::BuiltInTypeArgPlan
drive=Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(drive)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drive_eject_button(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drive_eject_button: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_unsafe_drive_eject_button_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drive_eject_button(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
# @drive: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_drive)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 272).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drive_eject_button = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drive_eject_button(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drive_eject_button : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # drive_stop_button: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_drive_stop_button_vfunc(impl_method_name)
      private def self._vfunc_drive_stop_button(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
        # @drive: 

# Generator::BuiltInTypeArgPlan
drive=Gio::AbstractDrive.new(lib_drive, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(drive)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drive_stop_button(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drive_stop_button: (None)
    # @drive:
    # Returns: (transfer none)
    private macro _register_unsafe_drive_stop_button_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drive_stop_button(%this : Pointer(Void), lib_drive :  Pointer(Void), ) : Void
# @drive: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_drive)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 280).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drive_stop_button = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drive_stop_button(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drive_stop_button : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # get_connected_drives: (None)
    # Returns: (transfer full)
    private macro _register_get_connected_drives_vfunc(impl_method_name)
      private def self._vfunc_get_connected_drives(%this : Pointer(Void), ) : Pointer(LibGLib::List)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_connected_drives(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_connected_drives: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_connected_drives_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_connected_drives(%this : Pointer(Void), ) : Pointer(LibGLib::List)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 224).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_connected_drives = Proc(Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_connected_drives(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_connected_drives : Proc(Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # get_mount_for_uuid: (None)
    # @uuid:
    # Returns: (transfer full) (nullable)
    private macro _register_get_mount_for_uuid_vfunc(impl_method_name)
      private def self._vfunc_get_mount_for_uuid(%this : Pointer(Void), lib_uuid :  Pointer(LibC::Char), ) : Pointer(Void)
        # @uuid: 

# Generator::BuiltInTypeArgPlan
uuid=::String.new(lib_uuid)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uuid)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_mount_for_uuid(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_mount_for_uuid: (None)
    # @uuid:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_mount_for_uuid_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_mount_for_uuid(%this : Pointer(Void), lib_uuid :  Pointer(LibC::Char), ) : Pointer(Void)
# @uuid: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uuid)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 256).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_mount_for_uuid = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_mount_for_uuid(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_mount_for_uuid : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_mounts: (None)
    # Returns: (transfer full)
    private macro _register_get_mounts_vfunc(impl_method_name)
      private def self._vfunc_get_mounts(%this : Pointer(Void), ) : Pointer(LibGLib::List)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_mounts(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_mounts: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_mounts_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_mounts(%this : Pointer(Void), ) : Pointer(LibGLib::List)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 240).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_mounts = Proc(Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_mounts(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_mounts : Proc(Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # get_volume_for_uuid: (None)
    # @uuid:
    # Returns: (transfer full) (nullable)
    private macro _register_get_volume_for_uuid_vfunc(impl_method_name)
      private def self._vfunc_get_volume_for_uuid(%this : Pointer(Void), lib_uuid :  Pointer(LibC::Char), ) : Pointer(Void)
        # @uuid: 

# Generator::BuiltInTypeArgPlan
uuid=::String.new(lib_uuid)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(uuid)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_volume_for_uuid(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_volume_for_uuid: (None)
    # @uuid:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_volume_for_uuid_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_volume_for_uuid(%this : Pointer(Void), lib_uuid :  Pointer(LibC::Char), ) : Pointer(Void)
# @uuid: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_uuid)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 248).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_volume_for_uuid = Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_volume_for_uuid(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_volume_for_uuid : Proc(Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # get_volumes: (None)
    # Returns: (transfer full)
    private macro _register_get_volumes_vfunc(impl_method_name)
      private def self._vfunc_get_volumes(%this : Pointer(Void), ) : Pointer(LibGLib::List)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_volumes(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_volumes: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_volumes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_volumes(%this : Pointer(Void), ) : Pointer(LibGLib::List)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 232).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_volumes = Proc(Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_volumes(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_volumes : Proc(Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # mount_added: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_mount_added_vfunc(impl_method_name)
      private def self._vfunc_mount_added(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
        # @mount: 

# Generator::BuiltInTypeArgPlan
mount=Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(mount)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_added: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_unsafe_mount_added_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_added(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
# @mount: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_mount)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_added = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_added : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # mount_changed: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_mount_changed_vfunc(impl_method_name)
      private def self._vfunc_mount_changed(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
        # @mount: 

# Generator::BuiltInTypeArgPlan
mount=Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(mount)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_changed: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_unsafe_mount_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_changed(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
# @mount: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_mount)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_changed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_changed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # mount_pre_unmount: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_mount_pre_unmount_vfunc(impl_method_name)
      private def self._vfunc_mount_pre_unmount(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
        # @mount: 

# Generator::BuiltInTypeArgPlan
mount=Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(mount)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_pre_unmount(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_pre_unmount: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_unsafe_mount_pre_unmount_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_pre_unmount(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
# @mount: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_mount)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_pre_unmount = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_pre_unmount(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_pre_unmount : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # mount_removed: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_mount_removed_vfunc(impl_method_name)
      private def self._vfunc_mount_removed(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
        # @mount: 

# Generator::BuiltInTypeArgPlan
mount=Gio::AbstractMount.new(lib_mount, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(mount)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_mount_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # mount_removed: (None)
    # @mount:
    # Returns: (transfer none)
    private macro _register_unsafe_mount_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_mount_removed(%this : Pointer(Void), lib_mount :  Pointer(Void), ) : Void
# @mount: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_mount)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_mount_removed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_mount_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_mount_removed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # volume_added: (None)
    # @volume:
    # Returns: (transfer none)
    private macro _register_volume_added_vfunc(impl_method_name)
      private def self._vfunc_volume_added(%this : Pointer(Void), lib_volume :  Pointer(Void), ) : Void
        # @volume: 

# Generator::BuiltInTypeArgPlan
volume=Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(volume)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_volume_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # volume_added: (None)
    # @volume:
    # Returns: (transfer none)
    private macro _register_unsafe_volume_added_vfunc(impl_method_name)
      private def self._vfunc_unsafe_volume_added(%this : Pointer(Void), lib_volume :  Pointer(Void), ) : Void
# @volume: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_volume)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_volume_added = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_volume_added(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_volume_added : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # volume_changed: (None)
    # @volume:
    # Returns: (transfer none)
    private macro _register_volume_changed_vfunc(impl_method_name)
      private def self._vfunc_volume_changed(%this : Pointer(Void), lib_volume :  Pointer(Void), ) : Void
        # @volume: 

# Generator::BuiltInTypeArgPlan
volume=Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(volume)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_volume_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # volume_changed: (None)
    # @volume:
    # Returns: (transfer none)
    private macro _register_unsafe_volume_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_volume_changed(%this : Pointer(Void), lib_volume :  Pointer(Void), ) : Void
# @volume: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_volume)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_volume_changed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_volume_changed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_volume_changed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # volume_removed: (None)
    # @volume:
    # Returns: (transfer none)
    private macro _register_volume_removed_vfunc(impl_method_name)
      private def self._vfunc_volume_removed(%this : Pointer(Void), lib_volume :  Pointer(Void), ) : Void
        # @volume: 

# Generator::BuiltInTypeArgPlan
volume=Gio::AbstractVolume.new(lib_volume, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(volume)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_volume_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # volume_removed: (None)
    # @volume:
    # Returns: (transfer none)
    private macro _register_unsafe_volume_removed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_volume_removed(%this : Pointer(Void), lib_volume :  Pointer(Void), ) : Void
# @volume: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_volume)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_volume_removed = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_volume_removed(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_volume_removed : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
