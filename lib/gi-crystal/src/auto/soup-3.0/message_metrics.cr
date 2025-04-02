module Soup
  class MessageMetrics
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(MessageMetrics.g_type, pointer)
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
      LibGObject.g_boxed_free(MessageMetrics.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibSoup.soup_message_metrics_get_type
    end

    def copy : Soup::MessageMetrics
      # soup_message_metrics_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibSoup.soup_message_metrics_copy(to_unsafe)

      # Return value handling
      Soup::MessageMetrics.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # soup_message_metrics_free: (Method)
      # Returns: (transfer none)

      # C call
      LibSoup.soup_message_metrics_free(to_unsafe)

      # Return value handling
    end

    def connect_end : UInt64
      # soup_message_metrics_get_connect_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_connect_end(to_unsafe)

      # Return value handling
      _retval
    end

    def connect_start : UInt64
      # soup_message_metrics_get_connect_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_connect_start(to_unsafe)

      # Return value handling
      _retval
    end

    def dns_end : UInt64
      # soup_message_metrics_get_dns_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_dns_end(to_unsafe)

      # Return value handling
      _retval
    end

    def dns_start : UInt64
      # soup_message_metrics_get_dns_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_dns_start(to_unsafe)

      # Return value handling
      _retval
    end

    def fetch_start : UInt64
      # soup_message_metrics_get_fetch_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_fetch_start(to_unsafe)

      # Return value handling
      _retval
    end

    def request_body_bytes_sent : UInt64
      # soup_message_metrics_get_request_body_bytes_sent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_request_body_bytes_sent(to_unsafe)

      # Return value handling
      _retval
    end

    def request_body_size : UInt64
      # soup_message_metrics_get_request_body_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_request_body_size(to_unsafe)

      # Return value handling
      _retval
    end

    def request_header_bytes_sent : UInt64
      # soup_message_metrics_get_request_header_bytes_sent: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_request_header_bytes_sent(to_unsafe)

      # Return value handling
      _retval
    end

    def request_start : UInt64
      # soup_message_metrics_get_request_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_request_start(to_unsafe)

      # Return value handling
      _retval
    end

    def response_body_bytes_received : UInt64
      # soup_message_metrics_get_response_body_bytes_received: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_response_body_bytes_received(to_unsafe)

      # Return value handling
      _retval
    end

    def response_body_size : UInt64
      # soup_message_metrics_get_response_body_size: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_response_body_size(to_unsafe)

      # Return value handling
      _retval
    end

    def response_end : UInt64
      # soup_message_metrics_get_response_end: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_response_end(to_unsafe)

      # Return value handling
      _retval
    end

    def response_header_bytes_received : UInt64
      # soup_message_metrics_get_response_header_bytes_received: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_response_header_bytes_received(to_unsafe)

      # Return value handling
      _retval
    end

    def response_start : UInt64
      # soup_message_metrics_get_response_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_response_start(to_unsafe)

      # Return value handling
      _retval
    end

    def tls_start : UInt64
      # soup_message_metrics_get_tls_start: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibSoup.soup_message_metrics_get_tls_start(to_unsafe)

      # Return value handling
      _retval
    end

    def to_unsafe
      @pointer
    end
  end
end
