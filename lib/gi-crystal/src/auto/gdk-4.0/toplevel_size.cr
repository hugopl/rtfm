module Gdk
  class ToplevelSize
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ToplevelSize.g_type, pointer)
                 else
                   pointer
                 end
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

    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name, self)
      {% end %}
      LibGObject.g_boxed_free(ToplevelSize.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_toplevel_size_get_type
    end

    def bounds(bounds_width : Int32, bounds_height : Int32) : Nil
      # gdk_toplevel_size_get_bounds: (Method)
      # @bounds_width: (out) (transfer full)
      # @bounds_height: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_size_get_bounds(to_unsafe, bounds_width, bounds_height)

      # Return value handling
    end

    def set_min_size(min_width : Int32, min_height : Int32) : Nil
      # gdk_toplevel_size_set_min_size: (Method)
      # @min_width:
      # @min_height:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_size_set_min_size(to_unsafe, min_width, min_height)

      # Return value handling
    end

    def set_shadow_width(left : Int32, right : Int32, top : Int32, bottom : Int32) : Nil
      # gdk_toplevel_size_set_shadow_width: (Method)
      # @left:
      # @right:
      # @top:
      # @bottom:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_size_set_shadow_width(to_unsafe, left, right, top, bottom)

      # Return value handling
    end

    def set_size(width : Int32, height : Int32) : Nil
      # gdk_toplevel_size_set_size: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_toplevel_size_set_size(to_unsafe, width, height)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
