module Gtk
  class BuildableParseContext
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

    def element : ::String?
      # gtk_buildable_parse_context_get_element: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_buildable_parse_context_get_element(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def element_stack : Enumerable(::String)
      # gtk_buildable_parse_context_get_element_stack: (Method)
      # Returns: (transfer none) (array element-type Utf8)

      # C call
      _retval = LibGtk.gtk_buildable_parse_context_get_element_stack(to_unsafe)

      # Return value handling
      _retval
    end

    def position : Nil
      # gtk_buildable_parse_context_get_position: (Method)
      # @line_number: (out) (transfer full) (optional)
      # @char_number: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      line_number = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      char_number = Pointer(Int32).null
      # C call
      LibGtk.gtk_buildable_parse_context_get_position(to_unsafe, line_number, char_number)

      # Return value handling
    end

    def pop : Pointer(Void)?
      # gtk_buildable_parse_context_pop: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_buildable_parse_context_pop(to_unsafe)

      # Return value handling
      _retval unless _retval.null?
    end

    def push(parser : Gtk::BuildableParser, user_data : Pointer(Void)?) : Nil
      # gtk_buildable_parse_context_push: (Method)
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
      LibGtk.gtk_buildable_parse_context_push(to_unsafe, parser, user_data)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
