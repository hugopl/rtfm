module Gsk
  @[GICrystal::GeneratedWrapper]
  class RenderNode
    @pointer : Pointer(Void)

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
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

    # Called by the garbage collector. Decreases the reference count of object.
    # (i.e. its memory is freed).
    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name.to_unsafe, self)
      {% end %}
      GICrystal.finalize_instance(self)
    end

    # Returns a pointer to the C object.
    def to_unsafe
      @pointer
    end

    private def _after_init : Nil
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGsk.gsk_render_node_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gsk::RenderNode.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.deserialize(bytes : GLib::Bytes, error_func : Gsk::ParseErrorFunc?, user_data : Pointer(Void)?) : Gsk::RenderNode?
      # gsk_render_node_deserialize: (None)
      # @bytes:
      # @error_func: (nullable)
      # @user_data: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGsk.gsk_render_node_deserialize(bytes, error_func, user_data)

      # Return value handling
      Gsk::RenderNode.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def draw(cr : Cairo::Context) : Nil
      # gsk_render_node_draw: (Method)
      # @cr:
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_render_node_draw(to_unsafe, cr)

      # Return value handling
    end

    def bounds : Graphene::Rect
      # gsk_render_node_get_bounds: (Method)
      # @bounds: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      bounds = Graphene::Rect.new
      # C call
      LibGsk.gsk_render_node_get_bounds(to_unsafe, bounds)

      # Return value handling
      bounds
    end

    def node_type : Gsk::RenderNodeType
      # gsk_render_node_get_node_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_render_node_get_node_type(to_unsafe)

      # Return value handling
      Gsk::RenderNodeType.new(_retval)
    end

    def opaque_rect : Graphene::Rect
      # gsk_render_node_get_opaque_rect: (Method)
      # @out_opaque: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      out_opaque = Graphene::Rect.new
      # C call
      _retval = LibGsk.gsk_render_node_get_opaque_rect(to_unsafe, out_opaque)

      # Return value handling
      out_opaque
    end

    def serialize : GLib::Bytes
      # gsk_render_node_serialize: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_render_node_serialize(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def write_to_file(filename : ::String) : Bool
      # gsk_render_node_write_to_file: (Method | Throws)
      # @filename:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGsk.gsk_render_node_write_to_file(to_unsafe, filename, pointerof(_error))

      # Error check
      Gsk.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def_equals_and_hash @pointer
  end
end
