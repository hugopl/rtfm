require "../g_object-2.0/object"
require "./tree_drag_source"

require "./tree_model"

require "./tree_sortable"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeModelSort < GObject::Object
    include TreeDragSource
    include TreeModel
    include TreeSortable

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TreeModelSortClass), class_init,
        sizeof(LibGtk::TreeModelSort), instance_init, 0)
    end

    GICrystal.declare_new_method(TreeModelSort, g_object_get_qdata)

    # Initialize a new `TreeModelSort`.
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

    def initialize(*, model : Gtk::TreeModel? = nil)
      _names = uninitialized Pointer(LibC::Char)[1]
      _values = StaticArray(LibGObject::Value, 1).new(LibGObject::Value.new)
      _n = 0

      if !model.nil?
        (_names.to_unsafe + _n).value = "model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, model)
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
      @@g_type ||= LibGtk.gtk_tree_model_sort_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeModelSort.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def model=(value : Gtk::TreeModel?) : Gtk::TreeModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "model", unsafe_value, Pointer(Void).null)
      value
    end

    def model : Gtk::TreeModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "model", pointerof(value), Pointer(Void).null)
      Gtk::AbstractTreeModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def self.new_with_model(child_model : Gtk::TreeModel) : self
      # gtk_tree_model_sort_new_with_model: (Constructor)
      # @child_model:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_tree_model_sort_new_with_model(child_model)

      # Return value handling
      Gtk::TreeModelSort.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def clear_cache : Nil
      # gtk_tree_model_sort_clear_cache: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_sort_clear_cache(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def convert_child_iter_to_iter(child_iter : Gtk::TreeIter) : Gtk::TreeIter
      # gtk_tree_model_sort_convert_child_iter_to_iter: (Method)
      # @sort_iter: (out) (caller-allocates)
      # @child_iter:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      sort_iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_model_sort_convert_child_iter_to_iter(to_unsafe, sort_iter, child_iter)

      # Return value handling
      sort_iter
    end

    @[Deprecated]
    def convert_child_path_to_path(child_path : Gtk::TreePath) : Gtk::TreePath?
      # gtk_tree_model_sort_convert_child_path_to_path: (Method)
      # @child_path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_model_sort_convert_child_path_to_path(to_unsafe, child_path)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def convert_iter_to_child_iter(sorted_iter : Gtk::TreeIter) : Gtk::TreeIter
      # gtk_tree_model_sort_convert_iter_to_child_iter: (Method)
      # @child_iter: (out) (caller-allocates)
      # @sorted_iter:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      child_iter = Gtk::TreeIter.new
      # C call
      LibGtk.gtk_tree_model_sort_convert_iter_to_child_iter(to_unsafe, child_iter, sorted_iter)

      # Return value handling
      child_iter
    end

    @[Deprecated]
    def convert_path_to_child_path(sorted_path : Gtk::TreePath) : Gtk::TreePath?
      # gtk_tree_model_sort_convert_path_to_child_path: (Method)
      # @sorted_path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_model_sort_convert_path_to_child_path(to_unsafe, sorted_path)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def model : Gtk::TreeModel
      # gtk_tree_model_sort_get_model: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_sort_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def iter_is_valid(iter : Gtk::TreeIter) : Bool
      # gtk_tree_model_sort_iter_is_valid: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_sort_iter_is_valid(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def reset_default_sort_func : Nil
      # gtk_tree_model_sort_reset_default_sort_func: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_sort_reset_default_sort_func(to_unsafe)

      # Return value handling
    end

    def_equals_and_hash @pointer
  end
end
