module Gtk
  module CellLayout
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::CellLayout
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__CellLayout(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractCellLayout.g_type
    end

    @[Deprecated]
    def add_attribute(cell : Gtk::CellRenderer, attribute : ::String, column : Int32) : Nil
      # gtk_cell_layout_add_attribute: (Method)
      # @cell:
      # @attribute:
      # @column:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_layout_add_attribute(to_unsafe, cell, attribute, column)

      # Return value handling
    end

    @[Deprecated]
    def clear : Nil
      # gtk_cell_layout_clear: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_layout_clear(to_unsafe)

      # Return value handling
    end

    @[Deprecated]
    def clear_attributes(cell : Gtk::CellRenderer) : Nil
      # gtk_cell_layout_clear_attributes: (Method)
      # @cell:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_layout_clear_attributes(to_unsafe, cell)

      # Return value handling
    end

    @[Deprecated]
    def area : Gtk::CellArea?
      # gtk_cell_layout_get_area: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_cell_layout_get_area(to_unsafe)

      # Return value handling
      Gtk::CellArea.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    @[Deprecated]
    def cells : GLib::List
      # gtk_cell_layout_get_cells: (Method)
      # Returns: (transfer container)

      # C call
      _retval = LibGtk.gtk_cell_layout_get_cells(to_unsafe)

      # Return value handling
      GLib::List(Gtk::CellRenderer).new(_retval, GICrystal::Transfer::Container)
    end

    @[Deprecated]
    def pack_end(cell : Gtk::CellRenderer, expand : Bool) : Nil
      # gtk_cell_layout_pack_end: (Method)
      # @cell:
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_layout_pack_end(to_unsafe, cell, expand)

      # Return value handling
    end

    @[Deprecated]
    def pack_start(cell : Gtk::CellRenderer, expand : Bool) : Nil
      # gtk_cell_layout_pack_start: (Method)
      # @cell:
      # @expand:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_layout_pack_start(to_unsafe, cell, expand)

      # Return value handling
    end

    @[Deprecated]
    def reorder(cell : Gtk::CellRenderer, position : Int32) : Nil
      # gtk_cell_layout_reorder: (Method)
      # @cell:
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_layout_reorder(to_unsafe, cell, position)

      # Return value handling
    end

    @[Deprecated]
    def set_cell_data_func(cell : Gtk::CellRenderer, func : Gtk::CellLayoutDataFunc?) : Nil
      # gtk_cell_layout_set_cell_data_func: (Method)
      # @cell:
      # @func: (nullable)
      # @func_data: (nullable)
      # @destroy:
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if func
        _box = ::Box.box(func)
        func = ->(lib_cell_layout : Pointer(Void), lib_cell : Pointer(Void), lib_tree_model : Pointer(Void), lib_iter : Pointer(Void), lib_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          cell_layout = Gtk::AbstractCellLayout.new(lib_cell_layout, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          cell = Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          tree_model = Gtk::AbstractTreeModel.new(lib_tree_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          iter = Gtk::TreeIter.new(lib_iter, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::CellLayout, Gtk::CellRenderer, Gtk::TreeModel, Gtk::TreeIter, Nil)).unbox(lib_data).call(cell_layout, cell, tree_model, iter)
        }.pointer
        func_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        func = func_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_cell_layout_set_cell_data_func(to_unsafe, cell, func, func_data, destroy)

      # Return value handling
    end

    # add_attribute: (None)
    # @cell:
    # @attribute:
    # @column:
    # Returns: (transfer none)
    private macro _register_add_attribute_vfunc(impl_method_name)
      private def self._vfunc_add_attribute(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_attribute :  Pointer(LibC::Char), lib_column :  Int32, ) : Void
        # @cell: 
# @attribute: 
# @column: 

# Generator::BuiltInTypeArgPlan
cell=Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
attribute=::String.new(lib_attribute)
column=lib_column


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cell, attribute, column)
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_attribute(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32)).pointer
        previous_def
      end
    end

    # add_attribute: (None)
    # @cell:
    # @attribute:
    # @column:
    # Returns: (transfer none)
    private macro _register_unsafe_add_attribute_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_attribute(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_attribute :  Pointer(LibC::Char), lib_column :  Int32, ) : Void
# @cell: 
# @attribute: 
# @column: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cell, lib_attribute, lib_column)
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_attribute = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_attribute(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_attribute : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Int32, Void)? = nil
    end

    # clear: (None)
    # Returns: (transfer none)
    private macro _register_clear_vfunc(impl_method_name)
      private def self._vfunc_clear(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_clear(Pointer(Void))).pointer
        previous_def
      end
    end

    # clear: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_clear_vfunc(impl_method_name)
      private def self._vfunc_unsafe_clear(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_clear = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_clear(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_clear : Proc(Pointer(Void), Void)? = nil
    end

    # clear_attributes: (None)
    # @cell:
    # Returns: (transfer none)
    private macro _register_clear_attributes_vfunc(impl_method_name)
      private def self._vfunc_clear_attributes(%this : Pointer(Void), lib_cell :  Pointer(Void), ) : Void
        # @cell: 

# Generator::BuiltInTypeArgPlan
cell=Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cell)
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_clear_attributes(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # clear_attributes: (None)
    # @cell:
    # Returns: (transfer none)
    private macro _register_unsafe_clear_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_clear_attributes(%this : Pointer(Void), lib_cell :  Pointer(Void), ) : Void
# @cell: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cell)
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_clear_attributes = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_clear_attributes(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_clear_attributes : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # get_area: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_area_vfunc(impl_method_name)
      private def self._vfunc_get_area(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_area(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_area: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_area_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_area(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_area = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_area(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_area : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_cells: (None)
    # Returns: (transfer container)
    private macro _register_get_cells_vfunc(impl_method_name)
      private def self._vfunc_get_cells(%this : Pointer(Void), ) : Pointer(LibGLib::List)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_cells(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_cells: (None)
    # Returns: (transfer container)
    private macro _register_unsafe_get_cells_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_cells(%this : Pointer(Void), ) : Pointer(LibGLib::List)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_cells = Proc(Pointer(Void), Pointer(LibGLib::List)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_cells(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_cells : Proc(Pointer(Void), Pointer(LibGLib::List))? = nil
    end

    # pack_end: (None)
    # @cell:
    # @expand:
    # Returns: (transfer none)
    private macro _register_pack_end_vfunc(impl_method_name)
      private def self._vfunc_pack_end(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_expand :  LibC::Int, ) : Void
        # @cell: 
# @expand: 

# Generator::BuiltInTypeArgPlan
cell=Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
expand=GICrystal.to_bool(lib_expand)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cell, expand)
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_pack_end(Pointer(Void), Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # pack_end: (None)
    # @cell:
    # @expand:
    # Returns: (transfer none)
    private macro _register_unsafe_pack_end_vfunc(impl_method_name)
      private def self._vfunc_unsafe_pack_end(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_expand :  LibC::Int, ) : Void
# @cell: 
# @expand: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cell, lib_expand)
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_pack_end = Proc(Pointer(Void), Pointer(Void), LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_pack_end(Pointer(Void), Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_pack_end : Proc(Pointer(Void), Pointer(Void), LibC::Int, Void)? = nil
    end

    # pack_start: (None)
    # @cell:
    # @expand:
    # Returns: (transfer none)
    private macro _register_pack_start_vfunc(impl_method_name)
      private def self._vfunc_pack_start(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_expand :  LibC::Int, ) : Void
        # @cell: 
# @expand: 

# Generator::BuiltInTypeArgPlan
cell=Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
expand=GICrystal.to_bool(lib_expand)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cell, expand)
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_pack_start(Pointer(Void), Pointer(Void), LibC::Int)).pointer
        previous_def
      end
    end

    # pack_start: (None)
    # @cell:
    # @expand:
    # Returns: (transfer none)
    private macro _register_unsafe_pack_start_vfunc(impl_method_name)
      private def self._vfunc_unsafe_pack_start(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_expand :  LibC::Int, ) : Void
# @cell: 
# @expand: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cell, lib_expand)
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_pack_start = Proc(Pointer(Void), Pointer(Void), LibC::Int, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_pack_start(Pointer(Void), Pointer(Void), LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_pack_start : Proc(Pointer(Void), Pointer(Void), LibC::Int, Void)? = nil
    end

    # reorder: (None)
    # @cell:
    # @position:
    # Returns: (transfer none)
    private macro _register_reorder_vfunc(impl_method_name)
      private def self._vfunc_reorder(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_position :  Int32, ) : Void
        # @cell: 
# @position: 

# Generator::BuiltInTypeArgPlan
cell=Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)
position=lib_position


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cell, position)
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_reorder(Pointer(Void), Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # reorder: (None)
    # @cell:
    # @position:
    # Returns: (transfer none)
    private macro _register_unsafe_reorder_vfunc(impl_method_name)
      private def self._vfunc_unsafe_reorder(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_position :  Int32, ) : Void
# @cell: 
# @position: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cell, lib_position)
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reorder = Proc(Pointer(Void), Pointer(Void), Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reorder(Pointer(Void), Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reorder : Proc(Pointer(Void), Pointer(Void), Int32, Void)? = nil
    end

    # set_cell_data_func: (None)
    # @cell:
    # @func: (nullable)
    # @func_data: (nullable)
    # @destroy:
    # Returns: (transfer none)
    private macro _register_set_cell_data_func_vfunc(impl_method_name)
      private def self._vfunc_set_cell_data_func(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_func :  Void*, lib_func_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
        # @cell: 
# @func: (nullable) 
# @func_data: (nullable) 
# @destroy: 

# Generator::BuiltInTypeArgPlan
cell=Gtk::CellRenderer.new(lib_cell, GICrystal::Transfer::None)
# Generator::CallbackArgPlan
# Generator::BuiltInTypeArgPlan
func=Gtk::CellLayoutDataFunc.new(lib_func, GICrystal::Transfer::None) unless lib_func.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(cell, func, func_data, destroy)
        
        %retval
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_cell_data_func(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void*)).pointer
        previous_def
      end
    end

    # set_cell_data_func: (None)
    # @cell:
    # @func: (nullable)
    # @func_data: (nullable)
    # @destroy:
    # Returns: (transfer none)
    private macro _register_unsafe_set_cell_data_func_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_cell_data_func(%this : Pointer(Void), lib_cell :  Pointer(Void), lib_func :  Void*, lib_func_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
# @cell: 
# @func: (nullable) 
# @func_data: (nullable) 
# @destroy: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_cell, lib_func, lib_func_data, lib_destroy)
      end

      def self._install_iface_Gtk__CellLayout(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_cell_data_func = Proc(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void*, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_cell_data_func(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void*)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_cell_data_func : Proc(Pointer(Void), Pointer(Void), Void*, Pointer(Void), Void*, Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractCellLayout.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractCellLayout < GObject::Object
    include CellLayout

    GICrystal.declare_new_method(Gtk::AbstractCellLayout, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_cell_layout_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractCellLayout.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
