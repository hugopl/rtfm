module Gtk
  module TreeModel
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::TreeModel
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__TreeModel(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractTreeModel.g_type
    end

    @[Deprecated]
    def filter_new(root : Gtk::TreePath?) : Gtk::TreeModel
      # gtk_tree_model_filter_new: (Method)
      # @root: (nullable)
      # Returns: (transfer full)

      # Generator::NullableArrayPlan
      root = if root.nil?
               Pointer(Void).null
             else
               root.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_tree_model_filter_new(to_unsafe, root)

      # Return value handling
      Gtk::AbstractTreeModel.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def foreach(func : Gtk::TreeModelForeachFunc, user_data : Pointer(Void)?) : Nil
      # gtk_tree_model_foreach: (Method)
      # @func:
      # @user_data: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      user_data = if user_data.nil?
                    Pointer(Void).null
                  else
                    user_data.to_unsafe
                  end

      # C call
      LibGtk.gtk_tree_model_foreach(to_unsafe, func, user_data)

      # Return value handling
    end

    @[Deprecated]
    def column_type(index_ : Int32) : UInt64
      # gtk_tree_model_get_column_type: (Method)
      # @index_:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_get_column_type(to_unsafe, index_)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def flags : Gtk::TreeModelFlags
      # gtk_tree_model_get_flags: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_get_flags(to_unsafe)

      # Return value handling
      Gtk::TreeModelFlags.new(_retval)
    end

    @[Deprecated]
    def iter(path : Gtk::TreePath) : Gtk::TreeIter
      # gtk_tree_model_get_iter: (Method)
      # @iter: (out) (caller-allocates)
      # @path:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_model_get_iter(to_unsafe, iter, path)

      # Return value handling
      iter
    end

    @[Deprecated]
    def iter_first : Gtk::TreeIter
      # gtk_tree_model_get_iter_first: (Method)
      # @iter: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_model_get_iter_first(to_unsafe, iter)

      # Return value handling
      iter
    end

    @[Deprecated]
    def iter_from_string(path_string : ::String) : Gtk::TreeIter
      # gtk_tree_model_get_iter_from_string: (Method)
      # @iter: (out) (caller-allocates)
      # @path_string:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_model_get_iter_from_string(to_unsafe, iter, path_string)

      # Return value handling
      iter
    end

    @[Deprecated]
    def n_columns : Int32
      # gtk_tree_model_get_n_columns: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_get_n_columns(to_unsafe)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def path(iter : Gtk::TreeIter) : Gtk::TreePath
      # gtk_tree_model_get_path: (Method)
      # @iter:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_tree_model_get_path(to_unsafe, iter)

      # Return value handling
      Gtk::TreePath.new(_retval, GICrystal::Transfer::Full)
    end

    @[Deprecated]
    def string_from_iter(iter : Gtk::TreeIter) : ::String?
      # gtk_tree_model_get_string_from_iter: (Method)
      # @iter:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_model_get_string_from_iter(to_unsafe, iter)

      # Return value handling
      GICrystal.transfer_full(_retval) unless _retval.null?
    end

    @[Deprecated]
    def value(iter : Gtk::TreeIter, column : Int32) : GObject::Value
      # gtk_tree_model_get_value: (Method)
      # @iter:
      # @column:
      # @value: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      value = GObject::Value.new
      # C call
      LibGtk.gtk_tree_model_get_value(to_unsafe, iter, column, value)

      # Return value handling
      value
    end

    @[Deprecated]
    def iter_children(parent : Gtk::TreeIter?) : Gtk::TreeIter
      # gtk_tree_model_iter_children: (Method)
      # @iter: (out) (caller-allocates)
      # @parent: (nullable)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_tree_model_iter_children(to_unsafe, iter, parent)

      # Return value handling
      iter
    end

    @[Deprecated]
    def iter_has_child(iter : Gtk::TreeIter) : Bool
      # gtk_tree_model_iter_has_child: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_iter_has_child(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def iter_n_children(iter : Gtk::TreeIter?) : Int32
      # gtk_tree_model_iter_n_children: (Method)
      # @iter: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      iter = if iter.nil?
               Pointer(Void).null
             else
               iter.to_unsafe
             end

      # C call
      _retval = LibGtk.gtk_tree_model_iter_n_children(to_unsafe, iter)

      # Return value handling
      _retval
    end

    @[Deprecated]
    def iter_next(iter : Gtk::TreeIter) : Bool
      # gtk_tree_model_iter_next: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_iter_next(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def iter_nth_child(parent : Gtk::TreeIter?, n : Int32) : Gtk::TreeIter
      # gtk_tree_model_iter_nth_child: (Method)
      # @iter: (out) (caller-allocates)
      # @parent: (nullable)
      # @n:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end

      # C call
      _retval = LibGtk.gtk_tree_model_iter_nth_child(to_unsafe, iter, parent, n)

      # Return value handling
      iter
    end

    @[Deprecated]
    def iter_parent(child : Gtk::TreeIter) : Gtk::TreeIter
      # gtk_tree_model_iter_parent: (Method)
      # @iter: (out) (caller-allocates)
      # @child:
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      iter = Gtk::TreeIter.new
      # C call
      _retval = LibGtk.gtk_tree_model_iter_parent(to_unsafe, iter, child)

      # Return value handling
      iter
    end

    @[Deprecated]
    def iter_previous(iter : Gtk::TreeIter) : Bool
      # gtk_tree_model_iter_previous: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_model_iter_previous(to_unsafe, iter)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def ref_node(iter : Gtk::TreeIter) : Nil
      # gtk_tree_model_ref_node: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_ref_node(to_unsafe, iter)

      # Return value handling
    end

    @[Deprecated]
    def row_changed(path : Gtk::TreePath, iter : Gtk::TreeIter) : Nil
      # gtk_tree_model_row_changed: (Method)
      # @path:
      # @iter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_row_changed(to_unsafe, path, iter)

      # Return value handling
    end

    @[Deprecated]
    def row_deleted(path : Gtk::TreePath) : Nil
      # gtk_tree_model_row_deleted: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_row_deleted(to_unsafe, path)

      # Return value handling
    end

    @[Deprecated]
    def row_has_child_toggled(path : Gtk::TreePath, iter : Gtk::TreeIter) : Nil
      # gtk_tree_model_row_has_child_toggled: (Method)
      # @path:
      # @iter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_row_has_child_toggled(to_unsafe, path, iter)

      # Return value handling
    end

    @[Deprecated]
    def row_inserted(path : Gtk::TreePath, iter : Gtk::TreeIter) : Nil
      # gtk_tree_model_row_inserted: (Method)
      # @path:
      # @iter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_row_inserted(to_unsafe, path, iter)

      # Return value handling
    end

    @[Deprecated]
    def rows_reordered(path : Gtk::TreePath, iter : Gtk::TreeIter?, new_order : Enumerable(Int32)) : Nil
      # gtk_tree_model_rows_reordered_with_length: (Method)
      # @path:
      # @iter: (nullable)
      # @new_order: (array length=length element-type Int32)
      # @length:
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      iter = if iter.nil?
               Pointer(Void).null
             else
               iter.to_unsafe
             end
      # Generator::ArrayLengthArgPlan
      length = new_order.size
      # Generator::ArrayArgPlan
      new_order = new_order.to_a.to_unsafe.as(Pointer(Int32))

      # C call
      LibGtk.gtk_tree_model_rows_reordered_with_length(to_unsafe, path, iter, new_order, length)

      # Return value handling
    end

    @[Deprecated]
    def unref_node(iter : Gtk::TreeIter) : Nil
      # gtk_tree_model_unref_node: (Method)
      # @iter:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_model_unref_node(to_unsafe, iter)

      # Return value handling
    end

    # get_column_type: (None)
    # @index_:
    # Returns: (transfer none)
    private macro _register_get_column_type_vfunc(impl_method_name)
      private def self._vfunc_get_column_type(%this : Pointer(Void), lib_index_ :  Int32, ) : UInt64
        # @index_: 

index_=lib_index_


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(index_)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_column_type(Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # get_column_type: (None)
    # @index_:
    # Returns: (transfer none)
    private macro _register_unsafe_get_column_type_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_column_type(%this : Pointer(Void), lib_index_ :  Int32, ) : UInt64
# @index_: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_index_)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_column_type = Proc(Pointer(Void), Int32, UInt64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_column_type(Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_column_type : Proc(Pointer(Void), Int32, UInt64)? = nil
    end

    # get_flags: (None)
    # Returns: (transfer none)
    private macro _register_get_flags_vfunc(impl_method_name)
      private def self._vfunc_get_flags(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_flags(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_flags: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_flags_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_flags(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_flags = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_flags(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_flags : Proc(Pointer(Void), UInt32)? = nil
    end

    # get_iter: (None)
    # @iter: (out) (caller-allocates)
    # @path:
    # Returns: (transfer none)
    private macro _register_get_iter_vfunc(impl_method_name)
      private def self._vfunc_get_iter(%this : Pointer(Void), lib_iter :  Void, lib_path :  Pointer(Void), ) : LibC::Int
        # @iter: (out) (caller-allocates) 
# @path: 

# Generator::CallerAllocatesPlan
# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, path)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_iter(Pointer(Void), Void, Pointer(Void))).pointer
        previous_def
      end
    end

    # get_iter: (None)
    # @iter: (out) (caller-allocates)
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_get_iter_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_iter(%this : Pointer(Void), lib_iter :  Void, lib_path :  Pointer(Void), ) : LibC::Int
# @iter: (out) (caller-allocates) 
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_path)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_iter = Proc(Pointer(Void), Void, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_iter(Pointer(Void), Void, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_iter : Proc(Pointer(Void), Void, Pointer(Void), LibC::Int)? = nil
    end

    # get_n_columns: (None)
    # Returns: (transfer none)
    private macro _register_get_n_columns_vfunc(impl_method_name)
      private def self._vfunc_get_n_columns(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_n_columns(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_n_columns: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_n_columns_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_n_columns(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_n_columns = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_n_columns(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_n_columns : Proc(Pointer(Void), Int32)? = nil
    end

    # get_path: (None)
    # @iter:
    # Returns: (transfer full)
    private macro _register_get_path_vfunc(impl_method_name)
      private def self._vfunc_get_path(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Pointer(Void)
        # @iter: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_path(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_path: (None)
    # @iter:
    # Returns: (transfer full)
    private macro _register_unsafe_get_path_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_path(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Pointer(Void)
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_path = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_path(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_path : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # get_value: (None)
    # @iter:
    # @column:
    # @value: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_get_value_vfunc(impl_method_name)
      private def self._vfunc_get_value(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_column :  Int32, lib_value :  Void, ) : Void
        # @iter: 
# @column: 
# @value: (out) (caller-allocates) 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
column=lib_column
# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, column, value)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_value(Pointer(Void), Pointer(Void), Int32, Void)).pointer
        previous_def
      end
    end

    # get_value: (None)
    # @iter:
    # @column:
    # @value: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_unsafe_get_value_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_value(%this : Pointer(Void), lib_iter :  Pointer(Void), lib_column :  Int32, lib_value :  Void, ) : Void
# @iter: 
# @column: 
# @value: (out) (caller-allocates) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_column, lib_value)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 96).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_value = Proc(Pointer(Void), Pointer(Void), Int32, Void, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_value(Pointer(Void), Pointer(Void), Int32, Void)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_value : Proc(Pointer(Void), Pointer(Void), Int32, Void, Void)? = nil
    end

    # iter_children: (None)
    # @iter: (out) (caller-allocates)
    # @parent: (nullable)
    # Returns: (transfer none)
    private macro _register_iter_children_vfunc(impl_method_name)
      private def self._vfunc_iter_children(%this : Pointer(Void), lib_iter :  Void, lib_parent :  Pointer(Void), ) : LibC::Int
        # @iter: (out) (caller-allocates) 
# @parent: (nullable) 

# Generator::CallerAllocatesPlan
# Generator::NullableArrayPlan
parent=(lib_parent.null? ? nil : Gtk::TreeIter.new(lib_parent, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
parent=Gtk::TreeIter.new(lib_parent, GICrystal::Transfer::None) unless lib_parent.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, parent)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iter_children(Pointer(Void), Void, Pointer(Void))).pointer
        previous_def
      end
    end

    # iter_children: (None)
    # @iter: (out) (caller-allocates)
    # @parent: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_iter_children_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iter_children(%this : Pointer(Void), lib_iter :  Void, lib_parent :  Pointer(Void), ) : LibC::Int
# @iter: (out) (caller-allocates) 
# @parent: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_parent)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 120).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iter_children = Proc(Pointer(Void), Void, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iter_children(Pointer(Void), Void, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iter_children : Proc(Pointer(Void), Void, Pointer(Void), LibC::Int)? = nil
    end

    # iter_has_child: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_iter_has_child_vfunc(impl_method_name)
      private def self._vfunc_iter_has_child(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
        # @iter: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iter_has_child(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # iter_has_child: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_iter_has_child_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iter_has_child(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 128).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iter_has_child = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iter_has_child(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iter_has_child : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # iter_n_children: (None)
    # @iter: (nullable)
    # Returns: (transfer none)
    private macro _register_iter_n_children_vfunc(impl_method_name)
      private def self._vfunc_iter_n_children(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Int32
        # @iter: (nullable) 

# Generator::NullableArrayPlan
iter=(lib_iter.null? ? nil : Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None) unless lib_iter.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iter_n_children(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # iter_n_children: (None)
    # @iter: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_iter_n_children_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iter_n_children(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Int32
# @iter: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iter_n_children = Proc(Pointer(Void), Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iter_n_children(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iter_n_children : Proc(Pointer(Void), Pointer(Void), Int32)? = nil
    end

    # iter_next: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_iter_next_vfunc(impl_method_name)
      private def self._vfunc_iter_next(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
        # @iter: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iter_next(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # iter_next: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_iter_next_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iter_next(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 104).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iter_next = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iter_next(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iter_next : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # iter_nth_child: (None)
    # @iter: (out) (caller-allocates)
    # @parent: (nullable)
    # @n:
    # Returns: (transfer none)
    private macro _register_iter_nth_child_vfunc(impl_method_name)
      private def self._vfunc_iter_nth_child(%this : Pointer(Void), lib_iter :  Void, lib_parent :  Pointer(Void), lib_n :  Int32, ) : LibC::Int
        # @iter: (out) (caller-allocates) 
# @parent: (nullable) 
# @n: 

# Generator::CallerAllocatesPlan
# Generator::NullableArrayPlan
parent=(lib_parent.null? ? nil : Gtk::TreeIter.new(lib_parent, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
parent=Gtk::TreeIter.new(lib_parent, GICrystal::Transfer::None) unless lib_parent.null?
n=lib_n


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, parent, n)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iter_nth_child(Pointer(Void), Void, Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # iter_nth_child: (None)
    # @iter: (out) (caller-allocates)
    # @parent: (nullable)
    # @n:
    # Returns: (transfer none)
    private macro _register_unsafe_iter_nth_child_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iter_nth_child(%this : Pointer(Void), lib_iter :  Void, lib_parent :  Pointer(Void), lib_n :  Int32, ) : LibC::Int
# @iter: (out) (caller-allocates) 
# @parent: (nullable) 
# @n: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_parent, lib_n)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iter_nth_child = Proc(Pointer(Void), Void, Pointer(Void), Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iter_nth_child(Pointer(Void), Void, Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iter_nth_child : Proc(Pointer(Void), Void, Pointer(Void), Int32, LibC::Int)? = nil
    end

    # iter_parent: (None)
    # @iter: (out) (caller-allocates)
    # @child:
    # Returns: (transfer none)
    private macro _register_iter_parent_vfunc(impl_method_name)
      private def self._vfunc_iter_parent(%this : Pointer(Void), lib_iter :  Void, lib_child :  Pointer(Void), ) : LibC::Int
        # @iter: (out) (caller-allocates) 
# @child: 

# Generator::CallerAllocatesPlan
# Generator::BuiltInTypeArgPlan
child=Gtk::TreeIter.new(lib_child, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter, child)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iter_parent(Pointer(Void), Void, Pointer(Void))).pointer
        previous_def
      end
    end

    # iter_parent: (None)
    # @iter: (out) (caller-allocates)
    # @child:
    # Returns: (transfer none)
    private macro _register_unsafe_iter_parent_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iter_parent(%this : Pointer(Void), lib_iter :  Void, lib_child :  Pointer(Void), ) : LibC::Int
# @iter: (out) (caller-allocates) 
# @child: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter, lib_child)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iter_parent = Proc(Pointer(Void), Void, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iter_parent(Pointer(Void), Void, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iter_parent : Proc(Pointer(Void), Void, Pointer(Void), LibC::Int)? = nil
    end

    # iter_previous: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_iter_previous_vfunc(impl_method_name)
      private def self._vfunc_iter_previous(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
        # @iter: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_iter_previous(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # iter_previous: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_iter_previous_vfunc(impl_method_name)
      private def self._vfunc_unsafe_iter_previous(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : LibC::Int
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 112).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_iter_previous = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_iter_previous(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_iter_previous : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # ref_node: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_ref_node_vfunc(impl_method_name)
      private def self._vfunc_ref_node(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Void
        # @iter: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_ref_node(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # ref_node: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_ref_node_vfunc(impl_method_name)
      private def self._vfunc_unsafe_ref_node(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Void
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_ref_node = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_ref_node(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_ref_node : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # row_changed: (None)
    # @path:
    # @iter:
    # Returns: (transfer none)
    private macro _register_row_changed_vfunc(impl_method_name)
      private def self._vfunc_row_changed(%this : Pointer(Void), lib_path :  Pointer(Void), lib_iter :  Pointer(Void), ) : Void
        # @path: 
# @iter: 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path, iter)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_changed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_changed: (None)
    # @path:
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_row_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_changed(%this : Pointer(Void), lib_path :  Pointer(Void), lib_iter :  Pointer(Void), ) : Void
# @path: 
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path, lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_changed = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_changed(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_changed : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # row_deleted: (None)
    # @path:
    # Returns: (transfer none)
    private macro _register_row_deleted_vfunc(impl_method_name)
      private def self._vfunc_row_deleted(%this : Pointer(Void), lib_path :  Pointer(Void), ) : Void
        # @path: 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_deleted(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_deleted: (None)
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_row_deleted_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_deleted(%this : Pointer(Void), lib_path :  Pointer(Void), ) : Void
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_deleted = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_deleted(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_deleted : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # row_has_child_toggled: (None)
    # @path:
    # @iter:
    # Returns: (transfer none)
    private macro _register_row_has_child_toggled_vfunc(impl_method_name)
      private def self._vfunc_row_has_child_toggled(%this : Pointer(Void), lib_path :  Pointer(Void), lib_iter :  Pointer(Void), ) : Void
        # @path: 
# @iter: 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path, iter)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_has_child_toggled(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_has_child_toggled: (None)
    # @path:
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_row_has_child_toggled_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_has_child_toggled(%this : Pointer(Void), lib_path :  Pointer(Void), lib_iter :  Pointer(Void), ) : Void
# @path: 
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path, lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_has_child_toggled = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_has_child_toggled(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_has_child_toggled : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # row_inserted: (None)
    # @path:
    # @iter:
    # Returns: (transfer none)
    private macro _register_row_inserted_vfunc(impl_method_name)
      private def self._vfunc_row_inserted(%this : Pointer(Void), lib_path :  Pointer(Void), lib_iter :  Pointer(Void), ) : Void
        # @path: 
# @iter: 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path, iter)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_inserted(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_inserted: (None)
    # @path:
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_row_inserted_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_inserted(%this : Pointer(Void), lib_path :  Pointer(Void), lib_iter :  Pointer(Void), ) : Void
# @path: 
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path, lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_inserted = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_inserted(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_inserted : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Void)? = nil
    end

    # unref_node: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_unref_node_vfunc(impl_method_name)
      private def self._vfunc_unref_node(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Void
        # @iter: 

# Generator::BuiltInTypeArgPlan
iter=Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(iter)
        
        %retval
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unref_node(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # unref_node: (None)
    # @iter:
    # Returns: (transfer none)
    private macro _register_unsafe_unref_node_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unref_node(%this : Pointer(Void), lib_iter :  Pointer(Void), ) : Void
# @iter: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_iter)
      end

      def self._install_iface_Gtk__TreeModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unref_node = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unref_node(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unref_node : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    struct RowChangedSignal < GObject::Signal
      def name : String
        @detail ? "row-changed::#{@detail}" : "row-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreePath, Gtk::TreeIter, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreePath, Gtk::TreeIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreePath, Gtk::TreeIter, Nil)).unbox(_lib_box).call(path, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractTreeModel.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Nil)).unbox(_lib_box).call(_sender, path, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(path : Gtk::TreePath, iter : Gtk::TreeIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "row-changed", path, iter)
      end
    end

    def row_changed_signal
      RowChangedSignal.new(self)
    end

    struct RowDeletedSignal < GObject::Signal
      def name : String
        @detail ? "row-deleted::#{@detail}" : "row-deleted"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreePath, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreePath, Nil)).unbox(_lib_box).call(path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeModel, Gtk::TreePath, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractTreeModel.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreePath, Nil)).unbox(_lib_box).call(_sender, path)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(path : Gtk::TreePath) : Nil
        LibGObject.g_signal_emit_by_name(@source, "row-deleted", path)
      end
    end

    def row_deleted_signal
      RowDeletedSignal.new(self)
    end

    struct RowHasChildToggledSignal < GObject::Signal
      def name : String
        @detail ? "row-has-child-toggled::#{@detail}" : "row-has-child-toggled"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreePath, Gtk::TreeIter, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreePath, Gtk::TreeIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreePath, Gtk::TreeIter, Nil)).unbox(_lib_box).call(path, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractTreeModel.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Nil)).unbox(_lib_box).call(_sender, path, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(path : Gtk::TreePath, iter : Gtk::TreeIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "row-has-child-toggled", path, iter)
      end
    end

    def row_has_child_toggled_signal
      RowHasChildToggledSignal.new(self)
    end

    struct RowInsertedSignal < GObject::Signal
      def name : String
        @detail ? "row-inserted::#{@detail}" : "row-inserted"
      end

      def connect(*, after : Bool = false, &block : Proc(Gtk::TreePath, Gtk::TreeIter, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gtk::TreePath, Gtk::TreeIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreePath, Gtk::TreeIter, Nil)).unbox(_lib_box).call(path, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_path : Pointer(Void), lib_iter : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractTreeModel.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          path = Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreePath, Gtk::TreeIter, Nil)).unbox(_lib_box).call(_sender, path, iter)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(path : Gtk::TreePath, iter : Gtk::TreeIter) : Nil
        LibGObject.g_signal_emit_by_name(@source, "row-inserted", path, iter)
      end
    end

    def row_inserted_signal
      RowInsertedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTreeModel.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTreeModel < GObject::Object
    include TreeModel

    GICrystal.declare_new_method(Gtk::AbstractTreeModel, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_tree_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractTreeModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
