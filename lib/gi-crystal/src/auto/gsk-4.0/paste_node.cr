require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class PasteNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `PasteNode`.
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
      @@g_type ||= LibGsk.gsk_paste_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::PasteNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(bounds : Graphene::Rect, depth : UInt64) : self
      # gsk_paste_node_new: (Constructor)
      # @bounds:
      # @depth:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_paste_node_new(bounds, depth)

      # Return value handling
      Gsk::PasteNode.new(_retval, GICrystal::Transfer::Full)
    end

    def depth : UInt64
      # gsk_paste_node_get_depth: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_paste_node_get_depth(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
