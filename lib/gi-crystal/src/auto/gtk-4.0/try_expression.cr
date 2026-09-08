require "./expression"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TryExpression < Expression
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `TryExpression`.
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
      @@g_type ||= LibGtk.gtk_try_expression_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TryExpression.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(expressions : Enumerable(Gtk::Expression)) : self
      # gtk_try_expression_new: (Constructor)
      # @n_expressions:
      # @expressions: (transfer full) (array length=n_expressions element-type Interface)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_expressions = expressions.size
      # Generator::ArrayArgPlan
      expressions = expressions.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGtk::Expression)))

      # C call
      _retval = LibGtk.gtk_try_expression_new(n_expressions, expressions)

      # Return value handling
      Gtk::TryExpression.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new(*expressions : Gtk::Expression)
      self.new(expressions)
    end

    def_equals_and_hash @pointer
  end
end
