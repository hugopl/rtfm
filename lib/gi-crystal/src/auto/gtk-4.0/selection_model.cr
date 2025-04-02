module Gtk
  module SelectionModel
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::SelectionModel
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__SelectionModel(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractSelectionModel.g_type
    end

    def selection : Gtk::Bitset
      # gtk_selection_model_get_selection: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_selection_model_get_selection(to_unsafe)

      # Return value handling
      Gtk::Bitset.new(_retval, GICrystal::Transfer::Full)
    end

    def selection_in_range(position : UInt32, n_items : UInt32) : Gtk::Bitset
      # gtk_selection_model_get_selection_in_range: (Method)
      # @position:
      # @n_items:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_selection_model_get_selection_in_range(to_unsafe, position, n_items)

      # Return value handling
      Gtk::Bitset.new(_retval, GICrystal::Transfer::Full)
    end

    def is_selected(position : UInt32) : Bool
      # gtk_selection_model_is_selected: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_is_selected(to_unsafe, position)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def select_all : Bool
      # gtk_selection_model_select_all: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_select_all(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def select_item(position : UInt32, unselect_rest : Bool) : Bool
      # gtk_selection_model_select_item: (Method)
      # @position:
      # @unselect_rest:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_select_item(to_unsafe, position, unselect_rest)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def select_range(position : UInt32, n_items : UInt32, unselect_rest : Bool) : Bool
      # gtk_selection_model_select_range: (Method)
      # @position:
      # @n_items:
      # @unselect_rest:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_select_range(to_unsafe, position, n_items, unselect_rest)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def selection_changed(position : UInt32, n_items : UInt32) : Nil
      # gtk_selection_model_selection_changed: (Method)
      # @position:
      # @n_items:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_selection_model_selection_changed(to_unsafe, position, n_items)

      # Return value handling
    end

    def set_selection(selected : Gtk::Bitset, mask : Gtk::Bitset) : Bool
      # gtk_selection_model_set_selection: (Method)
      # @selected:
      # @mask:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_set_selection(to_unsafe, selected, mask)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def unselect_all : Bool
      # gtk_selection_model_unselect_all: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_unselect_all(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def unselect_item(position : UInt32) : Bool
      # gtk_selection_model_unselect_item: (Method)
      # @position:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_unselect_item(to_unsafe, position)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def unselect_range(position : UInt32, n_items : UInt32) : Bool
      # gtk_selection_model_unselect_range: (Method)
      # @position:
      # @n_items:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_selection_model_unselect_range(to_unsafe, position, n_items)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # get_selection_in_range: (None)
    # @position:
    # @n_items:
    # Returns: (transfer full)
    private macro _register_get_selection_in_range_vfunc(impl_method_name)
      private def self._vfunc_get_selection_in_range(%this : Pointer(Void), lib_position :  UInt32, lib_n_items :  UInt32, ) : Pointer(Void)
        # @position: 
# @n_items: 

position=lib_position
n_items=lib_n_items


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, n_items)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_selection_in_range(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end
    end

    # get_selection_in_range: (None)
    # @position:
    # @n_items:
    # Returns: (transfer full)
    private macro _register_unsafe_get_selection_in_range_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_selection_in_range(%this : Pointer(Void), lib_position :  UInt32, lib_n_items :  UInt32, ) : Pointer(Void)
# @position: 
# @n_items: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_n_items)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_selection_in_range = Proc(Pointer(Void), UInt32, UInt32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_selection_in_range(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_selection_in_range : Proc(Pointer(Void), UInt32, UInt32, Pointer(Void))? = nil
    end

    # is_selected: (None)
    # @position:
    # Returns: (transfer none)
    private macro _register_is_selected_vfunc(impl_method_name)
      private def self._vfunc_is_selected(%this : Pointer(Void), lib_position :  UInt32, ) : LibC::Int
        # @position: 

position=lib_position


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_is_selected(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # is_selected: (None)
    # @position:
    # Returns: (transfer none)
    private macro _register_unsafe_is_selected_vfunc(impl_method_name)
      private def self._vfunc_unsafe_is_selected(%this : Pointer(Void), lib_position :  UInt32, ) : LibC::Int
# @position: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_is_selected = Proc(Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_is_selected(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_is_selected : Proc(Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # select_all: (None)
    # Returns: (transfer none)
    private macro _register_select_all_vfunc(impl_method_name)
      private def self._vfunc_select_all(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_select_all(Pointer(Void))).pointer
        previous_def
      end
    end

    # select_all: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_select_all_vfunc(impl_method_name)
      private def self._vfunc_unsafe_select_all(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_select_all = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_select_all(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_select_all : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # select_item: (None)
    # @position:
    # @unselect_rest:
    # Returns: (transfer none)
    private macro _register_select_item_vfunc(impl_method_name)
      private def self._vfunc_select_item(%this : Pointer(Void), lib_position :  UInt32, lib_unselect_rest :  LibC::Int, ) : LibC::Int
        # @position: 
# @unselect_rest: 

position=lib_position
# Generator::BuiltInTypeArgPlan
unselect_rest=GICrystal.to_bool(lib_unselect_rest)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, unselect_rest)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_select_item(Pointer(Void), UInt32, LibC::Int)).pointer
        previous_def
      end
    end

    # select_item: (None)
    # @position:
    # @unselect_rest:
    # Returns: (transfer none)
    private macro _register_unsafe_select_item_vfunc(impl_method_name)
      private def self._vfunc_unsafe_select_item(%this : Pointer(Void), lib_position :  UInt32, lib_unselect_rest :  LibC::Int, ) : LibC::Int
# @position: 
# @unselect_rest: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_unselect_rest)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_select_item = Proc(Pointer(Void), UInt32, LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_select_item(Pointer(Void), UInt32, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_select_item : Proc(Pointer(Void), UInt32, LibC::Int, LibC::Int)? = nil
    end

    # select_range: (None)
    # @position:
    # @n_items:
    # @unselect_rest:
    # Returns: (transfer none)
    private macro _register_select_range_vfunc(impl_method_name)
      private def self._vfunc_select_range(%this : Pointer(Void), lib_position :  UInt32, lib_n_items :  UInt32, lib_unselect_rest :  LibC::Int, ) : LibC::Int
        # @position: 
# @n_items: 
# @unselect_rest: 

position=lib_position
n_items=lib_n_items
# Generator::BuiltInTypeArgPlan
unselect_rest=GICrystal.to_bool(lib_unselect_rest)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, n_items, unselect_rest)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_select_range(Pointer(Void), UInt32, UInt32, LibC::Int)).pointer
        previous_def
      end
    end

    # select_range: (None)
    # @position:
    # @n_items:
    # @unselect_rest:
    # Returns: (transfer none)
    private macro _register_unsafe_select_range_vfunc(impl_method_name)
      private def self._vfunc_unsafe_select_range(%this : Pointer(Void), lib_position :  UInt32, lib_n_items :  UInt32, lib_unselect_rest :  LibC::Int, ) : LibC::Int
# @position: 
# @n_items: 
# @unselect_rest: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_n_items, lib_unselect_rest)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_select_range = Proc(Pointer(Void), UInt32, UInt32, LibC::Int, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_select_range(Pointer(Void), UInt32, UInt32, LibC::Int)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_select_range : Proc(Pointer(Void), UInt32, UInt32, LibC::Int, LibC::Int)? = nil
    end

    # set_selection: (None)
    # @selected:
    # @mask:
    # Returns: (transfer none)
    private macro _register_set_selection_vfunc(impl_method_name)
      private def self._vfunc_set_selection(%this : Pointer(Void), lib_selected :  Pointer(Void), lib_mask :  Pointer(Void), ) : LibC::Int
        # @selected: 
# @mask: 

# Generator::BuiltInTypeArgPlan
selected=Gtk::Bitset.new(lib_selected, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
mask=Gtk::Bitset.new(lib_mask, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(selected, mask)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_selection(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_selection: (None)
    # @selected:
    # @mask:
    # Returns: (transfer none)
    private macro _register_unsafe_set_selection_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_selection(%this : Pointer(Void), lib_selected :  Pointer(Void), lib_mask :  Pointer(Void), ) : LibC::Int
# @selected: 
# @mask: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_selected, lib_mask)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_selection = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_selection(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_selection : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # unselect_all: (None)
    # Returns: (transfer none)
    private macro _register_unselect_all_vfunc(impl_method_name)
      private def self._vfunc_unselect_all(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unselect_all(Pointer(Void))).pointer
        previous_def
      end
    end

    # unselect_all: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_unselect_all_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unselect_all(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unselect_all = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unselect_all(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unselect_all : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # unselect_item: (None)
    # @position:
    # Returns: (transfer none)
    private macro _register_unselect_item_vfunc(impl_method_name)
      private def self._vfunc_unselect_item(%this : Pointer(Void), lib_position :  UInt32, ) : LibC::Int
        # @position: 

position=lib_position


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unselect_item(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # unselect_item: (None)
    # @position:
    # Returns: (transfer none)
    private macro _register_unsafe_unselect_item_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unselect_item(%this : Pointer(Void), lib_position :  UInt32, ) : LibC::Int
# @position: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unselect_item = Proc(Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unselect_item(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unselect_item : Proc(Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # unselect_range: (None)
    # @position:
    # @n_items:
    # Returns: (transfer none)
    private macro _register_unselect_range_vfunc(impl_method_name)
      private def self._vfunc_unselect_range(%this : Pointer(Void), lib_position :  UInt32, lib_n_items :  UInt32, ) : LibC::Int
        # @position: 
# @n_items: 

position=lib_position
n_items=lib_n_items


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(position, n_items)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unselect_range(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end
    end

    # unselect_range: (None)
    # @position:
    # @n_items:
    # Returns: (transfer none)
    private macro _register_unsafe_unselect_range_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unselect_range(%this : Pointer(Void), lib_position :  UInt32, lib_n_items :  UInt32, ) : LibC::Int
# @position: 
# @n_items: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_position, lib_n_items)
      end

      def self._install_iface_Gtk__SelectionModel(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unselect_range = Proc(Pointer(Void), UInt32, UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unselect_range(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unselect_range : Proc(Pointer(Void), UInt32, UInt32, LibC::Int)? = nil
    end

    struct SelectionChangedSignal < GObject::Signal
      def name : String
        @detail ? "selection-changed::#{@detail}" : "selection-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(UInt32, UInt32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_n_items : UInt32, _lib_box : Pointer(Void)) {
          # NoStrategy
          position = lib_position
          # NoStrategy
          n_items = lib_n_items
          ::Box(Proc(UInt32, UInt32, Nil)).unbox(_lib_box).call(position, n_items)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::SelectionModel, UInt32, UInt32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_position : UInt32, lib_n_items : UInt32, _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractSelectionModel.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          position = lib_position
          # NoStrategy
          n_items = lib_n_items
          ::Box(Proc(Gtk::SelectionModel, UInt32, UInt32, Nil)).unbox(_lib_box).call(_sender, position, n_items)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(position : UInt32, n_items : UInt32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "selection-changed", position, n_items)
      end
    end

    def selection_changed_signal
      SelectionChangedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractSelectionModel.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractSelectionModel < GObject::Object
    include SelectionModel

    GICrystal.declare_new_method(Gtk::AbstractSelectionModel, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_selection_model_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractSelectionModel.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
