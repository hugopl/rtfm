module GLib
  class MainLoop
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(MainLoop.g_type, pointer)
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
      LibGObject.g_boxed_free(MainLoop.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_main_loop_get_type
    end

    def self.new(context : GLib::MainContext?, is_running : Bool) : self
      # g_main_loop_new: (Constructor)
      # @context: (nullable)
      # @is_running:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      context = if context.nil?
                  Pointer(Void).null
                else
                  context.to_unsafe
                end

      # C call
      _retval = LibGLib.g_main_loop_new(context, is_running)

      # Return value handling
      GLib::MainLoop.new(_retval, GICrystal::Transfer::Full)
    end

    def context : GLib::MainContext
      # g_main_loop_get_context: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_loop_get_context(to_unsafe)

      # Return value handling
      GLib::MainContext.new(_retval, GICrystal::Transfer::None)
    end

    def is_running : Bool
      # g_main_loop_is_running: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_main_loop_is_running(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def quit : Nil
      # g_main_loop_quit: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_loop_quit(to_unsafe)

      # Return value handling
    end

    def ref : GLib::MainLoop
      # g_main_loop_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_main_loop_ref(to_unsafe)

      # Return value handling
      GLib::MainLoop.new(_retval, GICrystal::Transfer::Full)
    end

    def run : Nil
      # g_main_loop_run: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_loop_run(to_unsafe)

      # Return value handling
    end

    def unref : Nil
      # g_main_loop_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_main_loop_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
