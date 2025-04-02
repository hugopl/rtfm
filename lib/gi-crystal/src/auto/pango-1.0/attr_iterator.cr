module Pango
  class AttrIterator
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(AttrIterator.g_type, pointer)
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
      LibGObject.g_boxed_free(AttrIterator.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_attr_iterator_get_type
    end

    def copy : Pango::AttrIterator
      # pango_attr_iterator_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_iterator_copy(to_unsafe)

      # Return value handling
      Pango::AttrIterator.new(_retval, GICrystal::Transfer::Full)
    end

    def destroy : Nil
      # pango_attr_iterator_destroy: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_attr_iterator_destroy(to_unsafe)

      # Return value handling
    end

    def get(type : Pango::AttrType) : Pango::Attribute?
      # pango_attr_iterator_get: (Method)
      # @type:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibPango.pango_attr_iterator_get(to_unsafe, type)

      # Return value handling
      Pango::Attribute.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def attrs : GLib::SList
      # pango_attr_iterator_get_attrs: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_attr_iterator_get_attrs(to_unsafe)

      # Return value handling
      GLib::SList(Pango::Attribute).new(_retval, GICrystal::Transfer::Full)
    end

    def font(desc : Pango::FontDescription) : Nil
      # pango_attr_iterator_get_font: (Method)
      # @desc:
      # @language: (out) (transfer full) (optional)
      # @extra_attrs: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      language = Pointer(Pointer(Void)).null # Generator::OutArgUsedInReturnPlan
      extra_attrs = Pointer(Pointer(LibGLib::SList)).null
      # C call
      LibPango.pango_attr_iterator_get_font(to_unsafe, desc, language, extra_attrs)

      # Return value handling
    end

    def next : Bool
      # pango_attr_iterator_next: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_attr_iterator_next(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def range(start : Int32, end _end : Int32) : Nil
      # pango_attr_iterator_range: (Method)
      # @start: (out) (transfer full)
      # @end: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_attr_iterator_range(to_unsafe, start, _end)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
