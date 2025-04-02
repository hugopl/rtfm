require "./expression"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CClosureExpression < Expression
    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    # Initialize a new `CClosureExpression`.
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
      @@g_type ||= LibGtk.gtk_cclosure_expression_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CClosureExpression.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(value_type : UInt64, marshal : GObject::ClosureMarshal?, params : Enumerable(Gtk::Expression), callback_func : GObject::Callback, user_data : Pointer(Void)?, user_destroy : GObject::ClosureNotify?) : self
      # gtk_cclosure_expression_new: (Constructor)
      # @value_type:
      # @marshal: (nullable)
      # @n_params:
      # @params: (transfer full) (array length=n_params element-type Interface)
      # @callback_func:
      # @user_data: (nullable)
      # @user_destroy: (nullable)
      # Returns: (transfer full)

      # Generator::ArrayLengthArgPlan
      n_params = params.size
      # Generator::ArrayArgPlan
      params = params.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(Pointer(LibGtk::Expression)))
      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      _retval = LibGtk.gtk_cclosure_expression_new(value_type, marshal, n_params, params, callback_func, user_data, user_destroy)

      # Return value handling
      Gtk::CClosureExpression.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
