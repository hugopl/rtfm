require "../g_object-2.0/object"

module JavaScriptCore
  @[GICrystal::GeneratedWrapper]
  class Exception < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Exception, g_object_get_qdata)

    # Initialize a new `Exception`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
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

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibJavaScriptCore.jsc_exception_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->JavaScriptCore::Exception.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(context : JavaScriptCore::Context, message : ::String) : self
      # jsc_exception_new: (Constructor)
      # @context:
      # @message:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_new(context, message)

      # Return value handling
      JavaScriptCore::Exception.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_with_name(context : JavaScriptCore::Context, name : ::String, message : ::String) : self
      # jsc_exception_new_with_name: (Constructor)
      # @context:
      # @name:
      # @message:
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_new_with_name(context, name, message)

      # Return value handling
      JavaScriptCore::Exception.new(_retval, GICrystal::Transfer::Full)
    end

    def backtrace_string : ::String?
      # jsc_exception_get_backtrace_string: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_get_backtrace_string(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def column_number : UInt32
      # jsc_exception_get_column_number: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_get_column_number(to_unsafe)

      # Return value handling
      _retval
    end

    def line_number : UInt32
      # jsc_exception_get_line_number: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_get_line_number(to_unsafe)

      # Return value handling
      _retval
    end

    def message : ::String
      # jsc_exception_get_message: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_get_message(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def name : ::String
      # jsc_exception_get_name: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_get_name(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def source_uri : ::String?
      # jsc_exception_get_source_uri: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_get_source_uri(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    def report : ::String
      # jsc_exception_report: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_report(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def to_string : ::String
      # jsc_exception_to_string: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_exception_to_string(to_unsafe)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def_equals_and_hash @pointer
  end
end
