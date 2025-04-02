module Pango
  class LayoutLine
    @data : LibPango::LayoutLine

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::LayoutLine)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(start_index : Int32? = nil, length : Int32? = nil, is_paragraph_start : UInt32? = nil, resolved_dir : UInt32? = nil)
      _instance = allocate
      _instance.start_index = start_index unless start_index.nil?
      _instance.length = length unless length.nil?
      _instance.is_paragraph_start = is_paragraph_start unless is_paragraph_start.nil?
      _instance.resolved_dir = resolved_dir unless resolved_dir.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::LayoutLine)).zero?
    end

    def layout!
      self.layout.not_nil!
    end

    def layout : Pango::Layout?
      value = to_unsafe.as(Pointer(LibPango::LayoutLine)).value.layout
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::Layout.new(value, GICrystal::Transfer::None)
    end

    def start_index : Int32
      value = to_unsafe.as(Pointer(LibPango::LayoutLine)).value.start_index
      value
    end

    def start_index=(value : Int32)
      _var = (to_unsafe + 8).as(Pointer(Int32)).value = value
      value
    end

    def length : Int32
      value = to_unsafe.as(Pointer(LibPango::LayoutLine)).value.length
      value
    end

    def length=(value : Int32)
      _var = (to_unsafe + 12).as(Pointer(Int32)).value = value
      value
    end

    def runs!
      self.runs.not_nil!
    end

    def runs : GLib::SList?
      value = to_unsafe.as(Pointer(LibPango::LayoutLine)).value.runs
      return if value.null?
      value = value.as(Pointer(Void))
      GLib::SList(Pango::GlyphItem).new(value, GICrystal::Transfer::None)
    end

    def is_paragraph_start : UInt32
      value = to_unsafe.as(Pointer(LibPango::LayoutLine)).value.is_paragraph_start
      value
    end

    def is_paragraph_start=(value : UInt32)
      _var = (to_unsafe + 24).as(Pointer(UInt32)).value = value
      value
    end

    def resolved_dir : UInt32
      value = to_unsafe.as(Pointer(LibPango::LayoutLine)).value.resolved_dir
      value
    end

    def resolved_dir=(value : UInt32)
      _var = (to_unsafe + 28).as(Pointer(UInt32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_layout_line_get_type
    end

    def extents : Pango::Rectangle
      # pango_layout_line_get_extents: (Method)
      # @ink_rect: (out) (caller-allocates) (optional)
      # @logical_rect: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      ink_rect = Pointer(Void).null     # Generator::CallerAllocatesPlan
      ink_rect = Pango::Rectangle.new   # Generator::OutArgUsedInReturnPlan
      logical_rect = Pointer(Void).null # Generator::CallerAllocatesPlan
      logical_rect = Pango::Rectangle.new
      # C call
      LibPango.pango_layout_line_get_extents(to_unsafe, ink_rect, logical_rect)

      # Return value handling
      ink_rect
    end

    def height : Nil
      # pango_layout_line_get_height: (Method)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibPango.pango_layout_line_get_height(to_unsafe, height)

      # Return value handling
    end

    def length : Int32
      # pango_layout_line_get_length: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_line_get_length(to_unsafe)

      # Return value handling
      _retval
    end

    def pixel_extents : Pango::Rectangle
      # pango_layout_line_get_pixel_extents: (Method)
      # @ink_rect: (out) (caller-allocates) (optional)
      # @logical_rect: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      ink_rect = Pointer(Void).null     # Generator::CallerAllocatesPlan
      ink_rect = Pango::Rectangle.new   # Generator::OutArgUsedInReturnPlan
      logical_rect = Pointer(Void).null # Generator::CallerAllocatesPlan
      logical_rect = Pango::Rectangle.new
      # C call
      LibPango.pango_layout_line_get_pixel_extents(to_unsafe, ink_rect, logical_rect)

      # Return value handling
      ink_rect
    end

    def resolved_direction : Pango::Direction
      # pango_layout_line_get_resolved_direction: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_line_get_resolved_direction(to_unsafe)

      # Return value handling
      Pango::Direction.new(_retval)
    end

    def start_index : Int32
      # pango_layout_line_get_start_index: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_line_get_start_index(to_unsafe)

      # Return value handling
      _retval
    end

    def x_ranges(start_index : Int32, end_index : Int32, ranges : Enumerable(Int32)) : Nil
      # pango_layout_line_get_x_ranges: (Method)
      # @start_index:
      # @end_index:
      # @ranges: (out) (transfer full) (array length=n_ranges element-type Int32)
      # @n_ranges: (out) (transfer full)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_ranges = ranges.size
      # Generator::ArrayArgPlan
      ranges = ranges.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      LibPango.pango_layout_line_get_x_ranges(to_unsafe, start_index, end_index, ranges, n_ranges)

      # Return value handling
    end

    def index_to_x(index_ : Int32, trailing : Bool, x_pos : Int32) : Nil
      # pango_layout_line_index_to_x: (Method)
      # @index_:
      # @trailing:
      # @x_pos: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_line_index_to_x(to_unsafe, index_, trailing, x_pos)

      # Return value handling
    end

    def is_paragraph_start : Bool
      # pango_layout_line_is_paragraph_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_line_is_paragraph_start(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Pango::LayoutLine?
      # pango_layout_line_ref: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_layout_line_ref(to_unsafe)

      # Return value handling
      Pango::LayoutLine.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def unref : Nil
      # pango_layout_line_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_layout_line_unref(to_unsafe)

      # Return value handling
    end

    def x_to_index(x_pos : Int32, index_ : Int32, trailing : Int32) : Bool
      # pango_layout_line_x_to_index: (Method)
      # @x_pos:
      # @index_: (out) (transfer full)
      # @trailing: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_layout_line_x_to_index(to_unsafe, x_pos, index_, trailing)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
