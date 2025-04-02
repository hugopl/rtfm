require "./expression"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class PropertyExpression < Expression
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `PropertyExpression`.
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
      @@g_type ||= LibGtk.gtk_property_expression_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::PropertyExpression.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(this_type : UInt64, expression : Gtk::Expression?, property_name : ::String) : self
      # gtk_property_expression_new: (Constructor)
      # @this_type:
      # @expression: (transfer full) (nullable)
      # @property_name:
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(expression)
      # Generator::NullableArrayPlan
      expression = if expression.nil?
                     Pointer(Void).null
                   else
                     expression.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_property_expression_new(this_type, expression, property_name)

      # Return value handling
      Gtk::PropertyExpression.new(_retval, GICrystal::Transfer::Full)
    end

    def self.new_for_pspec(expression : Gtk::Expression?, pspec : GObject::ParamSpec) : self
      # gtk_property_expression_new_for_pspec: (Constructor)
      # @expression: (transfer full) (nullable)
      # @pspec:
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(expression)
      # Generator::NullableArrayPlan
      expression = if expression.nil?
                     Pointer(Void).null
                   else
                     expression.to_unsafe
                   end

      # C call
      _retval = LibGtk.gtk_property_expression_new_for_pspec(expression, pspec)

      # Return value handling
      Gtk::PropertyExpression.new(_retval, GICrystal::Transfer::Full)
    end

    def expression : Gtk::Expression?
      # gtk_property_expression_get_expression: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_property_expression_get_expression(to_unsafe)

      # Return value handling
      Gtk::Expression.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def pspec : GObject::ParamSpec
      # gtk_property_expression_get_pspec: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_property_expression_get_pspec(to_unsafe)

      # Return value handling
      GObject::ParamSpec.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
