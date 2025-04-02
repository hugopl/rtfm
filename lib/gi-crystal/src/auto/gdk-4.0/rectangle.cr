module Gdk
  struct Rectangle
    @data : LibGdk::Rectangle

    def initialize(@data, _transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibGdk::Rectangle)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def initialize(x : Int32? = nil, y : Int32? = nil, width : Int32? = nil, height : Int32? = nil)
      @data = LibGdk::Rectangle.new
      @data.x = x unless x.nil?
      @data.y = y unless y.nil?
      @data.width = width unless width.nil?
      @data.height = height unless height.nil?
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibGdk::Rectangle)).zero?
    end

    delegate :x, to: @data
    delegate :x=, to: @data
    delegate :y, to: @data
    delegate :y=, to: @data
    delegate :width, to: @data
    delegate :width=, to: @data
    delegate :height, to: @data
    delegate :height=, to: @data

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_rectangle_get_type
    end

    def contains_point(x : Int32, y : Int32) : Bool
      # gdk_rectangle_contains_point: (Method)
      # @x:
      # @y:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_rectangle_contains_point(to_unsafe, x, y)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal(rect2 : Gdk::Rectangle) : Bool
      # gdk_rectangle_equal: (Method)
      # @rect2:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_rectangle_equal(to_unsafe, rect2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def intersect(src2 : Gdk::Rectangle) : Gdk::Rectangle
      # gdk_rectangle_intersect: (Method)
      # @src2:
      # @dest: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      dest = Pointer(Void).null # Generator::CallerAllocatesPlan
      dest = Gdk::Rectangle.new
      # C call
      _retval = LibGdk.gdk_rectangle_intersect(to_unsafe, src2, dest)

      # Return value handling
      dest
    end

    def union(src2 : Gdk::Rectangle) : Gdk::Rectangle
      # gdk_rectangle_union: (Method)
      # @src2:
      # @dest: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      dest = Gdk::Rectangle.new
      # C call
      LibGdk.gdk_rectangle_union(to_unsafe, src2, dest)

      # Return value handling
      dest
    end

    # :nodoc:
    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
