module Gio
  class UnixMountPoint
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(UnixMountPoint.g_type, pointer)
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
      LibGObject.g_boxed_free(UnixMountPoint.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_unix_mount_point_get_type
    end

    def compare(mount2 : Gio::UnixMountPoint) : Int32
      # g_unix_mount_point_compare: (Method)
      # @mount2:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_mount_point_compare(to_unsafe, mount2)

      # Return value handling
      _retval
    end

    def copy : Gio::UnixMountPoint
      # g_unix_mount_point_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_mount_point_copy(to_unsafe)

      # Return value handling
      Gio::UnixMountPoint.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # g_unix_mount_point_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_unix_mount_point_free(to_unsafe)

      # Return value handling
    end

    def device_path : ::Path
      # g_unix_mount_point_get_device_path: (Method)
      # Returns: (transfer none) (filename)

      # C call
      _retval = LibGio.g_unix_mount_point_get_device_path(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval))
    end

    def fs_type : ::String
      # g_unix_mount_point_get_fs_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_mount_point_get_fs_type(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def mount_path : ::Path
      # g_unix_mount_point_get_mount_path: (Method)
      # Returns: (transfer none) (filename)

      # C call
      _retval = LibGio.g_unix_mount_point_get_mount_path(to_unsafe)

      # Return value handling
      ::Path.new(::String.new(_retval))
    end

    def options : ::String?
      # g_unix_mount_point_get_options: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGio.g_unix_mount_point_get_options(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def guess_can_eject : Bool
      # g_unix_mount_point_guess_can_eject: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_mount_point_guess_can_eject(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def guess_icon : Gio::Icon
      # g_unix_mount_point_guess_icon: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_mount_point_guess_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def guess_name : ::String
      # g_unix_mount_point_guess_name: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_mount_point_guess_name(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def guess_symbolic_icon : Gio::Icon
      # g_unix_mount_point_guess_symbolic_icon: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_mount_point_guess_symbolic_icon(to_unsafe)

      # Return value handling
      Gio::AbstractIcon.new(_retval, GICrystal::Transfer::Full)
    end

    def is_loopback : Bool
      # g_unix_mount_point_is_loopback: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_mount_point_is_loopback(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_readonly : Bool
      # g_unix_mount_point_is_readonly: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_mount_point_is_readonly(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_user_mountable : Bool
      # g_unix_mount_point_is_user_mountable: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_mount_point_is_user_mountable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.at(mount_path : ::String) : Gio::UnixMountPoint?
      # g_unix_mount_point_at: (None)
      # @mount_path:
      # @time_read: (out) (transfer full) (optional)
      # Returns: (transfer full) (nullable)

      # Generator::OutArgUsedInReturnPlan
      time_read = Pointer(UInt64).null
      # C call
      _retval = LibGio.g_unix_mount_point_at(mount_path, time_read)

      # Return value handling
      Gio::UnixMountPoint.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
