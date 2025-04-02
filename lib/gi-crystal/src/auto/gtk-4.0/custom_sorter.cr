require "./sorter"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CustomSorter < Sorter
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CustomSorterClass), class_init,
        sizeof(LibGtk::CustomSorter), instance_init, 0)
    end

    GICrystal.declare_new_method(CustomSorter, g_object_get_qdata)

    # Initialize a new `CustomSorter`.
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
      @@g_type ||= LibGtk.gtk_custom_sorter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CustomSorter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def self.new(sort_func : GLib::CompareDataFunc?) : self
      # gtk_custom_sorter_new: (Constructor)
      # @sort_func: (nullable)
      # @user_data: (nullable)
      # @user_destroy: (nullable)
      # Returns: (transfer full)

      # Generator::CallbackArgPlan
      if sort_func
        _box = ::Box.box(sort_func)
        sort_func = ->(lib_a : Pointer(Void), lib_b : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::NullableArrayPlan
          a = (lib_a.null? ? nil : lib_a)
          # Generator::NullableArrayPlan
          b = (lib_b.null? ? nil : lib_b)
          ::Box(Proc(Pointer(Void)?, Pointer(Void)?, Int32)).unbox(lib_user_data).call(a, b)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        sort_func = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      _retval = LibGtk.gtk_custom_sorter_new(sort_func, user_data, user_destroy)

      # Return value handling
      Gtk::CustomSorter.new(_retval, GICrystal::Transfer::Full)
    end

    def sort_func=(sort_func : GLib::CompareDataFunc?) : Nil
      # gtk_custom_sorter_set_sort_func: (Method)
      # @sort_func: (nullable)
      # @user_data: (nullable)
      # @user_destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if sort_func
        _box = ::Box.box(sort_func)
        sort_func = ->(lib_a : Pointer(Void), lib_b : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::NullableArrayPlan
          a = (lib_a.null? ? nil : lib_a)
          # Generator::NullableArrayPlan
          b = (lib_b.null? ? nil : lib_b)
          ::Box(Proc(Pointer(Void)?, Pointer(Void)?, Int32)).unbox(lib_user_data).call(a, b)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        user_destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        sort_func = user_data = user_destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_custom_sorter_set_sort_func(to_unsafe, sort_func, user_data, user_destroy)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
