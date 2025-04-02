module GObject
  class ParamSpecPool
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = pointer
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

    def free : Nil
      # g_param_spec_pool_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGObject.g_param_spec_pool_free(to_unsafe)

      # Return value handling
    end

    def insert(pspec : GObject::ParamSpec, owner_type : UInt64) : Nil
      # g_param_spec_pool_insert: (Method)
      # @pspec:
      # @owner_type:
      # Returns: (transfer none)

      # C call
      LibGObject.g_param_spec_pool_insert(to_unsafe, pspec, owner_type)

      # Return value handling
    end

    def list(owner_type : UInt64) : Enumerable(GObject::ParamSpec)
      # g_param_spec_pool_list: (Method)
      # @owner_type:
      # @n_pspecs_p: (out) (transfer full)
      # Returns: (transfer container) (array length=n_pspecs_p element-type Interface)

      # Generator::OutArgUsedInReturnPlan
      n_pspecs_p = 0_u32
      # C call
      _retval = LibGObject.g_param_spec_pool_list(to_unsafe, owner_type, pointerof(n_pspecs_p))

      # Return value handling
      GICrystal.transfer_array(_retval, n_pspecs_p, GICrystal::Transfer::Container)
    end

    def list_owned(owner_type : UInt64) : GLib::List
      # g_param_spec_pool_list_owned: (Method)
      # @owner_type:
      # Returns: (transfer container)

      # C call
      _retval = LibGObject.g_param_spec_pool_list_owned(to_unsafe, owner_type)

      # Return value handling
      GLib::List(GObject::ParamSpec).new(_retval, GICrystal::Transfer::Container)
    end

    def lookup(param_name : ::String, owner_type : UInt64, walk_ancestors : Bool) : GObject::ParamSpec?
      # g_param_spec_pool_lookup: (Method)
      # @param_name:
      # @owner_type:
      # @walk_ancestors:
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGObject.g_param_spec_pool_lookup(to_unsafe, param_name, owner_type, walk_ancestors)

      # Return value handling
      GObject::ParamSpec.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def remove(pspec : GObject::ParamSpec) : Nil
      # g_param_spec_pool_remove: (Method)
      # @pspec:
      # Returns: (transfer none)

      # C call
      LibGObject.g_param_spec_pool_remove(to_unsafe, pspec)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
