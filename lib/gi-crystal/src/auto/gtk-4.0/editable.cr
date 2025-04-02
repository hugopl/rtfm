module Gtk
  module Editable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Editable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Editable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractEditable.g_type
    end

    def cursor_position : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "cursor-position", pointerof(value), Pointer(Void).null)
      value
    end

    def editable=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "editable", unsafe_value, Pointer(Void).null)
      value
    end

    def editable? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "editable", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def enable_undo=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "enable-undo", unsafe_value, Pointer(Void).null)
      value
    end

    def enable_undo? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "enable-undo", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def max_width_chars=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "max-width-chars", unsafe_value, Pointer(Void).null)
      value
    end

    def max_width_chars : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "max-width-chars", pointerof(value), Pointer(Void).null)
      value
    end

    def selection_bound : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "selection-bound", pointerof(value), Pointer(Void).null)
      value
    end

    def text=(value : ::String) : ::String
      unsafe_value = value

      LibGObject.g_object_set(self, "text", unsafe_value, Pointer(Void).null)
      value
    end

    def text : ::String
      # Returns: None

      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value)
    end

    # Set `#text` property to nil.
    def text=(value : Nil) : Nil
      LibGObject.g_object_set(self, "text", Pointer(Void).null, Pointer(Void).null)
    end

    # Same as `#text`, but can return nil.
    def text? : ::String?
      value = uninitialized Pointer(LibC::Char)
      LibGObject.g_object_get(self, "text", pointerof(value), Pointer(Void).null)
      ::String.new(value) if value
    end

    def width_chars=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "width-chars", unsafe_value, Pointer(Void).null)
      value
    end

    def width_chars : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "width-chars", pointerof(value), Pointer(Void).null)
      value
    end

    def xalign=(value : Float32) : Float32
      unsafe_value = value

      LibGObject.g_object_set(self, "xalign", unsafe_value, Pointer(Void).null)
      value
    end

    def xalign : Float32
      # Returns: None

      value = uninitialized Float32
      LibGObject.g_object_get(self, "xalign", pointerof(value), Pointer(Void).null)
      value
    end

    def self.delegate_get_property(object : GObject::Object, prop_id : UInt32, value : _, pspec : GObject::ParamSpec) : Bool
      # gtk_editable_delegate_get_property: (None)
      # @object:
      # @prop_id:
      # @value:
      # @pspec:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_editable_delegate_get_property(object, prop_id, value, pspec)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.delegate_set_property(object : GObject::Object, prop_id : UInt32, value : _, pspec : GObject::ParamSpec) : Bool
      # gtk_editable_delegate_set_property: (None)
      # @object:
      # @prop_id:
      # @value:
      # @pspec:
      # Returns: (transfer none)

      # Generator::HandmadeArgPlan
      value = if !value.is_a?(GObject::Value)
                GObject::Value.new(value).to_unsafe
              else
                value.to_unsafe
              end

      # C call
      _retval = LibGtk.gtk_editable_delegate_set_property(object, prop_id, value, pspec)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def self.install_properties(object_class : GObject::ObjectClass, first_prop : UInt32) : UInt32
      # gtk_editable_install_properties: (None)
      # @object_class:
      # @first_prop:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_install_properties(object_class, first_prop)

      # Return value handling
      _retval
    end

    def delegate_get_accessible_platform_state(state : Gtk::AccessiblePlatformState) : Bool
      # gtk_editable_delegate_get_accessible_platform_state: (Method)
      # @state:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_delegate_get_accessible_platform_state(to_unsafe, state)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def delete_selection : Nil
      # gtk_editable_delete_selection: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_delete_selection(to_unsafe)

      # Return value handling
    end

    def delete_text(start_pos : Int32, end_pos : Int32) : Nil
      # gtk_editable_delete_text: (Method)
      # @start_pos:
      # @end_pos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_delete_text(to_unsafe, start_pos, end_pos)

      # Return value handling
    end

    def finish_delegate : Nil
      # gtk_editable_finish_delegate: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_finish_delegate(to_unsafe)

      # Return value handling
    end

    def alignment : Float32
      # gtk_editable_get_alignment: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_get_alignment(to_unsafe)

      # Return value handling
      _retval
    end

    def chars(start_pos : Int32, end_pos : Int32) : ::String
      # gtk_editable_get_chars: (Method)
      # @start_pos:
      # @end_pos:
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_editable_get_chars(to_unsafe, start_pos, end_pos)

      # Return value handling
      GICrystal.transfer_full(_retval)
    end

    def delegate : Gtk::Editable?
      # gtk_editable_get_delegate: (Method)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_editable_get_delegate(to_unsafe)

      # Return value handling
      Gtk::AbstractEditable.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def editable : Bool
      # gtk_editable_get_editable: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_get_editable(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def enable_undo : Bool
      # gtk_editable_get_enable_undo: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_get_enable_undo(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def max_width_chars : Int32
      # gtk_editable_get_max_width_chars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_get_max_width_chars(to_unsafe)

      # Return value handling
      _retval
    end

    def position : Int32
      # gtk_editable_get_position: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_get_position(to_unsafe)

      # Return value handling
      _retval
    end

    def selection_bounds : Bool
      # gtk_editable_get_selection_bounds: (Method)
      # @start_pos: (out) (transfer full) (optional)
      # @end_pos: (out) (transfer full) (optional)
      # Returns: (transfer none)

      # Generator::OutArgUsedInReturnPlan
      start_pos = Pointer(Int32).null # Generator::OutArgUsedInReturnPlan
      end_pos = Pointer(Int32).null
      # C call
      _retval = LibGtk.gtk_editable_get_selection_bounds(to_unsafe, start_pos, end_pos)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def text : ::String
      # gtk_editable_get_text: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_get_text(to_unsafe)

      # Return value handling
      ::String.new(_retval)
    end

    def width_chars : Int32
      # gtk_editable_get_width_chars: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_editable_get_width_chars(to_unsafe)

      # Return value handling
      _retval
    end

    def init_delegate : Nil
      # gtk_editable_init_delegate: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_init_delegate(to_unsafe)

      # Return value handling
    end

    def insert_text(text : ::String, length : Int32, position : Int32) : Nil
      # gtk_editable_insert_text: (Method)
      # @text:
      # @length:
      # @position: (inout) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_insert_text(to_unsafe, text, length, position)

      # Return value handling
    end

    def select_region(start_pos : Int32, end_pos : Int32) : Nil
      # gtk_editable_select_region: (Method)
      # @start_pos:
      # @end_pos:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_select_region(to_unsafe, start_pos, end_pos)

      # Return value handling
    end

    def alignment=(xalign : Float32) : Nil
      # gtk_editable_set_alignment: (Method | Setter)
      # @xalign:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_set_alignment(to_unsafe, xalign)

      # Return value handling
    end

    def editable=(is_editable : Bool) : Nil
      # gtk_editable_set_editable: (Method | Setter)
      # @is_editable:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_set_editable(to_unsafe, is_editable)

      # Return value handling
    end

    def enable_undo=(enable_undo : Bool) : Nil
      # gtk_editable_set_enable_undo: (Method | Setter)
      # @enable_undo:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_set_enable_undo(to_unsafe, enable_undo)

      # Return value handling
    end

    def max_width_chars=(n_chars : Int32) : Nil
      # gtk_editable_set_max_width_chars: (Method | Setter)
      # @n_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_set_max_width_chars(to_unsafe, n_chars)

      # Return value handling
    end

    def position=(position : Int32) : Nil
      # gtk_editable_set_position: (Method | Setter)
      # @position:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_set_position(to_unsafe, position)

      # Return value handling
    end

    def text=(text : ::String) : Nil
      # gtk_editable_set_text: (Method | Setter)
      # @text:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_set_text(to_unsafe, text)

      # Return value handling
    end

    def width_chars=(n_chars : Int32) : Nil
      # gtk_editable_set_width_chars: (Method | Setter)
      # @n_chars:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_editable_set_width_chars(to_unsafe, n_chars)

      # Return value handling
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_changed_vfunc(impl_method_name)
      private def self._vfunc_changed(%this : Pointer(Void), ) : Void
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_changed(Pointer(Void))).pointer
        previous_def
      end
    end

    # changed: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_changed_vfunc(impl_method_name)
      private def self._vfunc_unsafe_changed(%this : Pointer(Void), ) : Void

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_changed = Proc(Pointer(Void), Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_changed(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_changed : Proc(Pointer(Void), Void)? = nil
    end

    # delete_text: (None)
    # @start_pos:
    # @end_pos:
    # Returns: (transfer none)
    private macro _register_delete_text_vfunc(impl_method_name)
      private def self._vfunc_delete_text(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : Void
        # @start_pos: 
# @end_pos: 

start_pos=lib_start_pos
end_pos=lib_end_pos


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start_pos, end_pos)
        
        %retval
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_delete_text(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # delete_text: (None)
    # @start_pos:
    # @end_pos:
    # Returns: (transfer none)
    private macro _register_unsafe_delete_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_delete_text(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : Void
# @start_pos: 
# @end_pos: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start_pos, lib_end_pos)
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_delete_text = Proc(Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_delete_text(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_delete_text : Proc(Pointer(Void), Int32, Int32, Void)? = nil
    end

    # do_delete_text: (None)
    # @start_pos:
    # @end_pos:
    # Returns: (transfer none)
    private macro _register_do_delete_text_vfunc(impl_method_name)
      private def self._vfunc_do_delete_text(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : Void
        # @start_pos: 
# @end_pos: 

start_pos=lib_start_pos
end_pos=lib_end_pos


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start_pos, end_pos)
        
        %retval
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_do_delete_text(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # do_delete_text: (None)
    # @start_pos:
    # @end_pos:
    # Returns: (transfer none)
    private macro _register_unsafe_do_delete_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_do_delete_text(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : Void
# @start_pos: 
# @end_pos: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start_pos, lib_end_pos)
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_do_delete_text = Proc(Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_do_delete_text(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_do_delete_text : Proc(Pointer(Void), Int32, Int32, Void)? = nil
    end

    # do_insert_text: (None)
    # @text:
    # @length:
    # @position: (inout) (transfer full)
    # Returns: (transfer none)
    private macro _register_do_insert_text_vfunc(impl_method_name)
      private def self._vfunc_do_insert_text(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_length :  Int32, lib_position :  Int32, ) : Void
        # @text: 
# @length: 
# @position: (inout) (transfer full) 

# Generator::BuiltInTypeArgPlan
text=::String.new(lib_text)
length=lib_length
position=lib_position


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, length, position)
        
        %retval
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_do_insert_text(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end
    end

    # do_insert_text: (None)
    # @text:
    # @length:
    # @position: (inout) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_do_insert_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_do_insert_text(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_length :  Int32, lib_position :  Int32, ) : Void
# @text: 
# @length: 
# @position: (inout) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_length, lib_position)
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_do_insert_text = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_do_insert_text(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_do_insert_text : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Void)? = nil
    end

    # get_delegate: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_get_delegate_vfunc(impl_method_name)
      private def self._vfunc_get_delegate(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_delegate(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_delegate: (None)
    # Returns: (transfer none) (nullable)
    private macro _register_unsafe_get_delegate_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_delegate(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 80).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_delegate = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_delegate(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_delegate : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_selection_bounds: (None)
    # @start_pos: (out) (transfer full) (optional)
    # @end_pos: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_get_selection_bounds_vfunc(impl_method_name)
      private def self._vfunc_get_selection_bounds(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : LibC::Int
        # @start_pos: (out) (transfer full) (optional) 
# @end_pos: (out) (transfer full) (optional) 

# Generator::OutArgUsedInReturnPlan
# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start_pos, end_pos)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_selection_bounds(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # get_selection_bounds: (None)
    # @start_pos: (out) (transfer full) (optional)
    # @end_pos: (out) (transfer full) (optional)
    # Returns: (transfer none)
    private macro _register_unsafe_get_selection_bounds_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_selection_bounds(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : LibC::Int
# @start_pos: (out) (transfer full) (optional) 
# @end_pos: (out) (transfer full) (optional) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start_pos, lib_end_pos)
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 64).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_selection_bounds = Proc(Pointer(Void), Int32, Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_selection_bounds(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_selection_bounds : Proc(Pointer(Void), Int32, Int32, LibC::Int)? = nil
    end

    # get_text: (None)
    # Returns: (transfer none)
    private macro _register_get_text_vfunc(impl_method_name)
      private def self._vfunc_get_text(%this : Pointer(Void), ) : Pointer(LibC::Char)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_unsafe
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_text(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_text: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_text(%this : Pointer(Void), ) : Pointer(LibC::Char)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_text = Proc(Pointer(Void), Pointer(LibC::Char)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_text(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_text : Proc(Pointer(Void), Pointer(LibC::Char))? = nil
    end

    # insert_text: (None)
    # @text:
    # @length:
    # @position: (inout) (transfer full)
    # Returns: (transfer none)
    private macro _register_insert_text_vfunc(impl_method_name)
      private def self._vfunc_insert_text(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_length :  Int32, lib_position :  Int32, ) : Void
        # @text: 
# @length: 
# @position: (inout) (transfer full) 

# Generator::BuiltInTypeArgPlan
text=::String.new(lib_text)
length=lib_length
position=lib_position


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(text, length, position)
        
        %retval
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_insert_text(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end
    end

    # insert_text: (None)
    # @text:
    # @length:
    # @position: (inout) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_insert_text_vfunc(impl_method_name)
      private def self._vfunc_unsafe_insert_text(%this : Pointer(Void), lib_text :  Pointer(LibC::Char), lib_length :  Int32, lib_position :  Int32, ) : Void
# @text: 
# @length: 
# @position: (inout) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_text, lib_length, lib_position)
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_insert_text = Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_insert_text(Pointer(Void), Pointer(LibC::Char), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_insert_text : Proc(Pointer(Void), Pointer(LibC::Char), Int32, Int32, Void)? = nil
    end

    # set_selection_bounds: (None)
    # @start_pos:
    # @end_pos:
    # Returns: (transfer none)
    private macro _register_set_selection_bounds_vfunc(impl_method_name)
      private def self._vfunc_set_selection_bounds(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : Void
        # @start_pos: 
# @end_pos: 

start_pos=lib_start_pos
end_pos=lib_end_pos


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(start_pos, end_pos)
        
        %retval
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_set_selection_bounds(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end
    end

    # set_selection_bounds: (None)
    # @start_pos:
    # @end_pos:
    # Returns: (transfer none)
    private macro _register_unsafe_set_selection_bounds_vfunc(impl_method_name)
      private def self._vfunc_unsafe_set_selection_bounds(%this : Pointer(Void), lib_start_pos :  Int32, lib_end_pos :  Int32, ) : Void
# @start_pos: 
# @end_pos: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_start_pos, lib_end_pos)
      end

      def self._install_iface_Gtk__Editable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 72).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_set_selection_bounds = Proc(Pointer(Void), Int32, Int32, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_set_selection_bounds(Pointer(Void), Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_set_selection_bounds : Proc(Pointer(Void), Int32, Int32, Void)? = nil
    end

    struct ChangedSignal < GObject::Signal
      def name : String
        @detail ? "changed::#{@detail}" : "changed"
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

      def connect(handler : Proc(Gtk::Editable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractEditable.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Editable, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "changed")
      end
    end

    def changed_signal
      ChangedSignal.new(self)
    end

    struct DeleteTextSignal < GObject::Signal
      def name : String
        @detail ? "delete-text::#{@detail}" : "delete-text"
      end

      def connect(*, after : Bool = false, &block : Proc(Int32, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_start_pos : Int32, lib_end_pos : Int32, _lib_box : Pointer(Void)) {
          # NoStrategy
          start_pos = lib_start_pos
          # NoStrategy
          end_pos = lib_end_pos
          ::Box(Proc(Int32, Int32, Nil)).unbox(_lib_box).call(start_pos, end_pos)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Editable, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_start_pos : Int32, lib_end_pos : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractEditable.new(_lib_sender, GICrystal::Transfer::None)
          # NoStrategy
          start_pos = lib_start_pos
          # NoStrategy
          end_pos = lib_end_pos
          ::Box(Proc(Gtk::Editable, Int32, Int32, Nil)).unbox(_lib_box).call(_sender, start_pos, end_pos)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(start_pos : Int32, end_pos : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "delete-text", start_pos, end_pos)
      end
    end

    def delete_text_signal
      DeleteTextSignal.new(self)
    end

    struct InsertTextSignal < GObject::Signal
      def name : String
        @detail ? "insert-text::#{@detail}" : "insert-text"
      end

      def connect(*, after : Bool = false, &block : Proc(::String, Int32, Int32, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(::String, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_text : Pointer(LibC::Char), lib_length : Int32, lib_position : Int32, _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          text = ::String.new(lib_text)
          # NoStrategy
          length = lib_length
          # NoStrategy
          position = lib_position
          ::Box(Proc(::String, Int32, Int32, Nil)).unbox(_lib_box).call(text, length, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Editable, ::String, Int32, Int32, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_text : Pointer(LibC::Char), lib_length : Int32, lib_position : Int32, _lib_box : Pointer(Void)) {
          _sender = Gtk::AbstractEditable.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          text = ::String.new(lib_text)
          # NoStrategy
          length = lib_length
          # NoStrategy
          position = lib_position
          ::Box(Proc(Gtk::Editable, ::String, Int32, Int32, Nil)).unbox(_lib_box).call(_sender, text, length, position)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(text : ::String, length : Int32, position : Int32) : Nil
        LibGObject.g_signal_emit_by_name(@source, "insert-text", text, length, position)
      end
    end

    def insert_text_signal
      InsertTextSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractEditable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractEditable < GObject::Object
    include Editable

    GICrystal.declare_new_method(Gtk::AbstractEditable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_editable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractEditable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
