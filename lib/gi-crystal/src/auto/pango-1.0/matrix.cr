module Pango
  struct Matrix
    @data : LibPango::Matrix

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::Matrix)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(xx : Float64? = nil, xy : Float64? = nil, yx : Float64? = nil, yy : Float64? = nil, x0 : Float64? = nil, y0 : Float64? = nil)
      @data = LibPango::Matrix.new
      @data.xx = xx unless xx.nil?
      @data.xy = xy unless xy.nil?
      @data.yx = yx unless yx.nil?
      @data.yy = yy unless yy.nil?
      @data.x0 = x0 unless x0.nil?
      @data.y0 = y0 unless y0.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::Matrix)).zero?
    end

    delegate :xx, to: @data
    delegate :xx=, to: @data
    delegate :xy, to: @data
    delegate :xy=, to: @data
    delegate :yx, to: @data
    delegate :yx=, to: @data
    delegate :yy, to: @data
    delegate :yy=, to: @data
    delegate :x0, to: @data
    delegate :x0=, to: @data
    delegate :y0, to: @data
    delegate :y0=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_matrix_get_type
    end

    def concat(new_matrix : Pango::Matrix) : Nil
      # pango_matrix_concat: (Method)
      # @new_matrix:
      # Returns: (transfer none)

      # C call
      LibPango.pango_matrix_concat(to_unsafe, new_matrix)

      # Return value handling
    end

    def copy : Pango::Matrix?
      # pango_matrix_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_matrix_copy(to_unsafe)

      # Return value handling
      Pango::Matrix.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def free : Nil
      # pango_matrix_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_matrix_free(to_unsafe)

      # Return value handling
    end

    def font_scale_factor : Float64
      # pango_matrix_get_font_scale_factor: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_matrix_get_font_scale_factor(to_unsafe)

      # Return value handling
      _retval
    end

    def font_scale_factors : Nil
      # pango_matrix_get_font_scale_factors: (Method)
      # @xscale: (out) (transfer full) (optional)
      # @yscale: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      xscale = Pointer(Float64).null # Generator::OutArgUsedInReturnPlan
      yscale = Pointer(Float64).null
      # C call
      LibPango.pango_matrix_get_font_scale_factors(to_unsafe, xscale, yscale)

      # Return value handling
    end

    def slant_ratio : Float64
      # pango_matrix_get_slant_ratio: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_matrix_get_slant_ratio(to_unsafe)

      # Return value handling
      _retval
    end

    def rotate(degrees : Float64) : Nil
      # pango_matrix_rotate: (Method)
      # @degrees:
      # Returns: (transfer none)

      # C call
      LibPango.pango_matrix_rotate(to_unsafe, degrees)

      # Return value handling
    end

    def scale(scale_x : Float64, scale_y : Float64) : Nil
      # pango_matrix_scale: (Method)
      # @scale_x:
      # @scale_y:
      # Returns: (transfer none)

      # C call
      LibPango.pango_matrix_scale(to_unsafe, scale_x, scale_y)

      # Return value handling
    end

    def transform_distance(dx : Float64, dy : Float64) : Nil
      # pango_matrix_transform_distance: (Method)
      # @dx: (inout) (transfer full)
      # @dy: (inout) (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_matrix_transform_distance(to_unsafe, dx, dy)

      # Return value handling
    end

    def transform_pixel_rectangle : Nil
      # pango_matrix_transform_pixel_rectangle: (Method)
      # @rect: (inout) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      rect = Pointer(Void).null
      # C call
      LibPango.pango_matrix_transform_pixel_rectangle(to_unsafe, rect)

      # Return value handling
    end

    def transform_point(x : Float64, y : Float64) : Nil
      # pango_matrix_transform_point: (Method)
      # @x: (inout) (transfer full)
      # @y: (inout) (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_matrix_transform_point(to_unsafe, x, y)

      # Return value handling
    end

    def transform_rectangle : Nil
      # pango_matrix_transform_rectangle: (Method)
      # @rect: (inout) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      rect = Pointer(Void).null
      # C call
      LibPango.pango_matrix_transform_rectangle(to_unsafe, rect)

      # Return value handling
    end

    def translate(tx : Float64, ty : Float64) : Nil
      # pango_matrix_translate: (Method)
      # @tx:
      # @ty:
      # Returns: (transfer none)

      # C call
      LibPango.pango_matrix_translate(to_unsafe, tx, ty)

      # Return value handling
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
