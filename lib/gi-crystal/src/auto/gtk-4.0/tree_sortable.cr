module Gtk
  module TreeSortable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::TreeSortable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__TreeSortable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractTreeSortable.g_type
    end

    @[Deprecated]
    def sort_column_id(sort_column_id : Int32, order : Gtk::SortType) : Bool
      # gtk_tree_sortable_get_sort_column_id: (Method)
      # @sort_column_id: (out) (transfer full)
      # @order: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_sortable_get_sort_column_id(to_unsafe, sort_column_id, order)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def has_default_sort_func : Bool
      # gtk_tree_sortable_has_default_sort_func: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_sortable_has_default_sort_func(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def default_sort_func=(sort_func : Gtk::TreeIterCompareFunc) : Nil
      # gtk_tree_sortable_set_default_sort_func: (Method)
      # @sort_func:
      # @user_data: (nullable)
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if sort_func
        _box = ::Box.box(sort_func)
        sort_func = ->(lib_model : Pointer(Void), lib_a : Pointer(Void), lib_b : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          a = Gtk::TreeIter.new(lib_a, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          b = Gtk::TreeIter.new(lib_b, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Gtk::TreeIter, Int32)).unbox(lib_user_data).call(model, a, b)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        sort_func = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_sortable_set_default_sort_func(to_unsafe, sort_func, user_data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def set_sort_column_id(sort_column_id : Int32, order : Gtk::SortType) : Nil
      # gtk_tree_sortable_set_sort_column_id: (Method)
      # @sort_column_id:
      # @order:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_sortable_set_sort_column_id(to_unsafe, sort_column_id, order)

      # Return value handling
    end

    @[Deprecated]
    def set_sort_func(sort_column_id : Int32, sort_func : Gtk::TreeIterCompareFunc) : Nil
      # gtk_tree_sortable_set_sort_func: (Method)
      # @sort_column_id:
      # @sort_func:
      # @user_data: (nullable)
      # @destroy: (nullable)
      # Returns: (transfer none)

      # Generator::CallbackArgPlan
      if sort_func
        _box = ::Box.box(sort_func)
        sort_func = ->(lib_model : Pointer(Void), lib_a : Pointer(Void), lib_b : Pointer(Void), lib_user_data : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          model = Gtk::AbstractTreeModel.new(lib_model, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          a = Gtk::TreeIter.new(lib_a, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          b = Gtk::TreeIter.new(lib_b, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeModel, Gtk::TreeIter, Gtk::TreeIter, Int32)).unbox(lib_user_data).call(model, a, b)
        }.pointer
        user_data = GICrystal::ClosureDataManager.register(_box)
        destroy = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
      else
        sort_func = user_data = destroy = Pointer(Void).null
      end

      # C call
      LibGtk.gtk_tree_sortable_set_sort_func(to_unsafe, sort_column_id, sort_func, user_data, destroy)

      # Return value handling
    end

    @[Deprecated]
    def sort_column_changed : Nil
      # gtk_tree_sortable_sort_column_changed: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_tree_sortable_sort_column_changed(to_unsafe)

      # Return value handling
    end

    # get_sort_column_id: (None)
    # @sort_column_id: (out) (transfer full)
    # @order: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_sort_column_id_vfunc(impl_method_name)
      private def self._vfunc_get_sort_column_id(%this : Pointer(Void), lib_sort_column_id :  Int32, lib_order :  UInt32, ) : LibC::Int
        # @sort_column_id: (out) (transfer full) 
# @order: (out) (transfer full) 

sort_column_id=lib_sort_column_id
# Generator::BuiltInTypeArgPlan
order=Gtk::SortType.new(lib_order)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(sort_column_id, order)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_sort_column_id(Pointer(Void), Int32, UInt32)).pointer
        previous_def
      end
    end

    # get_sort_column_id: (None)
    # @sort_column_id: (out) (transfer full)
    # @order: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_sort_column_id_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_sort_column_id(%this : Pointer(Void), lib_sort_column_id :  Int32, lib_order :  UInt32, ) : LibC::Int
# @sort_column_id: (out) (transfer full) 
# @order: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_sort_column_id, lib_order)
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_sort_column_id = Proc(Pointer(Void), Int32, UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_sort_column_id(Pointer(Void), Int32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_sort_column_id : Proc(Pointer(Void), Int32, UInt32, LibC::Int)? = nil
    end

    # has_default_sort_func: (None)
    # Returns: (transfer none)
    private macro _register_has_default_sort_func_vfunc(impl_method_name)
      private def self._vfunc_has_default_sort_func(%this : Pointer(Void), ) : LibC::Int
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_has_default_sort_func(Pointer(Void))).pointer
        previous_def
      end
    end

    # has_default_sort_func: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_has_default_sort_func_vfunc(impl_method_name)
      private def self._vfunc_unsafe_has_default_sort_func(%this : Pointer(Void), ) : LibC::Int

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_has_default_sort_func = Proc(Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_has_default_sort_func(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_has_default_sort_func : Proc(Pointer(Void), LibC::Int)? = nil
    end

    # set_default_sort_func: (None)
    # @sort_func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)
    private macro _register_set_default_sort_func_vfunc(impl_method_name)
      private def self._vfunc_set_default_sort_func(%this : Pointer(Void), lib_sort_func :  Void*, lib_user_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
        # @sort_func: 
# @user_data: (nullable) 
# @destroy: (nullable) 

# Generator::CallbackArgPlan
# Generator::BuiltInTypeArgPlan
sort_func=Gtk::TreeIterCompareFunc.new(lib_sort_func, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(sort_func, user_data, destroy)
        
        %retval
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_default_sort_func(Pointer(Void), Void*, Pointer(Void), Void*)).pointer
        previous_def
      end
    end

    # set_default_sort_func: (None)
    # @sort_func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_default_sort_func_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_default_sort_func(%this : Pointer(Void), lib_sort_func :  Void*, lib_user_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
# @sort_func: 
# @user_data: (nullable) 
# @destroy: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_sort_func, lib_user_data, lib_destroy)
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_default_sort_func = Proc(Pointer(Void), Void*, Pointer(Void), Void*, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_default_sort_func(Pointer(Void), Void*, Pointer(Void), Void*)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_default_sort_func : Proc(Pointer(Void), Void*, Pointer(Void), Void*, Void)? = nil
    end

    # set_sort_column_id: (None)
    # @sort_column_id:
    # @order:
    # Returns: (transfer none)
    private macro _register_set_sort_column_id_vfunc(impl_method_name)
      private def self._vfunc_set_sort_column_id(%this : Pointer(Void), lib_sort_column_id :  Int32, lib_order :  UInt32, ) : Void
        # @sort_column_id: 
# @order: 

sort_column_id=lib_sort_column_id
# Generator::BuiltInTypeArgPlan
order=Gtk::SortType.new(lib_order)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(sort_column_id, order)
        
        %retval
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_sort_column_id(Pointer(Void), Int32, UInt32)).pointer
        previous_def
      end
    end

    # set_sort_column_id: (None)
    # @sort_column_id:
    # @order:
    # Returns: (transfer none)
    private macro _register_unsafe_set_sort_column_id_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_sort_column_id(%this : Pointer(Void), lib_sort_column_id :  Int32, lib_order :  UInt32, ) : Void
# @sort_column_id: 
# @order: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_sort_column_id, lib_order)
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_sort_column_id = Proc(Pointer(Void), Int32, UInt32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_sort_column_id(Pointer(Void), Int32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_sort_column_id : Proc(Pointer(Void), Int32, UInt32, Void)? = nil
    end

    # set_sort_func: (None)
    # @sort_column_id:
    # @sort_func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)
    private macro _register_set_sort_func_vfunc(impl_method_name)
      private def self._vfunc_set_sort_func(%this : Pointer(Void), lib_sort_column_id :  Int32, lib_sort_func :  Void*, lib_user_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
        # @sort_column_id: 
# @sort_func: 
# @user_data: (nullable) 
# @destroy: (nullable) 

sort_column_id=lib_sort_column_id
# Generator::CallbackArgPlan
# Generator::BuiltInTypeArgPlan
sort_func=Gtk::TreeIterCompareFunc.new(lib_sort_func, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(sort_column_id, sort_func, user_data, destroy)
        
        %retval
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_sort_func(Pointer(Void), Int32, Void*, Pointer(Void), Void*)).pointer
        previous_def
      end
    end

    # set_sort_func: (None)
    # @sort_column_id:
    # @sort_func:
    # @user_data: (nullable)
    # @destroy: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_set_sort_func_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_sort_func(%this : Pointer(Void), lib_sort_column_id :  Int32, lib_sort_func :  Void*, lib_user_data :  Pointer(Void), lib_destroy :  Void*, ) : Void
# @sort_column_id: 
# @sort_func: 
# @user_data: (nullable) 
# @destroy: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_sort_column_id, lib_sort_func, lib_user_data, lib_destroy)
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_sort_func = Proc(Pointer(Void), Int32, Void*, Pointer(Void), Void*, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_sort_func(Pointer(Void), Int32, Void*, Pointer(Void), Void*)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_sort_func : Proc(Pointer(Void), Int32, Void*, Pointer(Void), Void*, Void)? = nil
    end

    # sort_column_changed: (None)
    # Returns: (transfer none)
    private macro _register_sort_column_changed_vfunc(impl_method_name)
      private def self._vfunc_sort_column_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_sort_column_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # sort_column_changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_sort_column_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_sort_column_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__TreeSortable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_sort_column_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_sort_column_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_sort_column_changed : Proc(Pointer(Void), Void)? = nil
    end

    struct SortColumnChangedSignal < GObject::Signal
      def name : String
        @detail ? "sort-column-changed::#{@detail}" : "sort-column-changed"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::TreeSortable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractTreeSortable.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::TreeSortable, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "sort-column-changed")
      end
    end

    def sort_column_changed_signal
      SortColumnChangedSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTreeSortable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTreeSortable < GObject::Object
    include TreeSortable

    GICrystal.declare_new_method(Gtk::AbstractTreeSortable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_tree_sortable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractTreeSortable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
