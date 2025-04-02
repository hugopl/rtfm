require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class BorderNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `BorderNode`.
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
      @@g_type ||= LibGsk.gsk_border_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::BorderNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(outline : Gsk::RoundedRect, border_width : Enumerable(Float32), border_color : Enumerable(Gdk::RGBA)) : self
      # gsk_border_node_new: (Constructor)
      # @outline:
      # @border_width: (array fixed-size=4 element-type Float)
      # @border_color: (array fixed-size=4 element-type Interface)
      # Returns: (transfer full)

      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if border_width.size < 4

      border_width = border_width.to_a.to_unsafe.as(Pointer(Float32))
      # Generator::ArrayArgPlan
      raise ArgumentError.new("Enumerable of size < 4") if border_color.size < 4

      border_color = border_color.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGdk::RGBA))

      # C call
      _retval = LibGsk.gsk_border_node_new(outline, border_width, border_color)

      # Return value handling
      Gsk::BorderNode.new(_retval, GICrystal::Transfer::Full)
    end

    def colors : Enumerable(Gdk::RGBA)
      # gsk_border_node_get_colors: (Method)
      # Returns: (transfer none) (array fixed-size=4 element-type Interface)

      # C call
      _retval = LibGsk.gsk_border_node_get_colors(to_unsafe)

      # Return value handling
      _retval
    end

    def outline : Gsk::RoundedRect
      # gsk_border_node_get_outline: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_border_node_get_outline(to_unsafe)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    def widths : Enumerable(Float32)
      # gsk_border_node_get_widths: (Method)
      # Returns: (transfer none) (array fixed-size=4 element-type Float)

      # C call
      _retval = LibGsk.gsk_border_node_get_widths(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
