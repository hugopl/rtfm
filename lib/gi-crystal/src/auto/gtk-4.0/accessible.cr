module Gtk
  module Accessible
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Accessible
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Accessible(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractAccessible.g_type
    end

    def accessible_role=(value : Gtk::AccessibleRole) : Gtk::AccessibleRole
      unsafe_value = value

      LibGObject.g_object_set(self, "accessible-role", unsafe_value, Pointer(Void).null)
      value
    end

    def accessible_role : Gtk::AccessibleRole
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "accessible-role", pointerof(value), Pointer(Void).null)
      Gtk::AccessibleRole.new(value)
    end

    def announce(message : ::String, priority : Gtk::AccessibleAnnouncementPriority) : Nil
      # gtk_accessible_announce: (Method)
      # @message:
      # @priority:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_announce(to_unsafe, message, priority)

      # Return value handling
    end

    def accessible_parent : Gtk::Accessible?
      # gtk_accessible_get_accessible_parent: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_accessible_get_accessible_parent(to_unsafe)

      # Return value handling
      Gtk::AbstractAccessible.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def accessible_role : Gtk::AccessibleRole
      # gtk_accessible_get_accessible_role: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_accessible_get_accessible_role(to_unsafe)

      # Return value handling
      Gtk::AccessibleRole.new(_retval)
    end

    def at_context : Gtk::ATContext
      # gtk_accessible_get_at_context: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_accessible_get_at_context(to_unsafe)

      # Return value handling
      Gtk::ATContext.new(_retval, GICrystal::Transfer::Full)
    end

    def bounds(x : Int32, y : Int32, width : Int32, height : Int32) : Bool
      # gtk_accessible_get_bounds: (Method)
      # @x: (out) (transfer full)
      # @y: (out) (transfer full)
      # @width: (out) (transfer full)
      # @height: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_accessible_get_bounds(to_unsafe, x, y, width, height)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def first_accessible_child : Gtk::Accessible?
      # gtk_accessible_get_first_accessible_child: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_accessible_get_first_accessible_child(to_unsafe)

      # Return value handling
      Gtk::AbstractAccessible.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def next_accessible_sibling : Gtk::Accessible?
      # gtk_accessible_get_next_accessible_sibling: (Method)
      # Returns: (transfer full) (nullable)

      # C call
      _retval = LibGtk.gtk_accessible_get_next_accessible_sibling(to_unsafe)

      # Return value handling
      Gtk::AbstractAccessible.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
    end

    def platform_state(state : Gtk::AccessiblePlatformState) : Bool
      # gtk_accessible_get_platform_state: (Method)
      # @state:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_accessible_get_platform_state(to_unsafe, state)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def reset_property(property : Gtk::AccessibleProperty) : Nil
      # gtk_accessible_reset_property: (Method)
      # @property:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_reset_property(to_unsafe, property)

      # Return value handling
    end

    def reset_relation(relation : Gtk::AccessibleRelation) : Nil
      # gtk_accessible_reset_relation: (Method)
      # @relation:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_reset_relation(to_unsafe, relation)

      # Return value handling
    end

    def reset_state(state : Gtk::AccessibleState) : Nil
      # gtk_accessible_reset_state: (Method)
      # @state:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_reset_state(to_unsafe, state)

      # Return value handling
    end

    def set_accessible_parent(parent : Gtk::Accessible?, next_sibling : Gtk::Accessible?) : Nil
      # gtk_accessible_set_accessible_parent: (Method)
      # @parent: (nullable)
      # @next_sibling: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      parent = if parent.nil?
                 Pointer(Void).null
               else
                 parent.to_unsafe
               end
      # Generator::NullableArrayPlan
      next_sibling = if next_sibling.nil?
                       Pointer(Void).null
                     else
                       next_sibling.to_unsafe
                     end

      # C call
      LibGtk.gtk_accessible_set_accessible_parent(to_unsafe, parent, next_sibling)

      # Return value handling
    end

    def update_next_accessible_sibling(new_sibling : Gtk::Accessible?) : Nil
      # gtk_accessible_update_next_accessible_sibling: (Method)
      # @new_sibling: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      new_sibling = if new_sibling.nil?
                      Pointer(Void).null
                    else
                      new_sibling.to_unsafe
                    end

      # C call
      LibGtk.gtk_accessible_update_next_accessible_sibling(to_unsafe, new_sibling)

      # Return value handling
    end

    def update_platform_state(state : Gtk::AccessiblePlatformState) : Nil
      # gtk_accessible_update_platform_state: (Method)
      # @state:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_accessible_update_platform_state(to_unsafe, state)

      # Return value handling
    end

    def update_property(properties : Enumerable(Gtk::AccessibleProperty), values : Enumerable(_)) : Nil
      # gtk_accessible_update_property_value: (Method)
      # @n_properties:
      # @properties: (array length=n_properties element-type Interface)
      # @values: (array length=n_properties element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_properties = properties.size
      # Generator::ArrayArgPlan
      properties = properties.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(UInt32))
      # Generator::ArrayLengthArgPlan
      n_properties = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe.as(Pointer(LibGObject::Value)).value }.to_unsafe.as(Pointer(LibGObject::Value))

      # C call
      LibGtk.gtk_accessible_update_property_value(to_unsafe, n_properties, properties, values)

      # Return value handling
    end

    def update_relation(relations : Enumerable(Gtk::AccessibleRelation), values : Enumerable(_)) : Nil
      # gtk_accessible_update_relation_value: (Method)
      # @n_relations:
      # @relations: (array length=n_relations element-type Interface)
      # @values: (array length=n_relations element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_relations = relations.size
      # Generator::ArrayArgPlan
      relations = relations.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(UInt32))
      # Generator::ArrayLengthArgPlan
      n_relations = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe.as(Pointer(LibGObject::Value)).value }.to_unsafe.as(Pointer(LibGObject::Value))

      # C call
      LibGtk.gtk_accessible_update_relation_value(to_unsafe, n_relations, relations, values)

      # Return value handling
    end

    def update_state(states : Enumerable(Gtk::AccessibleState), values : Enumerable(_)) : Nil
      # gtk_accessible_update_state_value: (Method)
      # @n_states:
      # @states: (array length=n_states element-type Interface)
      # @values: (array length=n_states element-type Interface)
      # Returns: (transfer none)

      # Generator::ArrayLengthArgPlan
      n_states = states.size
      # Generator::ArrayArgPlan
      states = states.to_a.map(&.to_unsafe).to_unsafe.as(Pointer(UInt32))
      # Generator::ArrayLengthArgPlan
      n_states = values.size
      # Generator::ArrayArgPlan
      values = values.to_a.map { |_i| GObject::Value.new(_i).to_unsafe.as(Pointer(LibGObject::Value)).value }.to_unsafe.as(Pointer(LibGObject::Value))

      # C call
      LibGtk.gtk_accessible_update_state_value(to_unsafe, n_states, states, values)

      # Return value handling
    end

    # get_accessible_parent: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_accessible_parent_vfunc(impl_method_name)
      private def self._vfunc_get_accessible_parent(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_accessible_parent(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_accessible_parent: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_accessible_parent_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_accessible_parent(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_accessible_parent = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_accessible_parent(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_accessible_parent : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_at_context: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_at_context_vfunc(impl_method_name)
      private def self._vfunc_get_at_context(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_at_context(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_at_context: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_at_context_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_at_context(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_at_context = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_at_context(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_at_context : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_bounds: (None)
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # @width: (out) (transfer full)
    # @height: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_get_bounds_vfunc(impl_method_name)
      private def self._vfunc_get_bounds(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : LibC::Int
        # @x: (out) (transfer full) 
# @y: (out) (transfer full) 
# @width: (out) (transfer full) 
# @height: (out) (transfer full) 

x=lib_x
y=lib_y
width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(x, y, width, height)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_bounds(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end
    end

    # get_bounds: (None)
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # @width: (out) (transfer full)
    # @height: (out) (transfer full)
    # Returns: (transfer none)
    private macro _register_unsafe_get_bounds_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_bounds(%this : Pointer(Void), lib_x :  Int32, lib_y :  Int32, lib_width :  Int32, lib_height :  Int32, ) : LibC::Int
# @x: (out) (transfer full) 
# @y: (out) (transfer full) 
# @width: (out) (transfer full) 
# @height: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_x, lib_y, lib_width, lib_height)
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_bounds = Proc(Pointer(Void), Int32, Int32, Int32, Int32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_bounds(Pointer(Void), Int32, Int32, Int32, Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_bounds : Proc(Pointer(Void), Int32, Int32, Int32, Int32, LibC::Int)? = nil
    end

    # get_first_accessible_child: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_first_accessible_child_vfunc(impl_method_name)
      private def self._vfunc_get_first_accessible_child(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_first_accessible_child(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_first_accessible_child: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_first_accessible_child_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_first_accessible_child(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_first_accessible_child = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_first_accessible_child(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_first_accessible_child : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_next_accessible_sibling: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_get_next_accessible_sibling_vfunc(impl_method_name)
      private def self._vfunc_get_next_accessible_sibling(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.nil? ? Pointer(Void).null : %retval.to_unsafe
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_next_accessible_sibling(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_next_accessible_sibling: (None)
    # Returns: (transfer full) (nullable)
    private macro _register_unsafe_get_next_accessible_sibling_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_next_accessible_sibling(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_next_accessible_sibling = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_next_accessible_sibling(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_next_accessible_sibling : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_platform_state: (None)
    # @state:
    # Returns: (transfer none)
    private macro _register_get_platform_state_vfunc(impl_method_name)
      private def self._vfunc_get_platform_state(%this : Pointer(Void), lib_state :  UInt32, ) : LibC::Int
        # @state: 

# Generator::BuiltInTypeArgPlan
state=Gtk::AccessiblePlatformState.new(lib_state)


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(state)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_platform_state(Pointer(Void), UInt32)).pointer
        previous_def
      end
    end

    # get_platform_state: (None)
    # @state:
    # Returns: (transfer none)
    private macro _register_unsafe_get_platform_state_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_platform_state(%this : Pointer(Void), lib_state :  UInt32, ) : LibC::Int
# @state: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_state)
      end

      def self._install_iface_Gtk__Accessible(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_platform_state = Proc(Pointer(Void), UInt32, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_platform_state(Pointer(Void), UInt32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_platform_state : Proc(Pointer(Void), UInt32, LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractAccessible.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractAccessible < GObject::Object
    include Accessible

    GICrystal.declare_new_method(Gtk::AbstractAccessible, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_accessible_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractAccessible.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
