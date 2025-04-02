require "../g_object-2.0/object"

module WebKit
  @[GICrystal::GeneratedWrapper]
  class FormSubmissionRequest < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(FormSubmissionRequest, g_object_get_qdata)

    # Initialize a new `FormSubmissionRequest`.
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
      @@g_type ||= LibWebKit.webkit_form_submission_request_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->WebKit::FormSubmissionRequest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def list_text_fields : Bool
      # webkit_form_submission_request_list_text_fields: (Method)
      # @field_names: (out) (optional) (array element-type Utf8)
      # @field_values: (out) (optional) (array element-type Utf8)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      field_names = Pointer(Pointer(Pointer(LibC::Char))).null # Generator::ArrayArgPlan
      field_names = field_names.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))
      # Generator::OutArgUsedInReturnPlan
      field_values = Pointer(Pointer(Pointer(LibC::Char))).null # Generator::ArrayArgPlan
      field_values = field_values.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibC::Char)))

      # C call
      _retval = LibWebKit.webkit_form_submission_request_list_text_fields(to_unsafe, field_names, field_values)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def submit : Nil
      # webkit_form_submission_request_submit: (Method)
      # Returns: (transfer none)

      # C call
      LibWebKit.webkit_form_submission_request_submit(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
