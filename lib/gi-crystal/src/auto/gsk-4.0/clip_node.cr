require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class ClipNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `ClipNode`.
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
      @@g_type ||= LibGsk.gsk_clip_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::ClipNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(child : Gsk::RenderNode, clip : Graphene::Rect) : self
      # gsk_clip_node_new: (Constructor)
      # @child:
      # @clip:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_clip_node_new(child, clip)

      # Return value handling
      Gsk::ClipNode.new(_retval, GICrystal::Transfer::Full)
    end

    def child : Gsk::RenderNode
      # gsk_clip_node_get_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_clip_node_get_child(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def clip : Graphene::Rect
      # gsk_clip_node_get_clip: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_clip_node_get_clip(to_unsafe)

      # Return value handling
      Graphene::Rect.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
