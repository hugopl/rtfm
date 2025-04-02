module Gsk
  class Stroke
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Stroke.g_type, pointer)
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
      LibGObject.g_boxed_free(Stroke.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_stroke_get_type
    end

    def self.new(line_width : Float32) : self
      # gsk_stroke_new: (Constructor)
      # @line_width:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_stroke_new(line_width)

      # Return value handling
      Gsk::Stroke.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Gsk::Stroke
      # gsk_stroke_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_stroke_copy(to_unsafe)

      # Return value handling
      Gsk::Stroke.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # gsk_stroke_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_stroke_free(to_unsafe)

      # Return value handling
    end

    def dash : Enumerable(Float32)?
      # gsk_stroke_get_dash: (Method)
      # @n_dash: (out) (transfer full)
      # Returns: (transfer none) (nullable) (array length=n_dash element-type Float)

      # Generator::OutArgUsedInReturnPlan
      n_dash = 0_u64
      # C call
      _retval = LibGsk.gsk_stroke_get_dash(to_unsafe, pointerof(n_dash))

      # Return value handling
      GICrystal.transfer_array(_retval, n_dash, GICrystal::Transfer::None) unless _retval.null?
    end

    def dash_offset : Float32
      # gsk_stroke_get_dash_offset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_stroke_get_dash_offset(to_unsafe)

      # Return value handling
      _retval
    end

    def line_cap : Gsk::LineCap
      # gsk_stroke_get_line_cap: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_stroke_get_line_cap(to_unsafe)

      # Return value handling
      Gsk::LineCap.new(_retval)
    end

    def line_join : Gsk::LineJoin
      # gsk_stroke_get_line_join: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_stroke_get_line_join(to_unsafe)

      # Return value handling
      Gsk::LineJoin.new(_retval)
    end

    def line_width : Float32
      # gsk_stroke_get_line_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_stroke_get_line_width(to_unsafe)

      # Return value handling
      _retval
    end

    def miter_limit : Float32
      # gsk_stroke_get_miter_limit: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_stroke_get_miter_limit(to_unsafe)

      # Return value handling
      _retval
    end

    def dash=(dash : Enumerable(Float32)?) : Nil
      # gsk_stroke_set_dash: (Method)
      # @dash: (nullable) (array length=n_dash element-type Float)
      # @n_dash:
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_dash = dash.try(&.size) || 0
      # Generator::NullableArrayPlan
      dash = if dash.nil?
               Pointer(Float32).null
             else
               dash.to_a.to_unsafe.as(Pointer(Float32))
             end

      # C call
      LibGsk.gsk_stroke_set_dash(to_unsafe, dash, n_dash)

      # Return value handling
    end

    def dash_offset=(offset : Float32) : Nil
      # gsk_stroke_set_dash_offset: (Method)
      # @offset:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_stroke_set_dash_offset(to_unsafe, offset)

      # Return value handling
    end

    def line_cap=(line_cap : Gsk::LineCap) : Nil
      # gsk_stroke_set_line_cap: (Method)
      # @line_cap:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_stroke_set_line_cap(to_unsafe, line_cap)

      # Return value handling
    end

    def line_join=(line_join : Gsk::LineJoin) : Nil
      # gsk_stroke_set_line_join: (Method)
      # @line_join:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_stroke_set_line_join(to_unsafe, line_join)

      # Return value handling
    end

    def line_width=(line_width : Float32) : Nil
      # gsk_stroke_set_line_width: (Method)
      # @line_width:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_stroke_set_line_width(to_unsafe, line_width)

      # Return value handling
    end

    def miter_limit=(limit : Float32) : Nil
      # gsk_stroke_set_miter_limit: (Method)
      # @limit:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_stroke_set_miter_limit(to_unsafe, limit)

      # Return value handling
    end

    def to_cairo(cr : Cairo::Context) : Nil
      # gsk_stroke_to_cairo: (Method)
      # @cr:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_stroke_to_cairo(to_unsafe, cr)

      # Return value handling
    end

    def self.equal(stroke1 : Pointer(Void)?, stroke2 : Pointer(Void)?) : Bool
      # gsk_stroke_equal: (None)
      # @stroke1: (nullable)
      # @stroke2: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      stroke1 = if stroke1.nil?
                  Pointer(Void).null
                else
                  stroke1.to_unsafe
                end
      # Generator::NullableArrayPlan
      stroke2 = if stroke2.nil?
                  Pointer(Void).null
                else
                  stroke2.to_unsafe
                end

      # C call
      _retval = LibGsk.gsk_stroke_equal(stroke1, stroke2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
