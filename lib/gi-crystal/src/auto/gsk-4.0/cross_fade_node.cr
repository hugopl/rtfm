require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class CrossFadeNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `CrossFadeNode`.
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
      @@g_type ||= LibGsk.gsk_cross_fade_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::CrossFadeNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(start : Gsk::RenderNode, end _end : Gsk::RenderNode, progress : Float32) : self
      # gsk_cross_fade_node_new: (Constructor)
      # @start:
      # @end:
      # @progress:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_cross_fade_node_new(start, _end, progress)

      # Return value handling
      Gsk::CrossFadeNode.new(_retval, GICrystal::Transfer::Full)
    end

    def end_child : Gsk::RenderNode
      # gsk_cross_fade_node_get_end_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_cross_fade_node_get_end_child(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def progress : Float32
      # gsk_cross_fade_node_get_progress: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_cross_fade_node_get_progress(to_unsafe)

      # Return value handling
      _retval
    end

    def start_child : Gsk::RenderNode
      # gsk_cross_fade_node_get_start_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_cross_fade_node_get_start_child(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
