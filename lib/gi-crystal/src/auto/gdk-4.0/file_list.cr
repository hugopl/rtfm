module Gdk
  class FileList
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(FileList.g_type, pointer)
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
      LibGObject.g_boxed_free(FileList.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_file_list_get_type
    end

    def self.new_from_array(files : Enumerable(Gio::File)) : self
      # gdk_file_list_new_from_array: (Constructor)
      # @files: (array length=n_files element-type Interface)
      # @n_files:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_files = files.size
      # Generator::ArrayArgPlan
      files = files.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGio::File)))

      # C call
      _retval = LibGdk.gdk_file_list_new_from_array(files, n_files)

      # Return value handling
      Gdk::FileList.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_array(*files : Gio::File)
      self.new_from_array(files)
    end

    def self.new_from_list(files : GLib::SList) : self
      # gdk_file_list_new_from_list: (Constructor)
      # @files:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_file_list_new_from_list(files)

      # Return value handling
      Gdk::FileList.new(_retval, GICrystal::Transfer::Full)
    end

    def files : GLib::SList
      # gdk_file_list_get_files: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGdk.gdk_file_list_get_files(to_unsafe)

      # Return value handling
      GLib::SList(Gio::File).new(_retval, GICrystal::Transfer::Container)
    end

    def to_unsafe
      @pointer
    end
  end
end
