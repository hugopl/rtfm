module GLib
  struct PathBuf
    @data : LibGLib::PathBuf

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGLib::PathBuf)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(dummy : Enumerable(Pointer(Void))? = nil)
      @data = LibGLib::PathBuf.new
      @data.dummy = dummy unless dummy.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGLib::PathBuf)).zero?
    end

    delegate :dummy, to: @data
    delegate :dummy=, to: @data

    def clear : Nil
      # g_path_buf_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_path_buf_clear(to_unsafe)

      # Return value handling
    end

    def clear_to_path : ::Path?
      # g_path_buf_clear_to_path: (Method)
      # Returns: (transfer full) (filename) (nullable)

      # C call
      _retval = LibGLib.g_path_buf_clear_to_path(to_unsafe)

      # Return value handling
      ::Path.new(GICrystal.transfer_full(_retval)) unless _retval.null?
    end

    def free : Nil
      # g_path_buf_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_path_buf_free(to_unsafe)

      # Return value handling
    end

    def free_to_path : ::Path?
      # g_path_buf_free_to_path: (Method)
      # Returns: (transfer full) (filename) (nullable)

      # C call
      _retval = LibGLib.g_path_buf_free_to_path(to_unsafe)

      # Return value handling
      ::Path.new(GICrystal.transfer_full(_retval)) unless _retval.null?
    end

    def init : GLib::PathBuf
      # g_path_buf_init: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_path_buf_init(to_unsafe)

      # Return value handling
      GLib::PathBuf.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_path(path : ::String?) : GLib::PathBuf
      # g_path_buf_init_from_path: (Method)
      # @path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end

      # C call
      _retval = LibGLib.g_path_buf_init_from_path(to_unsafe, path)

      # Return value handling
      GLib::PathBuf.new(_retval, GICrystal::Transfer::None)
    end

    def pop : Bool
      # g_path_buf_pop: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_path_buf_pop(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def push(path : ::String) : GLib::PathBuf
      # g_path_buf_push: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_path_buf_push(to_unsafe, path)

      # Return value handling
      GLib::PathBuf.new(_retval, GICrystal::Transfer::None)
    end

    def extension=(extension : ::String?) : Bool
      # g_path_buf_set_extension: (Method)
      # @extension: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      extension = if extension.nil?
                    Pointer(LibC::Char).null
                  else
                    extension.to_unsafe
                  end

      # C call
      _retval = LibGLib.g_path_buf_set_extension(to_unsafe, extension)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def filename=(file_name : ::String) : Bool
      # g_path_buf_set_filename: (Method)
      # @file_name:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_path_buf_set_filename(to_unsafe, file_name)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_path : ::Path?
      # g_path_buf_to_path: (Method)
      # Returns: (transfer full) (filename) (nullable)

      # C call
      _retval = LibGLib.g_path_buf_to_path(to_unsafe)

      # Return value handling
      ::Path.new(GICrystal.transfer_full(_retval)) unless _retval.null?
    end

    def self.equal(v1 : Pointer(Void), v2 : Pointer(Void)) : Bool
      # g_path_buf_equal: (None)
      # @v1:
      # @v2:
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_path_buf_equal(v1, v2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
