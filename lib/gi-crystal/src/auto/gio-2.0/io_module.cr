require "../g_object-2.0/type_module"
require "../g_object-2.0/type_plugin"

module Gio
  @[GICrystal::GeneratedWrapper]
  class IOModule < GObject::TypeModule
    include GObject::TypePlugin

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGio::IOModuleClass), class_init,
        sizeof(LibGio::IOModule), instance_init, 0)
    end

    GICrystal.declare_new_method(IOModule, g_object_get_qdata)

    # Initialize a new `IOModule`.
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
      @@g_type ||= LibGio.g_io_module_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gio::IOModule.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(filename : ::String) : self
      # g_io_module_new: (Constructor)
      # @filename:
      # Returns: (transfer full)

      # C call
      _retval = LibGio.g_io_module_new(filename)

      # Return value handling
      Gio::IOModule.new(_retval, GICrystal::Transfer::Full)
    end

    def self.query : Enumerable(::String)
      # g_io_module_query: (None)
      # Returns: (transfer full) (array zero-terminated=1 element-type Utf8)

      # C call
      _retval = LibGio.g_io_module_query

      # Return value handling
      GICrystal.transfer_null_ended_array(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
