module Gtk
  class ExpressionWatch
    @pointer : Pointer(Void)

    def initialize(pointer : Pointer(Void), transfer : GICrystal::Transfer)
      raise ArgumentError.new("Tried to generate struct with a NULL pointer") if pointer.null?

      @pointer = if transfer.none?
                   LibGObject.g_boxed_copy(ExpressionWatch.g_type, pointer)
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
      LibGObject.g_boxed_free(ExpressionWatch.g_type, self)
    end

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGtk.gtk_expression_watch_get_type
    end

    def evaluate(value : _) : Bool
      # gtk_expression_watch_evaluate: (Method)
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_expression_watch_evaluate(to_unsafe, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def ref : Gtk::ExpressionWatch
      # gtk_expression_watch_ref: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_expression_watch_ref(to_unsafe)

      # Return value handling
      Gtk::ExpressionWatch.new(_retval, GICrystal::Transfer::Full)
    end

    def unref : Nil
      # gtk_expression_watch_unref: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_expression_watch_unref(to_unsafe)

      # Return value handling
    end

    def unwatch : Nil
      # gtk_expression_watch_unwatch: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_expression_watch_unwatch(to_unsafe)

      # Return value handling
    end

    def to_unsafe
      @pointer
    end
  end
end
