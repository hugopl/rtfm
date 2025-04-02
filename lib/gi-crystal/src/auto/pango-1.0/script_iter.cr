module Pango
  class ScriptIter
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ScriptIter.g_type, pointer)
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
      LibGObject.g_boxed_free(ScriptIter.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_script_iter_get_type
    end

    def self.new(text : ::String, length : Int32) : self
      # pango_script_iter_new: (Constructor)
      # @text:
      # @length:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_script_iter_new(text, length)

      # Return value handling
      Pango::ScriptIter.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # pango_script_iter_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_script_iter_free(to_unsafe)

      # Return value handling
    end

    def range : Nil
      # pango_script_iter_get_range: (Method)
      # @start: (out) (optional)
      # @end: (out) (optional)
      # @script: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      start = Pointer(Pointer(LibC::Char)).null # Generator::OutArgUsedInReturnPlan
      _end = Pointer(Pointer(LibC::Char)).null  # Generator::OutArgUsedInReturnPlan
      script = Pointer(Int32).null
      # C call
      LibPango.pango_script_iter_get_range(to_unsafe, start, _end, script)

      # Return value handling
    end

    def next : Bool
      # pango_script_iter_next: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_script_iter_next(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
