module Gsk
  struct RoundedRect
    @data : LibGsk::RoundedRect

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGsk::RoundedRect)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(bounds : Graphene::Rect? = nil, corner : Enumerable(Graphene::Size)? = nil)
      @data = LibGsk::RoundedRect.new
      @data.bounds = bounds unless bounds.nil?
      @data.corner = corner unless corner.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGsk::RoundedRect)).zero?
    end

    delegate :bounds, to: @data
    delegate :bounds=, to: @data
    delegate :corner, to: @data
    delegate :corner=, to: @data

    def contains_point(point : Graphene::Point) : Bool
      # gsk_rounded_rect_contains_point: (Method)
      # @point:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_contains_point(to_unsafe, point)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def contains_rect(rect : Graphene::Rect) : Bool
      # gsk_rounded_rect_contains_rect: (Method)
      # @rect:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_contains_rect(to_unsafe, rect)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def init(bounds : Graphene::Rect, top_left : Graphene::Size, top_right : Graphene::Size, bottom_right : Graphene::Size, bottom_left : Graphene::Size) : Gsk::RoundedRect
      # gsk_rounded_rect_init: (Method)
      # @bounds:
      # @top_left:
      # @top_right:
      # @bottom_right:
      # @bottom_left:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_init(to_unsafe, bounds, top_left, top_right, bottom_right, bottom_left)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    def init_copy(src : Gsk::RoundedRect) : Gsk::RoundedRect
      # gsk_rounded_rect_init_copy: (Method)
      # @src:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_init_copy(to_unsafe, src)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    def init_from_rect(bounds : Graphene::Rect, radius : Float32) : Gsk::RoundedRect
      # gsk_rounded_rect_init_from_rect: (Method)
      # @bounds:
      # @radius:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_init_from_rect(to_unsafe, bounds, radius)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    def intersects_rect(rect : Graphene::Rect) : Bool
      # gsk_rounded_rect_intersects_rect: (Method)
      # @rect:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_intersects_rect(to_unsafe, rect)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_rectilinear : Bool
      # gsk_rounded_rect_is_rectilinear: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_is_rectilinear(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def normalize : Gsk::RoundedRect
      # gsk_rounded_rect_normalize: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_normalize(to_unsafe)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    def offset(dx : Float32, dy : Float32) : Gsk::RoundedRect
      # gsk_rounded_rect_offset: (Method)
      # @dx:
      # @dy:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_offset(to_unsafe, dx, dy)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    def shrink(top : Float32, right : Float32, bottom : Float32, left : Float32) : Gsk::RoundedRect
      # gsk_rounded_rect_shrink: (Method)
      # @top:
      # @right:
      # @bottom:
      # @left:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_rounded_rect_shrink(to_unsafe, top, right, bottom, left)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
