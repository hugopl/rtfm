require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class UnixFDList < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::UnixFDListClass), class_init,
        sizeof(LibGio::UnixFDList), instance_init, 0)
    end

    GICrystal.declare_new_method(UnixFDList, g_object_get_qdata)

    # Initialize a new `UnixFDList`.
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
      @@g_type ||= LibGio.g_unix_fd_list_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::UnixFDList.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # g_unix_fd_list_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_unix_fd_list_new

      # Return value handling
      Gio::UnixFDList.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_array(fds : Enumerable(Int32)) : self
      # g_unix_fd_list_new_from_array: (Constructor)
      # @fds: (array length=n_fds element-type Int32)
      # @n_fds:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_fds = fds.size
      # Generator::ArrayArgPlan
      fds = fds.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      _retval = LibGio.g_unix_fd_list_new_from_array(fds, n_fds)

      # Return value handling
      Gio::UnixFDList.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_array(*fds : Int32)
      self.new_from_array(fds)
    end

    def append(fd : Int32) : Int32
      # g_unix_fd_list_append: (Method | Throws)
      # @fd:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_unix_fd_list_append(to_unsafe, fd, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def get(index_ : Int32) : Int32
      # g_unix_fd_list_get: (Method | Throws)
      # @index_:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGio.g_unix_fd_list_get(to_unsafe, index_, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      _retval
    end

    def length : Int32
      # g_unix_fd_list_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_unix_fd_list_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def peek_fds : Enumerable(Int32)
      # g_unix_fd_list_peek_fds: (Method)
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer none) (array length=length element-type Int32)

      # Generator::OutArgUsedInReturnPlan
      length = 0
      # C call
      _retval = LibGio.g_unix_fd_list_peek_fds(to_unsafe, pointerof(length))

      # Return value handling
      GICrystal.transfer_array(_retval, length, GICrystal::Transfer::None)
    end

    def steal_fds : Enumerable(Int32)
      # g_unix_fd_list_steal_fds: (Method)
      # @length: (out) (transfer full) (optional)
      # Returns: (transfer full) (array length=length element-type Int32)

      # Generator::OutArgUsedInReturnPlan
      length = 0
      # C call
      _retval = LibGio.g_unix_fd_list_steal_fds(to_unsafe, pointerof(length))

      # Return value handling
      GICrystal.transfer_array(_retval, length, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
