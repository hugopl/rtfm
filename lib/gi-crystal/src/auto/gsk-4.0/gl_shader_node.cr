require "./render_node"

module Gsk
  @[GICrystal::GeneratedWrapper]
  class GLShaderNode < RenderNode
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `GLShaderNode`.
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
      @@g_type ||= LibGsk.gsk_gl_shader_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::GLShaderNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    @[Deprecated]
    def self.new(shader : Gsk::GLShader, bounds : Graphene::Rect, args : GLib::Bytes, children : Enumerable(Gsk::RenderNode)?) : self
      # gsk_gl_shader_node_new: (Constructor)
      # @shader:
      # @bounds:
      # @args:
      # @children: (nullable) (array length=n_children element-type Interface)
      # @n_children:
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_children = children.try(&.size) || 0
      # Generator::NullableArrayPlan
      children = if children.nil?
                   Pointer(Pointer(LibGsk::RenderNode)).null
                 else
                   children.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGsk::RenderNode)))
                 end

      # C call
      _retval = LibGsk.gsk_gl_shader_node_new(shader, bounds, args, children, n_children)

      # Return value handling
      Gsk::GLShaderNode.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def args : GLib::Bytes
      # gsk_gl_shader_node_get_args: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_node_get_args(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def child(idx : UInt32) : Gsk::RenderNode
      # gsk_gl_shader_node_get_child: (Method)
      # @idx:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_node_get_child(to_unsafe, idx)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def n_children : UInt32
      # gsk_gl_shader_node_get_n_children: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_node_get_n_children(to_unsafe)

      # Return value handling
      _retval
    end

    def shader : Gsk::GLShader
      # gsk_gl_shader_node_get_shader: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_gl_shader_node_get_shader(to_unsafe)

      # Return value handling
      Gsk::GLShader.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
