module Gtk
  module TreeDragDest
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::TreeDragDest
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__TreeDragDest(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractTreeDragDest.g_type
    end

    @[Deprecated]
    def drag_data_received(dest : Gtk::TreePath, value : _) : Bool
      # gtk_tree_drag_dest_drag_data_received: (Method)
      # @dest:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_tree_drag_dest_drag_data_received(to_unsafe, dest, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    @[Deprecated]
    def row_drop_possible(dest_path : Gtk::TreePath, value : _) : Bool
      # gtk_tree_drag_dest_row_drop_possible: (Method)
      # @dest_path:
      # @value:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_tree_drag_dest_row_drop_possible(to_unsafe, dest_path, value)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    # drag_data_received: (None)
    # @dest:
    # @value:
    # Returns: (transfer none)
    private macro _register_drag_data_received_vfunc(impl_method_name)
      private def self._vfunc_drag_data_received(%this : Pointer(Void), lib_dest :  Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
        # @dest: 
# @value: 

# Generator::BuiltInTypeArgPlan
dest=Gtk::TreePath.new(lib_dest, GICrystal::Transfer::None)
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(dest, value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeDragDest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_drag_data_received(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # drag_data_received: (None)
    # @dest:
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_drag_data_received_vfunc(impl_method_name)
      private def self._vfunc_unsafe_drag_data_received(%this : Pointer(Void), lib_dest :  Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
# @dest: 
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_dest, lib_value)
      end

      def self._install_iface_Gtk__TreeDragDest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_drag_data_received = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_drag_data_received(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_drag_data_received : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # row_drop_possible: (None)
    # @dest_path:
    # @value:
    # Returns: (transfer none)
    private macro _register_row_drop_possible_vfunc(impl_method_name)
      private def self._vfunc_row_drop_possible(%this : Pointer(Void), lib_dest_path :  Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
        # @dest_path: 
# @value: 

# Generator::BuiltInTypeArgPlan
dest_path=Gtk::TreePath.new(lib_dest_path, GICrystal::Transfer::None)
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(dest_path, value)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__TreeDragDest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_row_drop_possible(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # row_drop_possible: (None)
    # @dest_path:
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_row_drop_possible_vfunc(impl_method_name)
      private def self._vfunc_unsafe_row_drop_possible(%this : Pointer(Void), lib_dest_path :  Pointer(Void), lib_value :  Pointer(Void), ) : LibC::Int
# @dest_path: 
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_dest_path, lib_value)
      end

      def self._install_iface_Gtk__TreeDragDest(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_row_drop_possible = Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_row_drop_possible(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_row_drop_possible : Proc(Pointer(Void), Pointer(Void), Pointer(Void), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractTreeDragDest.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractTreeDragDest < GObject::Object
    include TreeDragDest

    GICrystal.declare_new_method(Gtk::AbstractTreeDragDest, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_tree_drag_dest_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractTreeDragDest.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
