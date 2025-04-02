module Adw
  class SpringParams
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(SpringParams.g_type, pointer)
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
      LibGObject.g_boxed_free(SpringParams.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_spring_params_get_type
    end

    def self.new(damping_ratio : Float64, mass : Float64, stiffness : Float64) : self
      # adw_spring_params_new: (Constructor)
      # @damping_ratio:
      # @mass:
      # @stiffness:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_spring_params_new(damping_ratio, mass, stiffness)

      # Return value handling
      Adw::SpringParams.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_full(damping : Float64, mass : Float64, stiffness : Float64) : self
      # adw_spring_params_new_full: (Constructor)
      # @damping:
      # @mass:
      # @stiffness:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_spring_params_new_full(damping, mass, stiffness)

      # Return value handling
      Adw::SpringParams.new(_retval, GICrystal::Transfer::Full)
    end

    def damping : Float64
      # adw_spring_params_get_damping: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_params_get_damping(to_unsafe)

      # Return value handling
      _retval
    end

    def damping_ratio : Float64
      # adw_spring_params_get_damping_ratio: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_params_get_damping_ratio(to_unsafe)

      # Return value handling
      _retval
    end

    def mass : Float64
      # adw_spring_params_get_mass: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_params_get_mass(to_unsafe)

      # Return value handling
      _retval
    end

    def stiffness : Float64
      # adw_spring_params_get_stiffness: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_spring_params_get_stiffness(to_unsafe)

      # Return value handling
      _retval
    end

    def ref : Adw::SpringParams
      # adw_spring_params_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_spring_params_ref(to_unsafe)

      # Return value handling
      Adw::SpringParams.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # adw_spring_params_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_spring_params_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
