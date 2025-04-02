module Gtk
  module TreeDragSource
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::TreeDragSource
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__TreeDragSource(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractTreeDragSource.g_type
    end

    @[Deprecated]
    def drag_data_delete(path : Gtk::TreePath) : Bool
      # gtk_tree_drag_source_drag_data_delete: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_drag_source_drag_data_delete(to_unsafe, path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def drag_data_get(path : Gtk::TreePath) : Gdk::ContentProvider?
      # gtk_tree_drag_source_drag_data_get: (Method)
      # @path:
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_tree_drag_source_drag_data_get(to_unsafe, path)

      # Return value handling
      Gdk::ContentProvider.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    @[Deprecated]
    def row_draggable(path : Gtk::TreePath) : Bool
      # gtk_tree_drag_source_row_draggable: (Method)
      # @path:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_tree_drag_source_row_draggable(to_unsafe, path)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # drag_data_delete: (None)
    # @path:
    # Returns: (transfer none)
    private macro _register_drag_data_delete_vfunc(impl_method_name)
      private def self._vfunc_drag_data_delete(%this : Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
        # @path: 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeDragSource(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drag_data_delete(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drag_data_delete: (None)
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_drag_data_delete_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drag_data_delete(%this : Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path)
      end

      def self._install_iface_Gtk__TreeDragSource(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drag_data_delete = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drag_data_delete(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drag_data_delete : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # drag_data_get: (None)
    # @path:
    # Returns: (transfer full) (nullable)
    private macro _register_drag_data_get_vfunc(impl_method_name)
      private def self._vfunc_drag_data_get(%this : Pointer(Void), lib_path :  Pointer(Void), ) : Pointer(Void)
        # @path: 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__TreeDragSource(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drag_data_get(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drag_data_get: (None)
    # @path:
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_drag_data_get_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drag_data_get(%this : Pointer(Void), lib_path :  Pointer(Void), ) : Pointer(Void)
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path)
      end

      def self._install_iface_Gtk__TreeDragSource(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drag_data_get = Proc(Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drag_data_get(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drag_data_get : Proc(Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # row_draggable: (None)
    # @path:
    # Returns: (transfer none)
    private macro _register_row_draggable_vfunc(impl_method_name)
      private def self._vfunc_row_draggable(%this : Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
        # @path: 

# Generator::BuiltInTypeArgPlan
path=Gtk::TreePath.new(lib_path, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(path)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeDragSource(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_draggable(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_draggable: (None)
    # @path:
    # Returns: (transfer none)
    private macro _register_unsafe_row_draggable_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_draggable(%this : Pointer(Void), lib_path :  Pointer(Void), ) : LibC::Int
# @path: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_path)
      end

      def self._install_iface_Gtk__TreeDragSource(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_draggable = Proc(Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_draggable(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_draggable : Proc(Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTreeDragSource.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTreeDragSource < GObject::Object
    include TreeDragSource

    GICrystal.declare_new_method(Gtk::AbstractTreeDragSource, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_tree_drag_source_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractTreeDragSource.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
