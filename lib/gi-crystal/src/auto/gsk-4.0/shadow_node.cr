require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class ShadowNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `ShadowNode`.
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
      @@g_type ||= LibGsk.gsk_shadow_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::ShadowNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(child : Gsk::RenderNode, shadows : Enumerable(Gsk::Shadow)) : self
      # gsk_shadow_node_new: (Constructor)
      # @child:
      # @shadows: (array length=n_shadows element-type Interface)
      # @n_shadows:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_shadows = shadows.size
      # Generator::ArrayArgPlan
      shadows = shadows.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(LibGsk::Shadow))

      # C call
      _retval = LibGsk.gsk_shadow_node_new(child, shadows, n_shadows)

      # Return value handling
      Gsk::ShadowNode.new(_retval, GICrystal::Transfer::Full)
    end

    def child : Gsk::RenderNode
      # gsk_shadow_node_get_child: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_shadow_node_get_child(to_unsafe)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    def n_shadows : UInt64
      # gsk_shadow_node_get_n_shadows: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_shadow_node_get_n_shadows(to_unsafe)

      # Return value handling
      _retval
    end

    def shadow(i : UInt64) : Gsk::Shadow
      # gsk_shadow_node_get_shadow: (Method)
      # @i:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_shadow_node_get_shadow(to_unsafe, i)

      # Return value handling
      Gsk::Shadow.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
