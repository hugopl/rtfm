module Gtk
  module Buildable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Buildable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Buildable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractBuildable.g_type
    end

    def buildable_id : ::String?
      # gtk_buildable_get_buildable_id: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_buildable_get_buildable_id(to_unsafe)

      # Return value handling
      ::String.new(_retval) unless _retval.null?
    end

    # add_child: (None)
    # @builder:
    # @child:
    # @type: (nullable)
    # Returns: (transfer none)
    private macro _register_add_child_vfunc(impl_method_name)
      private def self._vfunc_add_child(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_type :  Pointer(LibC::Char), ) : Void
        # @builder: 
# @child: 
# @type: (nullable) 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
child=GObject::Object.new(lib_child, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
type=(lib_type.null? ? nil : ::String.new(lib_type))
# Generator::BuiltInTypeArgPlan
type=::String.new(lib_type) unless lib_type.null?


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, child, type)
        
        %retval
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_add_child(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # add_child: (None)
    # @builder:
    # @child:
    # @type: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_add_child_vfunc(impl_method_name)
      private def self._vfunc_unsafe_add_child(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_type :  Pointer(LibC::Char), ) : Void
# @builder: 
# @child: 
# @type: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_child, lib_type)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_add_child = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_add_child(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_add_child : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # custom_finished: (None)
    # @builder:
    # @child: (nullable)
    # @tagname:
    # @data: (nullable)
    # Returns: (transfer none)
    private macro _register_custom_finished_vfunc(impl_method_name)
      private def self._vfunc_custom_finished(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_tagname :  Pointer(LibC::Char), lib_data :  Pointer(Void), ) : Void
        # @builder: 
# @child: (nullable) 
# @tagname: 
# @data: (nullable) 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
child=(lib_child.null? ? nil : GObject::Object.new(lib_child, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
child=GObject::Object.new(lib_child, GICrystal::Transfer::None) unless lib_child.null?
# Generator::BuiltInTypeArgPlan
tagname=::String.new(lib_tagname)
# Generator::NullableArrayPlan
data=(lib_data.null? ? nil : lib_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, child, tagname, data)
        
        %retval
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_custom_finished(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # custom_finished: (None)
    # @builder:
    # @child: (nullable)
    # @tagname:
    # @data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_custom_finished_vfunc(impl_method_name)
      private def self._vfunc_unsafe_custom_finished(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_tagname :  Pointer(LibC::Char), lib_data :  Pointer(Void), ) : Void
# @builder: 
# @child: (nullable) 
# @tagname: 
# @data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_child, lib_tagname, lib_data)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_custom_finished = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_custom_finished(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_custom_finished : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    # custom_tag_end: (None)
    # @builder:
    # @child: (nullable)
    # @tagname:
    # @data: (nullable)
    # Returns: (transfer none)
    private macro _register_custom_tag_end_vfunc(impl_method_name)
      private def self._vfunc_custom_tag_end(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_tagname :  Pointer(LibC::Char), lib_data :  Pointer(Void), ) : Void
        # @builder: 
# @child: (nullable) 
# @tagname: 
# @data: (nullable) 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
child=(lib_child.null? ? nil : GObject::Object.new(lib_child, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
child=GObject::Object.new(lib_child, GICrystal::Transfer::None) unless lib_child.null?
# Generator::BuiltInTypeArgPlan
tagname=::String.new(lib_tagname)
# Generator::NullableArrayPlan
data=(lib_data.null? ? nil : lib_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, child, tagname, data)
        
        %retval
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_custom_tag_end(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # custom_tag_end: (None)
    # @builder:
    # @child: (nullable)
    # @tagname:
    # @data: (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_custom_tag_end_vfunc(impl_method_name)
      private def self._vfunc_unsafe_custom_tag_end(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_tagname :  Pointer(LibC::Char), lib_data :  Pointer(Void), ) : Void
# @builder: 
# @child: (nullable) 
# @tagname: 
# @data: (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_child, lib_tagname, lib_data)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_custom_tag_end = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_custom_tag_end(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_custom_tag_end : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    # custom_tag_start: (None)
    # @builder:
    # @child: (nullable)
    # @tagname:
    # @parser: (out) (caller-allocates)
    # @data: (out) (transfer full) (nullable)
    # Returns: (transfer none)
    private macro _register_custom_tag_start_vfunc(impl_method_name)
      private def self._vfunc_custom_tag_start(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_tagname :  Pointer(LibC::Char), lib_parser :  Void, lib_data :  Pointer(Void), ) : LibC::Int
        # @builder: 
# @child: (nullable) 
# @tagname: 
# @parser: (out) (caller-allocates) 
# @data: (out) (transfer full) (nullable) 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::NullableArrayPlan
child=(lib_child.null? ? nil : GObject::Object.new(lib_child, GICrystal::Transfer::None))
# Generator::BuiltInTypeArgPlan
child=GObject::Object.new(lib_child, GICrystal::Transfer::None) unless lib_child.null?
# Generator::BuiltInTypeArgPlan
tagname=::String.new(lib_tagname)
# Generator::CallerAllocatesPlan
# Generator::NullableArrayPlan
data=(lib_data.null? ? nil : lib_data)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, child, tagname, parser, data)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_custom_tag_start(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void, Pointer(Void))).pointer
        previous_def
      end
    end

    # custom_tag_start: (None)
    # @builder:
    # @child: (nullable)
    # @tagname:
    # @parser: (out) (caller-allocates)
    # @data: (out) (transfer full) (nullable)
    # Returns: (transfer none)
    private macro _register_unsafe_custom_tag_start_vfunc(impl_method_name)
      private def self._vfunc_unsafe_custom_tag_start(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_child :  Pointer(Void), lib_tagname :  Pointer(LibC::Char), lib_parser :  Void, lib_data :  Pointer(Void), ) : LibC::Int
# @builder: 
# @child: (nullable) 
# @tagname: 
# @parser: (out) (caller-allocates) 
# @data: (out) (transfer full) (nullable) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_child, lib_tagname, lib_parser, lib_data)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_custom_tag_start = Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void, Pointer(Void), LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_custom_tag_start(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void, Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_custom_tag_start : Proc(Pointer(Void), Pointer(Void), Pointer(Void), Pointer(LibC::Char), Void, Pointer(Void), LibC::Int)? = nil
    end

    # get_id: (None)
    # Returns: (transfer none)
    private macro _register_get_id_vfunc(impl_method_name)
      private def self._vfunc_get_id(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_id(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_id: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_id_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_id(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_id = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_id(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_id : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # get_internal_child: (None)
    # @builder:
    # @childname:
    # Returns: (transfer none)
    private macro _register_get_internal_child_vfunc(impl_method_name)
      private def self._vfunc_get_internal_child(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_childname :  Pointer(LibC::Char), ) : Pointer(Void)
        # @builder: 
# @childname: 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
childname=::String.new(lib_childname)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, childname)
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_internal_child(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # get_internal_child: (None)
    # @builder:
    # @childname:
    # Returns: (transfer none)
    private macro _register_unsafe_get_internal_child_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_internal_child(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_childname :  Pointer(LibC::Char), ) : Pointer(Void)
# @builder: 
# @childname: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_childname)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 88).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_internal_child = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_internal_child(Pointer(Void), Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_internal_child : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))? = nil
    end

    # parser_finished: (None)
    # @builder:
    # Returns: (transfer none)
    private macro _register_parser_finished_vfunc(impl_method_name)
      private def self._vfunc_parser_finished(%this : Pointer(Void), lib_builder :  Pointer(Void), ) : Void
        # @builder: 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder)
        
        %retval
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_parser_finished(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end
    end

    # parser_finished: (None)
    # @builder:
    # Returns: (transfer none)
    private macro _register_unsafe_parser_finished_vfunc(impl_method_name)
      private def self._vfunc_unsafe_parser_finished(%this : Pointer(Void), lib_builder :  Pointer(Void), ) : Void
# @builder: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_parser_finished = Proc(Pointer(Void), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_parser_finished(Pointer(Void), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_parser_finished : Proc(Pointer(Void), Pointer(Void), Void)? = nil
    end

    # set_buildable_property: (None)
    # @builder:
    # @name:
    # @value:
    # Returns: (transfer none)
    private macro _register_set_buildable_property_vfunc(impl_method_name)
      private def self._vfunc_set_buildable_property(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), ) : Void
        # @builder: 
# @name: 
# @value: 

# Generator::BuiltInTypeArgPlan
builder=Gtk::Builder.new(lib_builder, GICrystal::Transfer::None)
# Generator::BuiltInTypeArgPlan
name=::String.new(lib_name)
# Generator::HandmadeArgPlan
value=GObject::Value.new(lib_value, :none)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(builder, name, value)
        
        %retval
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_buildable_property(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end
    end

    # set_buildable_property: (None)
    # @builder:
    # @name:
    # @value:
    # Returns: (transfer none)
    private macro _register_unsafe_set_buildable_property_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_buildable_property(%this : Pointer(Void), lib_builder :  Pointer(Void), lib_name :  Pointer(LibC::Char), lib_value :  Pointer(Void), ) : Void
# @builder: 
# @name: 
# @value: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_builder, lib_name, lib_value)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_buildable_property = Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_buildable_property(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_buildable_property : Proc(Pointer(Void), Pointer(Void), Pointer(LibC::Char), Pointer(Void), Void)? = nil
    end

    # set_id: (None)
    # @id:
    # Returns: (transfer none)
    private macro _register_set_id_vfunc(impl_method_name)
      private def self._vfunc_set_id(%this : Pointer(Void), lib_id :  Pointer(LibC::Char), ) : Void
        # @id: 

# Generator::BuiltInTypeArgPlan
id=::String.new(lib_id)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(id)
        
        %retval
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_id(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end
    end

    # set_id: (None)
    # @id:
    # Returns: (transfer none)
    private macro _register_unsafe_set_id_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_id(%this : Pointer(Void), lib_id :  Pointer(LibC::Char), ) : Void
# @id: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_id)
      end

      def self._install_iface_Gtk__Buildable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_id = Proc(Pointer(Void), Pointer(LibC::Char), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_id(Pointer(Void), Pointer(LibC::Char))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_id : Proc(Pointer(Void), Pointer(LibC::Char), Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractBuildable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractBuildable < GObject::Object
    include Buildable

    GICrystal.declare_new_method(Gtk::AbstractBuildable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_buildable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractBuildable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
