module GLib
  class MarkupParseContext
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(MarkupParseContext.g_type, pointer)
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
      LibGObject.g_boxed_free(MarkupParseContext.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGLib.g_markup_parse_context_get_type
    end

    def self.new(parser : GLib::MarkupParser, flags : GLib::MarkupParseFlags, user_data : Pointer(Void)?, user_data_dnotify : GLib::DestroyNotify) : self
      # g_markup_parse_context_new: (Constructor)
      # @parser:
      # @flags:
      # @user_data: (nullable)
      # @user_data_dnotify:
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGLib.g_markup_parse_context_new(parser, flags, user_data, user_data_dnotify)

      # Return value handling
      GLib::MarkupParseContext.new(_retval, GICrystal::Transfer::Full)
    end

    def end_parse : Bool
      # g_markup_parse_context_end_parse: (Method | Throws)
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGLib.g_markup_parse_context_end_parse(to_unsafe, pointerof(_error))

      # Error check
      GLib.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def free : Nil
      # g_markup_parse_context_free: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_markup_parse_context_free(to_unsafe)

      # Return value handling
    end

    def element : ::String
      # g_markup_parse_context_get_element: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_markup_parse_context_get_element(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def element_stack : GLib::SList
      # g_markup_parse_context_get_element_stack: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGLib.g_markup_parse_context_get_element_stack(to_unsafe)

      # Return value handling
      GLib::SList(::String).new(_retval, GICrystal::Transfer::None)
    end

    def position : Nil
      # g_markup_parse_context_get_position: (Method)
      # @line_number: (out) (transfer full) (optional)
      # @char_number: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      line_number = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      char_number = Pointer(Int32).null
      # C call
      LibGLib.g_markup_parse_context_get_position(to_unsafe, line_number, char_number)

      # Return value handling
    end

    def user_data : Pointer(Void)?
      # g_markup_parse_context_get_user_data: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_markup_parse_context_get_user_data(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def parse(text : ::String, text_len : Int64) : Bool
      # g_markup_parse_context_parse: (Method | Throws)
      # @text:
      # @text_len:
      # Returns: (transfer none)

      _error = Pointer(LibGLib::Error).null

      # C call
      _retval = LibGLib.g_markup_parse_context_parse(to_unsafe, text, text_len, pointerof(_error))

      # Error check
      GLib.raise_gerror(_error) unless _error.null?

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def pop : Pointer(Void)?
      # g_markup_parse_context_pop: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGLib.g_markup_parse_context_pop(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def push(parser : GLib::MarkupParser, user_data : Pointer(Void)?) : Nil
      # g_markup_parse_context_push: (Method)
      # @parser:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGLib.g_markup_parse_context_push(to_unsafe, parser, user_data)

      # Return value handling
    end

    def ref : GLib::MarkupParseContext
      # g_markup_parse_context_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGLib.g_markup_parse_context_ref(to_unsafe)

      # Return value handling
      GLib::MarkupParseContext.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # g_markup_parse_context_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGLib.g_markup_parse_context_unref(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
