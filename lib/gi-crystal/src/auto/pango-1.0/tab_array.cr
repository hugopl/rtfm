module Pango
  class TabArray
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(TabArray.g_type, pointer)
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
      LibGObject.g_boxed_free(TabArray.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_tab_array_get_type
    end

    def self.new(initial_size : Int32, positions_in_pixels : Bool) : self
      # pango_tab_array_new: (Constructor)
      # @initial_size:
      # @positions_in_pixels:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_tab_array_new(initial_size, positions_in_pixels)

      # Return value handling
      Pango::TabArray.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Pango::TabArray
      # pango_tab_array_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_tab_array_copy(to_unsafe)

      # Return value handling
      Pango::TabArray.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # pango_tab_array_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_tab_array_free(to_unsafe)

      # Return value handling
    end

    def decimal_point(tab_index : Int32) : Char
      # pango_tab_array_get_decimal_point: (Method)
      # @tab_index:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_tab_array_get_decimal_point(to_unsafe, tab_index)

      # Return value handling
      _retval.chr
    end

    def positions_in_pixels : Bool
      # pango_tab_array_get_positions_in_pixels: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_tab_array_get_positions_in_pixels(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def size : Int32
      # pango_tab_array_get_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_tab_array_get_size(to_unsafe)

      # Return value handling
      _retval
    end

    def tab(tab_index : Int32) : Nil
      # pango_tab_array_get_tab: (Method)
      # @tab_index:
      # @alignment: (out) (transfer full) (optional)
      # @location: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      alignment = Pointer(UInt32).null # Generator::OutArgUsedInReturnPlan
      location = Pointer(Int32).null
      # C call
      LibPango.pango_tab_array_get_tab(to_unsafe, tab_index, alignment, location)

      # Return value handling
    end

    def tabs : Nil
      # pango_tab_array_get_tabs: (Method)
      # @alignments: (out) (transfer full) (optional)
      # @locations: (out) (transfer full) (optional) (array element-type Int32)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      alignments = Pointer(Pointer(UInt32)).null # Generator::OutArgUsedInReturnPlan
      locations = Pointer(Pointer(Int32)).null   # Generator::ArrayArgPlan
      locations = locations.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      LibPango.pango_tab_array_get_tabs(to_unsafe, alignments, locations)

      # Return value handling
    end

    def resize(new_size : Int32) : Nil
      # pango_tab_array_resize: (Method)
      # @new_size:
      # Returns: (transfer none)

      # C call
      LibPango.pango_tab_array_resize(to_unsafe, new_size)

      # Return value handling
    end

    def set_decimal_point(tab_index : Int32, decimal_point : Char) : Nil
      # pango_tab_array_set_decimal_point: (Method)
      # @tab_index:
      # @decimal_point:
      # Returns: (transfer none)

      # Generator::BuiltInTypeArgPlan
      decimal_point = decimal_point.ord.to_u32

      # C call
      LibPango.pango_tab_array_set_decimal_point(to_unsafe, tab_index, decimal_point)

      # Return value handling
    end

    def positions_in_pixels=(positions_in_pixels : Bool) : Nil
      # pango_tab_array_set_positions_in_pixels: (Method)
      # @positions_in_pixels:
      # Returns: (transfer none)

      # C call
      LibPango.pango_tab_array_set_positions_in_pixels(to_unsafe, positions_in_pixels)

      # Return value handling
    end

    def set_tab(tab_index : Int32, alignment : Pango::TabAlign, location : Int32) : Nil
      # pango_tab_array_set_tab: (Method)
      # @tab_index:
      # @alignment:
      # @location:
      # Returns: (transfer none)

      # C call
      LibPango.pango_tab_array_set_tab(to_unsafe, tab_index, alignment, location)

      # Return value handling
    end

    def sort : Nil
      # pango_tab_array_sort: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_tab_array_sort(to_unsafe)

      # Return value handling
    end

    def to_string : ::String
      # pango_tab_array_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_tab_array_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def self.from_string(text : ::String) : Pango::TabArray?
      # pango_tab_array_from_string: (None)
      # @text:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_tab_array_from_string(text)

      # Return value handling
      Pango::TabArray.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
