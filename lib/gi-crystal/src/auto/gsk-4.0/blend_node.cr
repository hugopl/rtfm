require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class BlendNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `BlendNode`.
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
      @@g_type ||= LibGsk.gsk_blend_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::BlendNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(bottom : Gsk::RenderNode, top : Gsk::RenderNode, blend_mode : Gsk::BlendMode) : self
      # gsk_blend_node_new: (Constructor)
      # @bottom:
      # @top:
      # @blend_mode:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_blend_node_new(bottom, top, blend_mode)

      # Return value handling
      Gsk::BlendNode.new(_retval, GICrystal::Transfer::Full)
    end

    def blend_mode : Gsk::BlendMode
      # gsk_blend_node_get_blend_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_blend_node_get_blend_mode(to_unsafe)

      # Return value handling
      Gsk::BlendMode.new(_retval)
    end

    def bottom_child : Gsk::RenderNode
      # gsk_blend_node_get_bottom_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_blend_node_get_bottom_child(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def top_child : Gsk::RenderNode
      # gsk_blend_node_get_top_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_blend_node_get_top_child(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
