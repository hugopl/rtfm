module WebKit
  class ScriptMessageReply
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ScriptMessageReply.g_type, pointer)
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
      LibGObject.g_boxed_free(ScriptMessageReply.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_script_message_reply_get_type
    end

    def ref : WebKit::ScriptMessageReply
      # webkit_script_message_reply_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_script_message_reply_ref(to_unsafe)

      # Return value handling
      WebKit::ScriptMessageReply.new(_retval, GICrystal::Transfer::Full)
    end

    def return_error_message(error_message : ::String) : Nil
      # webkit_script_message_reply_return_error_message: (Method)
      # @error_message:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_script_message_reply_return_error_message(to_unsafe, error_message)

      # Return value handling
    end

    def return_value(reply_value : JavaScriptCore::Value) : Nil
      # webkit_script_message_reply_return_value: (Method)
      # @reply_value:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_script_message_reply_return_value(to_unsafe, reply_value)

      # Return value handling
    end

    def unref : Nil
      # webkit_script_message_reply_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_script_message_reply_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
