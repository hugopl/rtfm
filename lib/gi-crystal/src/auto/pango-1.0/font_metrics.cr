module Pango
  class FontMetrics
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

    def ref_count : UInt32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.ref_count
      value
    end

    def ref_count=(value : UInt32)
      _var = (to_unsafe + 0).as(Pointer(UInt32)).value = value
      value
    end

    def ascent : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.ascent
      value
    end

    def ascent=(value : Int32)
      _var = (to_unsafe + 4).as(Pointer(Int32)).value = value
      value
    end

    def descent : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.descent
      value
    end

    def descent=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def height : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.height
      value
    end

    def height=(value : Int32)
      _var = (to_unsafe + 12).as(Pointer(Int32)).value = value
      value
    end

    def approximate_char_width : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.approximate_char_width
      value
    end

    def approximate_char_width=(value : Int32)
      _var = (to_unsafe + 16).as(Pointer(Int32)).value = value
      value
    end

    def approximate_digit_width : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.approximate_digit_width
      value
    end

    def approximate_digit_width=(value : Int32)
      _var = (to_unsafe + 20).as(Pointer(Int32)).value = value
      value
    end

    def underline_position : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.underline_position
      value
    end

    def underline_position=(value : Int32)
      _var = (to_unsafe + 24).as(Pointer(Int32)).value = value
      value
    end

    def underline_thickness : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.underline_thickness
      value
    end

    def underline_thickness=(value : Int32)
      _var = (to_unsafe + 28).as(Pointer(Int32)).value = value
      value
    end

    def strikethrough_position : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.strikethrough_position
      value
    end

    def strikethrough_position=(value : Int32)
      _var = (to_unsafe + 32).as(Pointer(Int32)).value = value
      value
    end

    def strikethrough_thickness : Int32
      value = to_unsafe.as(Pointer(LibPango::FontMetrics)).value.strikethrough_thickness
      value
    end

    def strikethrough_thickness=(value : Int32)
      _var = (to_unsafe + 36).as(Pointer(Int32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_font_metrics_get_type
    end

    def approximate_char_width : Int32
      # pango_font_metrics_get_approximate_char_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_approximate_char_width(to_unsafe)

      # Return value handling
      _retval
    end

    def approximate_digit_width : Int32
      # pango_font_metrics_get_approximate_digit_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_approximate_digit_width(to_unsafe)

      # Return value handling
      _retval
    end

    def ascent : Int32
      # pango_font_metrics_get_ascent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_ascent(to_unsafe)

      # Return value handling
      _retval
    end

    def descent : Int32
      # pango_font_metrics_get_descent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_descent(to_unsafe)

      # Return value handling
      _retval
    end

    def height : Int32
      # pango_font_metrics_get_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_height(to_unsafe)

      # Return value handling
      _retval
    end

    def strikethrough_position : Int32
      # pango_font_metrics_get_strikethrough_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_strikethrough_position(to_unsafe)

      # Return value handling
      _retval
    end

    def strikethrough_thickness : Int32
      # pango_font_metrics_get_strikethrough_thickness: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_strikethrough_thickness(to_unsafe)

      # Return value handling
      _retval
    end

    def underline_position : Int32
      # pango_font_metrics_get_underline_position: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_underline_position(to_unsafe)

      # Return value handling
      _retval
    end

    def underline_thickness : Int32
      # pango_font_metrics_get_underline_thickness: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_font_metrics_get_underline_thickness(to_unsafe)

      # Return value handling
      _retval
    end

    def to_unsafe
      @pointer
    end
  end
end
