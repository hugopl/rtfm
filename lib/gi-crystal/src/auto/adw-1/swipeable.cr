module Adw
  module Swipeable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Adw::Swipeable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Adw__Swipeable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Adw::AbstractSwipeable.g_type
    end

    def cancel_progress : Float64
      # adw_swipeable_get_cancel_progress: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipeable_get_cancel_progress(to_unsafe)

      # Return value handling
      _retval
    end

    def distance : Float64
      # adw_swipeable_get_distance: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipeable_get_distance(to_unsafe)

      # Return value handling
      _retval
    end

    def progress : Float64
      # adw_swipeable_get_progress: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibAdw.adw_swipeable_get_progress(to_unsafe)

      # Return value handling
      _retval
    end

    def snap_points : Enumerable(Float64)
      # adw_swipeable_get_snap_points: (Method)
      # @n_snap_points: (out) (transfer full)
      # Returns: (transfer full) (array length=n_snap_points element-type Double)

      # Generator::OutArgUsedInReturnPlan
      n_snap_points = 0
      # C call
      _retval = LibAdw.adw_swipeable_get_snap_points(to_unsafe, pointerof(n_snap_points))

      # Return value handling
      GICrystal.transfer_array(_retval, n_snap_points, GICrystal::Transfer::Full)
    end

    def swipe_area(navigation_direction : Adw::NavigationDirection, is_drag : Bool) : Gdk::Rectangle
      # adw_swipeable_get_swipe_area: (Method)
      # @navigation_direction:
      # @is_drag:
      # @rect: (out) (caller-allocates)
      # Returns: (transfer none)

      # Generator::CallerAllocatesPlan
      rect = Gdk::Rectangle.new
      # C call
      LibAdw.adw_swipeable_get_swipe_area(to_unsafe, navigation_direction, is_drag, rect)

      # Return value handling
      rect
    end

    # get_cancel_progress: (None)
    # Returns: (transfer none)
    private macro _register_get_cancel_progress_vfunc(impl_method_name)
      private def self._vfunc_get_cancel_progress(%this : Pointer(Void), ) : Float64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_cancel_progress(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_cancel_progress: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_cancel_progress_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_cancel_progress(%this : Pointer(Void), ) : Float64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_cancel_progress = Proc(Pointer(Void), Float64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_cancel_progress(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_cancel_progress : Proc(Pointer(Void), Float64)? = nil
    end

    # get_distance: (None)
    # Returns: (transfer none)
    private macro _register_get_distance_vfunc(impl_method_name)
      private def self._vfunc_get_distance(%this : Pointer(Void), ) : Float64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_distance(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_distance: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_distance_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_distance(%this : Pointer(Void), ) : Float64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_distance = Proc(Pointer(Void), Float64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_distance(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_distance : Proc(Pointer(Void), Float64)? = nil
    end

    # get_progress: (None)
    # Returns: (transfer none)
    private macro _register_get_progress_vfunc(impl_method_name)
      private def self._vfunc_get_progress(%this : Pointer(Void), ) : Float64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_progress(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_progress: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_progress_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_progress(%this : Pointer(Void), ) : Float64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_progress = Proc(Pointer(Void), Float64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_progress(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_progress : Proc(Pointer(Void), Float64)? = nil
    end

    # get_snap_points: (None)
    # @n_snap_points: (out) (transfer full)
    # Returns: (transfer full) (array length=n_snap_points element-type Double)
    private macro _register_get_snap_points_vfunc(impl_method_name)
      private def self._vfunc_get_snap_points(%this : Pointer(Void), lib_n_snap_points :  Int32, ) : Pointer(Float64)
        # @n_snap_points: (out) (transfer full) 

# Generator::OutArgUsedInReturnPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(n_snap_points)
        
        %retval
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_snap_points(Pointer(Void), Int32)).pointer
        previous_def
      end
    end

    # get_snap_points: (None)
    # @n_snap_points: (out) (transfer full)
    # Returns: (transfer full) (array length=n_snap_points element-type Double)
    private macro _register_unsafe_get_snap_points_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_snap_points(%this : Pointer(Void), lib_n_snap_points :  Int32, ) : Pointer(Float64)
# @n_snap_points: (out) (transfer full) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_n_snap_points)
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_snap_points = Proc(Pointer(Void), Int32, Pointer(Float64)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_snap_points(Pointer(Void), Int32)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_snap_points : Proc(Pointer(Void), Int32, Pointer(Float64))? = nil
    end

    # get_swipe_area: (None)
    # @navigation_direction:
    # @is_drag:
    # @rect: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_get_swipe_area_vfunc(impl_method_name)
      private def self._vfunc_get_swipe_area(%this : Pointer(Void), lib_navigation_direction :  UInt32, lib_is_drag :  LibC::Int, lib_rect :  Void, ) : Void
        # @navigation_direction: 
# @is_drag: 
# @rect: (out) (caller-allocates) 

# Generator::BuiltInTypeArgPlan
navigation_direction=Adw::NavigationDirection.new(lib_navigation_direction)
# Generator::BuiltInTypeArgPlan
is_drag=GICrystal.to_bool(lib_is_drag)
# Generator::CallerAllocatesPlan


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(navigation_direction, is_drag, rect)
        
        %retval
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_swipe_area(Pointer(Void), UInt32, LibC::Int, Void)).pointer
        previous_def
      end
    end

    # get_swipe_area: (None)
    # @navigation_direction:
    # @is_drag:
    # @rect: (out) (caller-allocates)
    # Returns: (transfer none)
    private macro _register_unsafe_get_swipe_area_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_swipe_area(%this : Pointer(Void), lib_navigation_direction :  UInt32, lib_is_drag :  LibC::Int, lib_rect :  Void, ) : Void
# @navigation_direction: 
# @is_drag: 
# @rect: (out) (caller-allocates) 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_navigation_direction, lib_is_drag, lib_rect)
      end

      def self._install_iface_Adw__Swipeable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_swipe_area = Proc(Pointer(Void), UInt32, LibC::Int, Void, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_swipe_area(Pointer(Void), UInt32, LibC::Int, Void)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_swipe_area : Proc(Pointer(Void), UInt32, LibC::Int, Void, Void)? = nil
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractSwipeable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractSwipeable < GObject::Object
    include Swipeable

    GICrystal.declare_new_method(Adw::AbstractSwipeable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibAdw.adw_swipeable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Adw::AbstractSwipeable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
