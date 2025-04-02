module Soup
  class HSTSPolicy
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(HSTSPolicy.g_type, pointer)
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
      LibGObject.g_boxed_free(HSTSPolicy.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_hsts_policy_get_type
    end

    def self.new(domain : ::String, max_age : UInt64, include_subdomains : Bool) : self
      # soup_hsts_policy_new: (Constructor)
      # @domain:
      # @max_age:
      # @include_subdomains:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_policy_new(domain, max_age, include_subdomains)

      # Return value handling
      Soup::HSTSPolicy.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_from_response(msg : Soup::Message) : self?
      # soup_hsts_policy_new_from_response: (Constructor)
      # @msg:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibSoup.soup_hsts_policy_new_from_response(msg)

      # Return value handling
      Soup::HSTSPolicy.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def self.new_full(domain : ::String, max_age : UInt64, expires : GLib::DateTime, include_subdomains : Bool) : self
      # soup_hsts_policy_new_full: (Constructor)
      # @domain:
      # @max_age:
      # @expires:
      # @include_subdomains:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_policy_new_full(domain, max_age, expires, include_subdomains)

      # Return value handling
      Soup::HSTSPolicy.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_session_policy(domain : ::String, include_subdomains : Bool) : self
      # soup_hsts_policy_new_session_policy: (Constructor)
      # @domain:
      # @include_subdomains:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_policy_new_session_policy(domain, include_subdomains)

      # Return value handling
      Soup::HSTSPolicy.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Soup::HSTSPolicy
      # soup_hsts_policy_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_policy_copy(to_unsafe)

      # Return value handling
      Soup::HSTSPolicy.new(_retval, GICrystal::Transfer::Full)
    end

    def equal(policy2 : Soup::HSTSPolicy) : Bool
      # soup_hsts_policy_equal: (Method)
      # @policy2:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_policy_equal(to_unsafe, policy2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # soup_hsts_policy_free: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_hsts_policy_free(to_unsafe)

      # Return value handling
    end

    def domain : ::String
      # soup_hsts_policy_get_domain: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_policy_get_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def expires : GLib::DateTime
      # soup_hsts_policy_get_expires: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_hsts_policy_get_expires(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full)
    end

    def max_age : UInt64
      # soup_hsts_policy_get_max_age: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_policy_get_max_age(to_unsafe)

      # Return value handling
      _retval
    end

    def includes_subdomains : Bool
      # soup_hsts_policy_includes_subdomains: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_policy_includes_subdomains(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_expired : Bool
      # soup_hsts_policy_is_expired: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_policy_is_expired(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def is_session_policy : Bool
      # soup_hsts_policy_is_session_policy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_hsts_policy_is_session_policy(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def to_unsafe
      @pointer
    end
  end
end
