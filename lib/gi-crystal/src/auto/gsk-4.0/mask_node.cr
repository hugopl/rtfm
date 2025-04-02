require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class MaskNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `MaskNode`.
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
      @@g_type ||= LibGsk.gsk_mask_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::MaskNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(source : Gsk::RenderNode, mask : Gsk::RenderNode, mask_mode : Gsk::MaskMode) : self
      # gsk_mask_node_new: (Constructor)
      # @source:
      # @mask:
      # @mask_mode:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_mask_node_new(source, mask, mask_mode)

      # Return value handling
      Gsk::MaskNode.new(_retval, GICrystal::Transfer::Full)
    end

    def mask : Gsk::RenderNode
      # gsk_mask_node_get_mask: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_mask_node_get_mask(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def mask_mode : Gsk::MaskMode
      # gsk_mask_node_get_mask_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_mask_node_get_mask_mode(to_unsafe)

      # Return value handling
      Gsk::MaskMode.new(_retval)
    end

    def source : Gsk::RenderNode
      # gsk_mask_node_get_source: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_mask_node_get_source(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
