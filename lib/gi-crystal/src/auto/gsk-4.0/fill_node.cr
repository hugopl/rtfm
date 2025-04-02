require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class FillNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `FillNode`.
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
      @@g_type ||= LibGsk.gsk_fill_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::FillNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(child : Gsk::RenderNode, path : Gsk::Path, fill_rule : Gsk::FillRule) : self
      # gsk_fill_node_new: (Constructor)
      # @child:
      # @path:
      # @fill_rule:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_fill_node_new(child, path, fill_rule)

      # Return value handling
      Gsk::FillNode.new(_retval, GICrystal::Transfer::Full)
    end

    def child : Gsk::RenderNode
      # gsk_fill_node_get_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_fill_node_get_child(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def fill_rule : Gsk::FillRule
      # gsk_fill_node_get_fill_rule: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_fill_node_get_fill_rule(to_unsafe)

      # Return value handling
      Gsk::FillRule.new(_retval)
    end

    def path : Gsk::Path
      # gsk_fill_node_get_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_fill_node_get_path(to_unsafe)

      # Return value handling
      Gsk::Path.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
