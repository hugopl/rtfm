require "./filter"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CustomFilter < Filter
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CustomFilterClass), class_init,
        sizeof(LibGtk::CustomFilter), instance_init, 0)
    end

    GICrystal.declare_new_method(CustomFilter, g_object_get_qdata)

    # Initialize a new `CustomFilter`.
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
      @@g_type ||= LibGtk.gtk_custom_filter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CustomFilter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(match_func : Gtk::CustomFilterFunc?) : self
      # gtk_custom_filter_new: (Constructor)
      # @match_func: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer full)

      # Generator::CallbackArgPlan
      if match_func
        _box = ::Box.box(match_func)
        match_func = ->(lib_item : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          item = GObject::Object.new(lib_item, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Bool)).unbox(lib_user_data).call(item)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        match_func = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_custom_filter_new(match_func, user_data, user_destroy)

      # Return value handling
      Gtk::CustomFilter.new(_retval, GICrystal::Transfer::Full)
    end

    def filter_func=(match_func : Gtk::CustomFilterFunc?) : Nil
      # gtk_custom_filter_set_filter_func: (Method)
      # @match_func: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if match_func
        _box = ::Box.box(match_func)
        match_func = ->(lib_item : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          item = GObject::Object.new(lib_item, GICrystal::Transfer::None)
          ::Box(Proc(GObject::Object, Bool)).unbox(lib_user_data).call(item)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        match_func = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_custom_filter_set_filter_func(to_unsafe, match_func, user_data, user_destroy)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
