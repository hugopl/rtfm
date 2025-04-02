module Pango
  class GlyphString
    @data : LibPango::GlyphString

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::GlyphString)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(num_glyphs : Int32? = nil, space : Int32? = nil)
      _instance = allocate
      _instance.num_glyphs = num_glyphs unless num_glyphs.nil?
      _instance.space = space unless space.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::GlyphString)).zero?
    end

    def num_glyphs : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphString)).value.num_glyphs
      value
    end

    def num_glyphs=(value : Int32)
      _var = (to_unsafe + 0).as(Pointer(Int32)).value = value
      value
    end

    def glyphs!
      self.glyphs.not_nil!
    end

    def glyphs : Enumerable(Pango::GlyphInfo)?
      value = to_unsafe.as(Pointer(LibPango::GlyphString)).value.glyphs
      return if value.null?
      value = value.as(Pointer(Void))
      GICrystal.transfer_array(value, num_glyphs, GICrystal::Transfer::None)
    end

    def log_clusters!
      self.log_clusters.not_nil!
    end

    def log_clusters : Pointer(Int32)?
      value = to_unsafe.as(Pointer(LibPango::GlyphString)).value.log_clusters
      return if value.null?
      value = value.as(Pointer(Void))
      value
    end

    def space : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphString)).value.space
      value
    end

    def space=(value : Int32)
      _var = (to_unsafe + 24).as(Pointer(Int32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_glyph_string_get_type
    end

    def copy : Pango::GlyphString?
      # pango_glyph_string_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_glyph_string_copy(to_unsafe)

      # Return value handling
      Pango::GlyphString.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def extents(font : Pango::Font) : Pango::Rectangle
      # pango_glyph_string_extents: (Method)
      # @font:
      # @ink_rect: (out) (caller-allocates) (optional)
      # @logical_rect: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      ink_rect = Pointer(Void).null     # Generator::CallerAllocatesPlan
      ink_rect = Pango::Rectangle.new   # Generator::OutArgUsedInReturnPlan
      logical_rect = Pointer(Void).null # Generator::CallerAllocatesPlan
      logical_rect = Pango::Rectangle.new
      # C call
      LibPango.pango_glyph_string_extents(to_unsafe, font, ink_rect, logical_rect)

      # Return value handling
      ink_rect
    end

    def extents_range(start : Int32, end _end : Int32, font : Pango::Font) : Pango::Rectangle
      # pango_glyph_string_extents_range: (Method)
      # @start:
      # @end:
      # @font:
      # @ink_rect: (out) (caller-allocates) (optional)
      # @logical_rect: (out) (caller-allocates) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      ink_rect = Pointer(Void).null     # Generator::CallerAllocatesPlan
      ink_rect = Pango::Rectangle.new   # Generator::OutArgUsedInReturnPlan
      logical_rect = Pointer(Void).null # Generator::CallerAllocatesPlan
      logical_rect = Pango::Rectangle.new
      # C call
      LibPango.pango_glyph_string_extents_range(to_unsafe, start, _end, font, ink_rect, logical_rect)

      # Return value handling
      ink_rect
    end

    def free : Nil
      # pango_glyph_string_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_glyph_string_free(to_unsafe)

      # Return value handling
    end

    def logical_widths(text : ::String, length : Int32, embedding_level : Int32, logical_widths : Enumerable(Int32)) : Nil
      # pango_glyph_string_get_logical_widths: (Method)
      # @text:
      # @length:
      # @embedding_level:
      # @logical_widths: (out) (caller-allocates) (array element-type Int32)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      logical_widths = logical_widths.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      LibPango.pango_glyph_string_get_logical_widths(to_unsafe, text, length, embedding_level, logical_widths)

      # Return value handling
    end

    def width : Int32
      # pango_glyph_string_get_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_glyph_string_get_width(to_unsafe)

      # Return value handling
      _retval
    end

    def index_to_x(text : ::String, length : Int32, analysis : Pango::Analysis, index_ : Int32, trailing : Bool) : Nil
      # pango_glyph_string_index_to_x: (Method)
      # @text:
      # @length:
      # @analysis:
      # @index_:
      # @trailing:
      # @x_pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      x_pos = Pointer(Int32).null
      # C call
      LibPango.pango_glyph_string_index_to_x(to_unsafe, text, length, analysis, index_, trailing, x_pos)

      # Return value handling
    end

    def index_to_x_full(text : ::String, length : Int32, analysis : Pango::Analysis, attrs : Pango::LogAttr?, index_ : Int32, trailing : Bool) : Nil
      # pango_glyph_string_index_to_x_full: (Method)
      # @text:
      # @length:
      # @analysis:
      # @attrs: (nullable)
      # @index_:
      # @trailing:
      # @x_pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      attrs = if attrs.nil?
                Pointer(Void).null
              else
                attrs.to_unsafe
              end
      # Generator::OutArgUsedInReturnPlan
      x_pos = Pointer(Int32).null
      # C call
      LibPango.pango_glyph_string_index_to_x_full(to_unsafe, text, length, analysis, attrs, index_, trailing, x_pos)

      # Return value handling
    end

    def size=(new_len : Int32) : Nil
      # pango_glyph_string_set_size: (Method)
      # @new_len:
      # Returns: (transfer none)

      # C call
      LibPango.pango_glyph_string_set_size(to_unsafe, new_len)

      # Return value handling
    end

    def x_to_index(text : ::String, length : Int32, analysis : Pango::Analysis, x_pos : Int32) : Nil
      # pango_glyph_string_x_to_index: (Method)
      # @text:
      # @length:
      # @analysis:
      # @x_pos:
      # @index_: (out) (transfer full) (optional)
      # @trailing: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      index_ = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      trailing = Pointer(Int32).null
      # C call
      LibPango.pango_glyph_string_x_to_index(to_unsafe, text, length, analysis, x_pos, index_, trailing)

      # Return value handling
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
