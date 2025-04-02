require "./expression"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class ClosureExpression < Expression
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `ClosureExpression`.
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
      @@g_type ||= LibGtk.gtk_closure_expression_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::ClosureExpression.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(value_type : UInt64, closure : GObject::Closure, params : Enumerable(Gtk::Expression)?) : self
      # gtk_closure_expression_new: (Constructor)
      # @value_type:
      # @closure:
      # @n_params:
      # @params: (transfer full) (nullable) (array length=n_params element-type Interface)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_params = params.try(&.size) || 0
      # Generator::NullableArrayPlan
      params = if params.nil?
                 Pointer(Pointer(LibGtk::Expression)).null
               else
                 params.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGtk::Expression)))
               end

      # C call
      _retval = LibGtk.gtk_closure_expression_new(value_type, closure, n_params, params)

      # Return value handling
      Gtk::ClosureExpression.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
