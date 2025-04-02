module Pango
  class GlyphItem
    @data : LibPango::GlyphItem

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::GlyphItem)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(y_offset : Int32? = nil, start_x_offset : Int32? = nil, end_x_offset : Int32? = nil)
      _instance = allocate
      _instance.y_offset = y_offset unless y_offset.nil?
      _instance.start_x_offset = start_x_offset unless start_x_offset.nil?
      _instance.end_x_offset = end_x_offset unless end_x_offset.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::GlyphItem)).zero?
    end

    def item!
      self.item.not_nil!
    end

    def item : Pango::Item?
      value = to_unsafe.as(Pointer(LibPango::GlyphItem)).value.item
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::Item.new(value, GICrystal::Transfer::None)
    end

    def glyphs!
      self.glyphs.not_nil!
    end

    def glyphs : Pango::GlyphString?
      value = to_unsafe.as(Pointer(LibPango::GlyphItem)).value.glyphs
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::GlyphString.new(value, GICrystal::Transfer::None)
    end

    def y_offset : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItem)).value.y_offset
      value
    end

    def y_offset=(value : Int32)
      _var = (to_unsafe + 16).as(Pointer(Int32)).value = value
      value
    end

    def start_x_offset : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItem)).value.start_x_offset
      value
    end

    def start_x_offset=(value : Int32)
      _var = (to_unsafe + 20).as(Pointer(Int32)).value = value
      value
    end

    def end_x_offset : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItem)).value.end_x_offset
      value
    end

    def end_x_offset=(value : Int32)
      _var = (to_unsafe + 24).as(Pointer(Int32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_glyph_item_get_type
    end

    def apply_attrs(text : ::String, list : Pango::AttrList) : GLib::SList
      # pango_glyph_item_apply_attrs: (Method)
      # @text:
      # @list:
      # Returns: (transfer full)

      # C call
      _retval = LibPango.pango_glyph_item_apply_attrs(to_unsafe, text, list)

      # Return value handling
      GLib::SList(Pango::GlyphItem).new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Pango::GlyphItem?
      # pango_glyph_item_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_glyph_item_copy(to_unsafe)

      # Return value handling
      Pango::GlyphItem.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def free : Nil
      # pango_glyph_item_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_glyph_item_free(to_unsafe)

      # Return value handling
    end

    def logical_widths(text : ::String, logical_widths : Enumerable(Int32)) : Nil
      # pango_glyph_item_get_logical_widths: (Method)
      # @text:
      # @logical_widths: (out) (caller-allocates) (array element-type Int32)
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      logical_widths = logical_widths.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      LibPango.pango_glyph_item_get_logical_widths(to_unsafe, text, logical_widths)

      # Return value handling
    end

    def letter_space(text : ::String, log_attrs : Enumerable(Pango::LogAttr), letter_spacing : Int32) : Nil
      # pango_glyph_item_letter_space: (Method)
      # @text:
      # @log_attrs: (array element-type Interface)
      # @letter_spacing:
      # Returns: (transfer none)

      # Generator::ArrayArgPlan
      log_attrs = log_attrs.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibPango::LogAttr))

      # C call
      LibPango.pango_glyph_item_letter_space(to_unsafe, text, log_attrs, letter_spacing)

      # Return value handling
    end

    def split(text : ::String, split_index : Int32) : Pango::GlyphItem?
      # pango_glyph_item_split: (Method)
      # @text:
      # @split_index:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_glyph_item_split(to_unsafe, text, split_index)

      # Return value handling
      Pango::GlyphItem.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
