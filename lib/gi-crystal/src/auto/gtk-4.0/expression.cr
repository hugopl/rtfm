module Gtk
  @[GICrystal::GeneratedWrapper]
  class Expression
    @pointer : Pointer(Void)

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
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

    # Called by the garbage collector. Decreases the reference count of object.
    # (i.e. its memory is freed).
    def finalize
      {% if flag?(:debugmemory) %}
        LibC.printf("~%s at %p\n", self.class.name.to_unsafe, self)
      {% end %}
      GICrystal.finalize_instance(self)
    end

    # Returns a pointer to the C object.
    def to_unsafe
      @pointer
    end

    private def _after_init : Nil
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_expression_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Expression.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def bind(target : GObject::Object, property : ::String, this_ : GObject::Object?) : Gtk::ExpressionWatch
      # gtk_expression_bind: (Method)
      # @target:
      # @property:
      # @this_: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      this_ = if this_.nil?
                Pointer(Void).null
              else
                this_.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_expression_bind(to_unsafe, target, property, this_)

      # Return value handling
      Gtk::ExpressionWatch.new(_retval, GICrystal::Transfer::None)
    end

    def evaluate(this_ : GObject::Object?, value : _) : Bool
      # gtk_expression_evaluate: (Method)
      # @this_: (nullable)
      # @value:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      this_ = if this_.nil?
                Pointer(Void).null
              else
                this_.to_unsafe
              end
      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_expression_evaluate(to_unsafe, this_, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def value_type : UInt64
      # gtk_expression_get_value_type: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_expression_get_value_type(to_unsafe)

      # Return value handling
      _retval
    end

    def is_static : Bool
      # gtk_expression_is_static: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_expression_is_static(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def watch(this_ : GObject::Object?, notify : Gtk::ExpressionNotify) : Gtk::ExpressionWatch
      # gtk_expression_watch: (Method)
      # @this_: (nullable)
      # @notify:
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      this_ = if this_.nil?
                Pointer(Void).null
              else
                this_.to_unsafe
              end
      # Generator::CallbackArgPlan
      if notify
        _box = ::Box.box(notify)
        notify = ->(lib_user_data : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(lib_user_data).call
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        notify = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_expression_watch(to_unsafe, this_, notify, user_data, user_destroy)

      # Return value handling
      Gtk::ExpressionWatch.new(_retval, GICrystal::Transfer::None)
    end

    def_equals_and_hash @pointer
  end
end
