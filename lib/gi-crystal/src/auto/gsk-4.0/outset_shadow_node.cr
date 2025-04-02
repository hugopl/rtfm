require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class OutsetShadowNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `OutsetShadowNode`.
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
      @@g_type ||= LibGsk.gsk_outset_shadow_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::OutsetShadowNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(outline : Gsk::RoundedRect, color : Gdk::RGBA, dx : Float32, dy : Float32, spread : Float32, blur_radius : Float32) : self
      # gsk_outset_shadow_node_new: (Constructor)
      # @outline:
      # @color:
      # @dx:
      # @dy:
      # @spread:
      # @blur_radius:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_outset_shadow_node_new(outline, color, dx, dy, spread, blur_radius)

      # Return value handling
      Gsk::OutsetShadowNode.new(_retval, GICrystal::Transfer::Full)
    end

    def blur_radius : Float32
      # gsk_outset_shadow_node_get_blur_radius: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_outset_shadow_node_get_blur_radius(to_unsafe)

      # Return value handling
      _retval
    end

    def color : Gdk::RGBA
      # gsk_outset_shadow_node_get_color: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_outset_shadow_node_get_color(to_unsafe)

      # Return value handling
      Gdk::RGBA.new(_retval, GICrystal::Transfer::None)
    end

    def dx : Float32
      # gsk_outset_shadow_node_get_dx: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_outset_shadow_node_get_dx(to_unsafe)

      # Return value handling
      _retval
    end

    def dy : Float32
      # gsk_outset_shadow_node_get_dy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_outset_shadow_node_get_dy(to_unsafe)

      # Return value handling
      _retval
    end

    def outline : Gsk::RoundedRect
      # gsk_outset_shadow_node_get_outline: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_outset_shadow_node_get_outline(to_unsafe)

      # Return value handling
      Gsk::RoundedRect.new(_retval, GICrystal::Transfer::None)
    end

    def spread : Float32
      # gsk_outset_shadow_node_get_spread: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_outset_shadow_node_get_spread(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
