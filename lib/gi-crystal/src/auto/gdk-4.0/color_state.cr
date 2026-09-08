module Gdk
  class ColorState
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ColorState.g_type, pointer)
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
      LibGObject.g_boxed_free(ColorState.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_color_state_get_type
    end

    def create_cicp_params : Gdk::CicpParams?
      # gdk_color_state_create_cicp_params: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGdk.gdk_color_state_create_cicp_params(to_unsafe)

      # Return value handling
      Gdk::CicpParams.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def equal(other : Gdk::ColorState) : Bool
      # gdk_color_state_equal: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_color_state_equal(to_unsafe, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equivalent(other : Gdk::ColorState) : Bool
      # gdk_color_state_equivalent: (Method)
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_color_state_equivalent(to_unsafe, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Gdk::ColorState
      # gdk_color_state_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_color_state_ref(to_unsafe)

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gdk_color_state_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_color_state_unref(to_unsafe)

      # Return value handling
    end

    def self.oklab : Gdk::ColorState
      # gdk_color_state_get_oklab: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_color_state_get_oklab

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def self.oklch : Gdk::ColorState
      # gdk_color_state_get_oklch: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_color_state_get_oklch

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def self.rec2100_linear : Gdk::ColorState
      # gdk_color_state_get_rec2100_linear: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_color_state_get_rec2100_linear

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def self.rec2100_pq : Gdk::ColorState
      # gdk_color_state_get_rec2100_pq: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_color_state_get_rec2100_pq

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def self.srgb : Gdk::ColorState
      # gdk_color_state_get_srgb: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_color_state_get_srgb

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def self.srgb_linear : Gdk::ColorState
      # gdk_color_state_get_srgb_linear: (None)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_color_state_get_srgb_linear

      # Return value handling
      Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      @pointer
    end
  end
end
