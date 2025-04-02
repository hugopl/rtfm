require "../g_object-2.0/object"

module JavaScriptCore
  @[GICrystal::GeneratedWrapper]
  class VirtualMachine < GObject::Object
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(VirtualMachine, g_object_get_qdata)

    # Initialize a new `VirtualMachine`.
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
      @@g_type ||= LibJavaScriptCore.jsc_virtual_machine_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->JavaScriptCore::VirtualMachine.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new : self
      # jsc_virtual_machine_new: (Constructor)
      # Returns: (transfer full)

      # C call
      _retval = LibJavaScriptCore.jsc_virtual_machine_new

      # Return value handling
      JavaScriptCore::VirtualMachine.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
