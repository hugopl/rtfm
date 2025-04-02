require "../g_object-2.0/object"
require "./tree_drag_source"

require "./tree_model"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class TreeModelFilter < GObject::Object
    include TreeDragSource
    include TreeModel

    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::TreeModelFilterClass), class_init,
        sizeof(LibGtk::TreeModelFilter), instance_init, 0)
    end

    GICrystal.declare_new_method(TreeModelFilter, g_object_get_qdata)

    # Initialize a new `TreeModelFilter`.
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

    def initialize(*, child_model : Gtk::TreeModel? = nil, virtual_root : Gtk::TreePath? = nil)
      _names = uninitialized Pointer(LibC::Char)[2]
      _values = StaticArray(LibGObject::Value, 2).new(LibGObject::Value.new)
      _n = 0

      if !child_model.nil?
        (_names.to_unsafe + _n).value = "child-model".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, child_model)
        _n += 1
      end
      if !virtual_root.nil?
        (_names.to_unsafe + _n).value = "virtual-root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, virtual_root)
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
      @@g_type ||= LibGtk.gtk_tree_model_filter_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::TreeModelFilter.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def child_model=(value : Gtk::TreeModel?) : Gtk::TreeModel?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "child-model", unsafe_value, Pointer(Void).null)
      value
    end

    def child_model : Gtk::TreeModel?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "child-model", pointerof(value), Pointer(Void).null)
      Gtk::AbstractTreeModel.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def virtual_root=(value : Gtk::TreePath?) : Gtk::TreePath?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "virtual-root", unsafe_value, Pointer(Void).null)
      value
    end

    def virtual_root : Gtk::TreePath?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "virtual-root", pointerof(value), Pointer(Void).null)
      Gtk::TreePath.new(value, GICrystal::Transfer::None) unless value.null?
    end

    @[Deprecated]
    def clear_cache : Nil
      # gtk_tree_model_filter_clear_cache: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_filter_clear_cache(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def convert_child_iter_to_iter(child_iter : Gtk::TreeIter) : Gtk::TreeIter
      # gtk_tree_model_filter_convert_child_iter_to_iter: (Method)
      # @filter_iter: (out) (caller-allocates)
      # @child_iter:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      filter_iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_model_filter_convert_child_iter_to_iter(to_unsafe, filter_iter, child_iter)

      # Return value handling
      filter_iter
    end

    @[Deprecated]
    def convert_child_path_to_path(child_path : Gtk::TreePath) : Gtk::TreePath?
      # gtk_tree_model_filter_convert_child_path_to_path: (Method)
      # @child_path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_model_filter_convert_child_path_to_path(to_unsafe, child_path)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def convert_iter_to_child_iter(filter_iter : Gtk::TreeIter) : Gtk::TreeIter
      # gtk_tree_model_filter_convert_iter_to_child_iter: (Method)
      # @child_iter: (out) (caller-allocates)
      # @filter_iter:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      child_iter = Gtk::TreeIter.new
      # C call
      LibGtk.gtk_tree_model_filter_convert_iter_to_child_iter(to_unsafe, child_iter, filter_iter)

      # Return value handling
      child_iter
    end

    @[Deprecated]
    def convert_path_to_child_path(filter_path : Gtk::TreePath) : Gtk::TreePath?
      # gtk_tree_model_filter_convert_path_to_child_path: (Method)
      # @filter_path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_model_filter_convert_path_to_child_path(to_unsafe, filter_path)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def model : Gtk::TreeModel
      # gtk_tree_model_filter_get_model: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_filter_get_model(to_unsafe)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def refilter : Nil
      # gtk_tree_model_filter_refilter: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_filter_refilter(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def set_modify_func(types : Enumerable(UInt64), func : Gtk::TreeModelFilterModifyFunc) : Nil
      # gtk_tree_model_filter_set_modify_func: (Method)
      # @n_columns:
      # @types: (array length=n_columns element-type Gtype)
      # @func:
      # @data: (nullable)
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_columns = types.size
      # Generator::ArrayArgPlan
      types = types.to_a.to_unsafe.as(Pointer(UInt64))
      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_model : Pointer(Void), lib_iter : Pointer(Void), lib_value : Void, lib_column : Int32, lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          # Generator::CallerAllocatesPlan
          # NoStrategy
          column = lib_column
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Int32, Nil)).unbox(lib_data).call(model, iter, column)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_model_filter_set_modify_func(to_unsafe, n_columns, types, func, data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def visible_column=(column : Int32) : Nil
      # gtk_tree_model_filter_set_visible_column: (Method)
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_filter_set_visible_column(to_unsafe, column)

      # Return value handling
    end

    @[Deprecated]
    def visible_func=(func : Gtk::TreeModelFilterVisibleFunc) : Nil
      # gtk_tree_model_filter_set_visible_func: (Method)
      # @func:
      # @data: (nullable)
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_model : Pointer(Void), lib_iter : Pointer(Void), lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Bool)).unbox(lib_data).call(model, iter)
        }.pointer
        data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_model_filter_set_visible_func(to_unsafe, func, data, destroy)

      # Return value handling
    end

    # modify: (None)
    # @child_model:
    # @iter:
    # @value:
    # @column:
    # Returns: (transfer none)
    private macro _register_modify_vfunc(impl_method_name)
      private def self._vfunc_modify(%this : Pointer(Void), lib_child_model :  Pointer(Void), lib_iter :  Pointer(Void), lib_value :  Pointer(Void), lib_column :  Int32, ) : Void
        # @child_model: 
# @iter: 
# @value: 
# @column: 

# Generator::BuiltInTypeArgPlan
child_model=Gtk::AbstractTreeModel.new(lib_child_model, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)
column=lib_column


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(child_model, iter, value, column)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_modify(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # modify: (None)
    # @child_model:
    # @iter:
    # @value:
    # @column:
    # Returns: (transfer none)
    private macro _register_unsafe_modify_vfunc(impl_method_name)
      private def self._vfunc_unsafe_modify(%this : Pointer(Void), lib_child_model :  Pointer(Void), lib_iter :  Pointer(Void), lib_value :  Pointer(Void), lib_column :  Int32, ) : Void
# @child_model: 
# @iter: 
# @value: 
# @column: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_child_model, lib_iter, lib_value, lib_column)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_modify = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_modify(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_modify : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void), Int32, Void)? = nil
    end

    # visible: (None)
    # @child_model:
    # @iter:
    # Returns: (transfer none)
    private macro _register_visible_vfunc(impl_method_name)
      private def self._vfunc_visible(%this : Pointer(Void), lib_child_model :  Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
        # @child_model: 
# @iter: 

# Generator::BuiltInTypeArgPlan
child_model=Gtk::AbstractTreeModel.new(lib_child_model, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(child_model, iter)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_visible(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # visible: (None)
    # @child_model:
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_visible_vfunc(impl_method_name)
      private def self._vfunc_unsafe_visible(%this : Pointer(Void), lib_child_model :  Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
# @child_model: 
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_child_model, lib_iter)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_visible = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_visible(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_visible : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    def_equals_and_hash @pointer
  end
end
