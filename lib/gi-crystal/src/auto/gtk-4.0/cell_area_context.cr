require "../g_object-2.0/object"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class CellAreaContext < GObject::Object
    # :nodoc:
    def self._register_derived_type(class_name : String, class_init, instance_init)
      LibGObject.g_type_register_static_simple(g_type, class_name,
        sizeof(LibGtk::CellAreaContextClass), class_init,
        sizeof(LibGtk::CellAreaContext), instance_init, 0)
    end

    GICrystal.declare_new_method(CellAreaContext, g_object_get_qdata)

    # Initialize a new `CellAreaContext`.
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

    def initialize(*, area : Gtk::CellArea? = nil, minimum_height : Int32? = nil, minimum_width : Int32? = nil, natural_height : Int32? = nil, natural_width : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[5]
      _values = StaticArray(LibGObject::Value, 5).new(LibGObject::Value.new)
      _n = 0

      if !area.nil?
        (_names.to_unsafe + _n).value = "area".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, area)
        _n += 1
      end
      if !minimum_height.nil?
        (_names.to_unsafe + _n).value = "minimum-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, minimum_height)
        _n += 1
      end
      if !minimum_width.nil?
        (_names.to_unsafe + _n).value = "minimum-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, minimum_width)
        _n += 1
      end
      if !natural_height.nil?
        (_names.to_unsafe + _n).value = "natural-height".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, natural_height)
        _n += 1
      end
      if !natural_width.nil?
        (_names.to_unsafe + _n).value = "natural-width".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, natural_width)
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
      @@g_type ||= LibGtk.gtk_cell_area_context_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::CellAreaContext.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def area=(value : Gtk::CellArea?) : Gtk::CellArea?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "area", unsafe_value, Pointer(Void).null)
      value
    end

    def area : Gtk::CellArea?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "area", pointerof(value), Pointer(Void).null)
      Gtk::CellArea.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def minimum_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "minimum-height", pointerof(value), Pointer(Void).null)
      value
    end

    def minimum_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "minimum-width", pointerof(value), Pointer(Void).null)
      value
    end

    def natural_height : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "natural-height", pointerof(value), Pointer(Void).null)
      value
    end

    def natural_width : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "natural-width", pointerof(value), Pointer(Void).null)
      value
    end

    @[Deprecated]
    def allocate(width : Int32, height : Int32) : Nil
      # gtk_cell_area_context_allocate: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_context_allocate(to_unsafe, width, height)

      # Return value handling
    end

    @[Deprecated]
    def allocation : Nil
      # gtk_cell_area_context_get_allocation: (Method)
      # @width: (out) (transfer full) (optional)
      # @height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      height = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_context_get_allocation(to_unsafe, width, height)

      # Return value handling
    end

    @[Deprecated]
    def area : Gtk::CellArea
      # gtk_cell_area_context_get_area: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_cell_area_context_get_area(to_unsafe)

      # Return value handling
      Gtk::CellArea.new(_retval, GICrystal::Transfer::None)
    end

    @[Deprecated]
    def preferred_height : Nil
      # gtk_cell_area_context_get_preferred_height: (Method)
      # @minimum_height: (out) (transfer full) (optional)
      # @natural_height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_height = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_height = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_context_get_preferred_height(to_unsafe, minimum_height, natural_height)

      # Return value handling
    end

    @[Deprecated]
    def preferred_height_for_width(width : Int32) : Nil
      # gtk_cell_area_context_get_preferred_height_for_width: (Method)
      # @width:
      # @minimum_height: (out) (transfer full) (optional)
      # @natural_height: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_height = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_height = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_context_get_preferred_height_for_width(to_unsafe, width, minimum_height, natural_height)

      # Return value handling
    end

    @[Deprecated]
    def preferred_width : Nil
      # gtk_cell_area_context_get_preferred_width: (Method)
      # @minimum_width: (out) (transfer full) (optional)
      # @natural_width: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_width = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_context_get_preferred_width(to_unsafe, minimum_width, natural_width)

      # Return value handling
    end

    @[Deprecated]
    def preferred_width_for_height(height : Int32) : Nil
      # gtk_cell_area_context_get_preferred_width_for_height: (Method)
      # @height:
      # @minimum_width: (out) (transfer full) (optional)
      # @natural_width: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      minimum_width = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      natural_width = Pointer(Int32).null
      # C call
      LibGtk.gtk_cell_area_context_get_preferred_width_for_height(to_unsafe, height, minimum_width, natural_width)

      # Return value handling
    end

    @[Deprecated]
    def push_preferred_height(minimum_height : Int32, natural_height : Int32) : Nil
      # gtk_cell_area_context_push_preferred_height: (Method)
      # @minimum_height:
      # @natural_height:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_context_push_preferred_height(to_unsafe, minimum_height, natural_height)

      # Return value handling
    end

    @[Deprecated]
    def push_preferred_width(minimum_width : Int32, natural_width : Int32) : Nil
      # gtk_cell_area_context_push_preferred_width: (Method)
      # @minimum_width:
      # @natural_width:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_context_push_preferred_width(to_unsafe, minimum_width, natural_width)

      # Return value handling
    end

    @[Deprecated]
    def reset : Nil
      # gtk_cell_area_context_reset: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_cell_area_context_reset(to_unsafe)

      # Return value handling
    end

    # allocate: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_allocate_vfunc(impl_method_name)
      private def self._vfunc_allocate(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, ) : Void
        # @width: 
# @height: 

width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(width, height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_allocate(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # allocate: (None)
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_allocate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_allocate(%this : Pointer(Void), lib_width :  Int32, lib_height :  Int32, ) : Void
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_width, lib_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 136).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_allocate = Proc(Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_allocate(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_allocate : Proc(Pointer(Void), Int32, Int32, Void)? = nil
    end

    # get_preferred_height_for_width: (None)
    # @width:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_height_for_width_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_height_for_width(%this : Pointer(Void), lib_width :  Int32, lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
        # @width: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

width=lib_width
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(width, minimum_height, natural_height)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_height_for_width(Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_height_for_width: (None)
    # @width:
    # @minimum_height: (out) (transfer full) (optional)
    # @natural_height: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_height_for_width_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_height_for_width(%this : Pointer(Void), lib_width :  Int32, lib_minimum_height :  Int32, lib_natural_height :  Int32, ) : Void
# @width: 
# @minimum_height: (out) (transfer full) (optional) 
# @natural_height: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_width, lib_minimum_height, lib_natural_height)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 152).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_height_for_width = Proc(Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_height_for_width(Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_height_for_width : Proc(Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # get_preferred_width_for_height: (None)
    # @height:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_preferred_width_for_height_vfunc(impl_method_name)
      private def self._vfunc_get_preferred_width_for_height(%this : Pointer(Void), lib_height :  Int32, lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
        # @height: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

height=lib_height
# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(height, minimum_width, natural_width)
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_preferred_width_for_height(Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # get_preferred_width_for_height: (None)
    # @height:
    # @minimum_width: (out) (transfer full) (optional)
    # @natural_width: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_preferred_width_for_height_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_preferred_width_for_height(%this : Pointer(Void), lib_height :  Int32, lib_minimum_width :  Int32, lib_natural_width :  Int32, ) : Void
# @height: 
# @minimum_width: (out) (transfer full) (optional) 
# @natural_width: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_height, lib_minimum_width, lib_natural_width)
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 160).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_preferred_width_for_height = Proc(Pointer(Void), Int32, Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_preferred_width_for_height(Pointer(Void), Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_preferred_width_for_height : Proc(Pointer(Void), Int32, Int32, Int32, Void)? = nil
    end

    # reset: (None)
    # Returns: (transfer none)
    private macro _register_reset_vfunc(impl_method_name)
      private def self._vfunc_reset(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_reset(Pointer(Void))).pointer
        previous_def
      end
    end

    # reset: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_reset_vfunc(impl_method_name)
      private def self._vfunc_unsafe_reset(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._class_init(type_struct : Pointer(LibGObject::TypeClass), user_data : Pointer(Void)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 144).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_reset = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_reset(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_reset : Proc(Pointer(Void), Void)? = nil
    end

    def_equals_and_hash @pointer
  end
end
