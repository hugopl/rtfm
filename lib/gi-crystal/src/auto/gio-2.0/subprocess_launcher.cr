require "../g_object-2.0/object"

module Gio
  @[GICrystal::GeneratedWrapper]
  class SubprocessLauncher < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(SubprocessLauncher, g_object_get_qdata)

    # Initialize a new `SubprocessLauncher`.
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

    def initialize(*, flags : Gio::SubprocessFlags? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !flags.nil?
        (_names.to_unsafe + _n).value = "flags".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, flags)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGio.g_subprocess_launcher_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::SubprocessLauncher.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def flags=(value : Gio::SubprocessFlags) : Gio::SubprocessFlags
      unsafe_value = value

      LibGObject.g_object_set(self, "flags", unsafe_value, Pointer(Void).null)
      value
    end

    def self.new(flags : Gio::SubprocessFlags) : self
      # g_subprocess_launcher_new: (Constructor)
      # @flags:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_subprocess_launcher_new(flags)

      # Return value handling
      Gio::SubprocessLauncher.new(_retval, GICrystal::Transfer::Full)
    end

    def close : Nil
      # g_subprocess_launcher_close: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_close(to_unsafe)

      # Return value handling
    end

    def getenv(variable : ::String) : ::Path?
      # g_subprocess_launcher_getenv: (Method)
      # @variable:
      # Returns: (transfer none) (filename) (nullable)

      # C call
      _retval = LibGio.g_subprocess_launcher_getenv(to_unsafe, variable)

      # Return value handling
      ::Path.new(::String.new(_retval)) unless _retval.null?
    end

    def cwd=(cwd : ::String) : Nil
      # g_subprocess_launcher_set_cwd: (Method)
      # @cwd:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_set_cwd(to_unsafe, cwd)

      # Return value handling
    end

    def environ=(env : Enumerable(::String)) : Nil
      # g_subprocess_launcher_set_environ: (Method)
      # @env: (array zero-terminated=1 element-type Filename)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      env = env.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      LibGio.g_subprocess_launcher_set_environ(to_unsafe, env)

      # Return value handling
    end

    def flags=(flags : Gio::SubprocessFlags) : Nil
      # g_subprocess_launcher_set_flags: (Method)
      # @flags:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_set_flags(to_unsafe, flags)

      # Return value handling
    end

    def stderr_file_path=(path : ::String?) : Nil
      # g_subprocess_launcher_set_stderr_file_path: (Method)
      # @path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end

      # C call
      LibGio.g_subprocess_launcher_set_stderr_file_path(to_unsafe, path)

      # Return value handling
    end

    def stdin_file_path=(path : ::String?) : Nil
      # g_subprocess_launcher_set_stdin_file_path: (Method)
      # @path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end

      # C call
      LibGio.g_subprocess_launcher_set_stdin_file_path(to_unsafe, path)

      # Return value handling
    end

    def stdout_file_path=(path : ::String?) : Nil
      # g_subprocess_launcher_set_stdout_file_path: (Method)
      # @path: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      path = if path.nil?
               Pointer(LibC::Char).null
             else
               path.to_unsafe
             end

      # C call
      LibGio.g_subprocess_launcher_set_stdout_file_path(to_unsafe, path)

      # Return value handling
    end

    def setenv(variable : ::String, value : ::String, overwrite : Bool) : Nil
      # g_subprocess_launcher_setenv: (Method)
      # @variable:
      # @value:
      # @overwrite:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_setenv(to_unsafe, variable, value, overwrite)

      # Return value handling
    end

    def spawnv(argv : Enumerable(::String)) : Gio::Subprocess
      # g_subprocess_launcher_spawnv: (Method | Throws)
      # @argv: (array zero-terminated=1 element-type Filename)
      # Returns: (transfer full)

      _error = Pointer(LibGLib::Error).null

      # Generator::ArrayArgPlan
      argv = argv.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibGio.g_subprocess_launcher_spawnv(to_unsafe, argv, pointerof(_error))

      # Error check
      Gio.raise_gerror(_error) unless _error.null?

      # Return value handling
      Gio::Subprocess.new(_retval, GICrystal::Transfer::Full)
    end

    def spawnv(*argv : ::String)
      spawnv(argv)
    end

    def take_fd(source_fd : Int32, target_fd : Int32) : Nil
      # g_subprocess_launcher_take_fd: (Method)
      # @source_fd:
      # @target_fd:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_take_fd(to_unsafe, source_fd, target_fd)

      # Return value handling
    end

    def take_stderr_fd(fd : Int32) : Nil
      # g_subprocess_launcher_take_stderr_fd: (Method)
      # @fd:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_take_stderr_fd(to_unsafe, fd)

      # Return value handling
    end

    def take_stdin_fd(fd : Int32) : Nil
      # g_subprocess_launcher_take_stdin_fd: (Method)
      # @fd:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_take_stdin_fd(to_unsafe, fd)

      # Return value handling
    end

    def take_stdout_fd(fd : Int32) : Nil
      # g_subprocess_launcher_take_stdout_fd: (Method)
      # @fd:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_take_stdout_fd(to_unsafe, fd)

      # Return value handling
    end

    def unsetenv(variable : ::String) : Nil
      # g_subprocess_launcher_unsetenv: (Method)
      # @variable:
      # Returns: (transfer none)

      # C call
      LibGio.g_subprocess_launcher_unsetenv(to_unsafe, variable)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
