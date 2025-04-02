module Gio
  class IOExtensionPoint
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

    def extension_by_name(name : ::String) : Gio::IOExtension
      # g_io_extension_point_get_extension_by_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_point_get_extension_by_name(to_unsafe, name)

      # Return value handling
      Gio::IOExtension.new(_retval, GICrystal::Transfer::None)
    end

    def extensions : GLib::List
      # g_io_extension_point_get_extensions: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_point_get_extensions(to_unsafe)

      # Return value handling
      GLib::List(Gio::IOExtension).new(_retval, GICrystal::Transfer::None)
    end

    def required_type : UInt64
      # g_io_extension_point_get_required_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_point_get_required_type(to_unsafe)

      # Return value handling
      _retval
    end

    def required_type=(type : UInt64) : Nil
      # g_io_extension_point_set_required_type: (Method)
      # @type:
      # Returns: (transfer none)

      # C call
      LibGio.g_io_extension_point_set_required_type(to_unsafe, type)

      # Return value handling
    end

    def self.implement(extension_point_name : ::String, type : UInt64, extension_name : ::String, priority : Int32) : Gio::IOExtension
      # g_io_extension_point_implement: (None)
      # @extension_point_name:
      # @type:
      # @extension_name:
      # @priority:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_point_implement(extension_point_name, type, extension_name, priority)

      # Return value handling
      Gio::IOExtension.new(_retval, GICrystal::Transfer::None)
    end

    def self.lookup(name : ::String) : Gio::IOExtensionPoint
      # g_io_extension_point_lookup: (None)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_point_lookup(name)

      # Return value handling
      Gio::IOExtensionPoint.new(_retval, GICrystal::Transfer::None)
    end

    def self.register(name : ::String) : Gio::IOExtensionPoint
      # g_io_extension_point_register: (None)
      # @name:
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_io_extension_point_register(name)

      # Return value handling
      Gio::IOExtensionPoint.new(_retval, GICrystal::Transfer::None)
    end

    def to_unsafe
      @pointer
    end
  end
end
