module Gdk
  module Paintable
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gdk::Paintable
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gdk__Paintable(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gdk::AbstractPaintable.g_type
    end

    def self.new_empty(intrinsic_width : Int32, intrinsic_height : Int32) : Gdk::Paintable
      # gdk_paintable_new_empty: (None)
      # @intrinsic_width:
      # @intrinsic_height:
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_paintable_new_empty(intrinsic_width, intrinsic_height)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::Full)
    end

    def compute_concrete_size(specified_width : Float64, specified_height : Float64, default_width : Float64, default_height : Float64, concrete_width : Float64, concrete_height : Float64) : Nil
      # gdk_paintable_compute_concrete_size: (Method)
      # @specified_width:
      # @specified_height:
      # @default_width:
      # @default_height:
      # @concrete_width: (out) (transfer full)
      # @concrete_height: (out) (transfer full)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_paintable_compute_concrete_size(to_unsafe, specified_width, specified_height, default_width, default_height, concrete_width, concrete_height)

      # Return value handling
    end

    def current_image : Gdk::Paintable
      # gdk_paintable_get_current_image: (Method)
      # Returns: (transfer full)

      # C call
      _retval = LibGdk.gdk_paintable_get_current_image(to_unsafe)

      # Return value handling
      Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::Full)
    end

    def flags : Gdk::PaintableFlags
      # gdk_paintable_get_flags: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_paintable_get_flags(to_unsafe)

      # Return value handling
      Gdk::PaintableFlags.new(_retval)
    end

    def intrinsic_aspect_ratio : Float64
      # gdk_paintable_get_intrinsic_aspect_ratio: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_paintable_get_intrinsic_aspect_ratio(to_unsafe)

      # Return value handling
      _retval
    end

    def intrinsic_height : Int32
      # gdk_paintable_get_intrinsic_height: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_paintable_get_intrinsic_height(to_unsafe)

      # Return value handling
      _retval
    end

    def intrinsic_width : Int32
      # gdk_paintable_get_intrinsic_width: (Method)
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_paintable_get_intrinsic_width(to_unsafe)

      # Return value handling
      _retval
    end

    def invalidate_contents : Nil
      # gdk_paintable_invalidate_contents: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_paintable_invalidate_contents(to_unsafe)

      # Return value handling
    end

    def invalidate_size : Nil
      # gdk_paintable_invalidate_size: (Method)
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_paintable_invalidate_size(to_unsafe)

      # Return value handling
    end

    def snapshot(snapshot : Gdk::Snapshot, width : Float64, height : Float64) : Nil
      # gdk_paintable_snapshot: (Method)
      # @snapshot:
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      LibGdk.gdk_paintable_snapshot(to_unsafe, snapshot, width, height)

      # Return value handling
    end

    # get_current_image: (None)
    # Returns: (transfer full)
    private macro _register_get_current_image_vfunc(impl_method_name)
      private def self._vfunc_get_current_image(%this : Pointer(Void), ) : Pointer(Void)
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
          LibGObject.g_object_ref(%retval) if %retval
        
        %retval.to_unsafe
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_current_image(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_current_image: (None)
    # Returns: (transfer full)
    private macro _register_unsafe_get_current_image_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_current_image(%this : Pointer(Void), ) : Pointer(Void)

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 24).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_current_image = Proc(Pointer(Void), Pointer(Void)).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_current_image(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_current_image : Proc(Pointer(Void), Pointer(Void))? = nil
    end

    # get_flags: (None)
    # Returns: (transfer none)
    private macro _register_get_flags_vfunc(impl_method_name)
      private def self._vfunc_get_flags(%this : Pointer(Void), ) : UInt32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval.to_u32
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_flags(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_flags: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_flags_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_flags(%this : Pointer(Void), ) : UInt32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 32).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_flags = Proc(Pointer(Void), UInt32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_flags(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_flags : Proc(Pointer(Void), UInt32)? = nil
    end

    # get_intrinsic_aspect_ratio: (None)
    # Returns: (transfer none)
    private macro _register_get_intrinsic_aspect_ratio_vfunc(impl_method_name)
      private def self._vfunc_get_intrinsic_aspect_ratio(%this : Pointer(Void), ) : Float64
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_intrinsic_aspect_ratio(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_intrinsic_aspect_ratio: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_intrinsic_aspect_ratio_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_intrinsic_aspect_ratio(%this : Pointer(Void), ) : Float64

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 56).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_intrinsic_aspect_ratio = Proc(Pointer(Void), Float64).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_intrinsic_aspect_ratio(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_intrinsic_aspect_ratio : Proc(Pointer(Void), Float64)? = nil
    end

    # get_intrinsic_height: (None)
    # Returns: (transfer none)
    private macro _register_get_intrinsic_height_vfunc(impl_method_name)
      private def self._vfunc_get_intrinsic_height(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_intrinsic_height(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_intrinsic_height: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_intrinsic_height_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_intrinsic_height(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 48).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_intrinsic_height = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_intrinsic_height(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_intrinsic_height : Proc(Pointer(Void), Int32)? = nil
    end

    # get_intrinsic_width: (None)
    # Returns: (transfer none)
    private macro _register_get_intrinsic_width_vfunc(impl_method_name)
      private def self._vfunc_get_intrinsic_width(%this : Pointer(Void), ) : Int32
        

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}()
        
        %retval
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_get_intrinsic_width(Pointer(Void))).pointer
        previous_def
      end
    end

    # get_intrinsic_width: (None)
    # Returns: (transfer none)
    private macro _register_unsafe_get_intrinsic_width_vfunc(impl_method_name)
      private def self._vfunc_unsafe_get_intrinsic_width(%this : Pointer(Void), ) : Int32

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}()
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 40).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_get_intrinsic_width = Proc(Pointer(Void), Int32).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_get_intrinsic_width(Pointer(Void))).pointer
        previous_def
      end

      @@_gi_parent_vfunc_get_intrinsic_width : Proc(Pointer(Void), Int32)? = nil
    end

    # snapshot: (None)
    # @snapshot:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_snapshot_vfunc(impl_method_name)
      private def self._vfunc_snapshot(%this : Pointer(Void), lib_snapshot :  Pointer(Void), lib_width :  Float64, lib_height :  Float64, ) : Void
        # @snapshot: 
# @width: 
# @height: 

# Generator::BuiltInTypeArgPlan
snapshot=Gdk::Snapshot.new(lib_snapshot, GICrystal::Transfer::None)
width=lib_width
height=lib_height


        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %retval = %instance.as(self).{{ impl_method_name.id }}(snapshot, width, height)
        
        %retval
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        vfunc_ptr.value = (->_vfunc_snapshot(Pointer(Void), Pointer(Void), Float64, Float64)).pointer
        previous_def
      end
    end

    # snapshot: (None)
    # @snapshot:
    # @width:
    # @height:
    # Returns: (transfer none)
    private macro _register_unsafe_snapshot_vfunc(impl_method_name)
      private def self._vfunc_unsafe_snapshot(%this : Pointer(Void), lib_snapshot :  Pointer(Void), lib_width :  Float64, lib_height :  Float64, ) : Void
# @snapshot: 
# @width: 
# @height: 

        %instance = LibGObject.g_object_get_qdata(%this, GICrystal::INSTANCE_QDATA_KEY)
        raise GICrystal::ObjectCollectedError.new if %instance.null?

        %instance.as(self).{{ impl_method_name.id }}(lib_snapshot, lib_width, lib_height)
      end

      def self._install_iface_Gdk__Paintable(type_struct : Pointer(LibGObject::TypeInterface)) : Nil
        vfunc_ptr = (type_struct.as(Pointer(Void)) + 16).as(Pointer(Pointer(Void)))
        @@_gi_parent_vfunc_snapshot = Proc(Pointer(Void), Pointer(Void), Float64, Float64, Void).new(vfunc_ptr.value, Pointer(Void).null) unless vfunc_ptr.value.null?
        vfunc_ptr.value = (->_vfunc_unsafe_snapshot(Pointer(Void), Pointer(Void), Float64, Float64)).pointer
        previous_def
      end

      @@_gi_parent_vfunc_snapshot : Proc(Pointer(Void), Pointer(Void), Float64, Float64, Void)? = nil
    end

    struct InvalidateContentsSignal < GObject::Signal
      def name : String
        @detail ? "invalidate-contents::#{@detail}" : "invalidate-contents"
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

      def connect(handler : Proc(Gdk::Paintable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::AbstractPaintable.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Paintable, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "invalidate-contents")
      end
    end

    def invalidate_contents_signal
      InvalidateContentsSignal.new(self)
    end

    struct InvalidateSizeSignal < GObject::Signal
      def name : String
        @detail ? "invalidate-size::#{@detail}" : "invalidate-size"
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

      def connect(handler : Proc(Gdk::Paintable, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::AbstractPaintable.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::Paintable, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "invalidate-size")
      end
    end

    def invalidate_size_signal
      InvalidateSizeSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractPaintable.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractPaintable < GObject::Object
    include Paintable

    GICrystal.declare_new_method(Gdk::AbstractPaintable, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_paintable_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::AbstractPaintable.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
