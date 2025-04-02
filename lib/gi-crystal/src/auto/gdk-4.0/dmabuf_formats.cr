module Gdk
  class DmabufFormats
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(DmabufFormats.g_type, pointer)
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
      LibGObject.g_boxed_free(DmabufFormats.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_dmabuf_formats_get_type
    end

    def contains(fourcc : UInt32, modifier : UInt64) : Bool
      # gdk_dmabuf_formats_contains: (Method)
      # @fourcc:
      # @modifier:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_formats_contains(to_unsafe, fourcc, modifier)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal(formats2 : Gdk::DmabufFormats?) : Bool
      # gdk_dmabuf_formats_equal: (Method)
      # @formats2: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      formats2 = if formats2.nil?
                   Pointer(Void).null
                 else
                   formats2.to_unsafe
                 end

      # C call
      _retval = LibGdk.gdk_dmabuf_formats_equal(to_unsafe, formats2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def format(idx : UInt64, fourcc : UInt32, modifier : UInt64) : Nil
      # gdk_dmabuf_formats_get_format: (Method)
      # @idx:
      # @fourcc: (out) (transfer full)
      # @modifier: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_formats_get_format(to_unsafe, idx, fourcc, modifier)

      # Return value handling
    end

    def n_formats : UInt64
      # gdk_dmabuf_formats_get_n_formats: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_dmabuf_formats_get_n_formats(to_unsafe)

      # Return value handling
      _retval
    end

    def ref : Gdk::DmabufFormats
      # gdk_dmabuf_formats_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_dmabuf_formats_ref(to_unsafe)

      # Return value handling
      Gdk::DmabufFormats.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gdk_dmabuf_formats_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_dmabuf_formats_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
