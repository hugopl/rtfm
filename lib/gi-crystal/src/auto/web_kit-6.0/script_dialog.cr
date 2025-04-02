module WebKit
  class ScriptDialog
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ScriptDialog.g_type, pointer)
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
      LibGObject.g_boxed_free(ScriptDialog.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_script_dialog_get_type
    end

    def close : Nil
      # webkit_script_dialog_close: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_script_dialog_close(to_unsafe)

      # Return value handling
    end

    def confirm_set_confirmed(confirmed : Bool) : Nil
      # webkit_script_dialog_confirm_set_confirmed: (Method)
      # @confirmed:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_script_dialog_confirm_set_confirmed(to_unsafe, confirmed)

      # Return value handling
    end

    def dialog_type : WebKit::ScriptDialogType
      # webkit_script_dialog_get_dialog_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_script_dialog_get_dialog_type(to_unsafe)

      # Return value handling
      WebKit::ScriptDialogType.new(_retval)
    end

    def message : ::String
      # webkit_script_dialog_get_message: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_script_dialog_get_message(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def prompt_get_default_text : ::String
      # webkit_script_dialog_prompt_get_default_text: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibWebKit.webkit_script_dialog_prompt_get_default_text(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def prompt_set_text(text : ::String) : Nil
      # webkit_script_dialog_prompt_set_text: (Method)
      # @text:
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_script_dialog_prompt_set_text(to_unsafe, text)

      # Return value handling
    end

    def ref : WebKit::ScriptDialog
      # webkit_script_dialog_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_script_dialog_ref(to_unsafe)

      # Return value handling
      WebKit::ScriptDialog.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # webkit_script_dialog_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_script_dialog_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
