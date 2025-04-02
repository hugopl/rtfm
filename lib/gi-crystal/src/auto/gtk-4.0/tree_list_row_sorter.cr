require "./sorter"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeListRowSorter < Sorter
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TreeListRowSorterClass), class_init,
        sizeof(LibGtk::TreeListRowSorter), instance_init, 0)
    end

    GICrystal.declare_new_method(TreeListRowSorter, g_object_get_qdata)

    # Initialize a new `TreeListRowSorter`.
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

    def initialize(*, sorter : Gtk::Sorter? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !sorter.nil?
        (_names.to_unsafe + _n).value = "sorter".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sorter)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_tree_list_row_sorter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeListRowSorter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def sorter=(value : Gtk::Sorter?) : Gtk::Sorter?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "sorter", unsafe_value, Pointer(Void).null)
      value
    end

    def sorter : Gtk::Sorter?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "sorter", pointerof(value), Pointer(Void).null)
      Gtk::Sorter.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new(sorter : Gtk::Sorter?) : self
      # gtk_tree_list_row_sorter_new: (Constructor)
      # @sorter: (transfer full) (nullable)
      # Returns: (transfer full)

      # Generator::TransferFullArgPlan
      GICrystal.ref(sorter)
      # Generator::NullableArrayPlan
      sorter = if sorter.nil?
                 Pointer(Void).null
               else
                 sorter.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_tree_list_row_sorter_new(sorter)

      # Return value handling
      Gtk::TreeListRowSorter.new(_retval, GICrystal::Transfer::Full)
    end

    def sorter : Gtk::Sorter?
      # gtk_tree_list_row_sorter_get_sorter: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_list_row_sorter_get_sorter(to_unsafe)

      # Return value handling
      Gtk::Sorter.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def sorter=(sorter : Gtk::Sorter?) : Nil
      # gtk_tree_list_row_sorter_set_sorter: (Method | Setter)
      # @sorter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      sorter = if sorter.nil?
                 Pointer(Void).null
               else
                 sorter.to_unsafe
               end

      # C call
      LibGtk.gtk_tree_list_row_sorter_set_sorter(to_unsafe, sorter)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
