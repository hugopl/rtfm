module Adw
  class BreakpointCondition
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(BreakpointCondition.g_type, pointer)
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
      LibGObject.g_boxed_free(BreakpointCondition.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibAdw.adw_breakpoint_condition_get_type
    end

    def self.new_and(condition_1 : Adw::BreakpointCondition, condition_2 : Adw::BreakpointCondition) : self
      # adw_breakpoint_condition_new_and: (Constructor)
      # @condition_1: (transfer full)
      # @condition_2: (transfer full)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_condition_new_and(condition_1, condition_2)

      # Return value handling
      Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_length(type : Adw::BreakpointConditionLengthType, value : Float64, unit : Adw::LengthUnit) : self
      # adw_breakpoint_condition_new_length: (Constructor)
      # @type:
      # @value:
      # @unit:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_condition_new_length(type, value, unit)

      # Return value handling
      Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_or(condition_1 : Adw::BreakpointCondition, condition_2 : Adw::BreakpointCondition) : self
      # adw_breakpoint_condition_new_or: (Constructor)
      # @condition_1: (transfer full)
      # @condition_2: (transfer full)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_condition_new_or(condition_1, condition_2)

      # Return value handling
      Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_ratio(type : Adw::BreakpointConditionRatioType, width : Int32, height : Int32) : self
      # adw_breakpoint_condition_new_ratio: (Constructor)
      # @type:
      # @width:
      # @height:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_condition_new_ratio(type, width, height)

      # Return value handling
      Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::Full)
    end

    def copy : Adw::BreakpointCondition
      # adw_breakpoint_condition_copy: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_condition_copy(to_unsafe)

      # Return value handling
      Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::Full)
    end

    def free : Nil
      # adw_breakpoint_condition_free: (Method)
      # Returns: (transfer none)

      # C call
      LibAdw.adw_breakpoint_condition_free(to_unsafe)

      # Return value handling
    end

    def to_string : ::String
      # adw_breakpoint_condition_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_condition_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def self.parse(str : ::String) : Adw::BreakpointCondition
      # adw_breakpoint_condition_parse: (None)
      # @str:
      # Returns: (transfer full)

      # C call
      _retval = LibAdw.adw_breakpoint_condition_parse(str)

      # Return value handling
      Adw::BreakpointCondition.new(_retval, GICrystal::Transfer::Full)
    end

    def to_unsafe
      @pointer
    end
  end
end
