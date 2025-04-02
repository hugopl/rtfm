module Pango
  class GlyphItemIter
    @data : LibPango::GlyphItemIter

    def initialize(@data, transfer : GICrystal::Transfer)
    end

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      # Raw structs are always moved to Crystal memory.
      @data = pointer.as(Pointer(LibPango::GlyphItemIter)).value
      LibGLib.g_free(pointer) if transfer.full?
    end

    def self.new(start_glyph : Int32? = nil, start_index : Int32? = nil, start_char : Int32? = nil, end_glyph : Int32? = nil, end_index : Int32? = nil, end_char : Int32? = nil)
      _instance = allocate
      _instance.start_glyph = start_glyph unless start_glyph.nil?
      _instance.start_index = start_index unless start_index.nil?
      _instance.start_char = start_char unless start_char.nil?
      _instance.end_glyph = end_glyph unless end_glyph.nil?
      _instance.end_index = end_index unless end_index.nil?
      _instance.end_char = end_char unless end_char.nil?
      _instance
    end

    def ==(other : self) : Bool
      LibC.memcmp(self, other.to_unsafe, sizeof(LibPango::GlyphItemIter)).zero?
    end

    def glyph_item!
      self.glyph_item.not_nil!
    end

    def glyph_item : Pango::GlyphItem?
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.glyph_item
      return if value.null?
      value = value.as(Pointer(Void))
      Pango::GlyphItem.new(value, GICrystal::Transfer::None)
    end

    def text!
      self.text.not_nil!
    end

    def text : ::String?
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.text
      return if value.null?
      value = value.as(Pointer(UInt8))
      ::String.new(value)
    end

    def start_glyph : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.start_glyph
      value
    end

    def start_glyph=(value : Int32)
      _var = (to_unsafe + 16).as(Pointer(Int32)).value = value
      value
    end

    def start_index : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.start_index
      value
    end

    def start_index=(value : Int32)
      _var = (to_unsafe + 20).as(Pointer(Int32)).value = value
      value
    end

    def start_char : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.start_char
      value
    end

    def start_char=(value : Int32)
      _var = (to_unsafe + 24).as(Pointer(Int32)).value = value
      value
    end

    def end_glyph : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.end_glyph
      value
    end

    def end_glyph=(value : Int32)
      _var = (to_unsafe + 28).as(Pointer(Int32)).value = value
      value
    end

    def end_index : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.end_index
      value
    end

    def end_index=(value : Int32)
      _var = (to_unsafe + 32).as(Pointer(Int32)).value = value
      value
    end

    def end_char : Int32
      value = to_unsafe.as(Pointer(LibPango::GlyphItemIter)).value.end_char
      value
    end

    def end_char=(value : Int32)
      _var = (to_unsafe + 36).as(Pointer(Int32)).value = value
      value
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibPango.pango_glyph_item_iter_get_type
    end

    def copy : Pango::GlyphItemIter?
      # pango_glyph_item_iter_copy: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibPango.pango_glyph_item_iter_copy(to_unsafe)

      # Return value handling
      Pango::GlyphItemIter.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def free : Nil
      # pango_glyph_item_iter_free: (Method)
      # Returns: (transfer none)

      # C call
      LibPango.pango_glyph_item_iter_free(to_unsafe)

      # Return value handling
    end

    def init_end(glyph_item : Pango::GlyphItem, text : ::String) : Bool
      # pango_glyph_item_iter_init_end: (Method)
      # @glyph_item:
      # @text:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_glyph_item_iter_init_end(to_unsafe, glyph_item, text)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def init_start(glyph_item : Pango::GlyphItem, text : ::String) : Bool
      # pango_glyph_item_iter_init_start: (Method)
      # @glyph_item:
      # @text:
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_glyph_item_iter_init_start(to_unsafe, glyph_item, text)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def next_cluster : Bool
      # pango_glyph_item_iter_next_cluster: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_glyph_item_iter_next_cluster(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def prev_cluster : Bool
      # pango_glyph_item_iter_prev_cluster: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibPango.pango_glyph_item_iter_prev_cluster(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      pointerof(@data).as(Void*)
    end
  end
end
