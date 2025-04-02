require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class TextNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `TextNode`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGsk.gsk_text_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::TextNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(font : Pango::Font, glyphs : Pango::GlyphString, color : Gdk::RGBA, offset : Graphene::Point) : self?
      # gsk_text_node_new: (Constructor)
      # @font:
      # @glyphs:
      # @color:
      # @offset:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGsk.gsk_text_node_new(font, glyphs, color, offset)

      # Return value handling
      Gsk::TextNode.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def color : Gdk::RGBA
      # gsk_text_node_get_color: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_text_node_get_color(to_unsafe)

      # Return value handling
      Gdk::RGBA.new(_retval, GICrystal::Transfer::None)
    end

    def font : Pango::Font
      # gsk_text_node_get_font: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_text_node_get_font(to_unsafe)

      # Return value handling
      Pango::Font.new(_retval, GICrystal::Transfer::None)
    end

    def glyphs : Enumerable(Pango::GlyphInfo)
      # gsk_text_node_get_glyphs: (Method)
      # @n_glyphs: (out) (transfer full) (optional)
      # Returns: (transfer none) (array length=n_glyphs element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      n_glyphs = 0_u32
      # C call
      _retval = LibGsk.gsk_text_node_get_glyphs(to_unsafe, pointerof(n_glyphs))

      # Return value handling
      GICrystal.transfer_array(_retval, n_glyphs, GICrystal::Transfer::None)
    end

    def num_glyphs : UInt32
      # gsk_text_node_get_num_glyphs: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_text_node_get_num_glyphs(to_unsafe)

      # Return value handling
      _retval
    end

    def offset : Graphene::Point
      # gsk_text_node_get_offset: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_text_node_get_offset(to_unsafe)

      # Return value handling
      Graphene::Point.new(_retval, GICrystal::Transfer::None)
    end

    def has_color_glyphs : Bool
      # gsk_text_node_has_color_glyphs: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_text_node_has_color_glyphs(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
