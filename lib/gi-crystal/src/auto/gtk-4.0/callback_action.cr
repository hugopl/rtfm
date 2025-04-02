require "./shortcut_action"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CallbackAction < ShortcutAction
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CallbackActionClass), class_init,
        sizeof(LibGtk::CallbackAction), instance_init, 0)
    end

    GICrystal.declare_new_method(CallbackAction, g_object_get_qdata)

    # Initialize a new `CallbackAction`.
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
      @@g_type ||= LibGtk.gtk_callback_action_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CallbackAction.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(callback : Gtk::ShortcutFunc) : self
      # gtk_callback_action_new: (Constructor)
      # @callback:
      # @data: (nullable)
      # @destroy:
      # Returns: (transfer full)

      # Generator::CallbackArgPlan
      if callback
        _box = ::Box.box(callback)
        callback = ->(lib_widget : Pointer(Void), lib_args : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          widget = Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
          # Generator::HandmadeArgPlan
          args = GLib::Variant.new(lib_args, :none) unless lib_args.null?
          ::Box(Proc(Gtk::Widget, GLib::Variant?, Bool)).unbox(lib_user_data).call(widget, args)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        callback = data = destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_callback_action_new(callback, data, destroy)

      # Return value handling
      Gtk::CallbackAction.new(_retval, GICrystal::Transfer::Full)
    end

    def_equals_and_hash @pointer
  end
end
