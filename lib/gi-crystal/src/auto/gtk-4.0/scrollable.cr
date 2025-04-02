module Gtk
  module Scrollable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gtk::Scrollable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gtk__Scrollable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gtk::AbstractScrollable.g_type
    end

    def hadjustment=(value : Gtk::Adjustment?) : Gtk::Adjustment?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "hadjustment", unsafe_value, Pointer(Void).null)
      value
    end

    def hadjustment : Gtk::Adjustment?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "hadjustment", pointerof(value), Pointer(Void).null)
      Gtk::Adjustment.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def hscroll_policy=(value : Gtk::ScrollablePolicy) : Gtk::ScrollablePolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "hscroll-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def hscroll_policy : Gtk::ScrollablePolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "hscroll-policy", pointerof(value), Pointer(Void).null)
      Gtk::ScrollablePolicy.new(value)
    end

    def vadjustment=(value : Gtk::Adjustment?) : Gtk::Adjustment?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "vadjustment", unsafe_value, Pointer(Void).null)
      value
    end

    def vadjustment : Gtk::Adjustment?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "vadjustment", pointerof(value), Pointer(Void).null)
      Gtk::Adjustment.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def vscroll_policy=(value : Gtk::ScrollablePolicy) : Gtk::ScrollablePolicy
      unsafe_value = value

      LibGObject.g_object_set(self, "vscroll-policy", unsafe_value, Pointer(Void).null)
      value
    end

    def vscroll_policy : Gtk::ScrollablePolicy
      # Returns: None

      value = uninitialized UInt32
      LibGObject.g_object_get(self, "vscroll-policy", pointerof(value), Pointer(Void).null)
      Gtk::ScrollablePolicy.new(value)
    end

    def border : Gtk::Border
      # gtk_scrollable_get_border: (Method)
      # @border: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      border = Gtk::Border.new
      # C call
      _retval = LibGtk.gtk_scrollable_get_border(to_unsafe, border)

      # Return value handling
      border
    end

    def hadjustment : Gtk::Adjustment?
      # gtk_scrollable_get_hadjustment: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_scrollable_get_hadjustment(to_unsafe)

      # Return value handling
      Gtk::Adjustment.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def hscroll_policy : Gtk::ScrollablePolicy
      # gtk_scrollable_get_hscroll_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_scrollable_get_hscroll_policy(to_unsafe)

      # Return value handling
      Gtk::ScrollablePolicy.new(_retval)
    end

    def vadjustment : Gtk::Adjustment?
      # gtk_scrollable_get_vadjustment: (Method | Getter)
      # Returns: (transfer none) (nullable)

      # C call
      _retval = LibGtk.gtk_scrollable_get_vadjustment(to_unsafe)

      # Return value handling
      Gtk::Adjustment.new(_retval, GICrystal::Transfer::None) unless _retval.null?
    end

    def vscroll_policy : Gtk::ScrollablePolicy
      # gtk_scrollable_get_vscroll_policy: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_scrollable_get_vscroll_policy(to_unsafe)

      # Return value handling
      Gtk::ScrollablePolicy.new(_retval)
    end

    def hadjustment=(hadjustment : Gtk::Adjustment?) : Nil
      # gtk_scrollable_set_hadjustment: (Method | Setter)
      # @hadjustment: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      hadjustment = if hadjustment.nil?
                      Pointer(Void).null
                    else
                      hadjustment.to_unsafe
                    end

      # C call
      LibGtk.gtk_scrollable_set_hadjustment(to_unsafe, hadjustment)

      # Return value handling
    end

    def hscroll_policy=(policy : Gtk::ScrollablePolicy) : Nil
      # gtk_scrollable_set_hscroll_policy: (Method | Setter)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_scrollable_set_hscroll_policy(to_unsafe, policy)

      # Return value handling
    end

    def vadjustment=(vadjustment : Gtk::Adjustment?) : Nil
      # gtk_scrollable_set_vadjustment: (Method | Setter)
      # @vadjustment: (nullable)
      # Returns: (transfer none)

      # Generator::NullableArrayPlan
      vadjustment = if vadjustment.nil?
                      Pointer(Void).null
                    else
                      vadjustment.to_unsafe
                    end

      # C call
      LibGtk.gtk_scrollable_set_vadjustment(to_unsafe, vadjustment)

      # Return value handling
    end

    def vscroll_policy=(policy : Gtk::ScrollablePolicy) : Nil
      # gtk_scrollable_set_vscroll_policy: (Method | Setter)
      # @policy:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_scrollable_set_vscroll_policy(to_unsafe, policy)

      # Return value handling
    end

    # get_border: (None)
    # @border: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_get_border_vfunc(impl_method_name)
      private def self._vfunc_get_border(%this : Pointer(Void), lib_border :  Void, ) : LibC::Int
        # @border: (out) (caller-allocates) 

# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(border)
        
        GICrystal.to_c_bool(%retval)
      end

      def self._install_iface_Gtk__Scrollable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_border(Pointer(Void), Void)).pointer
        previous_def
      end
    end

    # get_border: (None)
    # @border: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_unsafe_get_border_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_border(%this : Pointer(Void), lib_border :  Void, ) : LibC::Int
# @border: (out) (caller-allocates) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_border)
      end

      def self._install_iface_Gtk__Scrollable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_border = Proc(Pointer(Void), Void, LibC::Int).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_border(Pointer(Void), Void)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_border : Proc(Pointer(Void), Void, LibC::Int)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractScrollable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractScrollable < GObject::Object
    include Scrollable

    GICrystal.declare_new_method(Gtk::AbstractScrollable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_scrollable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::AbstractScrollable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
