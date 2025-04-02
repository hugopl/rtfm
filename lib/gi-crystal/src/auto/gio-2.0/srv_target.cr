module Gio
  class SrvTarget
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(SrvTarget.g_type, pointer)
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
      LibGObject.g_boxed_free(SrvTarget.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGio.g_srv_target_get_type
    end

    def self.new(hostname : ::String, port : UInt16, priority : UInt16, weight : UInt16) : self
      # g_srv_target_new: (Constructor)
      # @hostname:
      # @port:
      # @priority:
      # @weight:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_srv_target_new(hostname, port, priority, weight)

      # Return value handling
      Gio::SrvTarget.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Gio::SrvTarget
      # g_srv_target_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_srv_target_copy(to_unsafe)

      # Return value handling
      Gio::SrvTarget.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # g_srv_target_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGio.g_srv_target_free(to_unsafe)

      # Return value handling
    end

    def hostname : ::String
      # g_srv_target_get_hostname: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_srv_target_get_hostname(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def port : UInt16
      # g_srv_target_get_port: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_srv_target_get_port(to_unsafe)

      # Return value handling
      _retval
    end

    def priority : UInt16
      # g_srv_target_get_priority: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_srv_target_get_priority(to_unsafe)

      # Return value handling
      _retval
    end

    def weight : UInt16
      # g_srv_target_get_weight: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGio.g_srv_target_get_weight(to_unsafe)

      # Return value handling
      _retval
    end

    def to_unsafe
      @pointer
    end
  end
end
