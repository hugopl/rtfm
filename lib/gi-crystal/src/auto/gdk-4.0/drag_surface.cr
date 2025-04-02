module Gdk
  module DragSurface
    macro included
      {% raise "Cannot include GObject interface in module" if @type.module? %}
      {% raise "#{@type} must inherit from GObject::Object to implement GObject interfaces" unless (@type < ::GObject::Object) %}

      macro inherited
        include Gdk::DragSurface
      end

      {% unless @type.annotation(GICrystal::GeneratedWrapper) %}
        def self._install_iface_Gdk__DragSurface(interface : Pointer(LibGObject::TypeInterface)) : Nil
        end
      {% end %}
    end

    def self.g_type : UInt64
      Gdk::AbstractDragSurface.g_type
    end

    def present(width : Int32, height : Int32) : Bool
      # gdk_drag_surface_present: (Method)
      # @width:
      # @height:
      # Returns: (transfer none)

      # C call
      _retval = LibGdk.gdk_drag_surface_present(to_unsafe, width, height)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    struct ComputeSizeSignal < GObject::Signal
      def name : String
        @detail ? "compute-size::#{@detail}" : "compute-size"
      end

      def connect(*, after : Bool = false, &block : Proc(Gdk::DragSurfaceSize, Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Gdk::DragSurfaceSize, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_size : Pointer(Void), _lib_box : Pointer(Void)) {
          # Generator::BuiltInTypeArgPlan
          size = Gdk::DragSurfaceSize.new(lib_size, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::DragSurfaceSize, Nil)).unbox(_lib_box).call(size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gdk::DragSurface, Gdk::DragSurfaceSize, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), lib_size : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gdk::AbstractDragSurface.new(_lib_sender, GICrystal::Transfer::None)
          # Generator::BuiltInTypeArgPlan
          size = Gdk::DragSurfaceSize.new(lib_size, GICrystal::Transfer::None)
          ::Box(Proc(Gdk::DragSurface, Gdk::DragSurfaceSize, Nil)).unbox(_lib_box).call(_sender, size)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit(size : Gdk::DragSurfaceSize) : Nil
        LibGObject.g_signal_emit_by_name(@source, "compute-size", size)
      end
    end

    def compute_size_signal
      ComputeSizeSignal.new(self)
    end

    # Cast a `GObject::Object` to `self`, throws a `TypeCastError` if the cast can't be made.
    def self.cast(obj : GObject::Object) : self
      cast?(obj) || raise TypeCastError.new("can't cast #{typeof(obj).name} to #{self}")
    end

    def self.cast?(obj : GObject::Object) : self?
      if LibGObject.g_type_check_instance_is_a(obj, g_type) != 0
        AbstractDragSurface.new(obj.to_unsafe, :none)
      end
    end

    abstract def to_unsafe
  end

  # :nodoc:
  @[GICrystal::GeneratedWrapper]
  class AbstractDragSurface < GObject::Object
    include DragSurface

    GICrystal.declare_new_method(Gdk::AbstractDragSurface, g_object_get_qdata)

    # Forbid users to create instances of this.
    private def initialize
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGdk.gdk_drag_surface_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gdk::AbstractDragSurface.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end
  end
end
