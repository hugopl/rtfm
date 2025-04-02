require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class ContainerNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `ContainerNode`.
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
      @@g_type ||= LibGsk.gsk_container_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::ContainerNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(children : Enumerable(Gsk::RenderNode)) : self
      # gsk_container_node_new: (Constructor)
      # @children: (array length=n_children element-type Interface)
      # @n_children:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_children = children.size
      # Generator::ArrayArgPlan
      children = children.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGsk::RenderNode)))

      # C call
      _retval = LibGsk.gsk_container_node_new(children, n_children)

      # Return value handling
      Gsk::ContainerNode.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(*children : Gsk::RenderNode)
      self.new(children)
    end

    def child(idx : UInt32) : Gsk::RenderNode
      # gsk_container_node_get_child: (Method)
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_container_node_get_child(to_unsafe, idx)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def n_children : UInt32
      # gsk_container_node_get_n_children: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_container_node_get_n_children(to_unsafe)

      # Return value handling
      _retval
    end

    def_equals_and_hash @pointer
  end
end
