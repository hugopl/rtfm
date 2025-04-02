require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class LayoutManager < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::LayoutManagerClass), class_init,
        sizeof(LibGtk::LayoutManager), instance_init, 0)
    end

    GICrystal.declare_new_method(LayoutManager, g_object_get_qdata)

    # Initialize a new `LayoutManager`.
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
      @@g_type ||= LibGtk.gtk_layout_manager_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::LayoutManager.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def allocate(widget : Gtk::Widget, width : Int32, height : Int32, baseline : Int32) : Nil
      # gtk_layout_manager_allocate: (Method)
      # @widget:
      # @width:
      # @height:
      # @baseline:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_layout_manager_allocate(to_unsafe, widget, width, height, baseline)

      # Return value handling
    end

    def layout_child(child : Gtk::Widget) : Gtk::LayoutChild
      # gtk_layout_manager_get_layout_child: (Method)
      # @child:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_layout_manager_get_layout_child(to_unsafe, child)

      # Return value handling
      Gtk::LayoutChild.new(_retval, GICrystal::Transfer::None)
    end

    def request_mode : Gtk::SizeRequestMode
      # gtk_layout_manager_get_request_mode: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_layout_manager_get_request_mode(to_unsafe)

      # Return value handling
      Gtk::SizeRequestMode.new(_retval)
    end

    def widget : Gtk::Widget?
      # gtk_layout_manager_get_widget: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_layout_manager_get_widget(to_unsafe)

      # Return value handling
      Gtk::Widget.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def layout_changed : Nil
      # gtk_layout_manager_layout_changed: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_layout_manager_layout_changed(to_unsafe)

      # Return value handling
    end

    def measure(widget : Gtk::Widget, orientation : Gtk::Orientation, for_size : Int32) : Nil
      # gtk_layout_manager_measure: (Method)
      # @widget:
      # @orientation:
      # @for_size:
      # @minimum: (out) (transfer full) (optional)
      # @natural: (out) (transfer full) (optional)
      # @minimum_baseline: (out) (transfer full) (optional)
      # @natural_baseline: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum = Pointer(Int32).null          # Generator::OutArgUsedInReturnPlan
      natural = Pointer(Int32).null          # Generator::OutArgUsedInReturnPlan
      minimum_baseline = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_baseline = Pointer(Int32).null
      # C call
      LibGtk.gtk_layout_manager_measure(to_unsafe, widget, orientation, for_size, minimum, natural, minimum_baseline, natural_baseline)

      # Return value handling
    end

    # allocate: (None)
    # @widget:
    # @width:
    # @height:
    # @baseline:
    # Returns: (transfer none)
    private macro _register_allocate_vfunc(impl_method_name)
      private def self._vfunc_allocate(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_width :  Int32, lib_height :  Int32, lib_baseline :  Int32, ) : Void
        # @widget: 
# @width: 
# @height: 
# @baseline: 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
width=lib_width
height=lib_height
baseline=lib_baseline


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, width, height, baseline)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_allocate(Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # allocate: (None)
    # @widget:
    # @width:
    # @height:
    # @baseline:
    # Returns: (transfer none)
    private macro _register_unsafe_allocate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_allocate(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_width :  Int32, lib_height :  Int32, lib_baseline :  Int32, ) : Void
# @widget: 
# @width: 
# @height: 
# @baseline: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_width, lib_height, lib_baseline)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_allocate = Proc(Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_allocate(Pointer(Void), Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_allocate : Proc(Pointer(Void), Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # create_layout_child: (None)
    # @widget:
    # @for_child:
    # Returns: (transfer full)
    private macro _register_create_layout_child_vfunc(impl_method_name)
      private def self._vfunc_create_layout_child(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_for_child :  Pointer(Void), ) : Pointer(Void)
        # @widget: 
# @for_child: 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
for_child=Gtk::Widget.new(lib_for_child, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, for_child)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_create_layout_child(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # create_layout_child: (None)
    # @widget:
    # @for_child:
    # Returns: (transfer full)
    private macro _register_unsafe_create_layout_child_vfunc(impl_method_name)
      private def self._vfunc_unsafe_create_layout_child(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_for_child :  Pointer(Void), ) : Pointer(Void)
# @widget: 
# @for_child: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_for_child)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 168).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_create_layout_child = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_create_layout_child(Pointer(Void), Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_create_layout_child : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(Void))? = nil
    end

    # get_request_mode: (None)
    # @widget:
    # Returns: (transfer none)
    private macro _register_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_get_request_mode(%this : Pointer(Void), lib_widget :  Pointer(Void), ) : UInt32
        # @widget: 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget)
        
        %retval.to_u32
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_request_mode(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # get_request_mode: (None)
    # @widget:
    # Returns: (transfer none)
    private macro _register_unsafe_get_request_mode_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_request_mode(%this : Pointer(Void), lib_widget :  Pointer(Void), ) : UInt32
# @widget: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_request_mode = Proc(Pointer(Void), Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_request_mode(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_request_mode : Proc(Pointer(Void), Pointer(Void), UInt32)? = nil
    end

    # measure: (None)
    # @widget:
    # @orientation:
    # @for_size:
    # @minimum: (out) (transfer full) (optional)
    # @natural: (out) (transfer full) (optional)
    # @minimum_baseline: (out) (transfer full) (optional)
    # @natural_baseline: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_measure_vfunc(impl_method_name)
      private def self._vfunc_measure(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_orientation :  UInt32, lib_for_size :  Int32, lib_minimum :  Int32, lib_natural :  Int32, lib_minimum_baseline :  Int32, lib_natural_baseline :  Int32, ) : Void
        # @widget: 
# @orientation: 
# @for_size: 
# @minimum: (out) (transfer full) (optional) 
# @natural: (out) (transfer full) (optional) 
# @minimum_baseline: (out) (transfer full) (optional) 
# @natural_baseline: (out) (transfer full) (optional) 

# Generator::BuiltInTypeArgPlan
widget=Gtk::Widget.new(lib_widget, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
orientation=Gtk::Orientation.new(lib_orientation)
for_size=lib_for_size
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(widget, orientation, for_size, minimum, natural, minimum_baseline, natural_baseline)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_measure(Pointer(Void), Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # measure: (None)
    # @widget:
    # @orientation:
    # @for_size:
    # @minimum: (out) (transfer full) (optional)
    # @natural: (out) (transfer full) (optional)
    # @minimum_baseline: (out) (transfer full) (optional)
    # @natural_baseline: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_measure_vfunc(impl_method_name)
      private def self._vfunc_unsafe_measure(%this : Pointer(Void), lib_widget :  Pointer(Void), lib_orientation :  UInt32, lib_for_size :  Int32, lib_minimum :  Int32, lib_natural :  Int32, lib_minimum_baseline :  Int32, lib_natural_baseline :  Int32, ) : Void
# @widget: 
# @orientation: 
# @for_size: 
# @minimum: (out) (transfer full) (optional) 
# @natural: (out) (transfer full) (optional) 
# @minimum_baseline: (out) (transfer full) (optional) 
# @natural_baseline: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_widget, lib_orientation, lib_for_size, lib_minimum, lib_natural, lib_minimum_baseline, lib_natural_baseline)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_measure = Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_measure(Pointer(Void), Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_measure : Proc(Pointer(Void), Pointer(Void), UInt32, Int32, Int32, Int32, Int32, Int32, Void)? = nil
    end

    # root: (None)
    # Returns: (transfer none)
    private macro _register_root_vfunc(impl_method_name)
      private def self._vfunc_root(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_root(Pointer(Void))).pointer
        previous_def
      end
    end

    # root: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_root_vfunc(impl_method_name)
      private def self._vfunc_unsafe_root(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 176).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_root = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_root(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_root : Proc(Pointer(Void), Void)? = nil
    end

    # unroot: (None)
    # Returns: (transfer none)
    private macro _register_unroot_vfunc(impl_method_name)
      private def self._vfunc_unroot(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_unroot(Pointer(Void))).pointer
        previous_def
      end
    end

    # unroot: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_unroot_vfunc(impl_method_name)
      private def self._vfunc_unsafe_unroot(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 184).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_unroot = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_unroot(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_unroot : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
