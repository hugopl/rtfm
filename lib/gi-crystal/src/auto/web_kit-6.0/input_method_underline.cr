module WebKit
  class InputMethodUnderline
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(InputMethodUnderline.g_type, pointer)
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
      LibGObject.g_boxed_free(InputMethodUnderline.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibWebKit.webkit_input_method_underline_get_type
    end

    def self.new(start_offset : UInt32, end_offset : UInt32) : self
      # webkit_input_method_underline_new: (Constructor)
      # @start_offset:
      # @end_offset:
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_input_method_underline_new(start_offset, end_offset)

      # Return value handling
      WebKit::InputMethodUnderline.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : WebKit::InputMethodUnderline
      # webkit_input_method_underline_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibWebKit.webkit_input_method_underline_copy(to_unsafe)

      # Return value handling
      WebKit::InputMethodUnderline.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # webkit_input_method_underline_free: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_input_method_underline_free(to_unsafe)

      # Return value handling
    end

    def color=(rgba : Gdk::RGBA?) : Nil
      # webkit_input_method_underline_set_color: (Method)
      # @rgba: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      rgba = if rgba.nil?
               Pointer(Void).null
             else
               rgba.to_unsafe
             end

      # C call
      LibWebKit.webkit_input_method_underline_set_color(to_unsafe, rgba)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
