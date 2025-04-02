module WebKit
  class WebViewSessionState
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(WebViewSessionState.g_type, pointer)
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
      LibGObject.g_boxed_free(WebViewSessionState.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_web_view_session_state_get_type
    end

    def self.new(data : GLib::Bytes) : self
      # webkit_web_view_session_state_new: (Constructor)
      # @data:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_web_view_session_state_new(data)

      # Return value handling
      WebKit::WebViewSessionState.new(_retval, GICrystal::Transfer::Full)
    end

    def ref : WebKit::WebViewSessionState
      # webkit_web_view_session_state_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_web_view_session_state_ref(to_unsafe)

      # Return value handling
      WebKit::WebViewSessionState.new(_retval, GICrystal::Transfer::Full)
    end

    def serialize : GLib::Bytes
      # webkit_web_view_session_state_serialize: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_web_view_session_state_serialize(to_unsafe)

      # Return value handling
      GLib::Bytes.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_web_view_session_state_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_web_view_session_state_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
