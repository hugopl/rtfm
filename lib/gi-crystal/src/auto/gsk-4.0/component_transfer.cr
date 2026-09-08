module Gsk
  class ComponentTransfer
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ComponentTransfer.g_type, pointer)
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
      LibGObject.g_boxed_free(ComponentTransfer.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGsk.gsk_component_transfer_get_type
    end

    def self.new_discrete(values : Enumerable(Float32)) : self
      # gsk_component_transfer_new_discrete: (Constructor)
      # @n:
      # @values: (array length=n element-type Float)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      _retval = LibGsk.gsk_component_transfer_new_discrete(n, values)

      # Return value handling
      Gsk::ComponentTransfer.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_discrete(*values : Float32)
      self.new_discrete(values)
    end

    def self.new_gamma(amp : Float32, exp : Float32, ofs : Float32) : self
      # gsk_component_transfer_new_gamma: (Constructor)
      # @amp:
      # @exp:
      # @ofs:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_component_transfer_new_gamma(amp, exp, ofs)

      # Return value handling
      Gsk::ComponentTransfer.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_levels(n : Float32) : self
      # gsk_component_transfer_new_levels: (Constructor)
      # @n:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_component_transfer_new_levels(n)

      # Return value handling
      Gsk::ComponentTransfer.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_linear(m : Float32, b : Float32) : self
      # gsk_component_transfer_new_linear: (Constructor)
      # @m:
      # @b:
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_component_transfer_new_linear(m, b)

      # Return value handling
      Gsk::ComponentTransfer.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_table(values : Enumerable(Float32)) : self
      # gsk_component_transfer_new_table: (Constructor)
      # @n:
      # @values: (array length=n element-type Float)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.to_unsafe.as(Pointer(Float32))

      # C call
      _retval = LibGsk.gsk_component_transfer_new_table(n, values)

      # Return value handling
      Gsk::ComponentTransfer.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_table(*values : Float32)
      self.new_table(values)
    end

    def copy : Gsk::ComponentTransfer
      # gsk_component_transfer_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGsk.gsk_component_transfer_copy(to_unsafe)

      # Return value handling
      Gsk::ComponentTransfer.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # gsk_component_transfer_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGsk.gsk_component_transfer_free(to_unsafe)

      # Return value handling
    end

    def self.equal(self _self : Pointer(Void), other : Pointer(Void)) : Bool
      # gsk_component_transfer_equal: (None)
      # @self:
      # @other:
      # Returns: (transfer none)

      # C call
      _retval = LibGsk.gsk_component_transfer_equal(_self, other)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
