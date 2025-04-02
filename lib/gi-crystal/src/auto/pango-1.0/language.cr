module Pango
  class Language
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Language.g_type, pointer)
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
      LibGObject.g_boxed_free(Language.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_language_get_type
    end

    def sample_string : ::String
      # pango_language_get_sample_string: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_language_get_sample_string(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def scripts : Enumerable(Pango::Script)?
      # pango_language_get_scripts: (Method)
      # @num_scripts: (out) (transfer full) (optional)
      # Returns: (transfer none) (nullable) (array length=num_scripts element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      num_scripts = 0
      # C call
      _retval = LibPango.pango_language_get_scripts(to_unsafe, pointerof(num_scripts))

      # Return value handling
      GICrystal.transfer_array(_retval, num_scripts, GICrystal::Transfer::None) unless _retval.null?
    end

    def includes_script(script : Pango::Script) : Bool
      # pango_language_includes_script: (Method)
      # @script:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_language_includes_script(to_unsafe, script)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def matches(range_list : ::String) : Bool
      # pango_language_matches: (Method)
      # @range_list:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_language_matches(to_unsafe, range_list)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_string : ::String
      # pango_language_to_string: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_language_to_string(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def self.from_string(language : ::String?) : Pango::Language?
      # pango_language_from_string: (None)
      # @language: (nullable)
      # Returns: (transfer none) (nullable)

      # Generator::NullableArrayPlan
      language = if language.nil?
                   Pointer(LibC::Char).null
                 else
                   language.to_unsafe
                 end

      # C call
      _retval = LibPango.pango_language_from_string(language)

      # Return value handling
      Pango::Language.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def self.default : Pango::Language
      # pango_language_get_default: (None)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_language_get_default

      # Return value handling
      Pango::Language.new(_retval, GICrystal::Transfer::None)
    end

    def self.preferred : Enumerable(Pango::Language)?
      # pango_language_get_preferred: (None)
      # Returns: (transfer none) (nullable) (array zero-terminated=1 element-type Interface)

      # C call
      _retval = LibPango.pango_language_get_preferred

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
