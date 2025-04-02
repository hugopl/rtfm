module Gtk
  module AccessibleText
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::AccessibleText
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__AccessibleText(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractAccessibleText.g_type
    end

    def update_caret_position : Nil
      # gtk_accessible_text_update_caret_position: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_text_update_caret_position(to_unsafe)

      # Return value handling
    end

    def update_contents(change : Gtk::AccessibleTextContentChange, start : UInt32, end _end : UInt32) : Nil
      # gtk_accessible_text_update_contents: (Method)
      # @change:
      # @start:
      # @end:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_text_update_contents(to_unsafe, change, start, _end)

      # Return value handling
    end

    def update_selection_bound : Nil
      # gtk_accessible_text_update_selection_bound: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_text_update_selection_bound(to_unsafe)

      # Return value handling
    end

    # get_attributes: (None)
    # @offset:
    # @n_ranges: (out) (transfer full)
    # @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)
    # @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_get_attributes_vfunc(impl_method_name)
      private def self._vfunc_get_attributes(%this : Pointer(Void), lib_offset :  UInt32, lib_n_ranges :  UInt64, lib_ranges :  Pointer(LibGtk::AccessibleTextRange), lib_attribute_names :  Pointer(Pointer(LibC::Char)), lib_attribute_values :  Pointer(Pointer(LibC::Char)), ) : LibC::Int
        # @offset: 
# @n_ranges: (out) (transfer full) 
# @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)
# @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
# @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)

offset=lib_offset
# Generator::ArrayLengthArgPlan
# Generator::OutArgUsedInReturnPlan
# Generator::ArrayArgPlan
lib_ranges = lib_ranges.as(Pointer(Pointer(Void)))
ranges= Array(Gtk::AccessibleTextRange).new(lib_n_ranges) do |_i|
Gtk::AccessibleTextRange.new((lib_ranges + _i).value, GICrystal::Transfer::Container)
end
# Generator::OutArgUsedInReturnPlan
# Generator::ArrayArgPlan
raise NotImplementedError.new
# Generator::OutArgUsedInReturnPlan
# Generator::ArrayArgPlan
raise NotImplementedError.new


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(offset, n_ranges, ranges, attribute_names, attribute_values)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_attributes(Pointer(Void), UInt32, UInt64, Pointer(LibGtk::AccessibleTextRange), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end
    end

    # get_attributes: (None)
    # @offset:
    # @n_ranges: (out) (transfer full)
    # @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)
    # @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_unsafe_get_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_attributes(%this : Pointer(Void), lib_offset :  UInt32, lib_n_ranges :  UInt64, lib_ranges :  Pointer(LibGtk::AccessibleTextRange), lib_attribute_names :  Pointer(Pointer(LibC::Char)), lib_attribute_values :  Pointer(Pointer(LibC::Char)), ) : LibC::Int
# @offset: 
# @n_ranges: (out) (transfer full) 
# @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)
# @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
# @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_offset, lib_n_ranges, lib_ranges, lib_attribute_names, lib_attribute_values)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_attributes = Proc(Pointer(Void), UInt32, UInt64, Pointer(LibGtk::AccessibleTextRange), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_attributes(Pointer(Void), UInt32, UInt64, Pointer(LibGtk::AccessibleTextRange), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_attributes : Proc(Pointer(Void), UInt32, UInt64, Pointer(LibGtk::AccessibleTextRange), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)), LibC::Int)? = nil
    end

    # get_caret_position: (None)
    # Returns: (transfer none)
    private macro _register_get_caret_position_vfunc(impl_method_name)
      private def self._vfunc_get_caret_position(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_caret_position(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_caret_position: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_caret_position_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_caret_position(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_caret_position = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_caret_position(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_caret_position : Proc(Pointer(Void), UInt32)? = nil
    end

    # get_contents: (None)
    # @start:
    # @end:
    # Returns: (transfer full)
    private macro _register_get_contents_vfunc(impl_method_name)
      private def self._vfunc_get_contents(%this : Pointer(Void), lib_start :  UInt32, lib__end :  UInt32, ) : Pointer(Void)
        # @start: 
# @end: 

start=lib_start
_end=lib_end


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start, _end)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_contents(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end
    end

    # get_contents: (None)
    # @start:
    # @end:
    # Returns: (transfer full)
    private macro _register_unsafe_get_contents_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_contents(%this : Pointer(Void), lib_start :  UInt32, lib__end :  UInt32, ) : Pointer(Void)
# @start: 
# @end: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start, lib__end)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_contents = Proc(Pointer(Void), UInt32, UInt32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_contents(Pointer(Void), UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_contents : Proc(Pointer(Void), UInt32, UInt32, Pointer(Void))? = nil
    end

    # get_contents_at: (None)
    # @offset:
    # @granularity:
    # @start: (out) (transfer full)
    # @end: (out) (transfer full)
    # Returns: (transfer full)
    private macro _register_get_contents_at_vfunc(impl_method_name)
      private def self._vfunc_get_contents_at(%this : Pointer(Void), lib_offset :  UInt32, lib_granularity :  UInt32, lib_start :  UInt32, lib__end :  UInt32, ) : Pointer(Void)
        # @offset: 
# @granularity: 
# @start: (out) (transfer full) 
# @end: (out) (transfer full) 

offset=lib_offset
# Generator::BuiltInTypeArgPlan
granularity=Gtk::AccessibleTextGranularity.new(lib_granularity)
start=lib_start
_end=lib_end


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(offset, granularity, start, _end)
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_contents_at(Pointer(Void), UInt32, UInt32, UInt32, UInt32)).pointer
        previous_def
      end
    end

    # get_contents_at: (None)
    # @offset:
    # @granularity:
    # @start: (out) (transfer full)
    # @end: (out) (transfer full)
    # Returns: (transfer full)
    private macro _register_unsafe_get_contents_at_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_contents_at(%this : Pointer(Void), lib_offset :  UInt32, lib_granularity :  UInt32, lib_start :  UInt32, lib__end :  UInt32, ) : Pointer(Void)
# @offset: 
# @granularity: 
# @start: (out) (transfer full) 
# @end: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_offset, lib_granularity, lib_start, lib__end)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_contents_at = Proc(Pointer(Void), UInt32, UInt32, UInt32, UInt32, Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_contents_at(Pointer(Void), UInt32, UInt32, UInt32, UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_contents_at : Proc(Pointer(Void), UInt32, UInt32, UInt32, UInt32, Pointer(Void))? = nil
    end

    # get_default_attributes: (None)
    # @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_get_default_attributes_vfunc(impl_method_name)
      private def self._vfunc_get_default_attributes(%this : Pointer(Void), lib_attribute_names :  Pointer(Pointer(LibC::Char)), lib_attribute_values :  Pointer(Pointer(LibC::Char)), ) : Void
        # @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
# @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)

# Generator::OutArgUsedInReturnPlan
# Generator::ArrayArgPlan
raise NotImplementedError.new
# Generator::OutArgUsedInReturnPlan
# Generator::ArrayArgPlan
raise NotImplementedError.new


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(attribute_names, attribute_values)
        
        %retval
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_default_attributes(Pointer(Void), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end
    end

    # get_default_attributes: (None)
    # @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
    # Returns: (transfer none)
    private macro _register_unsafe_get_default_attributes_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_default_attributes(%this : Pointer(Void), lib_attribute_names :  Pointer(Pointer(LibC::Char)), lib_attribute_values :  Pointer(Pointer(LibC::Char)), ) : Void
# @attribute_names: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)
# @attribute_values: (out) (transfer full) (optional) (array zero-terminated=1 element-type Utf8)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_attribute_names, lib_attribute_values)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_default_attributes = Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_default_attributes(Pointer(Void), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_default_attributes : Proc(Pointer(Void), Pointer(Pointer(LibC::Char)), Pointer(Pointer(LibC::Char)), Void)? = nil
    end

    # get_extents: (None)
    # @start:
    # @end:
    # @extents:
    # Returns: (transfer none)
    private macro _register_get_extents_vfunc(impl_method_name)
      private def self._vfunc_get_extents(%this : Pointer(Void), lib_start :  UInt32, lib__end :  UInt32, lib_extents :  Pointer(Void), ) : LibC::Int
        # @start: 
# @end: 
# @extents: 

start=lib_start
_end=lib_end
# Generator::BuiltInTypeArgPlan
extents=Graphene::Rect.new(lib_extents, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start, _end, extents)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_extents(Pointer(Void), UInt32, UInt32, Pointer(Void))).pointer
        previous_def
      end
    end

    # get_extents: (None)
    # @start:
    # @end:
    # @extents:
    # Returns: (transfer none)
    private macro _register_unsafe_get_extents_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_extents(%this : Pointer(Void), lib_start :  UInt32, lib__end :  UInt32, lib_extents :  Pointer(Void), ) : LibC::Int
# @start: 
# @end: 
# @extents: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start, lib__end, lib_extents)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_extents = Proc(Pointer(Void), UInt32, UInt32, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_extents(Pointer(Void), UInt32, UInt32, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_extents : Proc(Pointer(Void), UInt32, UInt32, Pointer(Void), LibC::Int)? = nil
    end

    # get_offset: (None)
    # @point:
    # @offset: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_offset_vfunc(impl_method_name)
      private def self._vfunc_get_offset(%this : Pointer(Void), lib_point :  Pointer(Void), lib_offset :  UInt32, ) : LibC::Int
        # @point: 
# @offset: (out) (transfer full) 

# Generator::BuiltInTypeArgPlan
point=Graphene::Point.new(lib_point, GICrystal::Transfer::None)
offset=lib_offset


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(point, offset)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_offset(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # get_offset: (None)
    # @point:
    # @offset: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_offset_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_offset(%this : Pointer(Void), lib_point :  Pointer(Void), lib_offset :  UInt32, ) : LibC::Int
# @point: 
# @offset: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_point, lib_offset)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_offset = Proc(Pointer(Void), Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_offset(Pointer(Void), Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_offset : Proc(Pointer(Void), Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # get_selection: (None)
    # @n_ranges: (out) (transfer full)
    # @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)
    # Returns: (transfer none)
    private macro _register_get_selection_vfunc(impl_method_name)
      private def self._vfunc_get_selection(%this : Pointer(Void), lib_n_ranges :  UInt64, lib_ranges :  Pointer(LibGtk::AccessibleTextRange), ) : LibC::Int
        # @n_ranges: (out) (transfer full) 
# @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)

# Generator::ArrayLengthArgPlan
# Generator::OutArgUsedInReturnPlan
# Generator::ArrayArgPlan
raise NotImplementedError.new


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(n_ranges, ranges)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_selection(Pointer(Void), UInt64, Pointer(LibGtk::AccessibleTextRange))).pointer
        previous_def
      end
    end

    # get_selection: (None)
    # @n_ranges: (out) (transfer full)
    # @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)
    # Returns: (transfer none)
    private macro _register_unsafe_get_selection_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_selection(%this : Pointer(Void), lib_n_ranges :  UInt64, lib_ranges :  Pointer(LibGtk::AccessibleTextRange), ) : LibC::Int
# @n_ranges: (out) (transfer full) 
# @ranges: (out) (transfer container) (optional) (array length=n_ranges element-type Interface)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_n_ranges, lib_ranges)
      end

      def self._install_iface_Gtk__AccessibleText(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_selection = Proc(Pointer(Void), UInt64, Pointer(LibGtk::AccessibleTextRange), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_selection(Pointer(Void), UInt64, Pointer(LibGtk::AccessibleTextRange))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_selection : Proc(Pointer(Void), UInt64, Pointer(LibGtk::AccessibleTextRange), LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractAccessibleText.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractAccessibleText < GObject::Object
    include AccessibleText

    GICrystal.declare_new_method(Gtk::AbstractAccessibleText, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_accessible_text_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractAccessibleText.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
