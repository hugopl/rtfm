module Soup
  class Cookie
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(Cookie.g_type, pointer)
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
      LibGObject.g_boxed_free(Cookie.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_cookie_get_type
    end

    def self.new(name : ::String, value : ::String, domain : ::String, path : ::String, max_age : Int32) : self
      # soup_cookie_new: (Constructor)
      # @name:
      # @value:
      # @domain:
      # @path:
      # @max_age:
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_new(name, value, domain, path, max_age)

      # Return value handling
      Soup::Cookie.new(_retval, GICrystal::Transfer::Full)
    end

    def applies_to_uri(uri : GLib::Uri) : Bool
      # soup_cookie_applies_to_uri: (Method)
      # @uri:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_applies_to_uri(to_unsafe, uri)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def copy : Soup::Cookie
      # soup_cookie_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_copy(to_unsafe)

      # Return value handling
      Soup::Cookie.new(_retval, GICrystal::Transfer::Full)
    end

    def domain_matches(host : ::String) : Bool
      # soup_cookie_domain_matches: (Method)
      # @host:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_domain_matches(to_unsafe, host)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def equal(cookie2 : Soup::Cookie) : Bool
      # soup_cookie_equal: (Method)
      # @cookie2:
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_equal(to_unsafe, cookie2)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # soup_cookie_free: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_free(to_unsafe)

      # Return value handling
    end

    def domain : ::String
      # soup_cookie_get_domain: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_get_domain(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def expires : GLib::DateTime?
      # soup_cookie_get_expires: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibSoup.soup_cookie_get_expires(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def http_only : Bool
      # soup_cookie_get_http_only: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_get_http_only(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def name : ::String
      # soup_cookie_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def path : ::String
      # soup_cookie_get_path: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_get_path(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def same_site_policy : Soup::SameSitePolicy
      # soup_cookie_get_same_site_policy: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_get_same_site_policy(to_unsafe)

      # Return value handling
      Soup::SameSitePolicy.new(_retval)
    end

    def secure : Bool
      # soup_cookie_get_secure: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_get_secure(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def value : ::String
      # soup_cookie_get_value: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_cookie_get_value(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def domain=(domain : ::String) : Nil
      # soup_cookie_set_domain: (Method)
      # @domain:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_domain(to_unsafe, domain)

      # Return value handling
    end

    def expires=(expires : GLib::DateTime) : Nil
      # soup_cookie_set_expires: (Method)
      # @expires:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_expires(to_unsafe, expires)

      # Return value handling
    end

    def http_only=(http_only : Bool) : Nil
      # soup_cookie_set_http_only: (Method)
      # @http_only:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_http_only(to_unsafe, http_only)

      # Return value handling
    end

    def max_age=(max_age : Int32) : Nil
      # soup_cookie_set_max_age: (Method)
      # @max_age:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_max_age(to_unsafe, max_age)

      # Return value handling
    end

    def name=(name : ::String) : Nil
      # soup_cookie_set_name: (Method)
      # @name:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_name(to_unsafe, name)

      # Return value handling
    end

    def path=(path : ::String) : Nil
      # soup_cookie_set_path: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_path(to_unsafe, path)

      # Return value handling
    end

    def same_site_policy=(policy : Soup::SameSitePolicy) : Nil
      # soup_cookie_set_same_site_policy: (Method)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_same_site_policy(to_unsafe, policy)

      # Return value handling
    end

    def secure=(secure : Bool) : Nil
      # soup_cookie_set_secure: (Method)
      # @secure:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_secure(to_unsafe, secure)

      # Return value handling
    end

    def value=(value : ::String) : Nil
      # soup_cookie_set_value: (Method)
      # @value:
      # Returns: (transfer none)

      # C call
      LibSoup.soup_cookie_set_value(to_unsafe, value)

      # Return value handling
    end

    def to_cookie_header : ::String
      # soup_cookie_to_cookie_header: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_to_cookie_header(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def to_set_cookie_header : ::String
      # soup_cookie_to_set_cookie_header: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_cookie_to_set_cookie_header(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def self.parse(header : ::String, origin : GLib::Uri?) : Soup::Cookie?
      # soup_cookie_parse: (None)
      # @header:
      # @origin: (nullable)
      # Returns: (transfer full) (nullable)

      # Generator::NullableArrayPlan
      origin = if origin.nil?
                 Pointer(Void).null
               else
                 origin.to_unsafe
               end

      # C call
      _retval = LibSoup.soup_cookie_parse(header, origin)

      # Return value handling
      Soup::Cookie.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def to_unsafe
      @pointer
    end
  end
end
