require "./expression"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ObjectExpression < Expression
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `ObjectExpression`.
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
      @@g_type ||= LibGtk.gtk_object_expression_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ObjectExpression.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(object : GObject::Object) : self
      # gtk_object_expression_new: (Constructor)
      # @object:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_object_expression_new(object)

      # Return value handling
      Gtk::ObjectExpression.new(_retval, GICrystal::Transfer::Full)
    end

    def object : GObject::Object?
      # gtk_object_expression_get_object: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_object_expression_get_object(to_unsafe)

      # Return value handling
      GObject::Object.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def_equals_and_hash @pointer
  end
end
