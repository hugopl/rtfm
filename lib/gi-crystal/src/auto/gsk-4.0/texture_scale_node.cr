require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class TextureScaleNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `TextureScaleNode`.
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
      @@g_type ||= LibGsk.gsk_texture_scale_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::TextureScaleNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(texture : Gdk::Texture, bounds : Graphene::Rect, filter : Gsk::ScalingFilter) : self
      # gsk_texture_scale_node_new: (Constructor)
      # @texture:
      # @bounds:
      # @filter:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_texture_scale_node_new(texture, bounds, filter)

      # Return value handling
      Gsk::TextureScaleNode.new(_retval, GICrystal::Transfer::Full)
    end

    def filter : Gsk::ScalingFilter
      # gsk_texture_scale_node_get_filter: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_texture_scale_node_get_filter(to_unsafe)

      # Return value handling
      Gsk::ScalingFilter.new(_retval)
    end

    def texture : Gdk::Texture
      # gsk_texture_scale_node_get_texture: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_texture_scale_node_get_texture(to_unsafe)

      # Return value handling
      Gdk::Texture.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
